; ModuleID = 'thread.o.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.sem_t = type { i64, [24 x i8] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@initialized = internal unnamed_addr global i1 false
@_pythread_stacksize = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"sem_init\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sem_destroy\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"sem_timedwait\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sem_trywait\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sem_wait\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sem_post\00", align 1
@ThreadInfoType = internal global %struct._typeobject zeroinitializer, align 8
@threadinfo_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @threadinfo__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([4 x %struct.PyStructSequence_Field], [4 x %struct.PyStructSequence_Field]* @threadinfo_fields, i32 0, i32 0), i32 3 }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"pthread\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"semaphore\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"sys.thread_info\00", align 1
@threadinfo__doc__ = internal global [88 x i8] c"sys.thread_info\0A\0AA struct sequence holding information about the thread implementation.\00", align 16
@threadinfo_fields = internal global [4 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"name of the thread implementation\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"name of the lock implementation\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"name and version of the thread library\00", align 1

; Function Attrs: nounwind uwtable
define void @PyThread_init_thread() #0 {
entry:
  %.b = load i1, i1* @initialized, align 1
  br i1 %.b, label %return, label %if.end, !dbg !638

if.end:                                           ; preds = %entry
  store i1 true, i1* @initialized, align 1
  br label %return, !dbg !639

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !640
}

; Function Attrs: nounwind uwtable
define i64 @PyThread_start_new_thread(void (i8*)* %func, i8* %arg) #0 {
entry:
  %th = alloca i64, align 8
  %attrs = alloca %union.pthread_attr_t, align 8
  tail call void @llvm.dbg.value(metadata void (i8*)* %func, i64 0, metadata !459, metadata !642), !dbg !643
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !460, metadata !642), !dbg !644
  %0 = bitcast i64* %th to i8*, !dbg !645
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !645
  %1 = bitcast %union.pthread_attr_t* %attrs to i8*, !dbg !646
  call void @llvm.lifetime.start(i64 56, i8* %1) #2, !dbg !646
  %.b = load i1, i1* @initialized, align 1
  br i1 %.b, label %if.end, label %PyThread_init_thread.exit, !dbg !647

PyThread_init_thread.exit:                        ; preds = %entry
  store i1 true, i1* @initialized, align 1, !dbg !648
  br label %if.end, !dbg !648

if.end:                                           ; preds = %PyThread_init_thread.exit, %entry
  tail call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs, i64 0, metadata !465, metadata !642), !dbg !650
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* nonnull %attrs) #2, !dbg !651
  %cmp = icmp eq i32 %call, 0, !dbg !653
  br i1 %cmp, label %if.end.2, label %cleanup, !dbg !654

if.end.2:                                         ; preds = %if.end
  %2 = load i64, i64* @_pythread_stacksize, align 8, !dbg !655, !tbaa !656
  %cmp3 = icmp eq i64 %2, 0, !dbg !660
  call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !474, metadata !642), !dbg !661
  br i1 %cmp3, label %if.end.11, label %if.then.5, !dbg !662

if.then.5:                                        ; preds = %if.end.2
  call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs, i64 0, metadata !465, metadata !642), !dbg !650
  %call6 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* nonnull %attrs, i64 %2) #2, !dbg !663
  %cmp7 = icmp eq i32 %call6, 0, !dbg !667
  br i1 %cmp7, label %if.end.11, label %if.then.8, !dbg !668

if.then.8:                                        ; preds = %if.then.5
  call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs, i64 0, metadata !465, metadata !642), !dbg !650
  %call9 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* nonnull %attrs) #2, !dbg !669
  br label %cleanup, !dbg !671

if.end.11:                                        ; preds = %if.then.5, %if.end.2
  call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs, i64 0, metadata !465, metadata !642), !dbg !650
  %call12 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* nonnull %attrs, i32 0) #2, !dbg !672
  %3 = bitcast void (i8*)* %func to i8* (i8*)*, !dbg !673
  call void @llvm.dbg.value(metadata i64* %th, i64 0, metadata !461, metadata !642), !dbg !674
  call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs, i64 0, metadata !465, metadata !642), !dbg !650
  %call13 = call i32 @pthread_create(i64* nonnull %th, %union.pthread_attr_t* nonnull %attrs, i8* (i8*)* %3, i8* %arg) #2, !dbg !675
  call void @llvm.dbg.value(metadata i32 %call13, i64 0, metadata !464, metadata !642), !dbg !676
  call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs, i64 0, metadata !465, metadata !642), !dbg !650
  %call14 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* nonnull %attrs) #2, !dbg !677
  %cmp15 = icmp eq i32 %call13, 0, !dbg !678
  br i1 %cmp15, label %if.end.17, label %cleanup, !dbg !680

if.end.17:                                        ; preds = %if.end.11
  call void @llvm.dbg.value(metadata i64* %th, i64 0, metadata !461, metadata !642), !dbg !674
  %4 = load i64, i64* %th, align 8, !dbg !681, !tbaa !656
  %call18 = call i32 @pthread_detach(i64 %4) #2, !dbg !682
  call void @llvm.dbg.value(metadata i64* %th, i64 0, metadata !461, metadata !642), !dbg !674
  %5 = load i64, i64* %th, align 8, !dbg !683, !tbaa !656
  br label %cleanup, !dbg !684

cleanup:                                          ; preds = %if.end.11, %if.end, %if.end.17, %if.then.8
  %retval.0 = phi i64 [ -1, %if.then.8 ], [ %5, %if.end.17 ], [ -1, %if.end ], [ -1, %if.end.11 ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #2, !dbg !685
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !685
  ret i64 %retval.0, !dbg !685
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(%union.pthread_attr_t*, i64) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setscope(%union.pthread_attr_t*, i32) #3

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind
declare i32 @pthread_detach(i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i64 @PyThread_get_thread_ident() #0 {
entry:
  %threadid = alloca i64, align 8
  %threadid.0.threadid.0..sroa_cast = bitcast i64* %threadid to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %threadid.0.threadid.0..sroa_cast), !dbg !686
  %.b = load i1, i1* @initialized, align 1
  br i1 %.b, label %if.end, label %PyThread_init_thread.exit, !dbg !687

PyThread_init_thread.exit:                        ; preds = %entry
  store i1 true, i1* @initialized, align 1, !dbg !688
  br label %if.end, !dbg !688

if.end:                                           ; preds = %PyThread_init_thread.exit, %entry
  %call = tail call i64 @pthread_self() #1, !dbg !690
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !479, metadata !642), !dbg !691
  store volatile i64 %call, i64* %threadid, align 8, !dbg !692
  tail call void @llvm.dbg.value(metadata i64* %threadid, i64 0, metadata !479, metadata !642), !dbg !691
  %threadid.0.threadid.0. = load volatile i64, i64* %threadid, align 8, !dbg !693
  call void @llvm.lifetime.end(i64 8, i8* %threadid.0.threadid.0..sroa_cast), !dbg !694
  ret i64 %threadid.0.threadid.0., !dbg !695
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #4

; Function Attrs: noreturn nounwind uwtable
define void @PyThread_exit_thread() #5 {
entry:
  %.b = load i1, i1* @initialized, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !696

if.then:                                          ; preds = %entry
  tail call void @exit(i32 0) #11, !dbg !697
  unreachable, !dbg !697

if.end:                                           ; preds = %entry
  tail call void @pthread_exit(i8* null) #11, !dbg !699
  unreachable, !dbg !699
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #7

; Function Attrs: nounwind uwtable
define i8* @PyThread_allocate_lock() #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !488, metadata !642), !dbg !700
  %.b = load i1, i1* @initialized, align 1
  br i1 %.b, label %if.end, label %PyThread_init_thread.exit, !dbg !701

PyThread_init_thread.exit:                        ; preds = %entry
  store i1 true, i1* @initialized, align 1, !dbg !702
  br label %if.end, !dbg !702

if.end:                                           ; preds = %PyThread_init_thread.exit, %entry
  %call = tail call i8* @PyMem_RawMalloc(i64 32) #2, !dbg !704
  %0 = bitcast i8* %call to %union.sem_t*, !dbg !705
  tail call void @llvm.dbg.value(metadata %union.sem_t* %0, i64 0, metadata !486, metadata !642), !dbg !706
  %tobool1 = icmp eq i8* %call, null, !dbg !707
  br i1 %tobool1, label %if.end.9, label %if.then.2, !dbg !709

if.then.2:                                        ; preds = %if.end
  %call3 = tail call i32 @sem_init(%union.sem_t* %0, i32 0, i32 1) #2, !dbg !710
  tail call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !487, metadata !642), !dbg !712
  %cmp = icmp eq i32 %call3, 0, !dbg !713
  br i1 %cmp, label %if.end.9, label %if.then.4, !dbg !715

if.then.4:                                        ; preds = %if.then.2
  tail call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #12, !dbg !716
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !488, metadata !642), !dbg !700
  tail call void @PyMem_RawFree(i8* %call) #2, !dbg !719
  tail call void @llvm.dbg.value(metadata %union.sem_t* null, i64 0, metadata !486, metadata !642), !dbg !706
  br label %if.end.9, !dbg !722

if.end.9:                                         ; preds = %if.then.2, %if.end, %if.then.4
  %lock.0 = phi %union.sem_t* [ null, %if.then.4 ], [ %0, %if.end ], [ %0, %if.then.2 ]
  %1 = bitcast %union.sem_t* %lock.0 to i8*, !dbg !723
  ret i8* %1, !dbg !724
}

declare i8* @PyMem_RawMalloc(i64) #8

; Function Attrs: nounwind
declare i32 @sem_init(%union.sem_t*, i32, i32) #3

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #3

declare void @PyMem_RawFree(i8*) #8

; Function Attrs: nounwind uwtable
define void @PyThread_free_lock(i8* %lock) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %lock, i64 0, metadata !493, metadata !642), !dbg !725
  tail call void @llvm.dbg.value(metadata %union.sem_t* %0, i64 0, metadata !494, metadata !642), !dbg !726
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !496, metadata !642), !dbg !727
  %tobool = icmp eq i8* %lock, null, !dbg !728
  br i1 %tobool, label %cleanup, label %if.end, !dbg !730

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %lock to %union.sem_t*, !dbg !731
  %call = tail call i32 @sem_destroy(%union.sem_t* %0) #2, !dbg !732
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !495, metadata !642), !dbg !733
  %cmp = icmp eq i32 %call, 0, !dbg !734
  br i1 %cmp, label %if.end.2, label %if.then.1, !dbg !736

if.then.1:                                        ; preds = %if.end
  tail call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !737
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !496, metadata !642), !dbg !727
  br label %if.end.2, !dbg !737

if.end.2:                                         ; preds = %if.end, %if.then.1
  tail call void @PyMem_RawFree(i8* %lock) #2, !dbg !740
  br label %cleanup, !dbg !741

cleanup:                                          ; preds = %entry, %if.end.2
  ret void, !dbg !741
}

; Function Attrs: nounwind
declare i32 @sem_destroy(%union.sem_t*) #3

; Function Attrs: nounwind uwtable
define i32 @PyThread_acquire_lock_timed(i8* %lock, i64 %microseconds, i32 %intr_flag) #0 {
entry:
  %ts = alloca %struct.timespec, align 8
  %tv = alloca %struct.timeval, align 8
  tail call void @llvm.dbg.value(metadata i8* %lock, i64 0, metadata !503, metadata !642), !dbg !742
  tail call void @llvm.dbg.value(metadata i64 %microseconds, i64 0, metadata !504, metadata !642), !dbg !743
  tail call void @llvm.dbg.value(metadata i32 %intr_flag, i64 0, metadata !505, metadata !642), !dbg !744
  %0 = bitcast i8* %lock to %union.sem_t*, !dbg !745
  tail call void @llvm.dbg.value(metadata %union.sem_t* %0, i64 0, metadata !507, metadata !642), !dbg !746
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !509, metadata !642), !dbg !747
  %1 = bitcast %struct.timespec* %ts to i8*, !dbg !748
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !748
  %cmp = icmp sgt i64 %microseconds, 0, !dbg !749
  br i1 %cmp, label %do.body, label %if.else, !dbg !750

do.body:                                          ; preds = %entry
  %2 = bitcast %struct.timeval* %tv to i8*, !dbg !751
  call void @llvm.lifetime.start(i64 16, i8* %2) #2, !dbg !751
  tail call void @llvm.dbg.value(metadata %struct.timeval* %tv, i64 0, metadata !518, metadata !642), !dbg !751
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %tv, %struct.timezone* null) #2, !dbg !751
  %rem = srem i64 %microseconds, 1000000, !dbg !751
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !751
  %3 = load i64, i64* %tv_usec, align 8, !dbg !751, !tbaa !753
  %add = add i64 %3, %rem, !dbg !751
  %div = sdiv i64 %microseconds, 1000000, !dbg !751
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !751
  %4 = load i64, i64* %tv_sec, align 8, !dbg !751, !tbaa !755
  %add1 = add i64 %4, %div, !dbg !751
  %div3 = sdiv i64 %add, 1000000, !dbg !751
  %add5 = add i64 %add1, %div3, !dbg !751
  %rem7 = srem i64 %add, 1000000, !dbg !751
  %tv_sec9 = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i64 0, i32 0, !dbg !751
  store i64 %add5, i64* %tv_sec9, align 8, !dbg !751, !tbaa !756
  %mul = mul nsw i64 %rem7, 1000, !dbg !751
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i64 0, i32 1, !dbg !751
  store i64 %mul, i64* %tv_nsec, align 8, !dbg !751, !tbaa !758
  call void @llvm.lifetime.end(i64 16, i8* %2) #2, !dbg !759
  br label %do.body.11, !dbg !760

do.body.11:                                       ; preds = %do.body, %do.cond.25
  br i1 %cmp, label %if.then.13, label %if.else, !dbg !762

if.then.13:                                       ; preds = %do.body.11
  call void @llvm.dbg.value(metadata %struct.timespec* %ts, i64 0, metadata !510, metadata !642), !dbg !764
  %call14 = call i32 @sem_timedwait(%union.sem_t* %0, %struct.timespec* nonnull %ts) #2, !dbg !765
  call void @llvm.dbg.value(metadata i32 %call14, i64 0, metadata !600, metadata !642) #2, !dbg !767
  %cmp.i = icmp eq i32 %call14, -1, !dbg !769
  br i1 %cmp.i, label %cond.true.i, label %do.cond.25, !dbg !770

cond.true.i:                                      ; preds = %if.then.13
  %call.i = tail call i32* @__errno_location() #1, !dbg !771
  %5 = load i32, i32* %call.i, align 4, !dbg !771, !tbaa !773
  br label %do.cond.25, !dbg !770

if.else:                                          ; preds = %entry, %do.body.11
  %cmp16 = icmp eq i64 %microseconds, 0, !dbg !775
  br i1 %cmp16, label %if.then.17, label %if.else.20, !dbg !777

if.then.17:                                       ; preds = %if.else
  %call18 = call i32 @sem_trywait(%union.sem_t* %0) #2, !dbg !778
  call void @llvm.dbg.value(metadata i32 %call18, i64 0, metadata !600, metadata !642) #2, !dbg !779
  %cmp.i.88 = icmp eq i32 %call18, -1, !dbg !781
  br i1 %cmp.i.88, label %cond.true.i.90, label %do.cond.25, !dbg !782

cond.true.i.90:                                   ; preds = %if.then.17
  %call.i.89 = tail call i32* @__errno_location() #1, !dbg !783
  %6 = load i32, i32* %call.i.89, align 4, !dbg !783, !tbaa !773
  br label %do.cond.25, !dbg !782

if.else.20:                                       ; preds = %if.else
  %call21 = call i32 @sem_wait(%union.sem_t* %0) #2, !dbg !784
  call void @llvm.dbg.value(metadata i32 %call21, i64 0, metadata !600, metadata !642) #2, !dbg !785
  %cmp.i.93 = icmp eq i32 %call21, -1, !dbg !787
  br i1 %cmp.i.93, label %cond.true.i.95, label %do.cond.25, !dbg !788

cond.true.i.95:                                   ; preds = %if.else.20
  %call.i.94 = tail call i32* @__errno_location() #1, !dbg !789
  %7 = load i32, i32* %call.i.94, align 4, !dbg !789, !tbaa !773
  br label %do.cond.25, !dbg !788

do.cond.25:                                       ; preds = %cond.true.i.95, %if.else.20, %cond.true.i.90, %if.then.17, %cond.true.i, %if.then.13
  %status.0 = phi i32 [ %5, %cond.true.i ], [ %call14, %if.then.13 ], [ %6, %cond.true.i.90 ], [ %call18, %if.then.17 ], [ %7, %cond.true.i.95 ], [ %call21, %if.else.20 ]
  %tobool = icmp ne i32 %intr_flag, 0, !dbg !790
  %cmp26 = icmp eq i32 %status.0, 4, !dbg !792
  %not.tobool = xor i1 %tobool, true, !dbg !793
  %8 = and i1 %cmp26, %not.tobool, !dbg !793
  br i1 %8, label %do.body.11, label %do.end.27, !dbg !794

do.end.27:                                        ; preds = %do.cond.25
  %or.cond = and i1 %tobool, %cmp26, !dbg !796
  br i1 %or.cond, label %if.end.54, label %if.then.30, !dbg !796

if.then.30:                                       ; preds = %do.end.27
  br i1 %cmp, label %if.then.32, label %if.else.39, !dbg !798

if.then.32:                                       ; preds = %if.then.30
  switch i32 %status.0, label %if.then.36 [
    i32 0, label %if.end.64
    i32 110, label %if.else.57
  ], !dbg !800

if.then.36:                                       ; preds = %if.then.32
  call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !803
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !509, metadata !642), !dbg !747
  br label %if.end.54, !dbg !803

if.else.39:                                       ; preds = %if.then.30
  %cmp40 = icmp eq i64 %microseconds, 0, !dbg !808
  br i1 %cmp40, label %if.then.41, label %if.else.48, !dbg !810

if.then.41:                                       ; preds = %if.else.39
  switch i32 %status.0, label %if.then.45 [
    i32 0, label %if.end.64
    i32 11, label %if.else.57
  ], !dbg !811

if.then.45:                                       ; preds = %if.then.41
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !813
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !509, metadata !642), !dbg !747
  br label %if.end.54, !dbg !813

if.else.48:                                       ; preds = %if.else.39
  %cond = icmp eq i32 %status.0, 0, !dbg !818
  br i1 %cond, label %if.end.64, label %if.end.54.thread, !dbg !818

if.end.54.thread:                                 ; preds = %if.else.48
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !820
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !509, metadata !642), !dbg !747
  br label %if.else.57, !dbg !824

if.end.54:                                        ; preds = %if.then.36, %if.then.45, %do.end.27
  %cmp55 = icmp eq i32 %status.0, 0, !dbg !825
  br i1 %cmp55, label %if.end.64, label %if.else.57, !dbg !824

if.else.57:                                       ; preds = %if.end.54.thread, %if.then.41, %if.then.32, %if.end.54
  %. = select i1 %or.cond, i32 2, i32 0, !dbg !827
  br label %if.end.64, !dbg !827

if.end.64:                                        ; preds = %if.else.48, %if.else.57, %if.end.54, %if.then.32, %if.then.41
  %success.0 = phi i32 [ 1, %if.then.41 ], [ 1, %if.then.32 ], [ 1, %if.else.48 ], [ 1, %if.end.54 ], [ %., %if.else.57 ]
  call void @llvm.lifetime.end(i64 16, i8* %1) #2, !dbg !830
  ret i32 %success.0, !dbg !831
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #3

declare i32 @sem_timedwait(%union.sem_t*, %struct.timespec*) #8

; Function Attrs: nounwind
declare i32 @sem_trywait(%union.sem_t*) #3

declare i32 @sem_wait(%union.sem_t*) #8

; Function Attrs: nounwind uwtable
define void @PyThread_release_lock(i8* %lock) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %lock, i64 0, metadata !529, metadata !642), !dbg !832
  %0 = bitcast i8* %lock to %union.sem_t*, !dbg !833
  tail call void @llvm.dbg.value(metadata %union.sem_t* %0, i64 0, metadata !530, metadata !642), !dbg !834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !532, metadata !642), !dbg !835
  %call = tail call i32 @sem_post(%union.sem_t* %0) #2, !dbg !836
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !531, metadata !642), !dbg !837
  %cmp = icmp eq i32 %call, 0, !dbg !838
  br i1 %cmp, label %if.end, label %if.then, !dbg !840

if.then:                                          ; preds = %entry
  tail call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !841
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !532, metadata !642), !dbg !835
  br label %if.end, !dbg !841

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !844
}

; Function Attrs: nounwind
declare i32 @sem_post(%union.sem_t*) #3

; Function Attrs: nounwind uwtable
define i32 @PyThread_acquire_lock(i8* %lock, i32 %waitflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %lock, i64 0, metadata !537, metadata !642), !dbg !845
  tail call void @llvm.dbg.value(metadata i32 %waitflag, i64 0, metadata !538, metadata !642), !dbg !846
  %tobool = icmp ne i32 %waitflag, 0, !dbg !847
  %conv = sext i1 %tobool to i64, !dbg !847
  %call = tail call i32 @PyThread_acquire_lock_timed(i8* %lock, i64 %conv, i32 0), !dbg !848
  ret i32 %call, !dbg !849
}

; Function Attrs: nounwind uwtable
define i32 @PyThread_create_key() #0 {
entry:
  %key = alloca i32, align 4
  %0 = bitcast i32* %key to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !850
  tail call void @llvm.dbg.value(metadata i32* %key, i64 0, metadata !543, metadata !642), !dbg !851
  %call = call i32 @pthread_key_create(i32* nonnull %key, void (i8*)* null) #2, !dbg !852
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !545, metadata !642), !dbg !853
  %tobool = icmp ne i32 %call, 0, !dbg !854
  call void @llvm.dbg.value(metadata i32* %key, i64 0, metadata !543, metadata !642), !dbg !851
  %1 = load i32, i32* %key, align 4, !dbg !855, !tbaa !773
  %cond = select i1 %tobool, i32 -1, i32 %1, !dbg !854
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !857
  ret i32 %cond, !dbg !858
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define void @PyThread_delete_key(i32 %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !550, metadata !642), !dbg !859
  %call = tail call i32 @pthread_key_delete(i32 %key) #2, !dbg !860
  ret void, !dbg !861
}

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32) #3

; Function Attrs: nounwind uwtable
define void @PyThread_delete_key_value(i32 %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !553, metadata !642), !dbg !862
  %call = tail call i32 @pthread_setspecific(i32 %key, i8* null) #2, !dbg !863
  ret void, !dbg !864
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyThread_set_key_value(i32 %key, i8* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !558, metadata !642), !dbg !865
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !559, metadata !642), !dbg !866
  %call = tail call i32 @pthread_setspecific(i32 %key, i8* %value) #2, !dbg !867
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !560, metadata !642), !dbg !868
  %tobool = icmp ne i32 %call, 0, !dbg !869
  %cond = sext i1 %tobool to i32, !dbg !869
  ret i32 %cond, !dbg !870
}

; Function Attrs: nounwind uwtable
define i8* @PyThread_get_key_value(i32 %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !565, metadata !642), !dbg !871
  %call = tail call i8* @pthread_getspecific(i32 %key) #2, !dbg !872
  ret i8* %call, !dbg !873
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #3

; Function Attrs: nounwind readnone uwtable
define void @PyThread_ReInitTLS() #9 {
entry:
  ret void, !dbg !874
}

; Function Attrs: nounwind readonly uwtable
define i64 @PyThread_get_stacksize() #10 {
entry:
  %0 = load i64, i64* @_pythread_stacksize, align 8, !dbg !875, !tbaa !656
  ret i64 %0, !dbg !876
}

; Function Attrs: nounwind uwtable
define i32 @PyThread_set_stacksize(i64 %size) #0 {
entry:
  %attrs.i = alloca %union.pthread_attr_t, align 8
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !574, metadata !642), !dbg !877
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !603, metadata !642) #2, !dbg !878
  %0 = bitcast %union.pthread_attr_t* %attrs.i to i8*, !dbg !880
  call void @llvm.lifetime.start(i64 56, i8* %0) #2, !dbg !880
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !606, metadata !642) #2, !dbg !881
  %cmp.i = icmp eq i64 %size, 0, !dbg !882
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !884

if.then.i:                                        ; preds = %entry
  store i64 0, i64* @_pythread_stacksize, align 8, !dbg !885, !tbaa !656
  br label %_pythread_pthread_set_stacksize.exit, !dbg !887

if.end.i:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64 32768, i64 0, metadata !605, metadata !642) #2, !dbg !888
  %cmp1.i = icmp ugt i64 %size, 32767, !dbg !889
  br i1 %cmp1.i, label %if.then.2.i, label %_pythread_pthread_set_stacksize.exit, !dbg !891

if.then.2.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs.i, i64 0, metadata !604, metadata !642) #2, !dbg !892
  %call.i = call i32 @pthread_attr_init(%union.pthread_attr_t* nonnull %attrs.i) #2, !dbg !893
  %cmp3.i = icmp eq i32 %call.i, 0, !dbg !896
  br i1 %cmp3.i, label %if.then.4.i, label %_pythread_pthread_set_stacksize.exit, !dbg !897

if.then.4.i:                                      ; preds = %if.then.2.i
  call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs.i, i64 0, metadata !604, metadata !642) #2, !dbg !892
  %call5.i = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* nonnull %attrs.i, i64 %size) #2, !dbg !898
  call void @llvm.dbg.value(metadata i32 %call5.i, i64 0, metadata !606, metadata !642) #2, !dbg !881
  call void @llvm.dbg.value(metadata %union.pthread_attr_t* %attrs.i, i64 0, metadata !604, metadata !642) #2, !dbg !892
  %call6.i = call i32 @pthread_attr_destroy(%union.pthread_attr_t* nonnull %attrs.i) #2, !dbg !900
  %cmp7.i = icmp eq i32 %call5.i, 0, !dbg !901
  br i1 %cmp7.i, label %if.then.8.i, label %_pythread_pthread_set_stacksize.exit, !dbg !903

if.then.8.i:                                      ; preds = %if.then.4.i
  store i64 %size, i64* @_pythread_stacksize, align 8, !dbg !904, !tbaa !656
  br label %_pythread_pthread_set_stacksize.exit, !dbg !906

_pythread_pthread_set_stacksize.exit:             ; preds = %if.then.i, %if.end.i, %if.then.2.i, %if.then.4.i, %if.then.8.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %if.then.8.i ], [ -1, %if.then.2.i ], [ -1, %if.then.4.i ], [ -1, %if.end.i ], !dbg !907
  call void @llvm.lifetime.end(i64 56, i8* %0) #2, !dbg !908
  ret i32 %retval.0.i, !dbg !909
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyThread_GetInfo() #0 {
entry:
  %buffer = alloca [255 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !581, metadata !642), !dbg !910
  %0 = getelementptr inbounds [255 x i8], [255 x i8]* %buffer, i64 0, i64 0, !dbg !911
  call void @llvm.lifetime.start(i64 255, i8* %0) #2, !dbg !911
  tail call void @llvm.dbg.declare(metadata [255 x i8]* %buffer, metadata !582, metadata !642), !dbg !912
  %1 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ThreadInfoType, i64 0, i32 1), align 8, !dbg !913, !tbaa !915
  %cmp = icmp eq i8* %1, null, !dbg !920
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !921

if.then:                                          ; preds = %entry
  %call = tail call i32 @PyStructSequence_InitType2(%struct._typeobject* nonnull @ThreadInfoType, %struct.PyStructSequence_Desc* nonnull @threadinfo_desc) #2, !dbg !922
  %cmp1 = icmp slt i32 %call, 0, !dbg !925
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !926

if.end.3:                                         ; preds = %if.then, %entry
  %call4 = tail call %struct._object* @PyStructSequence_New(%struct._typeobject* nonnull @ThreadInfoType) #2, !dbg !927
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !579, metadata !642), !dbg !928
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !929
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !931

if.end.7:                                         ; preds = %if.end.3
  %call8 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !932
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !580, metadata !642), !dbg !933
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !934
  br i1 %cmp9, label %do.body, label %if.end.14, !dbg !935

do.body:                                          ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !587, metadata !642), !dbg !936
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !938
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !938, !tbaa !940
  %dec = add i64 %2, -1, !dbg !938
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !938, !tbaa !940
  %cmp11 = icmp eq i64 %dec, 0, !dbg !938
  br i1 %cmp11, label %if.else, label %cleanup, !dbg !941

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !942
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !942, !tbaa !944
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !942
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !942, !tbaa !945
  tail call void %4(%struct._object* %call4) #2, !dbg !942
  br label %cleanup

if.end.14:                                        ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !581, metadata !642), !dbg !910
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call4, i64 1, i32 1, !dbg !946
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !946
  store %struct._object* %call8, %struct._object** %arrayidx, align 8, !dbg !946, !tbaa !947
  %call15 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #2, !dbg !948
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !580, metadata !642), !dbg !933
  %cmp16 = icmp eq %struct._object* %call15, null, !dbg !949
  br i1 %cmp16, label %do.body.18, label %if.end.30, !dbg !950

do.body.18:                                       ; preds = %if.end.14
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !591, metadata !642), !dbg !951
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !953
  %5 = load i64, i64* %ob_refcnt20, align 8, !dbg !953, !tbaa !940
  %dec21 = add i64 %5, -1, !dbg !953
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !953, !tbaa !940
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !953
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !955

if.else.24:                                       ; preds = %do.body.18
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !956
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !956, !tbaa !944
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !956
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !956, !tbaa !945
  tail call void %7(%struct._object* %call4) #2, !dbg !956
  br label %cleanup

if.end.30:                                        ; preds = %if.end.14
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !581, metadata !642), !dbg !910
  %arrayidx34 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !958
  %8 = bitcast %struct._typeobject** %arrayidx34 to %struct._object**, !dbg !958
  store %struct._object* %call15, %struct._object** %8, align 8, !dbg !958, !tbaa !947
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !580, metadata !642), !dbg !933
  %call35 = call i64 @confstr(i32 3, i8* %0, i64 255) #2, !dbg !959
  %conv = trunc i64 %call35 to i32, !dbg !959
  call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !586, metadata !642), !dbg !960
  %cmp36 = icmp sgt i32 %conv, 1, !dbg !961
  br i1 %cmp36, label %land.lhs.true, label %if.then.52, !dbg !963

land.lhs.true:                                    ; preds = %if.end.30
  %sext = shl i64 %call35, 32, !dbg !964
  %conv38 = ashr exact i64 %sext, 32, !dbg !964
  %cmp39 = icmp ult i64 %conv38, 255, !dbg !966
  br i1 %cmp39, label %if.then.41, label %if.then.52, !dbg !967

if.then.41:                                       ; preds = %land.lhs.true
  %sext89 = add i64 %sext, -4294967296, !dbg !968
  %conv43 = ashr exact i64 %sext89, 32, !dbg !968
  %call44 = call %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8* %0, i64 %conv43) #2, !dbg !970
  call void @llvm.dbg.value(metadata %struct._object* %call44, i64 0, metadata !580, metadata !642), !dbg !933
  %cmp45 = icmp eq %struct._object* %call44, null, !dbg !971
  br i1 %cmp45, label %if.then.47, label %if.end.54, !dbg !973

if.then.47:                                       ; preds = %if.then.41
  call void @PyErr_Clear() #2, !dbg !974
  br label %if.then.52, !dbg !974

if.then.52:                                       ; preds = %if.then.47, %land.lhs.true, %if.end.30
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !975, !tbaa !940
  %inc53 = add i64 %9, 1, !dbg !975
  store i64 %inc53, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !975, !tbaa !940
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !580, metadata !642), !dbg !933
  br label %if.end.54, !dbg !978

if.end.54:                                        ; preds = %if.then.41, %if.then.52
  %value.1 = phi %struct._object* [ @_Py_NoneStruct, %if.then.52 ], [ %call44, %if.then.41 ]
  %arrayidx58 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !979
  %10 = bitcast %struct._typeobject** %arrayidx58 to %struct._object**, !dbg !979
  store %struct._object* %value.1, %struct._object** %10, align 8, !dbg !979, !tbaa !947
  br label %cleanup, !dbg !980

cleanup:                                          ; preds = %if.else.24, %do.body.18, %if.else, %do.body, %if.end.3, %if.then, %if.end.54
  %retval.0 = phi %struct._object* [ %call4, %if.end.54 ], [ null, %if.then ], [ null, %if.end.3 ], [ null, %do.body ], [ null, %if.else ], [ null, %do.body.18 ], [ null, %if.else.24 ]
  call void @llvm.lifetime.end(i64 255, i8* %0) #2, !dbg !981
  ret %struct._object* %retval.0, !dbg !981
}

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #8

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #8

declare %struct._object* @PyUnicode_FromString(i8*) #8

; Function Attrs: nounwind
declare i64 @confstr(i32, i8*, i64) #3

declare %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8*, i64) #8

declare void @PyErr_Clear() #8

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!635, !636}
!llvm.ident = !{!637}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !81, subprograms: !449, globals: !607)
!1 = !DIFile(filename: "Python/thread.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !8, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 164, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/pthread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 0)
!7 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyLockStatus", file: !9, line: 14, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "Include/pythread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "PY_LOCK_FAILURE", value: 0)
!12 = !DIEnumerator(name: "PY_LOCK_ACQUIRED", value: 1)
!13 = !DIEnumerator(name: "PY_LOCK_INTR", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 534, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!17 = !DIEnumerator(name: "_CS_PATH", value: 0)
!18 = !DIEnumerator(name: "_CS_V6_WIDTH_RESTRICTED_ENVS", value: 1)
!19 = !DIEnumerator(name: "_CS_GNU_LIBC_VERSION", value: 2)
!20 = !DIEnumerator(name: "_CS_GNU_LIBPTHREAD_VERSION", value: 3)
!21 = !DIEnumerator(name: "_CS_V5_WIDTH_RESTRICTED_ENVS", value: 4)
!22 = !DIEnumerator(name: "_CS_V7_WIDTH_RESTRICTED_ENVS", value: 5)
!23 = !DIEnumerator(name: "_CS_LFS_CFLAGS", value: 1000)
!24 = !DIEnumerator(name: "_CS_LFS_LDFLAGS", value: 1001)
!25 = !DIEnumerator(name: "_CS_LFS_LIBS", value: 1002)
!26 = !DIEnumerator(name: "_CS_LFS_LINTFLAGS", value: 1003)
!27 = !DIEnumerator(name: "_CS_LFS64_CFLAGS", value: 1004)
!28 = !DIEnumerator(name: "_CS_LFS64_LDFLAGS", value: 1005)
!29 = !DIEnumerator(name: "_CS_LFS64_LIBS", value: 1006)
!30 = !DIEnumerator(name: "_CS_LFS64_LINTFLAGS", value: 1007)
!31 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_CFLAGS", value: 1100)
!32 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_LDFLAGS", value: 1101)
!33 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_LIBS", value: 1102)
!34 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_LINTFLAGS", value: 1103)
!35 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_CFLAGS", value: 1104)
!36 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_LDFLAGS", value: 1105)
!37 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_LIBS", value: 1106)
!38 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_LINTFLAGS", value: 1107)
!39 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_CFLAGS", value: 1108)
!40 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_LDFLAGS", value: 1109)
!41 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_LIBS", value: 1110)
!42 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_LINTFLAGS", value: 1111)
!43 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_CFLAGS", value: 1112)
!44 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_LDFLAGS", value: 1113)
!45 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_LIBS", value: 1114)
!46 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS", value: 1115)
!47 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_CFLAGS", value: 1116)
!48 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_LDFLAGS", value: 1117)
!49 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_LIBS", value: 1118)
!50 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS", value: 1119)
!51 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS", value: 1120)
!52 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS", value: 1121)
!53 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_LIBS", value: 1122)
!54 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS", value: 1123)
!55 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_CFLAGS", value: 1124)
!56 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_LDFLAGS", value: 1125)
!57 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_LIBS", value: 1126)
!58 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_LINTFLAGS", value: 1127)
!59 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS", value: 1128)
!60 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS", value: 1129)
!61 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_LIBS", value: 1130)
!62 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS", value: 1131)
!63 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_CFLAGS", value: 1132)
!64 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_LDFLAGS", value: 1133)
!65 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_LIBS", value: 1134)
!66 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS", value: 1135)
!67 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS", value: 1136)
!68 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS", value: 1137)
!69 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_LIBS", value: 1138)
!70 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS", value: 1139)
!71 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_CFLAGS", value: 1140)
!72 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_LDFLAGS", value: 1141)
!73 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_LIBS", value: 1142)
!74 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_LINTFLAGS", value: 1143)
!75 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS", value: 1144)
!76 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS", value: 1145)
!77 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_LIBS", value: 1146)
!78 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS", value: 1147)
!79 = !DIEnumerator(name: "_CS_V6_ENV", value: 1148)
!80 = !DIEnumerator(name: "_CS_V7_ENV", value: 1149)
!81 = !{!82, !85, !86, !87, !98, !99, !106, !441}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !89, line: 40, baseType: !90)
!89 = !DIFile(filename: "/usr/include/bits/semaphore.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!90 = !DICompositeType(tag: DW_TAG_union_type, file: !89, line: 36, size: 256, align: 64, elements: !91)
!91 = !{!92, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !90, file: !89, line: 38, baseType: !93, size: 256, align: 8)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, align: 8, elements: !95)
!94 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !{!96}
!96 = !DISubrange(count: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !90, file: !89, line: 39, baseType: !86, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !9, line: 5, baseType: !85)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !101, line: 56, size: 64, align: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/sys/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!102 = !{!103, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !100, file: !101, line: 58, baseType: !104, size: 32, align: 32)
!104 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !100, file: !101, line: 59, baseType: !104, size: 32, align: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !108, line: 109, baseType: !109)
!108 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !108, line: 105, size: 128, align: 64, elements: !110)
!110 = !{!111, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !109, file: !108, line: 107, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !113, line: 177, baseType: !114)
!113 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !115, line: 102, baseType: !116)
!115 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !117, line: 181, baseType: !86)
!117 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !109, file: !108, line: 108, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !108, line: 334, size: 3200, align: 64, elements: !121)
!121 = !{!122, !128, !131, !132, !133, !138, !200, !205, !210, !211, !216, !268, !299, !311, !317, !318, !319, !321, !323, !354, !355, !356, !365, !366, !371, !372, !374, !376, !386, !389, !407, !408, !409, !411, !413, !414, !416, !421, !426, !431, !432, !433, !434, !435, !436, !437, !438, !440}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !120, file: !108, line: 335, baseType: !123, size: 192, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !108, line: 114, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 111, size: 192, align: 64, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !124, file: !108, line: 112, baseType: !107, size: 128, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !124, file: !108, line: 113, baseType: !112, size: 64, align: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !120, file: !108, line: 336, baseType: !129, size: 64, align: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !120, file: !108, line: 337, baseType: !112, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !120, file: !108, line: 337, baseType: !112, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !120, file: !108, line: 341, baseType: !134, size: 64, align: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !108, line: 308, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !106}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !120, file: !108, line: 342, baseType: !139, size: 64, align: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !108, line: 314, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!104, !106, !143, !104}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 48, baseType: !145)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 246, size: 1728, align: 64, elements: !147)
!146 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!147 = !{!148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !169, !170, !171, !172, !174, !176, !178, !182, !185, !187, !188, !189, !190, !191, !195, !196}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !145, file: !146, line: 247, baseType: !104, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !145, file: !146, line: 252, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !145, file: !146, line: 253, baseType: !150, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !145, file: !146, line: 254, baseType: !150, size: 64, align: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !145, file: !146, line: 255, baseType: !150, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !145, file: !146, line: 256, baseType: !150, size: 64, align: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !145, file: !146, line: 257, baseType: !150, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !145, file: !146, line: 258, baseType: !150, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !145, file: !146, line: 259, baseType: !150, size: 64, align: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !145, file: !146, line: 261, baseType: !150, size: 64, align: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !145, file: !146, line: 262, baseType: !150, size: 64, align: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !145, file: !146, line: 263, baseType: !150, size: 64, align: 64, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !145, file: !146, line: 265, baseType: !162, size: 64, align: 64, offset: 768)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !146, line: 161, size: 192, align: 64, elements: !164)
!164 = !{!165, !166, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !163, file: !146, line: 162, baseType: !162, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !163, file: !146, line: 163, baseType: !167, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !163, file: !146, line: 167, baseType: !104, size: 32, align: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !145, file: !146, line: 267, baseType: !167, size: 64, align: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !145, file: !146, line: 269, baseType: !104, size: 32, align: 32, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !145, file: !146, line: 273, baseType: !104, size: 32, align: 32, offset: 928)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !145, file: !146, line: 275, baseType: !173, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !117, line: 140, baseType: !86)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !145, file: !146, line: 279, baseType: !175, size: 16, align: 16, offset: 1024)
!175 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !145, file: !146, line: 280, baseType: !177, size: 8, align: 8, offset: 1040)
!177 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !145, file: !146, line: 281, baseType: !179, size: 8, align: 8, offset: 1048)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 8, align: 8, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 1)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !145, file: !146, line: 285, baseType: !183, size: 64, align: 64, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !146, line: 155, baseType: null)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !145, file: !146, line: 294, baseType: !186, size: 64, align: 64, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !117, line: 141, baseType: !86)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !145, file: !146, line: 303, baseType: !85, size: 64, align: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !145, file: !146, line: 304, baseType: !85, size: 64, align: 64, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !145, file: !146, line: 305, baseType: !85, size: 64, align: 64, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !145, file: !146, line: 306, baseType: !85, size: 64, align: 64, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !145, file: !146, line: 307, baseType: !192, size: 64, align: 64, offset: 1472)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 62, baseType: !194)
!193 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!194 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !145, file: !146, line: 309, baseType: !104, size: 32, align: 32, offset: 1536)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !145, file: !146, line: 311, baseType: !197, size: 160, align: 8, offset: 1568)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 160, align: 8, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 20)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !120, file: !108, line: 343, baseType: !201, size: 64, align: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !108, line: 316, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!106, !106, !150}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !120, file: !108, line: 344, baseType: !206, size: 64, align: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !108, line: 318, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!104, !106, !150, !106}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !120, file: !108, line: 345, baseType: !85, size: 64, align: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !120, file: !108, line: 346, baseType: !212, size: 64, align: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !108, line: 320, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!106, !106}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !120, file: !108, line: 350, baseType: !217, size: 64, align: 64, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !108, line: 278, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 236, size: 2176, align: 64, elements: !220)
!220 = !{!221, !226, !227, !228, !229, !230, !235, !237, !238, !239, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !219, file: !108, line: 241, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !108, line: 166, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!106, !106, !106}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !219, file: !108, line: 242, baseType: !222, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !219, file: !108, line: 243, baseType: !222, size: 64, align: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !219, file: !108, line: 244, baseType: !222, size: 64, align: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !219, file: !108, line: 245, baseType: !222, size: 64, align: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !219, file: !108, line: 246, baseType: !231, size: 64, align: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !108, line: 167, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!106, !106, !106, !106}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !219, file: !108, line: 247, baseType: !236, size: 64, align: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !108, line: 165, baseType: !213)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !219, file: !108, line: 248, baseType: !236, size: 64, align: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !219, file: !108, line: 249, baseType: !236, size: 64, align: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !219, file: !108, line: 250, baseType: !240, size: 64, align: 64, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !108, line: 168, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!104, !106}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !219, file: !108, line: 251, baseType: !236, size: 64, align: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !219, file: !108, line: 252, baseType: !222, size: 64, align: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !219, file: !108, line: 253, baseType: !222, size: 64, align: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !219, file: !108, line: 254, baseType: !222, size: 64, align: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !219, file: !108, line: 255, baseType: !222, size: 64, align: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !219, file: !108, line: 256, baseType: !222, size: 64, align: 64, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !219, file: !108, line: 257, baseType: !236, size: 64, align: 64, offset: 1024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !219, file: !108, line: 258, baseType: !85, size: 64, align: 64, offset: 1088)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !219, file: !108, line: 259, baseType: !236, size: 64, align: 64, offset: 1152)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !219, file: !108, line: 261, baseType: !222, size: 64, align: 64, offset: 1216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !219, file: !108, line: 262, baseType: !222, size: 64, align: 64, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !219, file: !108, line: 263, baseType: !222, size: 64, align: 64, offset: 1344)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !219, file: !108, line: 264, baseType: !222, size: 64, align: 64, offset: 1408)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !219, file: !108, line: 265, baseType: !231, size: 64, align: 64, offset: 1472)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !219, file: !108, line: 266, baseType: !222, size: 64, align: 64, offset: 1536)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !219, file: !108, line: 267, baseType: !222, size: 64, align: 64, offset: 1600)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !219, file: !108, line: 268, baseType: !222, size: 64, align: 64, offset: 1664)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !219, file: !108, line: 269, baseType: !222, size: 64, align: 64, offset: 1728)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !219, file: !108, line: 270, baseType: !222, size: 64, align: 64, offset: 1792)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !219, file: !108, line: 272, baseType: !222, size: 64, align: 64, offset: 1856)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !219, file: !108, line: 273, baseType: !222, size: 64, align: 64, offset: 1920)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !219, file: !108, line: 274, baseType: !222, size: 64, align: 64, offset: 1984)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !219, file: !108, line: 275, baseType: !222, size: 64, align: 64, offset: 2048)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !219, file: !108, line: 277, baseType: !236, size: 64, align: 64, offset: 2112)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !120, file: !108, line: 351, baseType: !269, size: 64, align: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !108, line: 292, baseType: !271)
!271 = !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 280, size: 640, align: 64, elements: !272)
!272 = !{!273, !278, !279, !284, !285, !286, !291, !292, !297, !298}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !271, file: !108, line: 281, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !108, line: 169, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!112, !106}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !271, file: !108, line: 282, baseType: !222, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !271, file: !108, line: 283, baseType: !280, size: 64, align: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !108, line: 170, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!106, !106, !112}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !271, file: !108, line: 284, baseType: !280, size: 64, align: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !271, file: !108, line: 285, baseType: !85, size: 64, align: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !271, file: !108, line: 286, baseType: !287, size: 64, align: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !108, line: 172, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!104, !106, !112, !106}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !271, file: !108, line: 287, baseType: !85, size: 64, align: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !271, file: !108, line: 288, baseType: !293, size: 64, align: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !108, line: 231, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!104, !106, !106}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !271, file: !108, line: 290, baseType: !222, size: 64, align: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !271, file: !108, line: 291, baseType: !280, size: 64, align: 64, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !120, file: !108, line: 352, baseType: !300, size: 64, align: 64, offset: 896)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !108, line: 298, baseType: !302)
!302 = !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 294, size: 192, align: 64, elements: !303)
!303 = !{!304, !305, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !302, file: !108, line: 295, baseType: !274, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !302, file: !108, line: 296, baseType: !222, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !302, file: !108, line: 297, baseType: !307, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !108, line: 174, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!104, !106, !106, !106}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !120, file: !108, line: 356, baseType: !312, size: 64, align: 64, offset: 960)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !108, line: 321, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !106}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !113, line: 186, baseType: !112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !120, file: !108, line: 357, baseType: !231, size: 64, align: 64, offset: 1024)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !120, file: !108, line: 358, baseType: !212, size: 64, align: 64, offset: 1088)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !120, file: !108, line: 359, baseType: !320, size: 64, align: 64, offset: 1152)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !108, line: 317, baseType: !223)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !120, file: !108, line: 360, baseType: !322, size: 64, align: 64, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !108, line: 319, baseType: !308)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !120, file: !108, line: 363, baseType: !324, size: 64, align: 64, offset: 1280)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !108, line: 304, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 301, size: 128, align: 64, elements: !327)
!327 = !{!328, !349}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !326, file: !108, line: 302, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !108, line: 193, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!104, !106, !333, !104}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !108, line: 191, baseType: !335)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !108, line: 178, size: 640, align: 64, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !346, !347, !348}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !335, file: !108, line: 179, baseType: !85, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !335, file: !108, line: 180, baseType: !106, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !335, file: !108, line: 181, baseType: !112, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !335, file: !108, line: 182, baseType: !112, size: 64, align: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !335, file: !108, line: 184, baseType: !104, size: 32, align: 32, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !335, file: !108, line: 185, baseType: !104, size: 32, align: 32, offset: 288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !335, file: !108, line: 186, baseType: !150, size: 64, align: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !335, file: !108, line: 187, baseType: !345, size: 64, align: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !335, file: !108, line: 188, baseType: !345, size: 64, align: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !335, file: !108, line: 189, baseType: !345, size: 64, align: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !335, file: !108, line: 190, baseType: !85, size: 64, align: 64, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !326, file: !108, line: 303, baseType: !350, size: 64, align: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !108, line: 194, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !106, !333}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !120, file: !108, line: 366, baseType: !194, size: 64, align: 64, offset: 1344)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !120, file: !108, line: 368, baseType: !129, size: 64, align: 64, offset: 1408)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !120, file: !108, line: 372, baseType: !357, size: 64, align: 64, offset: 1472)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !108, line: 233, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!104, !106, !361, !85}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !108, line: 232, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!104, !106, !85}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !120, file: !108, line: 375, baseType: !240, size: 64, align: 64, offset: 1536)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !120, file: !108, line: 379, baseType: !367, size: 64, align: 64, offset: 1600)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !108, line: 322, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!106, !106, !106, !104}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !120, file: !108, line: 382, baseType: !112, size: 64, align: 64, offset: 1664)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !120, file: !108, line: 385, baseType: !373, size: 64, align: 64, offset: 1728)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !108, line: 323, baseType: !213)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !120, file: !108, line: 386, baseType: !375, size: 64, align: 64, offset: 1792)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !108, line: 324, baseType: !213)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !120, file: !108, line: 389, baseType: !377, size: 64, align: 64, offset: 1856)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !379, line: 40, size: 256, align: 64, elements: !380)
!379 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!380 = !{!381, !382, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !378, file: !379, line: 41, baseType: !129, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !378, file: !379, line: 42, baseType: !383, size: 64, align: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !379, line: 18, baseType: !223)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !378, file: !379, line: 43, baseType: !104, size: 32, align: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !378, file: !379, line: 45, baseType: !129, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !120, file: !108, line: 390, baseType: !387, size: 64, align: 64, offset: 1920)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !108, line: 390, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !120, file: !108, line: 391, baseType: !390, size: 64, align: 64, offset: 1984)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !392, line: 11, size: 320, align: 64, elements: !393)
!392 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!393 = !{!394, !395, !400, !405, !406}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !392, line: 12, baseType: !150, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !391, file: !392, line: 13, baseType: !396, size: 64, align: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !392, line: 8, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!106, !106, !85}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !391, file: !392, line: 14, baseType: !401, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !392, line: 9, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!104, !106, !106, !85}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !391, file: !392, line: 15, baseType: !150, size: 64, align: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !391, file: !392, line: 16, baseType: !85, size: 64, align: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !120, file: !108, line: 392, baseType: !119, size: 64, align: 64, offset: 2048)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !120, file: !108, line: 393, baseType: !106, size: 64, align: 64, offset: 2112)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !120, file: !108, line: 394, baseType: !410, size: 64, align: 64, offset: 2176)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !108, line: 325, baseType: !232)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !120, file: !108, line: 395, baseType: !412, size: 64, align: 64, offset: 2240)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !108, line: 326, baseType: !308)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !120, file: !108, line: 396, baseType: !112, size: 64, align: 64, offset: 2304)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !120, file: !108, line: 397, baseType: !415, size: 64, align: 64, offset: 2368)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !108, line: 327, baseType: !308)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !120, file: !108, line: 398, baseType: !417, size: 64, align: 64, offset: 2432)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !108, line: 329, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!106, !119, !112}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !120, file: !108, line: 399, baseType: !422, size: 64, align: 64, offset: 2496)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !108, line: 328, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!106, !119, !106, !106}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !120, file: !108, line: 400, baseType: !427, size: 64, align: 64, offset: 2560)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !108, line: 307, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !85}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !120, file: !108, line: 401, baseType: !240, size: 64, align: 64, offset: 2624)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !120, file: !108, line: 402, baseType: !106, size: 64, align: 64, offset: 2688)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !120, file: !108, line: 403, baseType: !106, size: 64, align: 64, offset: 2752)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !120, file: !108, line: 404, baseType: !106, size: 64, align: 64, offset: 2816)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !120, file: !108, line: 405, baseType: !106, size: 64, align: 64, offset: 2880)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !120, file: !108, line: 406, baseType: !106, size: 64, align: 64, offset: 2944)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !120, file: !108, line: 407, baseType: !134, size: 64, align: 64, offset: 3008)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !120, file: !108, line: 410, baseType: !439, size: 32, align: 32, offset: 3072)
!439 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !120, file: !108, line: 412, baseType: !134, size: 64, align: 64, offset: 3136)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !443, line: 33, baseType: !444)
!443 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!444 = !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 25, size: 256, align: 64, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !444, file: !443, line: 26, baseType: !123, size: 192, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !444, file: !443, line: 27, baseType: !448, size: 64, align: 64, offset: 192)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, align: 64, elements: !180)
!449 = !{!450, !454, !475, !481, !482, !489, !497, !527, !533, !539, !546, !551, !554, !561, !566, !567, !570, !575, !595, !596, !601}
!450 = !DISubprogram(name: "PyThread_init_thread", scope: !1, file: !1, line: 60, type: !451, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyThread_init_thread, variables: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null}
!453 = !{}
!454 = !DISubprogram(name: "PyThread_start_new_thread", scope: !455, file: !455, line: 186, type: !456, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i64 (void (i8*)*, i8*)* @PyThread_start_new_thread, variables: !458)
!455 = !DIFile(filename: "Python/thread_pthread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!456 = !DISubroutineType(types: !457)
!457 = !{!86, !428, !85}
!458 = !{!459, !460, !461, !464, !465, !474}
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !454, file: !455, line: 186, type: !428)
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !454, file: !455, line: 186, type: !85)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "th", scope: !454, file: !455, line: 188, type: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !463, line: 60, baseType: !194)
!463 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !454, file: !455, line: 189, type: !104)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attrs", scope: !454, file: !455, line: 191, type: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !463, line: 69, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !463, line: 63, size: 448, align: 64, elements: !468)
!468 = !{!469, !473}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !467, file: !463, line: 65, baseType: !470, size: 448, align: 8)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 448, align: 8, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 56)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !467, file: !463, line: 66, baseType: !86, size: 64, align: 64)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tss", scope: !454, file: !455, line: 194, type: !192)
!475 = !DISubprogram(name: "PyThread_get_thread_ident", scope: !455, file: !455, line: 251, type: !476, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @PyThread_get_thread_ident, variables: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!86}
!478 = !{!479}
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadid", scope: !475, file: !455, line: 253, type: !480)
!480 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !462)
!481 = !DISubprogram(name: "PyThread_exit_thread", scope: !455, file: !455, line: 261, type: !451, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyThread_exit_thread, variables: !453)
!482 = !DISubprogram(name: "PyThread_allocate_lock", scope: !455, file: !455, line: 276, type: !483, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @PyThread_allocate_lock, variables: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!98}
!485 = !{!486, !487, !488}
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lock", scope: !482, file: !455, line: 278, type: !87)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !482, file: !455, line: 279, type: !104)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !482, file: !455, line: 279, type: !104)
!489 = !DISubprogram(name: "PyThread_free_lock", scope: !455, file: !455, line: 302, type: !490, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyThread_free_lock, variables: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !98}
!492 = !{!493, !494, !495, !496}
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !489, file: !455, line: 302, type: !98)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thelock", scope: !489, file: !455, line: 304, type: !87)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !489, file: !455, line: 305, type: !104)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !489, file: !455, line: 305, type: !104)
!497 = !DISubprogram(name: "PyThread_acquire_lock_timed", scope: !455, file: !455, line: 332, type: !498, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, i32)* @PyThread_acquire_lock_timed, variables: !502)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !98, !501, !104}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLockStatus", file: !9, line: 18, baseType: !8)
!501 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !518}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !497, file: !455, line: 332, type: !98)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "microseconds", arg: 2, scope: !497, file: !455, line: 332, type: !501)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intr_flag", arg: 3, scope: !497, file: !455, line: 333, type: !104)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "success", scope: !497, file: !455, line: 335, type: !500)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thelock", scope: !497, file: !455, line: 336, type: !87)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !497, file: !455, line: 337, type: !104)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !497, file: !455, line: 337, type: !104)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ts", scope: !497, file: !455, line: 338, type: !511)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !512, line: 120, size: 128, align: 64, elements: !513)
!512 = !DIFile(filename: "/usr/include/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!513 = !{!514, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !511, file: !512, line: 122, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !117, line: 148, baseType: !86)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !511, file: !512, line: 123, baseType: !517, size: 64, align: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !117, line: 184, baseType: !86)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv", scope: !519, file: !455, line: 345, type: !521)
!519 = distinct !DILexicalBlock(scope: !520, file: !455, line: 345, column: 9)
!520 = distinct !DILexicalBlock(scope: !497, file: !455, line: 344, column: 9)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !522, line: 30, size: 128, align: 64, elements: !523)
!522 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !521, file: !522, line: 32, baseType: !515, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !521, file: !522, line: 33, baseType: !526, size: 64, align: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !117, line: 150, baseType: !86)
!527 = !DISubprogram(name: "PyThread_release_lock", scope: !455, file: !455, line: 386, type: !490, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyThread_release_lock, variables: !528)
!528 = !{!529, !530, !531, !532}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !527, file: !455, line: 386, type: !98)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thelock", scope: !527, file: !455, line: 388, type: !87)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !527, file: !455, line: 389, type: !104)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !527, file: !455, line: 389, type: !104)
!533 = !DISubprogram(name: "PyThread_acquire_lock", scope: !455, file: !455, line: 554, type: !534, isLocal: false, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @PyThread_acquire_lock, variables: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!104, !98, !104}
!536 = !{!537, !538}
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !533, file: !455, line: 554, type: !98)
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "waitflag", arg: 2, scope: !533, file: !455, line: 554, type: !104)
!539 = !DISubprogram(name: "PyThread_create_key", scope: !455, file: !455, line: 607, type: !540, isLocal: false, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyThread_create_key, variables: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!104}
!542 = !{!543, !545}
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !539, file: !455, line: 609, type: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !463, line: 154, baseType: !439)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fail", scope: !539, file: !455, line: 610, type: !104)
!546 = !DISubprogram(name: "PyThread_delete_key", scope: !455, file: !455, line: 615, type: !547, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @PyThread_delete_key, variables: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !104}
!549 = !{!550}
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !546, file: !455, line: 615, type: !104)
!551 = !DISubprogram(name: "PyThread_delete_key_value", scope: !455, file: !455, line: 621, type: !547, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @PyThread_delete_key_value, variables: !552)
!552 = !{!553}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !551, file: !455, line: 621, type: !104)
!554 = !DISubprogram(name: "PyThread_set_key_value", scope: !455, file: !455, line: 627, type: !555, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*)* @PyThread_set_key_value, variables: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!104, !104, !85}
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !554, file: !455, line: 627, type: !104)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !554, file: !455, line: 627, type: !85)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fail", scope: !554, file: !455, line: 629, type: !104)
!561 = !DISubprogram(name: "PyThread_get_key_value", scope: !455, file: !455, line: 635, type: !562, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @PyThread_get_key_value, variables: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!85, !104}
!564 = !{!565}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !561, file: !455, line: 635, type: !104)
!566 = !DISubprogram(name: "PyThread_ReInitTLS", scope: !455, file: !455, line: 641, type: !451, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyThread_ReInitTLS, variables: !453)
!567 = !DISubprogram(name: "PyThread_get_stacksize", scope: !1, file: !1, line: 103, type: !568, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @PyThread_get_stacksize, variables: !453)
!568 = !DISubroutineType(types: !569)
!569 = !{!192}
!570 = !DISubprogram(name: "PyThread_set_stacksize", scope: !1, file: !1, line: 114, type: !571, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64)* @PyThread_set_stacksize, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!104, !192}
!573 = !{!574}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !570, file: !1, line: 114, type: !192)
!575 = !DISubprogram(name: "PyThread_GetInfo", scope: !1, file: !1, line: 388, type: !576, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyThread_GetInfo, variables: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{!106}
!578 = !{!579, !580, !581, !582, !586, !587, !591}
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadinfo", scope: !575, file: !1, line: 390, type: !106)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !575, file: !1, line: 390, type: !106)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !575, file: !1, line: 391, type: !104)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !575, file: !1, line: 394, type: !583)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2040, align: 8, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 255)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !575, file: !1, line: 395, type: !104)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !588, file: !1, line: 409, type: !106)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 409, column: 9)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 408, column: 24)
!590 = distinct !DILexicalBlock(scope: !575, file: !1, line: 408, column: 9)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !592, file: !1, line: 421, type: !106)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 421, column: 9)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 420, column: 24)
!594 = distinct !DILexicalBlock(scope: !575, file: !1, line: 420, column: 9)
!595 = !DISubprogram(name: "PyThread__init_thread", scope: !455, file: !455, line: 170, type: !451, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, variables: !453)
!596 = !DISubprogram(name: "fix_status", scope: !455, file: !455, line: 326, type: !597, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, variables: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!104, !104}
!599 = !{!600}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !596, file: !455, line: 326, type: !104)
!601 = !DISubprogram(name: "_pythread_pthread_set_stacksize", scope: !455, file: !455, line: 564, type: !571, isLocal: true, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, variables: !602)
!602 = !{!603, !604, !605, !606}
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !601, file: !455, line: 564, type: !192)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attrs", scope: !601, file: !455, line: 567, type: !466)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tss_min", scope: !601, file: !455, line: 568, type: !192)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !601, file: !455, line: 569, type: !104)
!607 = !{!608, !609, !611, !612, !626, !630}
!608 = !DIGlobalVariable(name: "initialized", scope: !0, file: !1, line: 55, type: !104, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariable(name: "ThreadInfoType", scope: !0, file: !1, line: 385, type: !610, isLocal: true, isDefinition: true, variable: %struct._typeobject* @ThreadInfoType)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !108, line: 422, baseType: !120)
!611 = !DIGlobalVariable(name: "_pythread_stacksize", scope: !0, file: !1, line: 82, type: !192, isLocal: true, isDefinition: true, variable: i64* @_pythread_stacksize)
!612 = !DIGlobalVariable(name: "threadinfo_desc", scope: !0, file: !1, line: 378, type: !613, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @threadinfo_desc)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !614, line: 20, baseType: !615)
!614 = !DIFile(filename: "Include/structseq.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !614, line: 15, size: 256, align: 64, elements: !616)
!616 = !{!617, !618, !619, !625}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !615, file: !614, line: 16, baseType: !150, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !615, file: !614, line: 17, baseType: !150, size: 64, align: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !615, file: !614, line: 18, baseType: !620, size: 64, align: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !614, line: 10, size: 128, align: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !614, line: 11, baseType: !150, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !621, file: !614, line: 12, baseType: !150, size: 64, align: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !615, file: !614, line: 19, baseType: !104, size: 32, align: 32, offset: 192)
!626 = !DIGlobalVariable(name: "threadinfo__doc__", scope: !0, file: !1, line: 366, type: !627, isLocal: true, isDefinition: true, variable: [88 x i8]* @threadinfo__doc__)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 704, align: 8, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 88)
!630 = !DIGlobalVariable(name: "threadinfo_fields", scope: !0, file: !1, line: 371, type: !631, isLocal: true, isDefinition: true, variable: [4 x %struct.PyStructSequence_Field]* @threadinfo_fields)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 512, align: 64, elements: !633)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !614, line: 13, baseType: !621)
!633 = !{!634}
!634 = !DISubrange(count: 4)
!635 = !{i32 2, !"Dwarf Version", i32 4}
!636 = !{i32 2, !"Debug Info Version", i32 3}
!637 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!638 = !DILocation(line: 72, column: 9, scope: !450)
!639 = !DILocation(line: 77, column: 1, scope: !450)
!640 = !DILocation(line: 77, column: 1, scope: !641)
!641 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 1)
!642 = !DIExpression()
!643 = !DILocation(line: 186, column: 34, scope: !454)
!644 = !DILocation(line: 186, column: 55, scope: !454)
!645 = !DILocation(line: 188, column: 5, scope: !454)
!646 = !DILocation(line: 191, column: 5, scope: !454)
!647 = !DILocation(line: 198, column: 9, scope: !454)
!648 = !DILocation(line: 199, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !454, file: !455, line: 198, column: 9)
!650 = !DILocation(line: 191, column: 20, scope: !454)
!651 = !DILocation(line: 202, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !454, file: !455, line: 202, column: 9)
!653 = !DILocation(line: 202, column: 35, scope: !652)
!654 = !DILocation(line: 202, column: 9, scope: !454)
!655 = !DILocation(line: 206, column: 12, scope: !454)
!656 = !{!657, !657, i64 0}
!657 = !{!"long", !658, i64 0}
!658 = !{!"omnipotent char", !659, i64 0}
!659 = !{!"Simple C/C++ TBAA"}
!660 = !DILocation(line: 206, column: 32, scope: !454)
!661 = !DILocation(line: 194, column: 17, scope: !454)
!662 = !DILocation(line: 208, column: 9, scope: !454)
!663 = !DILocation(line: 209, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !455, line: 209, column: 13)
!665 = distinct !DILexicalBlock(scope: !666, file: !455, line: 208, column: 19)
!666 = distinct !DILexicalBlock(scope: !454, file: !455, line: 208, column: 9)
!667 = !DILocation(line: 209, column: 52, scope: !664)
!668 = !DILocation(line: 209, column: 13, scope: !665)
!669 = !DILocation(line: 210, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !455, line: 209, column: 58)
!671 = !DILocation(line: 211, column: 13, scope: !670)
!672 = !DILocation(line: 216, column: 5, scope: !454)
!673 = !DILocation(line: 225, column: 30, scope: !454)
!674 = !DILocation(line: 188, column: 15, scope: !454)
!675 = !DILocation(line: 219, column: 14, scope: !454)
!676 = !DILocation(line: 189, column: 9, scope: !454)
!677 = !DILocation(line: 230, column: 5, scope: !454)
!678 = !DILocation(line: 232, column: 16, scope: !679)
!679 = distinct !DILexicalBlock(scope: !454, file: !455, line: 232, column: 9)
!680 = !DILocation(line: 232, column: 9, scope: !454)
!681 = !DILocation(line: 235, column: 20, scope: !454)
!682 = !DILocation(line: 235, column: 5, scope: !454)
!683 = !DILocation(line: 238, column: 19, scope: !454)
!684 = !DILocation(line: 238, column: 5, scope: !454)
!685 = !DILocation(line: 242, column: 1, scope: !454)
!686 = !DILocation(line: 253, column: 5, scope: !475)
!687 = !DILocation(line: 254, column: 9, scope: !475)
!688 = !DILocation(line: 255, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !475, file: !455, line: 254, column: 9)
!690 = !DILocation(line: 256, column: 16, scope: !475)
!691 = !DILocation(line: 253, column: 24, scope: !475)
!692 = !DILocation(line: 256, column: 14, scope: !475)
!693 = !DILocation(line: 257, column: 19, scope: !475)
!694 = !DILocation(line: 258, column: 1, scope: !475)
!695 = !DILocation(line: 257, column: 5, scope: !475)
!696 = !DILocation(line: 264, column: 9, scope: !481)
!697 = !DILocation(line: 265, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !481, file: !455, line: 264, column: 9)
!699 = !DILocation(line: 266, column: 5, scope: !481)
!700 = !DILocation(line: 279, column: 17, scope: !482)
!701 = !DILocation(line: 282, column: 9, scope: !482)
!702 = !DILocation(line: 283, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !482, file: !455, line: 282, column: 9)
!704 = !DILocation(line: 285, column: 21, scope: !482)
!705 = !DILocation(line: 285, column: 12, scope: !482)
!706 = !DILocation(line: 278, column: 12, scope: !482)
!707 = !DILocation(line: 287, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !482, file: !455, line: 287, column: 9)
!709 = !DILocation(line: 287, column: 9, scope: !482)
!710 = !DILocation(line: 288, column: 18, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !455, line: 287, column: 15)
!712 = !DILocation(line: 279, column: 9, scope: !482)
!713 = !DILocation(line: 289, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !455, line: 289, column: 9)
!715 = !DILocation(line: 289, column: 9, scope: !711)
!716 = !DILocation(line: 289, column: 9, scope: !717)
!717 = !DILexicalBlockFile(scope: !718, file: !455, discriminator: 1)
!718 = distinct !DILexicalBlock(scope: !714, file: !455, line: 289, column: 9)
!719 = !DILocation(line: 292, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !455, line: 291, column: 20)
!721 = distinct !DILexicalBlock(scope: !711, file: !455, line: 291, column: 13)
!722 = !DILocation(line: 294, column: 9, scope: !720)
!723 = !DILocation(line: 298, column: 12, scope: !482)
!724 = !DILocation(line: 298, column: 5, scope: !482)
!725 = !DILocation(line: 302, column: 39, scope: !489)
!726 = !DILocation(line: 304, column: 12, scope: !489)
!727 = !DILocation(line: 305, column: 17, scope: !489)
!728 = !DILocation(line: 310, column: 10, scope: !729)
!729 = distinct !DILexicalBlock(scope: !489, file: !455, line: 310, column: 9)
!730 = !DILocation(line: 310, column: 9, scope: !489)
!731 = !DILocation(line: 304, column: 22, scope: !489)
!732 = !DILocation(line: 313, column: 14, scope: !489)
!733 = !DILocation(line: 305, column: 9, scope: !489)
!734 = !DILocation(line: 314, column: 5, scope: !735)
!735 = distinct !DILexicalBlock(scope: !489, file: !455, line: 314, column: 5)
!736 = !DILocation(line: 314, column: 5, scope: !489)
!737 = !DILocation(line: 314, column: 5, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !455, discriminator: 1)
!739 = distinct !DILexicalBlock(scope: !735, file: !455, line: 314, column: 5)
!740 = !DILocation(line: 316, column: 5, scope: !489)
!741 = !DILocation(line: 317, column: 1, scope: !489)
!742 = !DILocation(line: 332, column: 48, scope: !497)
!743 = !DILocation(line: 332, column: 67, scope: !497)
!744 = !DILocation(line: 333, column: 33, scope: !497)
!745 = !DILocation(line: 336, column: 22, scope: !497)
!746 = !DILocation(line: 336, column: 12, scope: !497)
!747 = !DILocation(line: 337, column: 17, scope: !497)
!748 = !DILocation(line: 338, column: 5, scope: !497)
!749 = !DILocation(line: 344, column: 22, scope: !520)
!750 = !DILocation(line: 344, column: 9, scope: !497)
!751 = !DILocation(line: 345, column: 9, scope: !752)
!752 = !DILexicalBlockFile(scope: !519, file: !455, discriminator: 1)
!753 = !{!754, !657, i64 8}
!754 = !{!"timeval", !657, i64 0, !657, i64 8}
!755 = !{!754, !657, i64 0}
!756 = !{!757, !657, i64 0}
!757 = !{!"timespec", !657, i64 0, !657, i64 8}
!758 = !{!757, !657, i64 8}
!759 = !DILocation(line: 345, column: 9, scope: !520)
!760 = !DILocation(line: 345, column: 9, scope: !761)
!761 = !DILexicalBlockFile(scope: !519, file: !455, discriminator: 3)
!762 = !DILocation(line: 347, column: 13, scope: !763)
!763 = distinct !DILexicalBlock(scope: !497, file: !455, line: 346, column: 8)
!764 = !DILocation(line: 338, column: 21, scope: !497)
!765 = !DILocation(line: 348, column: 33, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !455, line: 347, column: 13)
!767 = !DILocation(line: 326, column: 16, scope: !596, inlinedAt: !768)
!768 = distinct !DILocation(line: 348, column: 22, scope: !766)
!769 = !DILocation(line: 328, column: 20, scope: !596, inlinedAt: !768)
!770 = !DILocation(line: 328, column: 12, scope: !596, inlinedAt: !768)
!771 = !DILocation(line: 328, column: 29, scope: !772, inlinedAt: !768)
!772 = !DILexicalBlockFile(scope: !596, file: !455, discriminator: 1)
!773 = !{!774, !774, i64 0}
!774 = !{!"int", !658, i64 0}
!775 = !DILocation(line: 349, column: 31, scope: !776)
!776 = distinct !DILexicalBlock(scope: !766, file: !455, line: 349, column: 18)
!777 = !DILocation(line: 349, column: 18, scope: !766)
!778 = !DILocation(line: 350, column: 33, scope: !776)
!779 = !DILocation(line: 326, column: 16, scope: !596, inlinedAt: !780)
!780 = distinct !DILocation(line: 350, column: 22, scope: !776)
!781 = !DILocation(line: 328, column: 20, scope: !596, inlinedAt: !780)
!782 = !DILocation(line: 328, column: 12, scope: !596, inlinedAt: !780)
!783 = !DILocation(line: 328, column: 29, scope: !772, inlinedAt: !780)
!784 = !DILocation(line: 352, column: 33, scope: !776)
!785 = !DILocation(line: 326, column: 16, scope: !596, inlinedAt: !786)
!786 = distinct !DILocation(line: 352, column: 22, scope: !776)
!787 = !DILocation(line: 328, column: 20, scope: !596, inlinedAt: !786)
!788 = !DILocation(line: 328, column: 12, scope: !596, inlinedAt: !786)
!789 = !DILocation(line: 328, column: 29, scope: !772, inlinedAt: !786)
!790 = !DILocation(line: 355, column: 15, scope: !791)
!791 = !DILexicalBlockFile(scope: !497, file: !455, discriminator: 1)
!792 = !DILocation(line: 355, column: 35, scope: !497)
!793 = !DILocation(line: 355, column: 25, scope: !497)
!794 = !DILocation(line: 355, column: 5, scope: !795)
!795 = !DILexicalBlockFile(scope: !763, file: !455, discriminator: 2)
!796 = !DILocation(line: 358, column: 21, scope: !797)
!797 = distinct !DILexicalBlock(scope: !497, file: !455, line: 358, column: 9)
!798 = !DILocation(line: 359, column: 13, scope: !799)
!799 = distinct !DILexicalBlock(scope: !797, file: !455, line: 358, column: 42)
!800 = !DILocation(line: 360, column: 17, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !455, line: 359, column: 31)
!802 = distinct !DILexicalBlock(scope: !799, file: !455, line: 359, column: 13)
!803 = !DILocation(line: 361, column: 17, scope: !804)
!804 = !DILexicalBlockFile(scope: !805, file: !455, discriminator: 1)
!805 = distinct !DILexicalBlock(scope: !806, file: !455, line: 361, column: 17)
!806 = distinct !DILexicalBlock(scope: !807, file: !455, line: 361, column: 17)
!807 = distinct !DILexicalBlock(scope: !801, file: !455, line: 360, column: 17)
!808 = !DILocation(line: 363, column: 31, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !455, line: 363, column: 18)
!810 = !DILocation(line: 363, column: 18, scope: !802)
!811 = !DILocation(line: 364, column: 17, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !455, line: 363, column: 37)
!813 = !DILocation(line: 365, column: 17, scope: !814)
!814 = !DILexicalBlockFile(scope: !815, file: !455, discriminator: 1)
!815 = distinct !DILexicalBlock(scope: !816, file: !455, line: 365, column: 17)
!816 = distinct !DILexicalBlock(scope: !817, file: !455, line: 365, column: 17)
!817 = distinct !DILexicalBlock(scope: !812, file: !455, line: 364, column: 17)
!818 = !DILocation(line: 368, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !809, file: !455, line: 367, column: 14)
!820 = !DILocation(line: 368, column: 13, scope: !821)
!821 = !DILexicalBlockFile(scope: !822, file: !455, discriminator: 1)
!822 = distinct !DILexicalBlock(scope: !823, file: !455, line: 368, column: 13)
!823 = distinct !DILexicalBlock(scope: !819, file: !455, line: 368, column: 13)
!824 = !DILocation(line: 372, column: 9, scope: !497)
!825 = !DILocation(line: 372, column: 16, scope: !826)
!826 = distinct !DILexicalBlock(scope: !497, file: !455, line: 372, column: 9)
!827 = !DILocation(line: 376, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !455, line: 374, column: 46)
!829 = distinct !DILexicalBlock(scope: !826, file: !455, line: 374, column: 16)
!830 = !DILocation(line: 383, column: 1, scope: !497)
!831 = !DILocation(line: 382, column: 5, scope: !497)
!832 = !DILocation(line: 386, column: 42, scope: !527)
!833 = !DILocation(line: 388, column: 22, scope: !527)
!834 = !DILocation(line: 388, column: 12, scope: !527)
!835 = !DILocation(line: 389, column: 17, scope: !527)
!836 = !DILocation(line: 394, column: 14, scope: !527)
!837 = !DILocation(line: 389, column: 9, scope: !527)
!838 = !DILocation(line: 395, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !527, file: !455, line: 395, column: 5)
!840 = !DILocation(line: 395, column: 5, scope: !527)
!841 = !DILocation(line: 395, column: 5, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !455, discriminator: 1)
!843 = distinct !DILexicalBlock(scope: !839, file: !455, line: 395, column: 5)
!844 = !DILocation(line: 396, column: 1, scope: !527)
!845 = !DILocation(line: 554, column: 42, scope: !533)
!846 = !DILocation(line: 554, column: 52, scope: !533)
!847 = !DILocation(line: 556, column: 46, scope: !533)
!848 = !DILocation(line: 556, column: 12, scope: !533)
!849 = !DILocation(line: 556, column: 5, scope: !533)
!850 = !DILocation(line: 609, column: 5, scope: !539)
!851 = !DILocation(line: 609, column: 19, scope: !539)
!852 = !DILocation(line: 610, column: 16, scope: !539)
!853 = !DILocation(line: 610, column: 9, scope: !539)
!854 = !DILocation(line: 611, column: 12, scope: !539)
!855 = !DILocation(line: 611, column: 24, scope: !856)
!856 = !DILexicalBlockFile(scope: !539, file: !455, discriminator: 2)
!857 = !DILocation(line: 612, column: 1, scope: !539)
!858 = !DILocation(line: 611, column: 5, scope: !539)
!859 = !DILocation(line: 615, column: 25, scope: !546)
!860 = !DILocation(line: 617, column: 5, scope: !546)
!861 = !DILocation(line: 618, column: 1, scope: !546)
!862 = !DILocation(line: 621, column: 31, scope: !551)
!863 = !DILocation(line: 623, column: 5, scope: !551)
!864 = !DILocation(line: 624, column: 1, scope: !551)
!865 = !DILocation(line: 627, column: 28, scope: !554)
!866 = !DILocation(line: 627, column: 39, scope: !554)
!867 = !DILocation(line: 630, column: 12, scope: !554)
!868 = !DILocation(line: 629, column: 9, scope: !554)
!869 = !DILocation(line: 631, column: 12, scope: !554)
!870 = !DILocation(line: 631, column: 5, scope: !554)
!871 = !DILocation(line: 635, column: 28, scope: !561)
!872 = !DILocation(line: 637, column: 12, scope: !561)
!873 = !DILocation(line: 637, column: 5, scope: !561)
!874 = !DILocation(line: 642, column: 2, scope: !566)
!875 = !DILocation(line: 105, column: 12, scope: !567)
!876 = !DILocation(line: 105, column: 5, scope: !567)
!877 = !DILocation(line: 114, column: 31, scope: !570)
!878 = !DILocation(line: 564, column: 40, scope: !601, inlinedAt: !879)
!879 = distinct !DILocation(line: 117, column: 12, scope: !570)
!880 = !DILocation(line: 567, column: 5, scope: !601, inlinedAt: !879)
!881 = !DILocation(line: 569, column: 9, scope: !601, inlinedAt: !879)
!882 = !DILocation(line: 573, column: 14, scope: !883, inlinedAt: !879)
!883 = distinct !DILexicalBlock(scope: !601, file: !455, line: 573, column: 9)
!884 = !DILocation(line: 573, column: 9, scope: !601, inlinedAt: !879)
!885 = !DILocation(line: 574, column: 29, scope: !886, inlinedAt: !879)
!886 = distinct !DILexicalBlock(scope: !883, file: !455, line: 573, column: 20)
!887 = !DILocation(line: 575, column: 9, scope: !886, inlinedAt: !879)
!888 = !DILocation(line: 568, column: 12, scope: !601, inlinedAt: !879)
!889 = !DILocation(line: 585, column: 14, scope: !890, inlinedAt: !879)
!890 = distinct !DILexicalBlock(scope: !601, file: !455, line: 585, column: 9)
!891 = !DILocation(line: 585, column: 9, scope: !601, inlinedAt: !879)
!892 = !DILocation(line: 567, column: 20, scope: !601, inlinedAt: !879)
!893 = !DILocation(line: 587, column: 13, scope: !894, inlinedAt: !879)
!894 = distinct !DILexicalBlock(scope: !895, file: !455, line: 587, column: 13)
!895 = distinct !DILexicalBlock(scope: !890, file: !455, line: 585, column: 26)
!896 = !DILocation(line: 587, column: 39, scope: !894, inlinedAt: !879)
!897 = !DILocation(line: 587, column: 13, scope: !895, inlinedAt: !879)
!898 = !DILocation(line: 588, column: 18, scope: !899, inlinedAt: !879)
!899 = distinct !DILexicalBlock(scope: !894, file: !455, line: 587, column: 45)
!900 = !DILocation(line: 589, column: 13, scope: !899, inlinedAt: !879)
!901 = !DILocation(line: 590, column: 20, scope: !902, inlinedAt: !879)
!902 = distinct !DILexicalBlock(scope: !899, file: !455, line: 590, column: 17)
!903 = !DILocation(line: 590, column: 17, scope: !899, inlinedAt: !879)
!904 = !DILocation(line: 591, column: 37, scope: !905, inlinedAt: !879)
!905 = distinct !DILexicalBlock(scope: !902, file: !455, line: 590, column: 26)
!906 = !DILocation(line: 592, column: 17, scope: !905, inlinedAt: !879)
!907 = !DILocation(line: 117, column: 12, scope: !570)
!908 = !DILocation(line: 600, column: 1, scope: !601, inlinedAt: !879)
!909 = !DILocation(line: 117, column: 5, scope: !570)
!910 = !DILocation(line: 391, column: 9, scope: !575)
!911 = !DILocation(line: 394, column: 5, scope: !575)
!912 = !DILocation(line: 394, column: 10, scope: !575)
!913 = !DILocation(line: 398, column: 24, scope: !914)
!914 = distinct !DILexicalBlock(scope: !575, file: !1, line: 398, column: 9)
!915 = !{!916, !919, i64 24}
!916 = !{!"_typeobject", !917, i64 0, !919, i64 24, !657, i64 32, !657, i64 40, !919, i64 48, !919, i64 56, !919, i64 64, !919, i64 72, !919, i64 80, !919, i64 88, !919, i64 96, !919, i64 104, !919, i64 112, !919, i64 120, !919, i64 128, !919, i64 136, !919, i64 144, !919, i64 152, !919, i64 160, !657, i64 168, !919, i64 176, !919, i64 184, !919, i64 192, !919, i64 200, !657, i64 208, !919, i64 216, !919, i64 224, !919, i64 232, !919, i64 240, !919, i64 248, !919, i64 256, !919, i64 264, !919, i64 272, !919, i64 280, !657, i64 288, !919, i64 296, !919, i64 304, !919, i64 312, !919, i64 320, !919, i64 328, !919, i64 336, !919, i64 344, !919, i64 352, !919, i64 360, !919, i64 368, !919, i64 376, !774, i64 384, !919, i64 392}
!917 = !{!"", !918, i64 0, !657, i64 16}
!918 = !{!"_object", !657, i64 0, !919, i64 8}
!919 = !{!"any pointer", !658, i64 0}
!920 = !DILocation(line: 398, column: 32, scope: !914)
!921 = !DILocation(line: 398, column: 9, scope: !575)
!922 = !DILocation(line: 399, column: 13, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !1, line: 399, column: 13)
!924 = distinct !DILexicalBlock(scope: !914, file: !1, line: 398, column: 38)
!925 = !DILocation(line: 399, column: 75, scope: !923)
!926 = !DILocation(line: 399, column: 13, scope: !924)
!927 = !DILocation(line: 403, column: 18, scope: !575)
!928 = !DILocation(line: 390, column: 15, scope: !575)
!929 = !DILocation(line: 404, column: 20, scope: !930)
!930 = distinct !DILexicalBlock(scope: !575, file: !1, line: 404, column: 9)
!931 = !DILocation(line: 404, column: 9, scope: !575)
!932 = !DILocation(line: 407, column: 13, scope: !575)
!933 = !DILocation(line: 390, column: 28, scope: !575)
!934 = !DILocation(line: 408, column: 15, scope: !590)
!935 = !DILocation(line: 408, column: 9, scope: !575)
!936 = !DILocation(line: 409, column: 9, scope: !937)
!937 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 1)
!938 = !DILocation(line: 409, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !588, file: !1, line: 409, column: 9)
!940 = !{!918, !657, i64 0}
!941 = !DILocation(line: 409, column: 9, scope: !588)
!942 = !DILocation(line: 409, column: 9, scope: !943)
!943 = !DILexicalBlockFile(scope: !939, file: !1, discriminator: 3)
!944 = !{!918, !919, i64 8}
!945 = !{!916, !919, i64 48}
!946 = !DILocation(line: 412, column: 5, scope: !575)
!947 = !{!919, !919, i64 0}
!948 = !DILocation(line: 416, column: 13, scope: !575)
!949 = !DILocation(line: 420, column: 15, scope: !594)
!950 = !DILocation(line: 420, column: 9, scope: !575)
!951 = !DILocation(line: 421, column: 9, scope: !952)
!952 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!953 = !DILocation(line: 421, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !592, file: !1, line: 421, column: 9)
!955 = !DILocation(line: 421, column: 9, scope: !592)
!956 = !DILocation(line: 421, column: 9, scope: !957)
!957 = !DILexicalBlockFile(scope: !954, file: !1, discriminator: 3)
!958 = !DILocation(line: 428, column: 5, scope: !575)
!959 = !DILocation(line: 433, column: 11, scope: !575)
!960 = !DILocation(line: 395, column: 9, scope: !575)
!961 = !DILocation(line: 434, column: 11, scope: !962)
!962 = distinct !DILexicalBlock(scope: !575, file: !1, line: 434, column: 9)
!963 = !DILocation(line: 434, column: 17, scope: !962)
!964 = !DILocation(line: 434, column: 20, scope: !965)
!965 = !DILexicalBlockFile(scope: !962, file: !1, discriminator: 1)
!966 = !DILocation(line: 434, column: 24, scope: !962)
!967 = !DILocation(line: 434, column: 9, scope: !575)
!968 = !DILocation(line: 435, column: 58, scope: !969)
!969 = distinct !DILexicalBlock(scope: !962, file: !1, line: 434, column: 42)
!970 = !DILocation(line: 435, column: 17, scope: !969)
!971 = !DILocation(line: 436, column: 19, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !1, line: 436, column: 13)
!973 = !DILocation(line: 436, column: 13, scope: !969)
!974 = !DILocation(line: 437, column: 13, scope: !972)
!975 = !DILocation(line: 442, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !1, line: 441, column: 5)
!977 = distinct !DILexicalBlock(scope: !575, file: !1, line: 439, column: 9)
!978 = !DILocation(line: 444, column: 5, scope: !976)
!979 = !DILocation(line: 445, column: 5, scope: !575)
!980 = !DILocation(line: 446, column: 5, scope: !575)
!981 = !DILocation(line: 447, column: 1, scope: !575)
