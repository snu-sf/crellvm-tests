; ModuleID = 'irs-onlybc/thread.bc'
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@initialized = internal global i32 0, align 4
@_pythread_stacksize = internal global i64 0, align 8
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
  %0 = load i32, i32* @initialized, align 4, !dbg !639, !tbaa !641
  %tobool = icmp ne i32 %0, 0, !dbg !639
  br i1 %tobool, label %if.then, label %if.end, !dbg !645

if.then:                                          ; preds = %entry
  br label %return, !dbg !646

if.end:                                           ; preds = %entry
  store i32 1, i32* @initialized, align 4, !dbg !647, !tbaa !641
  call void @PyThread__init_thread(), !dbg !648
  br label %return, !dbg !649

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !650
}

; Function Attrs: nounwind uwtable
define internal void @PyThread__init_thread() #0 {
entry:
  ret void, !dbg !652
}

; Function Attrs: nounwind uwtable
define i64 @PyThread_start_new_thread(void (i8*)* %func, i8* %arg) #0 {
entry:
  %retval = alloca i64, align 8
  %func.addr = alloca void (i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %th = alloca i64, align 8
  %status = alloca i32, align 4
  %attrs = alloca %union.pthread_attr_t, align 8
  %tss = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store void (i8*)* %func, void (i8*)** %func.addr, align 8, !tbaa !653
  call void @llvm.dbg.declare(metadata void (i8*)** %func.addr, metadata !460, metadata !655), !dbg !656
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !653
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !461, metadata !655), !dbg !657
  %0 = bitcast i64* %th to i8*, !dbg !658
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !658
  call void @llvm.dbg.declare(metadata i64* %th, metadata !462, metadata !655), !dbg !659
  %1 = bitcast i32* %status to i8*, !dbg !660
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !660
  call void @llvm.dbg.declare(metadata i32* %status, metadata !465, metadata !655), !dbg !661
  %2 = bitcast %union.pthread_attr_t* %attrs to i8*, !dbg !662
  call void @llvm.lifetime.start(i64 56, i8* %2) #2, !dbg !662
  call void @llvm.dbg.declare(metadata %union.pthread_attr_t* %attrs, metadata !466, metadata !655), !dbg !663
  %3 = bitcast i64* %tss to i8*, !dbg !664
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !664
  call void @llvm.dbg.declare(metadata i64* %tss, metadata !475, metadata !655), !dbg !665
  %4 = load i32, i32* @initialized, align 4, !dbg !666, !tbaa !641
  %tobool = icmp ne i32 %4, 0, !dbg !666
  br i1 %tobool, label %if.end, label %if.then, !dbg !668

if.then:                                          ; preds = %entry
  call void @PyThread_init_thread(), !dbg !669
  br label %if.end, !dbg !669

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attrs) #2, !dbg !670
  %cmp = icmp ne i32 %call, 0, !dbg !672
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !673

if.then.1:                                        ; preds = %if.end
  store i64 -1, i64* %retval, !dbg !674
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !674

if.end.2:                                         ; preds = %if.end
  %5 = load i64, i64* @_pythread_stacksize, align 8, !dbg !675, !tbaa !676
  %cmp3 = icmp ne i64 %5, 0, !dbg !678
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !679

cond.true:                                        ; preds = %if.end.2
  %6 = load i64, i64* @_pythread_stacksize, align 8, !dbg !680, !tbaa !676
  br label %cond.end, !dbg !679

cond.false:                                       ; preds = %if.end.2
  br label %cond.end, !dbg !682

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ 0, %cond.false ], !dbg !679
  store i64 %cond, i64* %tss, align 8, !dbg !684, !tbaa !676
  %7 = load i64, i64* %tss, align 8, !dbg !687, !tbaa !676
  %cmp4 = icmp ne i64 %7, 0, !dbg !689
  br i1 %cmp4, label %if.then.5, label %if.end.11, !dbg !690

if.then.5:                                        ; preds = %cond.end
  %8 = load i64, i64* %tss, align 8, !dbg !691, !tbaa !676
  %call6 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attrs, i64 %8) #2, !dbg !694
  %cmp7 = icmp ne i32 %call6, 0, !dbg !695
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !696

if.then.8:                                        ; preds = %if.then.5
  %call9 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attrs) #2, !dbg !697
  store i64 -1, i64* %retval, !dbg !699
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !699

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.11, !dbg !700

if.end.11:                                        ; preds = %if.end.10, %cond.end
  %call12 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %attrs, i32 0) #2, !dbg !701
  %9 = load void (i8*)*, void (i8*)** %func.addr, align 8, !dbg !702, !tbaa !653
  %10 = bitcast void (i8*)* %9 to i8* (i8*)*, !dbg !703
  %11 = load i8*, i8** %arg.addr, align 8, !dbg !704, !tbaa !653
  %call13 = call i32 @pthread_create(i64* %th, %union.pthread_attr_t* %attrs, i8* (i8*)* %10, i8* %11) #2, !dbg !705
  store i32 %call13, i32* %status, align 4, !dbg !706, !tbaa !641
  %call14 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attrs) #2, !dbg !707
  %12 = load i32, i32* %status, align 4, !dbg !708, !tbaa !641
  %cmp15 = icmp ne i32 %12, 0, !dbg !710
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !711

if.then.16:                                       ; preds = %if.end.11
  store i64 -1, i64* %retval, !dbg !712
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !712

if.end.17:                                        ; preds = %if.end.11
  %13 = load i64, i64* %th, align 8, !dbg !713, !tbaa !676
  %call18 = call i32 @pthread_detach(i64 %13) #2, !dbg !714
  %14 = load i64, i64* %th, align 8, !dbg !715, !tbaa !676
  store i64 %14, i64* %retval, !dbg !716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !716

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.8, %if.then.1
  %15 = bitcast i64* %tss to i8*, !dbg !717
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !717
  %16 = bitcast %union.pthread_attr_t* %attrs to i8*, !dbg !717
  call void @llvm.lifetime.end(i64 56, i8* %16) #2, !dbg !717
  %17 = bitcast i32* %status to i8*, !dbg !717
  call void @llvm.lifetime.end(i64 4, i8* %17) #2, !dbg !717
  %18 = bitcast i64* %th to i8*, !dbg !717
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !717
  %19 = load i64, i64* %retval, !dbg !717
  ret i64 %19, !dbg !717
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
  %0 = bitcast i64* %threadid to i8*, !dbg !718
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !718
  call void @llvm.dbg.declare(metadata i64* %threadid, metadata !480, metadata !655), !dbg !719
  %1 = load i32, i32* @initialized, align 4, !dbg !720, !tbaa !641
  %tobool = icmp ne i32 %1, 0, !dbg !720
  br i1 %tobool, label %if.end, label %if.then, !dbg !722

if.then:                                          ; preds = %entry
  call void @PyThread_init_thread(), !dbg !723
  br label %if.end, !dbg !723

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @pthread_self() #1, !dbg !724
  store volatile i64 %call, i64* %threadid, align 8, !dbg !725, !tbaa !676
  %2 = load volatile i64, i64* %threadid, align 8, !dbg !726, !tbaa !676
  %3 = bitcast i64* %threadid to i8*, !dbg !727
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !727
  ret i64 %2, !dbg !728
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #4

; Function Attrs: nounwind uwtable
define void @PyThread_exit_thread() #0 {
entry:
  %0 = load i32, i32* @initialized, align 4, !dbg !729, !tbaa !641
  %tobool = icmp ne i32 %0, 0, !dbg !729
  br i1 %tobool, label %if.end, label %if.then, !dbg !731

if.then:                                          ; preds = %entry
  call void @exit(i32 0) #8, !dbg !732
  unreachable, !dbg !732

if.end:                                           ; preds = %entry
  call void @pthread_exit(i8* null) #9, !dbg !733
  unreachable, !dbg !733

return:                                           ; No predecessors!
  ret void, !dbg !734
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #6

; Function Attrs: nounwind uwtable
define i8* @PyThread_allocate_lock() #0 {
entry:
  %lock = alloca %union.sem_t*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  %0 = bitcast %union.sem_t** %lock to i8*, !dbg !735
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !735
  call void @llvm.dbg.declare(metadata %union.sem_t** %lock, metadata !487, metadata !655), !dbg !736
  %1 = bitcast i32* %status to i8*, !dbg !737
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !737
  call void @llvm.dbg.declare(metadata i32* %status, metadata !488, metadata !655), !dbg !738
  %2 = bitcast i32* %error to i8*, !dbg !737
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !737
  call void @llvm.dbg.declare(metadata i32* %error, metadata !489, metadata !655), !dbg !739
  store i32 0, i32* %error, align 4, !dbg !739, !tbaa !641
  %3 = load i32, i32* @initialized, align 4, !dbg !740, !tbaa !641
  %tobool = icmp ne i32 %3, 0, !dbg !740
  br i1 %tobool, label %if.end, label %if.then, !dbg !742

if.then:                                          ; preds = %entry
  call void @PyThread_init_thread(), !dbg !743
  br label %if.end, !dbg !743

if.end:                                           ; preds = %if.then, %entry
  %call = call i8* @PyMem_RawMalloc(i64 32), !dbg !744
  %4 = bitcast i8* %call to %union.sem_t*, !dbg !745
  store %union.sem_t* %4, %union.sem_t** %lock, align 8, !dbg !746, !tbaa !653
  %5 = load %union.sem_t*, %union.sem_t** %lock, align 8, !dbg !747, !tbaa !653
  %tobool1 = icmp ne %union.sem_t* %5, null, !dbg !747
  br i1 %tobool1, label %if.then.2, label %if.end.9, !dbg !749

if.then.2:                                        ; preds = %if.end
  %6 = load %union.sem_t*, %union.sem_t** %lock, align 8, !dbg !750, !tbaa !653
  %call3 = call i32 @sem_init(%union.sem_t* %6, i32 0, i32 1) #2, !dbg !752
  store i32 %call3, i32* %status, align 4, !dbg !753, !tbaa !641
  %7 = load i32, i32* %status, align 4, !dbg !754, !tbaa !641
  %cmp = icmp ne i32 %7, 0, !dbg !756
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !757

if.then.4:                                        ; preds = %if.then.2
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)), !dbg !758
  store i32 1, i32* %error, align 4, !dbg !761, !tbaa !641
  br label %if.end.5, !dbg !762

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  %8 = load i32, i32* %error, align 4, !dbg !763, !tbaa !641
  %tobool6 = icmp ne i32 %8, 0, !dbg !763
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !765

if.then.7:                                        ; preds = %if.end.5
  %9 = load %union.sem_t*, %union.sem_t** %lock, align 8, !dbg !766, !tbaa !653
  %10 = bitcast %union.sem_t* %9 to i8*, !dbg !768
  call void @PyMem_RawFree(i8* %10), !dbg !769
  store %union.sem_t* null, %union.sem_t** %lock, align 8, !dbg !770, !tbaa !653
  br label %if.end.8, !dbg !771

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  br label %if.end.9, !dbg !772

if.end.9:                                         ; preds = %if.end.8, %if.end
  %11 = load %union.sem_t*, %union.sem_t** %lock, align 8, !dbg !773, !tbaa !653
  %12 = bitcast %union.sem_t* %11 to i8*, !dbg !774
  %13 = bitcast i32* %error to i8*, !dbg !775
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !775
  %14 = bitcast i32* %status to i8*, !dbg !775
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !775
  %15 = bitcast %union.sem_t** %lock to i8*, !dbg !775
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !775
  ret i8* %12, !dbg !776
}

declare i8* @PyMem_RawMalloc(i64) #7

; Function Attrs: nounwind
declare i32 @sem_init(%union.sem_t*, i32, i32) #3

declare void @perror(i8*) #7

declare void @PyMem_RawFree(i8*) #7

; Function Attrs: nounwind uwtable
define void @PyThread_free_lock(i8* %lock) #0 {
entry:
  %lock.addr = alloca i8*, align 8
  %thelock = alloca %union.sem_t*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %lock, i8** %lock.addr, align 8, !tbaa !653
  call void @llvm.dbg.declare(metadata i8** %lock.addr, metadata !494, metadata !655), !dbg !777
  %0 = bitcast %union.sem_t** %thelock to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !778
  call void @llvm.dbg.declare(metadata %union.sem_t** %thelock, metadata !495, metadata !655), !dbg !779
  %1 = load i8*, i8** %lock.addr, align 8, !dbg !780, !tbaa !653
  %2 = bitcast i8* %1 to %union.sem_t*, !dbg !781
  store %union.sem_t* %2, %union.sem_t** %thelock, align 8, !dbg !779, !tbaa !653
  %3 = bitcast i32* %status to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !782
  call void @llvm.dbg.declare(metadata i32* %status, metadata !496, metadata !655), !dbg !783
  %4 = bitcast i32* %error to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !782
  call void @llvm.dbg.declare(metadata i32* %error, metadata !497, metadata !655), !dbg !784
  store i32 0, i32* %error, align 4, !dbg !784, !tbaa !641
  %5 = load i32, i32* %error, align 4, !dbg !785, !tbaa !641
  %6 = load %union.sem_t*, %union.sem_t** %thelock, align 8, !dbg !786, !tbaa !653
  %tobool = icmp ne %union.sem_t* %6, null, !dbg !786
  br i1 %tobool, label %if.end, label %if.then, !dbg !788

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !789

if.end:                                           ; preds = %entry
  %7 = load %union.sem_t*, %union.sem_t** %thelock, align 8, !dbg !790, !tbaa !653
  %call = call i32 @sem_destroy(%union.sem_t* %7) #2, !dbg !791
  store i32 %call, i32* %status, align 4, !dbg !792, !tbaa !641
  %8 = load i32, i32* %status, align 4, !dbg !793, !tbaa !641
  %cmp = icmp ne i32 %8, 0, !dbg !795
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !796

if.then.1:                                        ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !797
  store i32 1, i32* %error, align 4, !dbg !800, !tbaa !641
  br label %if.end.2, !dbg !801

if.end.2:                                         ; preds = %if.then.1, %if.end
  %9 = load %union.sem_t*, %union.sem_t** %thelock, align 8, !dbg !802, !tbaa !653
  %10 = bitcast %union.sem_t* %9 to i8*, !dbg !803
  call void @PyMem_RawFree(i8* %10), !dbg !804
  store i32 0, i32* %cleanup.dest.slot, !dbg !805
  br label %cleanup, !dbg !805

cleanup:                                          ; preds = %if.end.2, %if.then
  %11 = bitcast i32* %error to i8*, !dbg !806
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !806
  %12 = bitcast i32* %status to i8*, !dbg !806
  call void @llvm.lifetime.end(i64 4, i8* %12) #2, !dbg !806
  %13 = bitcast %union.sem_t** %thelock to i8*, !dbg !806
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !806
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !805

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i32 @sem_destroy(%union.sem_t*) #3

; Function Attrs: nounwind uwtable
define i32 @PyThread_acquire_lock_timed(i8* %lock, i64 %microseconds, i32 %intr_flag) #0 {
entry:
  %lock.addr = alloca i8*, align 8
  %microseconds.addr = alloca i64, align 8
  %intr_flag.addr = alloca i32, align 4
  %success = alloca i32, align 4
  %thelock = alloca %union.sem_t*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  %ts = alloca %struct.timespec, align 8
  %tv = alloca %struct.timeval, align 8
  store i8* %lock, i8** %lock.addr, align 8, !tbaa !653
  call void @llvm.dbg.declare(metadata i8** %lock.addr, metadata !504, metadata !655), !dbg !808
  store i64 %microseconds, i64* %microseconds.addr, align 8, !tbaa !809
  call void @llvm.dbg.declare(metadata i64* %microseconds.addr, metadata !505, metadata !655), !dbg !811
  store i32 %intr_flag, i32* %intr_flag.addr, align 4, !tbaa !641
  call void @llvm.dbg.declare(metadata i32* %intr_flag.addr, metadata !506, metadata !655), !dbg !812
  %0 = bitcast i32* %success to i8*, !dbg !813
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !813
  call void @llvm.dbg.declare(metadata i32* %success, metadata !507, metadata !655), !dbg !814
  %1 = bitcast %union.sem_t** %thelock to i8*, !dbg !815
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !815
  call void @llvm.dbg.declare(metadata %union.sem_t** %thelock, metadata !508, metadata !655), !dbg !816
  %2 = load i8*, i8** %lock.addr, align 8, !dbg !817, !tbaa !653
  %3 = bitcast i8* %2 to %union.sem_t*, !dbg !818
  store %union.sem_t* %3, %union.sem_t** %thelock, align 8, !dbg !816, !tbaa !653
  %4 = bitcast i32* %status to i8*, !dbg !819
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !819
  call void @llvm.dbg.declare(metadata i32* %status, metadata !509, metadata !655), !dbg !820
  %5 = bitcast i32* %error to i8*, !dbg !819
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !819
  call void @llvm.dbg.declare(metadata i32* %error, metadata !510, metadata !655), !dbg !821
  store i32 0, i32* %error, align 4, !dbg !821, !tbaa !641
  %6 = bitcast %struct.timespec* %ts to i8*, !dbg !822
  call void @llvm.lifetime.start(i64 16, i8* %6) #2, !dbg !822
  call void @llvm.dbg.declare(metadata %struct.timespec* %ts, metadata !511, metadata !655), !dbg !823
  %7 = load i32, i32* %error, align 4, !dbg !824, !tbaa !641
  %8 = load i64, i64* %microseconds.addr, align 8, !dbg !825, !tbaa !809
  %cmp = icmp sgt i64 %8, 0, !dbg !826
  br i1 %cmp, label %if.then, label %if.end, !dbg !827

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !828

do.body:                                          ; preds = %if.then
  %9 = bitcast %struct.timeval* %tv to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 16, i8* %9) #2, !dbg !829
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !519, metadata !655), !dbg !831
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !dbg !832
  %10 = load i64, i64* %microseconds.addr, align 8, !dbg !833, !tbaa !809
  %rem = srem i64 %10, 1000000, !dbg !834
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !835
  %11 = load i64, i64* %tv_usec, align 8, !dbg !836, !tbaa !837
  %add = add i64 %11, %rem, !dbg !836
  store i64 %add, i64* %tv_usec, align 8, !dbg !836, !tbaa !837
  %12 = load i64, i64* %microseconds.addr, align 8, !dbg !839, !tbaa !809
  %div = sdiv i64 %12, 1000000, !dbg !840
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !841
  %13 = load i64, i64* %tv_sec, align 8, !dbg !842, !tbaa !843
  %add1 = add i64 %13, %div, !dbg !842
  store i64 %add1, i64* %tv_sec, align 8, !dbg !842, !tbaa !843
  %tv_usec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !844
  %14 = load i64, i64* %tv_usec2, align 8, !dbg !844, !tbaa !837
  %div3 = sdiv i64 %14, 1000000, !dbg !845
  %tv_sec4 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !846
  %15 = load i64, i64* %tv_sec4, align 8, !dbg !847, !tbaa !843
  %add5 = add i64 %15, %div3, !dbg !847
  store i64 %add5, i64* %tv_sec4, align 8, !dbg !847, !tbaa !843
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !848
  %16 = load i64, i64* %tv_usec6, align 8, !dbg !849, !tbaa !837
  %rem7 = srem i64 %16, 1000000, !dbg !849
  store i64 %rem7, i64* %tv_usec6, align 8, !dbg !849, !tbaa !837
  %tv_sec8 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !850
  %17 = load i64, i64* %tv_sec8, align 8, !dbg !850, !tbaa !843
  %tv_sec9 = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 0, !dbg !851
  store i64 %17, i64* %tv_sec9, align 8, !dbg !852, !tbaa !853
  %tv_usec10 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !855
  %18 = load i64, i64* %tv_usec10, align 8, !dbg !855, !tbaa !837
  %mul = mul i64 %18, 1000, !dbg !856
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 1, !dbg !857
  store i64 %mul, i64* %tv_nsec, align 8, !dbg !858, !tbaa !859
  %19 = bitcast %struct.timeval* %tv to i8*, !dbg !860
  call void @llvm.lifetime.end(i64 16, i8* %19) #2, !dbg !860
  br label %do.cond, !dbg !861

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !862

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !864

if.end:                                           ; preds = %do.end, %entry
  br label %do.body.11, !dbg !866

do.body.11:                                       ; preds = %land.end, %if.end
  %20 = load i64, i64* %microseconds.addr, align 8, !dbg !867, !tbaa !809
  %cmp12 = icmp sgt i64 %20, 0, !dbg !870
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !871

if.then.13:                                       ; preds = %do.body.11
  %21 = load %union.sem_t*, %union.sem_t** %thelock, align 8, !dbg !872, !tbaa !653
  %call14 = call i32 @sem_timedwait(%union.sem_t* %21, %struct.timespec* %ts), !dbg !873
  %call15 = call i32 @fix_status(i32 %call14), !dbg !874
  store i32 %call15, i32* %status, align 4, !dbg !875, !tbaa !641
  br label %if.end.24, !dbg !876

if.else:                                          ; preds = %do.body.11
  %22 = load i64, i64* %microseconds.addr, align 8, !dbg !877, !tbaa !809
  %cmp16 = icmp eq i64 %22, 0, !dbg !879
  br i1 %cmp16, label %if.then.17, label %if.else.20, !dbg !880

if.then.17:                                       ; preds = %if.else
  %23 = load %union.sem_t*, %union.sem_t** %thelock, align 8, !dbg !881, !tbaa !653
  %call18 = call i32 @sem_trywait(%union.sem_t* %23) #2, !dbg !882
  %call19 = call i32 @fix_status(i32 %call18), !dbg !883
  store i32 %call19, i32* %status, align 4, !dbg !884, !tbaa !641
  br label %if.end.23, !dbg !885

if.else.20:                                       ; preds = %if.else
  %24 = load %union.sem_t*, %union.sem_t** %thelock, align 8, !dbg !886, !tbaa !653
  %call21 = call i32 @sem_wait(%union.sem_t* %24), !dbg !887
  %call22 = call i32 @fix_status(i32 %call21), !dbg !888
  store i32 %call22, i32* %status, align 4, !dbg !889, !tbaa !641
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.13
  br label %do.cond.25, !dbg !890

do.cond.25:                                       ; preds = %if.end.24
  %25 = load i32, i32* %intr_flag.addr, align 4, !dbg !891, !tbaa !641
  %tobool = icmp ne i32 %25, 0, !dbg !891
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !893

land.rhs:                                         ; preds = %do.cond.25
  %26 = load i32, i32* %status, align 4, !dbg !894, !tbaa !641
  %cmp26 = icmp eq i32 %26, 4, !dbg !896
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.25
  %27 = phi i1 [ false, %do.cond.25 ], [ %cmp26, %land.rhs ]
  br i1 %27, label %do.body.11, label %do.end.27, !dbg !897

do.end.27:                                        ; preds = %land.end
  %28 = load i32, i32* %intr_flag.addr, align 4, !dbg !899, !tbaa !641
  %tobool28 = icmp ne i32 %28, 0, !dbg !899
  br i1 %tobool28, label %land.lhs.true, label %if.then.30, !dbg !901

land.lhs.true:                                    ; preds = %do.end.27
  %29 = load i32, i32* %status, align 4, !dbg !902, !tbaa !641
  %cmp29 = icmp eq i32 %29, 4, !dbg !904
  br i1 %cmp29, label %if.end.54, label %if.then.30, !dbg !905

if.then.30:                                       ; preds = %land.lhs.true, %do.end.27
  %30 = load i64, i64* %microseconds.addr, align 8, !dbg !906, !tbaa !809
  %cmp31 = icmp sgt i64 %30, 0, !dbg !909
  br i1 %cmp31, label %if.then.32, label %if.else.39, !dbg !910

if.then.32:                                       ; preds = %if.then.30
  %31 = load i32, i32* %status, align 4, !dbg !911, !tbaa !641
  %cmp33 = icmp ne i32 %31, 110, !dbg !914
  br i1 %cmp33, label %if.then.34, label %if.end.38, !dbg !915

if.then.34:                                       ; preds = %if.then.32
  %32 = load i32, i32* %status, align 4, !dbg !916, !tbaa !641
  %cmp35 = icmp ne i32 %32, 0, !dbg !918
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !919

if.then.36:                                       ; preds = %if.then.34
  call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !920
  store i32 1, i32* %error, align 4, !dbg !923, !tbaa !641
  br label %if.end.37, !dbg !924

if.end.37:                                        ; preds = %if.then.36, %if.then.34
  br label %if.end.38, !dbg !925

if.end.38:                                        ; preds = %if.end.37, %if.then.32
  br label %if.end.53, !dbg !928

if.else.39:                                       ; preds = %if.then.30
  %33 = load i64, i64* %microseconds.addr, align 8, !dbg !929, !tbaa !809
  %cmp40 = icmp eq i64 %33, 0, !dbg !931
  br i1 %cmp40, label %if.then.41, label %if.else.48, !dbg !932

if.then.41:                                       ; preds = %if.else.39
  %34 = load i32, i32* %status, align 4, !dbg !933, !tbaa !641
  %cmp42 = icmp ne i32 %34, 11, !dbg !936
  br i1 %cmp42, label %if.then.43, label %if.end.47, !dbg !937

if.then.43:                                       ; preds = %if.then.41
  %35 = load i32, i32* %status, align 4, !dbg !938, !tbaa !641
  %cmp44 = icmp ne i32 %35, 0, !dbg !940
  br i1 %cmp44, label %if.then.45, label %if.end.46, !dbg !941

if.then.45:                                       ; preds = %if.then.43
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !942
  store i32 1, i32* %error, align 4, !dbg !945, !tbaa !641
  br label %if.end.46, !dbg !946

if.end.46:                                        ; preds = %if.then.45, %if.then.43
  br label %if.end.47, !dbg !947

if.end.47:                                        ; preds = %if.end.46, %if.then.41
  br label %if.end.52, !dbg !950

if.else.48:                                       ; preds = %if.else.39
  %36 = load i32, i32* %status, align 4, !dbg !951, !tbaa !641
  %cmp49 = icmp ne i32 %36, 0, !dbg !954
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !955

if.then.50:                                       ; preds = %if.else.48
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)), !dbg !956
  store i32 1, i32* %error, align 4, !dbg !959, !tbaa !641
  br label %if.end.51, !dbg !960

if.end.51:                                        ; preds = %if.then.50, %if.else.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.47
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.38
  br label %if.end.54, !dbg !961

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true
  %37 = load i32, i32* %status, align 4, !dbg !962, !tbaa !641
  %cmp55 = icmp eq i32 %37, 0, !dbg !964
  br i1 %cmp55, label %if.then.56, label %if.else.57, !dbg !965

if.then.56:                                       ; preds = %if.end.54
  store i32 1, i32* %success, align 4, !dbg !966, !tbaa !968
  br label %if.end.64, !dbg !969

if.else.57:                                       ; preds = %if.end.54
  %38 = load i32, i32* %intr_flag.addr, align 4, !dbg !970, !tbaa !641
  %tobool58 = icmp ne i32 %38, 0, !dbg !970
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.62, !dbg !972

land.lhs.true.59:                                 ; preds = %if.else.57
  %39 = load i32, i32* %status, align 4, !dbg !973, !tbaa !641
  %cmp60 = icmp eq i32 %39, 4, !dbg !975
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !976

if.then.61:                                       ; preds = %land.lhs.true.59
  store i32 2, i32* %success, align 4, !dbg !977, !tbaa !968
  br label %if.end.63, !dbg !979

if.else.62:                                       ; preds = %land.lhs.true.59, %if.else.57
  store i32 0, i32* %success, align 4, !dbg !980, !tbaa !968
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.56
  %40 = load i32, i32* %success, align 4, !dbg !982, !tbaa !968
  %41 = bitcast %struct.timespec* %ts to i8*, !dbg !983
  call void @llvm.lifetime.end(i64 16, i8* %41) #2, !dbg !983
  %42 = bitcast i32* %error to i8*, !dbg !983
  call void @llvm.lifetime.end(i64 4, i8* %42) #2, !dbg !983
  %43 = bitcast i32* %status to i8*, !dbg !983
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !983
  %44 = bitcast %union.sem_t** %thelock to i8*, !dbg !983
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !983
  %45 = bitcast i32* %success to i8*, !dbg !983
  call void @llvm.lifetime.end(i64 4, i8* %45) #2, !dbg !983
  ret i32 %40, !dbg !984
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind uwtable
define internal i32 @fix_status(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4, !tbaa !641
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !601, metadata !655), !dbg !985
  %0 = load i32, i32* %status.addr, align 4, !dbg !986, !tbaa !641
  %cmp = icmp eq i32 %0, -1, !dbg !987
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !988

cond.true:                                        ; preds = %entry
  %call = call i32* @__errno_location() #1, !dbg !989
  %1 = load i32, i32* %call, align 4, !dbg !991, !tbaa !641
  br label %cond.end, !dbg !988

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %status.addr, align 4, !dbg !992, !tbaa !641
  br label %cond.end, !dbg !988

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ], !dbg !988
  ret i32 %cond, !dbg !994
}

declare i32 @sem_timedwait(%union.sem_t*, %struct.timespec*) #7

; Function Attrs: nounwind
declare i32 @sem_trywait(%union.sem_t*) #3

declare i32 @sem_wait(%union.sem_t*) #7

; Function Attrs: nounwind uwtable
define void @PyThread_release_lock(i8* %lock) #0 {
entry:
  %lock.addr = alloca i8*, align 8
  %thelock = alloca %union.sem_t*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  store i8* %lock, i8** %lock.addr, align 8, !tbaa !653
  call void @llvm.dbg.declare(metadata i8** %lock.addr, metadata !530, metadata !655), !dbg !997
  %0 = bitcast %union.sem_t** %thelock to i8*, !dbg !998
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !998
  call void @llvm.dbg.declare(metadata %union.sem_t** %thelock, metadata !531, metadata !655), !dbg !999
  %1 = load i8*, i8** %lock.addr, align 8, !dbg !1000, !tbaa !653
  %2 = bitcast i8* %1 to %union.sem_t*, !dbg !1001
  store %union.sem_t* %2, %union.sem_t** %thelock, align 8, !dbg !999, !tbaa !653
  %3 = bitcast i32* %status to i8*, !dbg !1002
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1002
  call void @llvm.dbg.declare(metadata i32* %status, metadata !532, metadata !655), !dbg !1003
  %4 = bitcast i32* %error to i8*, !dbg !1002
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1002
  call void @llvm.dbg.declare(metadata i32* %error, metadata !533, metadata !655), !dbg !1004
  store i32 0, i32* %error, align 4, !dbg !1004, !tbaa !641
  %5 = load i32, i32* %error, align 4, !dbg !1005, !tbaa !641
  %6 = load %union.sem_t*, %union.sem_t** %thelock, align 8, !dbg !1006, !tbaa !653
  %call = call i32 @sem_post(%union.sem_t* %6) #2, !dbg !1007
  store i32 %call, i32* %status, align 4, !dbg !1008, !tbaa !641
  %7 = load i32, i32* %status, align 4, !dbg !1009, !tbaa !641
  %cmp = icmp ne i32 %7, 0, !dbg !1011
  br i1 %cmp, label %if.then, label %if.end, !dbg !1012

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !1013
  store i32 1, i32* %error, align 4, !dbg !1016, !tbaa !641
  br label %if.end, !dbg !1017

if.end:                                           ; preds = %if.then, %entry
  %8 = bitcast i32* %error to i8*, !dbg !1018
  call void @llvm.lifetime.end(i64 4, i8* %8) #2, !dbg !1018
  %9 = bitcast i32* %status to i8*, !dbg !1018
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1018
  %10 = bitcast %union.sem_t** %thelock to i8*, !dbg !1018
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1018
  ret void, !dbg !1018
}

; Function Attrs: nounwind
declare i32 @sem_post(%union.sem_t*) #3

; Function Attrs: nounwind uwtable
define i32 @PyThread_acquire_lock(i8* %lock, i32 %waitflag) #0 {
entry:
  %lock.addr = alloca i8*, align 8
  %waitflag.addr = alloca i32, align 4
  store i8* %lock, i8** %lock.addr, align 8, !tbaa !653
  call void @llvm.dbg.declare(metadata i8** %lock.addr, metadata !538, metadata !655), !dbg !1019
  store i32 %waitflag, i32* %waitflag.addr, align 4, !tbaa !641
  call void @llvm.dbg.declare(metadata i32* %waitflag.addr, metadata !539, metadata !655), !dbg !1020
  %0 = load i8*, i8** %lock.addr, align 8, !dbg !1021, !tbaa !653
  %1 = load i32, i32* %waitflag.addr, align 4, !dbg !1022, !tbaa !641
  %tobool = icmp ne i32 %1, 0, !dbg !1022
  %cond = select i1 %tobool, i32 -1, i32 0, !dbg !1022
  %conv = sext i32 %cond to i64, !dbg !1022
  %call = call i32 @PyThread_acquire_lock_timed(i8* %0, i64 %conv, i32 0), !dbg !1023
  ret i32 %call, !dbg !1024
}

; Function Attrs: nounwind uwtable
define i32 @PyThread_create_key() #0 {
entry:
  %key = alloca i32, align 4
  %fail = alloca i32, align 4
  %0 = bitcast i32* %key to i8*, !dbg !1025
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %key, metadata !544, metadata !655), !dbg !1026
  %1 = bitcast i32* %fail to i8*, !dbg !1027
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %fail, metadata !546, metadata !655), !dbg !1028
  %call = call i32 @pthread_key_create(i32* %key, void (i8*)* null) #2, !dbg !1029
  store i32 %call, i32* %fail, align 4, !dbg !1028, !tbaa !641
  %2 = load i32, i32* %fail, align 4, !dbg !1030, !tbaa !641
  %tobool = icmp ne i32 %2, 0, !dbg !1030
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1030

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1031

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %key, align 4, !dbg !1033, !tbaa !641
  br label %cond.end, !dbg !1030

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %3, %cond.false ], !dbg !1030
  %4 = bitcast i32* %fail to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !1035
  %5 = bitcast i32* %key to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 4, i8* %5) #2, !dbg !1035
  ret i32 %cond, !dbg !1036
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define void @PyThread_delete_key(i32 %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4, !tbaa !641
  call void @llvm.dbg.declare(metadata i32* %key.addr, metadata !551, metadata !655), !dbg !1037
  %0 = load i32, i32* %key.addr, align 4, !dbg !1038, !tbaa !641
  %call = call i32 @pthread_key_delete(i32 %0) #2, !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32) #3

; Function Attrs: nounwind uwtable
define void @PyThread_delete_key_value(i32 %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4, !tbaa !641
  call void @llvm.dbg.declare(metadata i32* %key.addr, metadata !554, metadata !655), !dbg !1041
  %0 = load i32, i32* %key.addr, align 4, !dbg !1042, !tbaa !641
  %call = call i32 @pthread_setspecific(i32 %0, i8* null) #2, !dbg !1043
  ret void, !dbg !1044
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyThread_set_key_value(i32 %key, i8* %value) #0 {
entry:
  %key.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %fail = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4, !tbaa !641
  call void @llvm.dbg.declare(metadata i32* %key.addr, metadata !559, metadata !655), !dbg !1045
  store i8* %value, i8** %value.addr, align 8, !tbaa !653
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !560, metadata !655), !dbg !1046
  %0 = bitcast i32* %fail to i8*, !dbg !1047
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1047
  call void @llvm.dbg.declare(metadata i32* %fail, metadata !561, metadata !655), !dbg !1048
  %1 = load i32, i32* %key.addr, align 4, !dbg !1049, !tbaa !641
  %2 = load i8*, i8** %value.addr, align 8, !dbg !1050, !tbaa !653
  %call = call i32 @pthread_setspecific(i32 %1, i8* %2) #2, !dbg !1051
  store i32 %call, i32* %fail, align 4, !dbg !1052, !tbaa !641
  %3 = load i32, i32* %fail, align 4, !dbg !1053, !tbaa !641
  %tobool = icmp ne i32 %3, 0, !dbg !1053
  %cond = select i1 %tobool, i32 -1, i32 0, !dbg !1053
  %4 = bitcast i32* %fail to i8*, !dbg !1054
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !1054
  ret i32 %cond, !dbg !1055
}

; Function Attrs: nounwind uwtable
define i8* @PyThread_get_key_value(i32 %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4, !tbaa !641
  call void @llvm.dbg.declare(metadata i32* %key.addr, metadata !566, metadata !655), !dbg !1056
  %0 = load i32, i32* %key.addr, align 4, !dbg !1057, !tbaa !641
  %call = call i8* @pthread_getspecific(i32 %0) #2, !dbg !1058
  ret i8* %call, !dbg !1059
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #3

; Function Attrs: nounwind uwtable
define void @PyThread_ReInitTLS() #0 {
entry:
  ret void, !dbg !1060
}

; Function Attrs: nounwind uwtable
define i64 @PyThread_get_stacksize() #0 {
entry:
  %0 = load i64, i64* @_pythread_stacksize, align 8, !dbg !1061, !tbaa !676
  ret i64 %0, !dbg !1062
}

; Function Attrs: nounwind uwtable
define i32 @PyThread_set_stacksize(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !676
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !575, metadata !655), !dbg !1063
  %0 = load i64, i64* %size.addr, align 8, !dbg !1064, !tbaa !676
  %call = call i32 @_pythread_pthread_set_stacksize(i64 %0), !dbg !1065
  ret i32 %call, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal i32 @_pythread_pthread_set_stacksize(i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %attrs = alloca %union.pthread_attr_t, align 8
  %tss_min = alloca i64, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i64 %size, i64* %size.addr, align 8, !tbaa !676
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !604, metadata !655), !dbg !1067
  %0 = bitcast %union.pthread_attr_t* %attrs to i8*, !dbg !1068
  call void @llvm.lifetime.start(i64 56, i8* %0) #2, !dbg !1068
  call void @llvm.dbg.declare(metadata %union.pthread_attr_t* %attrs, metadata !605, metadata !655), !dbg !1069
  %1 = bitcast i64* %tss_min to i8*, !dbg !1070
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1070
  call void @llvm.dbg.declare(metadata i64* %tss_min, metadata !606, metadata !655), !dbg !1071
  %2 = bitcast i32* %rc to i8*, !dbg !1072
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1072
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !607, metadata !655), !dbg !1073
  store i32 0, i32* %rc, align 4, !dbg !1073, !tbaa !641
  %3 = load i64, i64* %size.addr, align 8, !dbg !1074, !tbaa !676
  %cmp = icmp eq i64 %3, 0, !dbg !1076
  br i1 %cmp, label %if.then, label %if.end, !dbg !1077

if.then:                                          ; preds = %entry
  store i64 0, i64* @_pythread_stacksize, align 8, !dbg !1078, !tbaa !676
  store i32 0, i32* %retval, !dbg !1080
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1080

if.end:                                           ; preds = %entry
  store i64 32768, i64* %tss_min, align 8, !dbg !1081, !tbaa !676
  %4 = load i64, i64* %size.addr, align 8, !dbg !1082, !tbaa !676
  %5 = load i64, i64* %tss_min, align 8, !dbg !1084, !tbaa !676
  %cmp1 = icmp uge i64 %4, %5, !dbg !1085
  br i1 %cmp1, label %if.then.2, label %if.end.11, !dbg !1086

if.then.2:                                        ; preds = %if.end
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attrs) #2, !dbg !1087
  %cmp3 = icmp eq i32 %call, 0, !dbg !1090
  br i1 %cmp3, label %if.then.4, label %if.end.10, !dbg !1091

if.then.4:                                        ; preds = %if.then.2
  %6 = load i64, i64* %size.addr, align 8, !dbg !1092, !tbaa !676
  %call5 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attrs, i64 %6) #2, !dbg !1094
  store i32 %call5, i32* %rc, align 4, !dbg !1095, !tbaa !641
  %call6 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attrs) #2, !dbg !1096
  %7 = load i32, i32* %rc, align 4, !dbg !1097, !tbaa !641
  %cmp7 = icmp eq i32 %7, 0, !dbg !1099
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1100

if.then.8:                                        ; preds = %if.then.4
  %8 = load i64, i64* %size.addr, align 8, !dbg !1101, !tbaa !676
  store i64 %8, i64* @_pythread_stacksize, align 8, !dbg !1103, !tbaa !676
  store i32 0, i32* %retval, !dbg !1104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1104

if.end.9:                                         ; preds = %if.then.4
  br label %if.end.10, !dbg !1105

if.end.10:                                        ; preds = %if.end.9, %if.then.2
  br label %if.end.11, !dbg !1106

if.end.11:                                        ; preds = %if.end.10, %if.end
  store i32 -1, i32* %retval, !dbg !1107
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1107

cleanup:                                          ; preds = %if.end.11, %if.then.8, %if.then
  %9 = bitcast i32* %rc to i8*, !dbg !1108
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1108
  %10 = bitcast i64* %tss_min to i8*, !dbg !1108
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1108
  %11 = bitcast %union.pthread_attr_t* %attrs to i8*, !dbg !1108
  call void @llvm.lifetime.end(i64 56, i8* %11) #2, !dbg !1108
  %12 = load i32, i32* %retval, !dbg !1108
  ret i32 %12, !dbg !1108
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyThread_GetInfo() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %threadinfo = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %pos = alloca i32, align 4
  %buffer = alloca [255 x i8], align 16
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %threadinfo to i8*, !dbg !1109
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1109
  call void @llvm.dbg.declare(metadata %struct._object** %threadinfo, metadata !580, metadata !655), !dbg !1110
  %1 = bitcast %struct._object** %value to i8*, !dbg !1109
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1109
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !581, metadata !655), !dbg !1111
  %2 = bitcast i32* %pos to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !582, metadata !655), !dbg !1113
  store i32 0, i32* %pos, align 4, !dbg !1113, !tbaa !641
  %3 = bitcast [255 x i8]* %buffer to i8*, !dbg !1114
  call void @llvm.lifetime.start(i64 255, i8* %3) #2, !dbg !1114
  call void @llvm.dbg.declare(metadata [255 x i8]* %buffer, metadata !583, metadata !655), !dbg !1115
  %4 = bitcast i32* %len to i8*, !dbg !1116
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %len, metadata !587, metadata !655), !dbg !1117
  %5 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ThreadInfoType, i32 0, i32 1), align 8, !dbg !1118, !tbaa !1120
  %cmp = icmp eq i8* %5, null, !dbg !1124
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1125

if.then:                                          ; preds = %entry
  %call = call i32 @PyStructSequence_InitType2(%struct._typeobject* @ThreadInfoType, %struct.PyStructSequence_Desc* @threadinfo_desc), !dbg !1126
  %cmp1 = icmp slt i32 %call, 0, !dbg !1129
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1130

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1131

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !1132

if.end.3:                                         ; preds = %if.end, %entry
  %call4 = call %struct._object* @PyStructSequence_New(%struct._typeobject* @ThreadInfoType), !dbg !1133
  store %struct._object* %call4, %struct._object** %threadinfo, align 8, !dbg !1134, !tbaa !653
  %6 = load %struct._object*, %struct._object** %threadinfo, align 8, !dbg !1135, !tbaa !653
  %cmp5 = icmp eq %struct._object* %6, null, !dbg !1137
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1138

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !1139
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1139

if.end.7:                                         ; preds = %if.end.3
  %call8 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !1140
  store %struct._object* %call8, %struct._object** %value, align 8, !dbg !1141, !tbaa !653
  %7 = load %struct._object*, %struct._object** %value, align 8, !dbg !1142, !tbaa !653
  %cmp9 = icmp eq %struct._object* %7, null, !dbg !1143
  br i1 %cmp9, label %if.then.10, label %if.end.14, !dbg !1144

if.then.10:                                       ; preds = %if.end.7
  br label %do.body, !dbg !1145

do.body:                                          ; preds = %if.then.10
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1146
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1146
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !588, metadata !655), !dbg !1148
  %9 = load %struct._object*, %struct._object** %threadinfo, align 8, !dbg !1149, !tbaa !653
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1148, !tbaa !653
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1150, !tbaa !653
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1152
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1153, !tbaa !1154
  %dec = add i64 %11, -1, !dbg !1153
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1153, !tbaa !1154
  %cmp11 = icmp ne i64 %dec, 0, !dbg !1155
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !1156

if.then.12:                                       ; preds = %do.body
  br label %if.end.13, !dbg !1157

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1159, !tbaa !653
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1161
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1161, !tbaa !1162
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1163
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1163, !tbaa !1164
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1165, !tbaa !653
  call void %14(%struct._object* %15), !dbg !1166
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1167
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1167
  br label %do.cond, !dbg !1169

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1170

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1172

if.end.14:                                        ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %value, align 8, !dbg !1173, !tbaa !653
  %18 = load i32, i32* %pos, align 4, !dbg !1174, !tbaa !641
  %inc = add i32 %18, 1, !dbg !1174
  store i32 %inc, i32* %pos, align 4, !dbg !1174, !tbaa !641
  %idxprom = sext i32 %18 to i64, !dbg !1175
  %19 = load %struct._object*, %struct._object** %threadinfo, align 8, !dbg !1176, !tbaa !653
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !1177
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !1178
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !1175
  store %struct._object* %17, %struct._object** %arrayidx, align 8, !dbg !1179, !tbaa !653
  %call15 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)), !dbg !1180
  store %struct._object* %call15, %struct._object** %value, align 8, !dbg !1181, !tbaa !653
  %21 = load %struct._object*, %struct._object** %value, align 8, !dbg !1182, !tbaa !653
  %cmp16 = icmp eq %struct._object* %21, null, !dbg !1183
  br i1 %cmp16, label %if.then.17, label %if.end.30, !dbg !1184

if.then.17:                                       ; preds = %if.end.14
  br label %do.body.18, !dbg !1185

do.body.18:                                       ; preds = %if.then.17
  %22 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1186
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1186
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !592, metadata !655), !dbg !1188
  %23 = load %struct._object*, %struct._object** %threadinfo, align 8, !dbg !1189, !tbaa !653
  store %struct._object* %23, %struct._object** %_py_decref_tmp19, align 8, !dbg !1188, !tbaa !653
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1190, !tbaa !653
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1192
  %25 = load i64, i64* %ob_refcnt20, align 8, !dbg !1193, !tbaa !1154
  %dec21 = add i64 %25, -1, !dbg !1193
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1193, !tbaa !1154
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1194
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1195

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1196

if.else.24:                                       ; preds = %do.body.18
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1198, !tbaa !653
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1200
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1200, !tbaa !1162
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1201
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1201, !tbaa !1164
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1202, !tbaa !653
  call void %28(%struct._object* %29), !dbg !1203
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %30 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1204
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1204
  br label %do.cond.28, !dbg !1206

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1207

do.end.29:                                        ; preds = %do.cond.28
  store %struct._object* null, %struct._object** %retval, !dbg !1209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1209

if.end.30:                                        ; preds = %if.end.14
  %31 = load %struct._object*, %struct._object** %value, align 8, !dbg !1210, !tbaa !653
  %32 = load i32, i32* %pos, align 4, !dbg !1211, !tbaa !641
  %inc31 = add i32 %32, 1, !dbg !1211
  store i32 %inc31, i32* %pos, align 4, !dbg !1211, !tbaa !641
  %idxprom32 = sext i32 %32 to i64, !dbg !1212
  %33 = load %struct._object*, %struct._object** %threadinfo, align 8, !dbg !1213, !tbaa !653
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*, !dbg !1214
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1, !dbg !1215
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 %idxprom32, !dbg !1212
  store %struct._object* %31, %struct._object** %arrayidx34, align 8, !dbg !1216, !tbaa !653
  store %struct._object* null, %struct._object** %value, align 8, !dbg !1217, !tbaa !653
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %buffer, i32 0, i32 0, !dbg !1218
  %call35 = call i64 @confstr(i32 3, i8* %arraydecay, i64 255) #2, !dbg !1219
  %conv = trunc i64 %call35 to i32, !dbg !1219
  store i32 %conv, i32* %len, align 4, !dbg !1220, !tbaa !641
  %35 = load i32, i32* %len, align 4, !dbg !1221, !tbaa !641
  %cmp36 = icmp slt i32 1, %35, !dbg !1223
  br i1 %cmp36, label %land.lhs.true, label %if.end.49, !dbg !1224

land.lhs.true:                                    ; preds = %if.end.30
  %36 = load i32, i32* %len, align 4, !dbg !1225, !tbaa !641
  %conv38 = sext i32 %36 to i64, !dbg !1225
  %cmp39 = icmp ult i64 %conv38, 255, !dbg !1227
  br i1 %cmp39, label %if.then.41, label %if.end.49, !dbg !1228

if.then.41:                                       ; preds = %land.lhs.true
  %arraydecay42 = getelementptr inbounds [255 x i8], [255 x i8]* %buffer, i32 0, i32 0, !dbg !1229
  %37 = load i32, i32* %len, align 4, !dbg !1231, !tbaa !641
  %sub = sub i32 %37, 1, !dbg !1232
  %conv43 = sext i32 %sub to i64, !dbg !1231
  %call44 = call %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8* %arraydecay42, i64 %conv43), !dbg !1233
  store %struct._object* %call44, %struct._object** %value, align 8, !dbg !1234, !tbaa !653
  %38 = load %struct._object*, %struct._object** %value, align 8, !dbg !1235, !tbaa !653
  %cmp45 = icmp eq %struct._object* %38, null, !dbg !1237
  br i1 %cmp45, label %if.then.47, label %if.end.48, !dbg !1238

if.then.47:                                       ; preds = %if.then.41
  call void @PyErr_Clear(), !dbg !1239
  br label %if.end.48, !dbg !1239

if.end.48:                                        ; preds = %if.then.47, %if.then.41
  br label %if.end.49, !dbg !1240

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.end.30
  %39 = load %struct._object*, %struct._object** %value, align 8, !dbg !1241, !tbaa !653
  %cmp50 = icmp eq %struct._object* %39, null, !dbg !1243
  br i1 %cmp50, label %if.then.52, label %if.end.54, !dbg !1244

if.then.52:                                       ; preds = %if.end.49
  %40 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1245, !tbaa !1154
  %inc53 = add i64 %40, 1, !dbg !1245
  store i64 %inc53, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1245, !tbaa !1154
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8, !dbg !1247, !tbaa !653
  br label %if.end.54, !dbg !1248

if.end.54:                                        ; preds = %if.then.52, %if.end.49
  %41 = load %struct._object*, %struct._object** %value, align 8, !dbg !1249, !tbaa !653
  %42 = load i32, i32* %pos, align 4, !dbg !1250, !tbaa !641
  %inc55 = add i32 %42, 1, !dbg !1250
  store i32 %inc55, i32* %pos, align 4, !dbg !1250, !tbaa !641
  %idxprom56 = sext i32 %42 to i64, !dbg !1251
  %43 = load %struct._object*, %struct._object** %threadinfo, align 8, !dbg !1252, !tbaa !653
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*, !dbg !1253
  %ob_item57 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1, !dbg !1254
  %arrayidx58 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item57, i32 0, i64 %idxprom56, !dbg !1251
  store %struct._object* %41, %struct._object** %arrayidx58, align 8, !dbg !1255, !tbaa !653
  %45 = load %struct._object*, %struct._object** %threadinfo, align 8, !dbg !1256, !tbaa !653
  store %struct._object* %45, %struct._object** %retval, !dbg !1257
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1257

cleanup:                                          ; preds = %if.end.54, %do.end.29, %do.end, %if.then.6, %if.then.2
  %46 = bitcast i32* %len to i8*, !dbg !1258
  call void @llvm.lifetime.end(i64 4, i8* %46) #2, !dbg !1258
  %47 = bitcast [255 x i8]* %buffer to i8*, !dbg !1258
  call void @llvm.lifetime.end(i64 255, i8* %47) #2, !dbg !1258
  %48 = bitcast i32* %pos to i8*, !dbg !1258
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !1258
  %49 = bitcast %struct._object** %value to i8*, !dbg !1258
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1258
  %50 = bitcast %struct._object** %threadinfo to i8*, !dbg !1258
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !1258
  %51 = load %struct._object*, %struct._object** %retval, !dbg !1258
  ret %struct._object* %51, !dbg !1258
}

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #7

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #7

declare %struct._object* @PyUnicode_FromString(i8*) #7

; Function Attrs: nounwind
declare i64 @confstr(i32, i8*, i64) #3

declare %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8*, i64) #7

declare void @PyErr_Clear() #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!636, !637}
!llvm.ident = !{!638}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !81, subprograms: !449, globals: !608)
!1 = !DIFile(filename: "thread.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !8, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 164, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/pthread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 0)
!7 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyLockStatus", file: !9, line: 14, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "Include/pythread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "PY_LOCK_FAILURE", value: 0)
!12 = !DIEnumerator(name: "PY_LOCK_ACQUIRED", value: 1)
!13 = !DIEnumerator(name: "PY_LOCK_INTR", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 534, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!89 = !DIFile(filename: "/usr/include/bits/semaphore.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!101 = !DIFile(filename: "/usr/include/sys/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !{!103, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !100, file: !101, line: 58, baseType: !104, size: 32, align: 32)
!104 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !100, file: !101, line: 59, baseType: !104, size: 32, align: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !108, line: 109, baseType: !109)
!108 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !108, line: 105, size: 128, align: 64, elements: !110)
!110 = !{!111, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !109, file: !108, line: 107, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !113, line: 177, baseType: !114)
!113 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !115, line: 102, baseType: !116)
!115 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !117, line: 181, baseType: !86)
!117 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!146 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!193 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!379 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!392 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!443 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!444 = !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 25, size: 256, align: 64, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !444, file: !443, line: 26, baseType: !123, size: 192, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !444, file: !443, line: 27, baseType: !448, size: 64, align: 64, offset: 192)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, align: 64, elements: !180)
!449 = !{!450, !455, !476, !482, !483, !490, !498, !528, !534, !540, !547, !552, !555, !562, !567, !568, !571, !576, !596, !597, !602}
!450 = !DISubprogram(name: "PyThread_init_thread", scope: !451, file: !451, line: 60, type: !452, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyThread_init_thread, variables: !454)
!451 = !DIFile(filename: "Python/thread.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!452 = !DISubroutineType(types: !453)
!453 = !{null}
!454 = !{}
!455 = !DISubprogram(name: "PyThread_start_new_thread", scope: !456, file: !456, line: 186, type: !457, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i64 (void (i8*)*, i8*)* @PyThread_start_new_thread, variables: !459)
!456 = !DIFile(filename: "Python/thread_pthread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!457 = !DISubroutineType(types: !458)
!458 = !{!86, !428, !85}
!459 = !{!460, !461, !462, !465, !466, !475}
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !455, file: !456, line: 186, type: !428)
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !455, file: !456, line: 186, type: !85)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "th", scope: !455, file: !456, line: 188, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !464, line: 60, baseType: !194)
!464 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !455, file: !456, line: 189, type: !104)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attrs", scope: !455, file: !456, line: 191, type: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !464, line: 69, baseType: !468)
!468 = !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !464, line: 63, size: 448, align: 64, elements: !469)
!469 = !{!470, !474}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !468, file: !464, line: 65, baseType: !471, size: 448, align: 8)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 448, align: 8, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 56)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !468, file: !464, line: 66, baseType: !86, size: 64, align: 64)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tss", scope: !455, file: !456, line: 194, type: !192)
!476 = !DISubprogram(name: "PyThread_get_thread_ident", scope: !456, file: !456, line: 251, type: !477, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @PyThread_get_thread_ident, variables: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!86}
!479 = !{!480}
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadid", scope: !476, file: !456, line: 253, type: !481)
!481 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !463)
!482 = !DISubprogram(name: "PyThread_exit_thread", scope: !456, file: !456, line: 261, type: !452, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyThread_exit_thread, variables: !454)
!483 = !DISubprogram(name: "PyThread_allocate_lock", scope: !456, file: !456, line: 276, type: !484, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @PyThread_allocate_lock, variables: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!98}
!486 = !{!487, !488, !489}
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lock", scope: !483, file: !456, line: 278, type: !87)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !483, file: !456, line: 279, type: !104)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !483, file: !456, line: 279, type: !104)
!490 = !DISubprogram(name: "PyThread_free_lock", scope: !456, file: !456, line: 302, type: !491, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyThread_free_lock, variables: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !98}
!493 = !{!494, !495, !496, !497}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !490, file: !456, line: 302, type: !98)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thelock", scope: !490, file: !456, line: 304, type: !87)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !490, file: !456, line: 305, type: !104)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !490, file: !456, line: 305, type: !104)
!498 = !DISubprogram(name: "PyThread_acquire_lock_timed", scope: !456, file: !456, line: 332, type: !499, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, i32)* @PyThread_acquire_lock_timed, variables: !503)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !98, !502, !104}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLockStatus", file: !9, line: 18, baseType: !8)
!502 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !519}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !498, file: !456, line: 332, type: !98)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "microseconds", arg: 2, scope: !498, file: !456, line: 332, type: !502)
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intr_flag", arg: 3, scope: !498, file: !456, line: 333, type: !104)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "success", scope: !498, file: !456, line: 335, type: !501)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thelock", scope: !498, file: !456, line: 336, type: !87)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !498, file: !456, line: 337, type: !104)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !498, file: !456, line: 337, type: !104)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ts", scope: !498, file: !456, line: 338, type: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !513, line: 120, size: 128, align: 64, elements: !514)
!513 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!514 = !{!515, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !512, file: !513, line: 122, baseType: !516, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !117, line: 148, baseType: !86)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !512, file: !513, line: 123, baseType: !518, size: 64, align: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !117, line: 184, baseType: !86)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv", scope: !520, file: !456, line: 345, type: !522)
!520 = distinct !DILexicalBlock(scope: !521, file: !456, line: 345, column: 12)
!521 = distinct !DILexicalBlock(scope: !498, file: !456, line: 344, column: 9)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !523, line: 30, size: 128, align: 64, elements: !524)
!523 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !522, file: !523, line: 32, baseType: !516, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !522, file: !523, line: 33, baseType: !527, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !117, line: 150, baseType: !86)
!528 = !DISubprogram(name: "PyThread_release_lock", scope: !456, file: !456, line: 386, type: !491, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyThread_release_lock, variables: !529)
!529 = !{!530, !531, !532, !533}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !528, file: !456, line: 386, type: !98)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thelock", scope: !528, file: !456, line: 388, type: !87)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !528, file: !456, line: 389, type: !104)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !528, file: !456, line: 389, type: !104)
!534 = !DISubprogram(name: "PyThread_acquire_lock", scope: !456, file: !456, line: 554, type: !535, isLocal: false, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @PyThread_acquire_lock, variables: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!104, !98, !104}
!537 = !{!538, !539}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !534, file: !456, line: 554, type: !98)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "waitflag", arg: 2, scope: !534, file: !456, line: 554, type: !104)
!540 = !DISubprogram(name: "PyThread_create_key", scope: !456, file: !456, line: 607, type: !541, isLocal: false, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyThread_create_key, variables: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!104}
!543 = !{!544, !546}
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !540, file: !456, line: 609, type: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !464, line: 154, baseType: !439)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fail", scope: !540, file: !456, line: 610, type: !104)
!547 = !DISubprogram(name: "PyThread_delete_key", scope: !456, file: !456, line: 615, type: !548, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @PyThread_delete_key, variables: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !104}
!550 = !{!551}
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !547, file: !456, line: 615, type: !104)
!552 = !DISubprogram(name: "PyThread_delete_key_value", scope: !456, file: !456, line: 621, type: !548, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @PyThread_delete_key_value, variables: !553)
!553 = !{!554}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !552, file: !456, line: 621, type: !104)
!555 = !DISubprogram(name: "PyThread_set_key_value", scope: !456, file: !456, line: 627, type: !556, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*)* @PyThread_set_key_value, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!104, !104, !85}
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !555, file: !456, line: 627, type: !104)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !555, file: !456, line: 627, type: !85)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fail", scope: !555, file: !456, line: 629, type: !104)
!562 = !DISubprogram(name: "PyThread_get_key_value", scope: !456, file: !456, line: 635, type: !563, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @PyThread_get_key_value, variables: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!85, !104}
!565 = !{!566}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !562, file: !456, line: 635, type: !104)
!567 = !DISubprogram(name: "PyThread_ReInitTLS", scope: !456, file: !456, line: 641, type: !452, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyThread_ReInitTLS, variables: !454)
!568 = !DISubprogram(name: "PyThread_get_stacksize", scope: !451, file: !451, line: 103, type: !569, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @PyThread_get_stacksize, variables: !454)
!569 = !DISubroutineType(types: !570)
!570 = !{!192}
!571 = !DISubprogram(name: "PyThread_set_stacksize", scope: !451, file: !451, line: 114, type: !572, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64)* @PyThread_set_stacksize, variables: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!104, !192}
!574 = !{!575}
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !571, file: !451, line: 114, type: !192)
!576 = !DISubprogram(name: "PyThread_GetInfo", scope: !451, file: !451, line: 388, type: !577, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyThread_GetInfo, variables: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!106}
!579 = !{!580, !581, !582, !583, !587, !588, !592}
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadinfo", scope: !576, file: !451, line: 390, type: !106)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !576, file: !451, line: 390, type: !106)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !576, file: !451, line: 391, type: !104)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !576, file: !451, line: 394, type: !584)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2040, align: 8, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 255)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !576, file: !451, line: 395, type: !104)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !589, file: !451, line: 409, type: !106)
!589 = distinct !DILexicalBlock(scope: !590, file: !451, line: 409, column: 12)
!590 = distinct !DILexicalBlock(scope: !591, file: !451, line: 408, column: 30)
!591 = distinct !DILexicalBlock(scope: !576, file: !451, line: 408, column: 9)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !593, file: !451, line: 421, type: !106)
!593 = distinct !DILexicalBlock(scope: !594, file: !451, line: 421, column: 12)
!594 = distinct !DILexicalBlock(scope: !595, file: !451, line: 420, column: 30)
!595 = distinct !DILexicalBlock(scope: !576, file: !451, line: 420, column: 9)
!596 = !DISubprogram(name: "PyThread__init_thread", scope: !456, file: !456, line: 170, type: !452, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyThread__init_thread, variables: !454)
!597 = !DISubprogram(name: "fix_status", scope: !456, file: !456, line: 326, type: !598, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @fix_status, variables: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!104, !104}
!600 = !{!601}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !597, file: !456, line: 326, type: !104)
!602 = !DISubprogram(name: "_pythread_pthread_set_stacksize", scope: !456, file: !456, line: 564, type: !572, isLocal: true, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64)* @_pythread_pthread_set_stacksize, variables: !603)
!603 = !{!604, !605, !606, !607}
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !602, file: !456, line: 564, type: !192)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attrs", scope: !602, file: !456, line: 567, type: !467)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tss_min", scope: !602, file: !456, line: 568, type: !192)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !602, file: !456, line: 569, type: !104)
!608 = !{!609, !610, !612, !613, !627, !631}
!609 = !DIGlobalVariable(name: "initialized", scope: !0, file: !451, line: 55, type: !104, isLocal: true, isDefinition: true, variable: i32* @initialized)
!610 = !DIGlobalVariable(name: "ThreadInfoType", scope: !0, file: !451, line: 385, type: !611, isLocal: true, isDefinition: true, variable: %struct._typeobject* @ThreadInfoType)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !108, line: 422, baseType: !120)
!612 = !DIGlobalVariable(name: "_pythread_stacksize", scope: !0, file: !451, line: 82, type: !192, isLocal: true, isDefinition: true, variable: i64* @_pythread_stacksize)
!613 = !DIGlobalVariable(name: "threadinfo_desc", scope: !0, file: !451, line: 378, type: !614, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @threadinfo_desc)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !615, line: 20, baseType: !616)
!615 = !DIFile(filename: "Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !615, line: 15, size: 256, align: 64, elements: !617)
!617 = !{!618, !619, !620, !626}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !615, line: 16, baseType: !150, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !616, file: !615, line: 17, baseType: !150, size: 64, align: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !616, file: !615, line: 18, baseType: !621, size: 64, align: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !615, line: 10, size: 128, align: 64, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !615, line: 11, baseType: !150, size: 64, align: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !622, file: !615, line: 12, baseType: !150, size: 64, align: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !616, file: !615, line: 19, baseType: !104, size: 32, align: 32, offset: 192)
!627 = !DIGlobalVariable(name: "threadinfo__doc__", scope: !0, file: !451, line: 366, type: !628, isLocal: true, isDefinition: true, variable: [88 x i8]* @threadinfo__doc__)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 704, align: 8, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 88)
!631 = !DIGlobalVariable(name: "threadinfo_fields", scope: !0, file: !451, line: 371, type: !632, isLocal: true, isDefinition: true, variable: [4 x %struct.PyStructSequence_Field]* @threadinfo_fields)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 512, align: 64, elements: !634)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !615, line: 13, baseType: !622)
!634 = !{!635}
!635 = !DISubrange(count: 4)
!636 = !{i32 2, !"Dwarf Version", i32 4}
!637 = !{i32 2, !"Debug Info Version", i32 3}
!638 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!639 = !DILocation(line: 72, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !450, file: !451, line: 72, column: 9)
!641 = !{!642, !642, i64 0}
!642 = !{!"int", !643, i64 0}
!643 = !{!"omnipotent char", !644, i64 0}
!644 = !{!"Simple C/C++ TBAA"}
!645 = !DILocation(line: 72, column: 9, scope: !450)
!646 = !DILocation(line: 73, column: 9, scope: !640)
!647 = !DILocation(line: 74, column: 17, scope: !450)
!648 = !DILocation(line: 76, column: 5, scope: !450)
!649 = !DILocation(line: 77, column: 1, scope: !450)
!650 = !DILocation(line: 77, column: 1, scope: !651)
!651 = !DILexicalBlockFile(scope: !450, file: !451, discriminator: 1)
!652 = !DILocation(line: 176, column: 1, scope: !596)
!653 = !{!654, !654, i64 0}
!654 = !{!"any pointer", !643, i64 0}
!655 = !DIExpression()
!656 = !DILocation(line: 186, column: 34, scope: !455)
!657 = !DILocation(line: 186, column: 55, scope: !455)
!658 = !DILocation(line: 188, column: 5, scope: !455)
!659 = !DILocation(line: 188, column: 15, scope: !455)
!660 = !DILocation(line: 189, column: 5, scope: !455)
!661 = !DILocation(line: 189, column: 9, scope: !455)
!662 = !DILocation(line: 191, column: 5, scope: !455)
!663 = !DILocation(line: 191, column: 20, scope: !455)
!664 = !DILocation(line: 194, column: 5, scope: !455)
!665 = !DILocation(line: 194, column: 12, scope: !455)
!666 = !DILocation(line: 198, column: 10, scope: !667)
!667 = distinct !DILexicalBlock(scope: !455, file: !456, line: 198, column: 9)
!668 = !DILocation(line: 198, column: 9, scope: !455)
!669 = !DILocation(line: 199, column: 9, scope: !667)
!670 = !DILocation(line: 202, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !455, file: !456, line: 202, column: 9)
!672 = !DILocation(line: 202, column: 35, scope: !671)
!673 = !DILocation(line: 202, column: 9, scope: !455)
!674 = !DILocation(line: 203, column: 9, scope: !671)
!675 = !DILocation(line: 206, column: 12, scope: !455)
!676 = !{!677, !677, i64 0}
!677 = !{!"long", !643, i64 0}
!678 = !DILocation(line: 206, column: 32, scope: !455)
!679 = !DILocation(line: 206, column: 11, scope: !455)
!680 = !DILocation(line: 206, column: 40, scope: !681)
!681 = !DILexicalBlockFile(scope: !455, file: !456, discriminator: 1)
!682 = !DILocation(line: 206, column: 11, scope: !683)
!683 = !DILexicalBlockFile(scope: !455, file: !456, discriminator: 2)
!684 = !DILocation(line: 206, column: 9, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !456, discriminator: 4)
!686 = !DILexicalBlockFile(scope: !455, file: !456, discriminator: 3)
!687 = !DILocation(line: 208, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !455, file: !456, line: 208, column: 9)
!689 = !DILocation(line: 208, column: 13, scope: !688)
!690 = !DILocation(line: 208, column: 9, scope: !455)
!691 = !DILocation(line: 209, column: 47, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !456, line: 209, column: 13)
!693 = distinct !DILexicalBlock(scope: !688, file: !456, line: 208, column: 19)
!694 = !DILocation(line: 209, column: 13, scope: !692)
!695 = !DILocation(line: 209, column: 52, scope: !692)
!696 = !DILocation(line: 209, column: 13, scope: !693)
!697 = !DILocation(line: 210, column: 13, scope: !698)
!698 = distinct !DILexicalBlock(scope: !692, file: !456, line: 209, column: 58)
!699 = !DILocation(line: 211, column: 13, scope: !698)
!700 = !DILocation(line: 213, column: 5, scope: !693)
!701 = !DILocation(line: 216, column: 5, scope: !455)
!702 = !DILocation(line: 225, column: 49, scope: !455)
!703 = !DILocation(line: 225, column: 30, scope: !455)
!704 = !DILocation(line: 226, column: 38, scope: !455)
!705 = !DILocation(line: 219, column: 14, scope: !455)
!706 = !DILocation(line: 219, column: 12, scope: !455)
!707 = !DILocation(line: 230, column: 5, scope: !455)
!708 = !DILocation(line: 232, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !455, file: !456, line: 232, column: 9)
!710 = !DILocation(line: 232, column: 16, scope: !709)
!711 = !DILocation(line: 232, column: 9, scope: !455)
!712 = !DILocation(line: 233, column: 9, scope: !709)
!713 = !DILocation(line: 235, column: 20, scope: !455)
!714 = !DILocation(line: 235, column: 5, scope: !455)
!715 = !DILocation(line: 238, column: 19, scope: !455)
!716 = !DILocation(line: 238, column: 5, scope: !455)
!717 = !DILocation(line: 242, column: 1, scope: !455)
!718 = !DILocation(line: 253, column: 5, scope: !476)
!719 = !DILocation(line: 253, column: 24, scope: !476)
!720 = !DILocation(line: 254, column: 10, scope: !721)
!721 = distinct !DILexicalBlock(scope: !476, file: !456, line: 254, column: 9)
!722 = !DILocation(line: 254, column: 9, scope: !476)
!723 = !DILocation(line: 255, column: 9, scope: !721)
!724 = !DILocation(line: 256, column: 16, scope: !476)
!725 = !DILocation(line: 256, column: 14, scope: !476)
!726 = !DILocation(line: 257, column: 19, scope: !476)
!727 = !DILocation(line: 258, column: 1, scope: !476)
!728 = !DILocation(line: 257, column: 5, scope: !476)
!729 = !DILocation(line: 264, column: 10, scope: !730)
!730 = distinct !DILexicalBlock(scope: !482, file: !456, line: 264, column: 9)
!731 = !DILocation(line: 264, column: 9, scope: !482)
!732 = !DILocation(line: 265, column: 9, scope: !730)
!733 = !DILocation(line: 266, column: 5, scope: !482)
!734 = !DILocation(line: 267, column: 1, scope: !482)
!735 = !DILocation(line: 278, column: 5, scope: !483)
!736 = !DILocation(line: 278, column: 12, scope: !483)
!737 = !DILocation(line: 279, column: 5, scope: !483)
!738 = !DILocation(line: 279, column: 9, scope: !483)
!739 = !DILocation(line: 279, column: 17, scope: !483)
!740 = !DILocation(line: 282, column: 10, scope: !741)
!741 = distinct !DILexicalBlock(scope: !483, file: !456, line: 282, column: 9)
!742 = !DILocation(line: 282, column: 9, scope: !483)
!743 = !DILocation(line: 283, column: 9, scope: !741)
!744 = !DILocation(line: 285, column: 21, scope: !483)
!745 = !DILocation(line: 285, column: 12, scope: !483)
!746 = !DILocation(line: 285, column: 10, scope: !483)
!747 = !DILocation(line: 287, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !483, file: !456, line: 287, column: 9)
!749 = !DILocation(line: 287, column: 9, scope: !483)
!750 = !DILocation(line: 288, column: 27, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !456, line: 287, column: 15)
!752 = !DILocation(line: 288, column: 18, scope: !751)
!753 = !DILocation(line: 288, column: 16, scope: !751)
!754 = !DILocation(line: 289, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !456, line: 289, column: 13)
!756 = !DILocation(line: 289, column: 20, scope: !755)
!757 = !DILocation(line: 289, column: 13, scope: !751)
!758 = !DILocation(line: 289, column: 28, scope: !759)
!759 = !DILexicalBlockFile(scope: !760, file: !456, discriminator: 1)
!760 = distinct !DILexicalBlock(scope: !755, file: !456, line: 289, column: 26)
!761 = !DILocation(line: 289, column: 54, scope: !760)
!762 = !DILocation(line: 289, column: 59, scope: !760)
!763 = !DILocation(line: 291, column: 13, scope: !764)
!764 = distinct !DILexicalBlock(scope: !751, file: !456, line: 291, column: 13)
!765 = !DILocation(line: 291, column: 13, scope: !751)
!766 = !DILocation(line: 292, column: 35, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !456, line: 291, column: 20)
!768 = !DILocation(line: 292, column: 27, scope: !767)
!769 = !DILocation(line: 292, column: 13, scope: !767)
!770 = !DILocation(line: 293, column: 18, scope: !767)
!771 = !DILocation(line: 294, column: 9, scope: !767)
!772 = !DILocation(line: 295, column: 5, scope: !751)
!773 = !DILocation(line: 298, column: 32, scope: !483)
!774 = !DILocation(line: 298, column: 12, scope: !483)
!775 = !DILocation(line: 299, column: 1, scope: !483)
!776 = !DILocation(line: 298, column: 5, scope: !483)
!777 = !DILocation(line: 302, column: 39, scope: !490)
!778 = !DILocation(line: 304, column: 5, scope: !490)
!779 = !DILocation(line: 304, column: 12, scope: !490)
!780 = !DILocation(line: 304, column: 31, scope: !490)
!781 = !DILocation(line: 304, column: 22, scope: !490)
!782 = !DILocation(line: 305, column: 5, scope: !490)
!783 = !DILocation(line: 305, column: 9, scope: !490)
!784 = !DILocation(line: 305, column: 17, scope: !490)
!785 = !DILocation(line: 307, column: 12, scope: !490)
!786 = !DILocation(line: 310, column: 10, scope: !787)
!787 = distinct !DILexicalBlock(scope: !490, file: !456, line: 310, column: 9)
!788 = !DILocation(line: 310, column: 9, scope: !490)
!789 = !DILocation(line: 311, column: 9, scope: !787)
!790 = !DILocation(line: 313, column: 26, scope: !490)
!791 = !DILocation(line: 313, column: 14, scope: !490)
!792 = !DILocation(line: 313, column: 12, scope: !490)
!793 = !DILocation(line: 314, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !490, file: !456, line: 314, column: 9)
!795 = !DILocation(line: 314, column: 16, scope: !794)
!796 = !DILocation(line: 314, column: 9, scope: !490)
!797 = !DILocation(line: 314, column: 24, scope: !798)
!798 = !DILexicalBlockFile(scope: !799, file: !456, discriminator: 1)
!799 = distinct !DILexicalBlock(scope: !794, file: !456, line: 314, column: 22)
!800 = !DILocation(line: 314, column: 53, scope: !799)
!801 = !DILocation(line: 314, column: 58, scope: !799)
!802 = !DILocation(line: 316, column: 27, scope: !490)
!803 = !DILocation(line: 316, column: 19, scope: !490)
!804 = !DILocation(line: 316, column: 5, scope: !490)
!805 = !DILocation(line: 317, column: 1, scope: !490)
!806 = !DILocation(line: 317, column: 1, scope: !807)
!807 = !DILexicalBlockFile(scope: !490, file: !456, discriminator: 1)
!808 = !DILocation(line: 332, column: 48, scope: !498)
!809 = !{!810, !810, i64 0}
!810 = !{!"long long", !643, i64 0}
!811 = !DILocation(line: 332, column: 64, scope: !498)
!812 = !DILocation(line: 333, column: 33, scope: !498)
!813 = !DILocation(line: 335, column: 5, scope: !498)
!814 = !DILocation(line: 335, column: 18, scope: !498)
!815 = !DILocation(line: 336, column: 5, scope: !498)
!816 = !DILocation(line: 336, column: 12, scope: !498)
!817 = !DILocation(line: 336, column: 31, scope: !498)
!818 = !DILocation(line: 336, column: 22, scope: !498)
!819 = !DILocation(line: 337, column: 5, scope: !498)
!820 = !DILocation(line: 337, column: 9, scope: !498)
!821 = !DILocation(line: 337, column: 17, scope: !498)
!822 = !DILocation(line: 338, column: 5, scope: !498)
!823 = !DILocation(line: 338, column: 21, scope: !498)
!824 = !DILocation(line: 340, column: 12, scope: !498)
!825 = !DILocation(line: 344, column: 9, scope: !521)
!826 = !DILocation(line: 344, column: 22, scope: !521)
!827 = !DILocation(line: 344, column: 9, scope: !498)
!828 = !DILocation(line: 345, column: 9, scope: !521)
!829 = !DILocation(line: 345, column: 14, scope: !830)
!830 = !DILexicalBlockFile(scope: !520, file: !456, discriminator: 1)
!831 = !DILocation(line: 345, column: 29, scope: !520)
!832 = !DILocation(line: 345, column: 33, scope: !520)
!833 = !DILocation(line: 345, column: 97, scope: !520)
!834 = !DILocation(line: 345, column: 110, scope: !520)
!835 = !DILocation(line: 345, column: 86, scope: !520)
!836 = !DILocation(line: 345, column: 94, scope: !520)
!837 = !{!838, !677, i64 8}
!838 = !{!"timeval", !677, i64 0, !677, i64 8}
!839 = !DILocation(line: 345, column: 134, scope: !520)
!840 = !DILocation(line: 345, column: 147, scope: !520)
!841 = !DILocation(line: 345, column: 124, scope: !520)
!842 = !DILocation(line: 345, column: 131, scope: !520)
!843 = !{!838, !677, i64 0}
!844 = !DILocation(line: 345, column: 174, scope: !520)
!845 = !DILocation(line: 345, column: 182, scope: !520)
!846 = !DILocation(line: 345, column: 161, scope: !520)
!847 = !DILocation(line: 345, column: 168, scope: !520)
!848 = !DILocation(line: 345, column: 196, scope: !520)
!849 = !DILocation(line: 345, column: 204, scope: !520)
!850 = !DILocation(line: 345, column: 231, scope: !520)
!851 = !DILocation(line: 345, column: 219, scope: !520)
!852 = !DILocation(line: 345, column: 226, scope: !520)
!853 = !{!854, !677, i64 0}
!854 = !{!"timespec", !677, i64 0, !677, i64 8}
!855 = !DILocation(line: 345, column: 255, scope: !520)
!856 = !DILocation(line: 345, column: 263, scope: !520)
!857 = !DILocation(line: 345, column: 242, scope: !520)
!858 = !DILocation(line: 345, column: 250, scope: !520)
!859 = !{!854, !677, i64 8}
!860 = !DILocation(line: 345, column: 271, scope: !521)
!861 = !DILocation(line: 345, column: 271, scope: !520)
!862 = !DILocation(line: 345, column: 271, scope: !863)
!863 = !DILexicalBlockFile(scope: !520, file: !456, discriminator: 2)
!864 = !DILocation(line: 345, column: 271, scope: !865)
!865 = !DILexicalBlockFile(scope: !520, file: !456, discriminator: 3)
!866 = !DILocation(line: 346, column: 5, scope: !498)
!867 = !DILocation(line: 347, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !456, line: 347, column: 13)
!869 = distinct !DILexicalBlock(scope: !498, file: !456, line: 346, column: 8)
!870 = !DILocation(line: 347, column: 26, scope: !868)
!871 = !DILocation(line: 347, column: 13, scope: !869)
!872 = !DILocation(line: 348, column: 47, scope: !868)
!873 = !DILocation(line: 348, column: 33, scope: !868)
!874 = !DILocation(line: 348, column: 22, scope: !868)
!875 = !DILocation(line: 348, column: 20, scope: !868)
!876 = !DILocation(line: 348, column: 13, scope: !868)
!877 = !DILocation(line: 349, column: 18, scope: !878)
!878 = distinct !DILexicalBlock(scope: !868, file: !456, line: 349, column: 18)
!879 = !DILocation(line: 349, column: 31, scope: !878)
!880 = !DILocation(line: 349, column: 18, scope: !868)
!881 = !DILocation(line: 350, column: 45, scope: !878)
!882 = !DILocation(line: 350, column: 33, scope: !878)
!883 = !DILocation(line: 350, column: 22, scope: !878)
!884 = !DILocation(line: 350, column: 20, scope: !878)
!885 = !DILocation(line: 350, column: 13, scope: !878)
!886 = !DILocation(line: 352, column: 42, scope: !878)
!887 = !DILocation(line: 352, column: 33, scope: !878)
!888 = !DILocation(line: 352, column: 22, scope: !878)
!889 = !DILocation(line: 352, column: 20, scope: !878)
!890 = !DILocation(line: 355, column: 5, scope: !869)
!891 = !DILocation(line: 355, column: 15, scope: !892)
!892 = !DILexicalBlockFile(scope: !498, file: !456, discriminator: 1)
!893 = !DILocation(line: 355, column: 25, scope: !498)
!894 = !DILocation(line: 355, column: 28, scope: !895)
!895 = !DILexicalBlockFile(scope: !498, file: !456, discriminator: 3)
!896 = !DILocation(line: 355, column: 35, scope: !498)
!897 = !DILocation(line: 355, column: 5, scope: !898)
!898 = !DILexicalBlockFile(scope: !869, file: !456, discriminator: 2)
!899 = !DILocation(line: 358, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !498, file: !456, line: 358, column: 9)
!901 = !DILocation(line: 358, column: 21, scope: !900)
!902 = !DILocation(line: 358, column: 24, scope: !903)
!903 = !DILexicalBlockFile(scope: !900, file: !456, discriminator: 1)
!904 = !DILocation(line: 358, column: 31, scope: !900)
!905 = !DILocation(line: 358, column: 9, scope: !498)
!906 = !DILocation(line: 359, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !456, line: 359, column: 13)
!908 = distinct !DILexicalBlock(scope: !900, file: !456, line: 358, column: 38)
!909 = !DILocation(line: 359, column: 26, scope: !907)
!910 = !DILocation(line: 359, column: 13, scope: !908)
!911 = !DILocation(line: 360, column: 17, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !456, line: 360, column: 17)
!913 = distinct !DILexicalBlock(scope: !907, file: !456, line: 359, column: 31)
!914 = !DILocation(line: 360, column: 24, scope: !912)
!915 = !DILocation(line: 360, column: 17, scope: !913)
!916 = !DILocation(line: 361, column: 21, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !456, line: 361, column: 21)
!918 = !DILocation(line: 361, column: 28, scope: !917)
!919 = !DILocation(line: 361, column: 21, scope: !912)
!920 = !DILocation(line: 361, column: 36, scope: !921)
!921 = !DILexicalBlockFile(scope: !922, file: !456, discriminator: 1)
!922 = distinct !DILexicalBlock(scope: !917, file: !456, line: 361, column: 34)
!923 = !DILocation(line: 361, column: 67, scope: !922)
!924 = !DILocation(line: 361, column: 72, scope: !922)
!925 = !DILocation(line: 361, column: 31, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !456, discriminator: 3)
!927 = !DILexicalBlockFile(scope: !917, file: !456, discriminator: 2)
!928 = !DILocation(line: 362, column: 9, scope: !913)
!929 = !DILocation(line: 363, column: 18, scope: !930)
!930 = distinct !DILexicalBlock(scope: !907, file: !456, line: 363, column: 18)
!931 = !DILocation(line: 363, column: 31, scope: !930)
!932 = !DILocation(line: 363, column: 18, scope: !907)
!933 = !DILocation(line: 364, column: 17, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !456, line: 364, column: 17)
!935 = distinct !DILexicalBlock(scope: !930, file: !456, line: 363, column: 37)
!936 = !DILocation(line: 364, column: 24, scope: !934)
!937 = !DILocation(line: 364, column: 17, scope: !935)
!938 = !DILocation(line: 365, column: 21, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !456, line: 365, column: 21)
!940 = !DILocation(line: 365, column: 28, scope: !939)
!941 = !DILocation(line: 365, column: 21, scope: !934)
!942 = !DILocation(line: 365, column: 36, scope: !943)
!943 = !DILexicalBlockFile(scope: !944, file: !456, discriminator: 1)
!944 = distinct !DILexicalBlock(scope: !939, file: !456, line: 365, column: 34)
!945 = !DILocation(line: 365, column: 65, scope: !944)
!946 = !DILocation(line: 365, column: 70, scope: !944)
!947 = !DILocation(line: 365, column: 31, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !456, discriminator: 3)
!949 = !DILexicalBlockFile(scope: !939, file: !456, discriminator: 2)
!950 = !DILocation(line: 366, column: 9, scope: !935)
!951 = !DILocation(line: 368, column: 17, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !456, line: 368, column: 17)
!953 = distinct !DILexicalBlock(scope: !930, file: !456, line: 367, column: 14)
!954 = !DILocation(line: 368, column: 24, scope: !952)
!955 = !DILocation(line: 368, column: 17, scope: !953)
!956 = !DILocation(line: 368, column: 32, scope: !957)
!957 = !DILexicalBlockFile(scope: !958, file: !456, discriminator: 1)
!958 = distinct !DILexicalBlock(scope: !952, file: !456, line: 368, column: 30)
!959 = !DILocation(line: 368, column: 58, scope: !958)
!960 = !DILocation(line: 368, column: 63, scope: !958)
!961 = !DILocation(line: 370, column: 5, scope: !908)
!962 = !DILocation(line: 372, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !498, file: !456, line: 372, column: 9)
!964 = !DILocation(line: 372, column: 16, scope: !963)
!965 = !DILocation(line: 372, column: 9, scope: !498)
!966 = !DILocation(line: 373, column: 17, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !456, line: 372, column: 22)
!968 = !{!643, !643, i64 0}
!969 = !DILocation(line: 374, column: 5, scope: !967)
!970 = !DILocation(line: 374, column: 16, scope: !971)
!971 = distinct !DILexicalBlock(scope: !963, file: !456, line: 374, column: 16)
!972 = !DILocation(line: 374, column: 26, scope: !971)
!973 = !DILocation(line: 374, column: 29, scope: !974)
!974 = !DILexicalBlockFile(scope: !971, file: !456, discriminator: 1)
!975 = !DILocation(line: 374, column: 36, scope: !971)
!976 = !DILocation(line: 374, column: 16, scope: !963)
!977 = !DILocation(line: 375, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !971, file: !456, line: 374, column: 42)
!979 = !DILocation(line: 376, column: 5, scope: !978)
!980 = !DILocation(line: 377, column: 17, scope: !981)
!981 = distinct !DILexicalBlock(scope: !971, file: !456, line: 376, column: 12)
!982 = !DILocation(line: 382, column: 12, scope: !498)
!983 = !DILocation(line: 383, column: 1, scope: !498)
!984 = !DILocation(line: 382, column: 5, scope: !498)
!985 = !DILocation(line: 326, column: 16, scope: !597)
!986 = !DILocation(line: 328, column: 13, scope: !597)
!987 = !DILocation(line: 328, column: 20, scope: !597)
!988 = !DILocation(line: 328, column: 12, scope: !597)
!989 = !DILocation(line: 328, column: 31, scope: !990)
!990 = !DILexicalBlockFile(scope: !597, file: !456, discriminator: 1)
!991 = !DILocation(line: 328, column: 30, scope: !597)
!992 = !DILocation(line: 328, column: 54, scope: !993)
!993 = !DILexicalBlockFile(scope: !597, file: !456, discriminator: 2)
!994 = !DILocation(line: 328, column: 5, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !456, discriminator: 4)
!996 = !DILexicalBlockFile(scope: !597, file: !456, discriminator: 3)
!997 = !DILocation(line: 386, column: 42, scope: !528)
!998 = !DILocation(line: 388, column: 5, scope: !528)
!999 = !DILocation(line: 388, column: 12, scope: !528)
!1000 = !DILocation(line: 388, column: 31, scope: !528)
!1001 = !DILocation(line: 388, column: 22, scope: !528)
!1002 = !DILocation(line: 389, column: 5, scope: !528)
!1003 = !DILocation(line: 389, column: 9, scope: !528)
!1004 = !DILocation(line: 389, column: 17, scope: !528)
!1005 = !DILocation(line: 391, column: 12, scope: !528)
!1006 = !DILocation(line: 394, column: 23, scope: !528)
!1007 = !DILocation(line: 394, column: 14, scope: !528)
!1008 = !DILocation(line: 394, column: 12, scope: !528)
!1009 = !DILocation(line: 395, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !528, file: !456, line: 395, column: 9)
!1011 = !DILocation(line: 395, column: 16, scope: !1010)
!1012 = !DILocation(line: 395, column: 9, scope: !528)
!1013 = !DILocation(line: 395, column: 24, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1015, file: !456, discriminator: 1)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !456, line: 395, column: 22)
!1016 = !DILocation(line: 395, column: 50, scope: !1015)
!1017 = !DILocation(line: 395, column: 55, scope: !1015)
!1018 = !DILocation(line: 396, column: 1, scope: !528)
!1019 = !DILocation(line: 554, column: 42, scope: !534)
!1020 = !DILocation(line: 554, column: 52, scope: !534)
!1021 = !DILocation(line: 556, column: 40, scope: !534)
!1022 = !DILocation(line: 556, column: 46, scope: !534)
!1023 = !DILocation(line: 556, column: 12, scope: !534)
!1024 = !DILocation(line: 556, column: 5, scope: !534)
!1025 = !DILocation(line: 609, column: 5, scope: !540)
!1026 = !DILocation(line: 609, column: 19, scope: !540)
!1027 = !DILocation(line: 610, column: 5, scope: !540)
!1028 = !DILocation(line: 610, column: 9, scope: !540)
!1029 = !DILocation(line: 610, column: 16, scope: !540)
!1030 = !DILocation(line: 611, column: 12, scope: !540)
!1031 = !DILocation(line: 611, column: 12, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !540, file: !456, discriminator: 1)
!1033 = !DILocation(line: 611, column: 24, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !540, file: !456, discriminator: 2)
!1035 = !DILocation(line: 612, column: 1, scope: !540)
!1036 = !DILocation(line: 611, column: 5, scope: !540)
!1037 = !DILocation(line: 615, column: 25, scope: !547)
!1038 = !DILocation(line: 617, column: 24, scope: !547)
!1039 = !DILocation(line: 617, column: 5, scope: !547)
!1040 = !DILocation(line: 618, column: 1, scope: !547)
!1041 = !DILocation(line: 621, column: 31, scope: !552)
!1042 = !DILocation(line: 623, column: 25, scope: !552)
!1043 = !DILocation(line: 623, column: 5, scope: !552)
!1044 = !DILocation(line: 624, column: 1, scope: !552)
!1045 = !DILocation(line: 627, column: 28, scope: !555)
!1046 = !DILocation(line: 627, column: 39, scope: !555)
!1047 = !DILocation(line: 629, column: 5, scope: !555)
!1048 = !DILocation(line: 629, column: 9, scope: !555)
!1049 = !DILocation(line: 630, column: 32, scope: !555)
!1050 = !DILocation(line: 630, column: 37, scope: !555)
!1051 = !DILocation(line: 630, column: 12, scope: !555)
!1052 = !DILocation(line: 630, column: 10, scope: !555)
!1053 = !DILocation(line: 631, column: 12, scope: !555)
!1054 = !DILocation(line: 632, column: 1, scope: !555)
!1055 = !DILocation(line: 631, column: 5, scope: !555)
!1056 = !DILocation(line: 635, column: 28, scope: !562)
!1057 = !DILocation(line: 637, column: 32, scope: !562)
!1058 = !DILocation(line: 637, column: 12, scope: !562)
!1059 = !DILocation(line: 637, column: 5, scope: !562)
!1060 = !DILocation(line: 642, column: 2, scope: !567)
!1061 = !DILocation(line: 105, column: 12, scope: !568)
!1062 = !DILocation(line: 105, column: 5, scope: !568)
!1063 = !DILocation(line: 114, column: 31, scope: !571)
!1064 = !DILocation(line: 117, column: 44, scope: !571)
!1065 = !DILocation(line: 117, column: 12, scope: !571)
!1066 = !DILocation(line: 117, column: 5, scope: !571)
!1067 = !DILocation(line: 564, column: 40, scope: !602)
!1068 = !DILocation(line: 567, column: 5, scope: !602)
!1069 = !DILocation(line: 567, column: 20, scope: !602)
!1070 = !DILocation(line: 568, column: 5, scope: !602)
!1071 = !DILocation(line: 568, column: 12, scope: !602)
!1072 = !DILocation(line: 569, column: 5, scope: !602)
!1073 = !DILocation(line: 569, column: 9, scope: !602)
!1074 = !DILocation(line: 573, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !602, file: !456, line: 573, column: 9)
!1076 = !DILocation(line: 573, column: 14, scope: !1075)
!1077 = !DILocation(line: 573, column: 9, scope: !602)
!1078 = !DILocation(line: 574, column: 29, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !456, line: 573, column: 20)
!1080 = !DILocation(line: 575, column: 9, scope: !1079)
!1081 = !DILocation(line: 580, column: 13, scope: !602)
!1082 = !DILocation(line: 585, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !602, file: !456, line: 585, column: 9)
!1084 = !DILocation(line: 585, column: 17, scope: !1083)
!1085 = !DILocation(line: 585, column: 14, scope: !1083)
!1086 = !DILocation(line: 585, column: 9, scope: !602)
!1087 = !DILocation(line: 587, column: 13, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !456, line: 587, column: 13)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !456, line: 585, column: 26)
!1090 = !DILocation(line: 587, column: 39, scope: !1088)
!1091 = !DILocation(line: 587, column: 13, scope: !1089)
!1092 = !DILocation(line: 588, column: 52, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !456, line: 587, column: 45)
!1094 = !DILocation(line: 588, column: 18, scope: !1093)
!1095 = !DILocation(line: 588, column: 16, scope: !1093)
!1096 = !DILocation(line: 589, column: 13, scope: !1093)
!1097 = !DILocation(line: 590, column: 17, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !456, line: 590, column: 17)
!1099 = !DILocation(line: 590, column: 20, scope: !1098)
!1100 = !DILocation(line: 590, column: 17, scope: !1093)
!1101 = !DILocation(line: 591, column: 39, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !456, line: 590, column: 26)
!1103 = !DILocation(line: 591, column: 37, scope: !1102)
!1104 = !DILocation(line: 592, column: 17, scope: !1102)
!1105 = !DILocation(line: 594, column: 9, scope: !1093)
!1106 = !DILocation(line: 595, column: 5, scope: !1089)
!1107 = !DILocation(line: 596, column: 5, scope: !602)
!1108 = !DILocation(line: 600, column: 1, scope: !602)
!1109 = !DILocation(line: 390, column: 5, scope: !576)
!1110 = !DILocation(line: 390, column: 15, scope: !576)
!1111 = !DILocation(line: 390, column: 28, scope: !576)
!1112 = !DILocation(line: 391, column: 5, scope: !576)
!1113 = !DILocation(line: 391, column: 9, scope: !576)
!1114 = !DILocation(line: 394, column: 5, scope: !576)
!1115 = !DILocation(line: 394, column: 10, scope: !576)
!1116 = !DILocation(line: 395, column: 5, scope: !576)
!1117 = !DILocation(line: 395, column: 9, scope: !576)
!1118 = !DILocation(line: 398, column: 24, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !576, file: !451, line: 398, column: 9)
!1120 = !{!1121, !654, i64 24}
!1121 = !{!"_typeobject", !1122, i64 0, !654, i64 24, !677, i64 32, !677, i64 40, !654, i64 48, !654, i64 56, !654, i64 64, !654, i64 72, !654, i64 80, !654, i64 88, !654, i64 96, !654, i64 104, !654, i64 112, !654, i64 120, !654, i64 128, !654, i64 136, !654, i64 144, !654, i64 152, !654, i64 160, !677, i64 168, !654, i64 176, !654, i64 184, !654, i64 192, !654, i64 200, !677, i64 208, !654, i64 216, !654, i64 224, !654, i64 232, !654, i64 240, !654, i64 248, !654, i64 256, !654, i64 264, !654, i64 272, !654, i64 280, !677, i64 288, !654, i64 296, !654, i64 304, !654, i64 312, !654, i64 320, !654, i64 328, !654, i64 336, !654, i64 344, !654, i64 352, !654, i64 360, !654, i64 368, !654, i64 376, !642, i64 384, !654, i64 392}
!1122 = !{!"", !1123, i64 0, !677, i64 16}
!1123 = !{!"_object", !677, i64 0, !654, i64 8}
!1124 = !DILocation(line: 398, column: 32, scope: !1119)
!1125 = !DILocation(line: 398, column: 9, scope: !576)
!1126 = !DILocation(line: 399, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !451, line: 399, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1119, file: !451, line: 398, column: 38)
!1129 = !DILocation(line: 399, column: 75, scope: !1127)
!1130 = !DILocation(line: 399, column: 13, scope: !1128)
!1131 = !DILocation(line: 400, column: 13, scope: !1127)
!1132 = !DILocation(line: 401, column: 5, scope: !1128)
!1133 = !DILocation(line: 403, column: 18, scope: !576)
!1134 = !DILocation(line: 403, column: 16, scope: !576)
!1135 = !DILocation(line: 404, column: 9, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !576, file: !451, line: 404, column: 9)
!1137 = !DILocation(line: 404, column: 20, scope: !1136)
!1138 = !DILocation(line: 404, column: 9, scope: !576)
!1139 = !DILocation(line: 405, column: 9, scope: !1136)
!1140 = !DILocation(line: 407, column: 13, scope: !576)
!1141 = !DILocation(line: 407, column: 11, scope: !576)
!1142 = !DILocation(line: 408, column: 9, scope: !591)
!1143 = !DILocation(line: 408, column: 15, scope: !591)
!1144 = !DILocation(line: 408, column: 9, scope: !576)
!1145 = !DILocation(line: 409, column: 9, scope: !590)
!1146 = !DILocation(line: 409, column: 14, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !589, file: !451, discriminator: 1)
!1148 = !DILocation(line: 409, column: 24, scope: !589)
!1149 = !DILocation(line: 409, column: 54, scope: !589)
!1150 = !DILocation(line: 409, column: 75, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !589, file: !451, line: 409, column: 72)
!1152 = !DILocation(line: 409, column: 92, scope: !1151)
!1153 = !DILocation(line: 409, column: 72, scope: !1151)
!1154 = !{!1123, !677, i64 0}
!1155 = !DILocation(line: 409, column: 102, scope: !1151)
!1156 = !DILocation(line: 409, column: 72, scope: !589)
!1157 = !DILocation(line: 409, column: 72, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !589, file: !451, discriminator: 2)
!1159 = !DILocation(line: 409, column: 133, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1151, file: !451, discriminator: 3)
!1161 = !DILocation(line: 409, column: 151, scope: !1151)
!1162 = !{!1123, !654, i64 8}
!1163 = !DILocation(line: 409, column: 161, scope: !1151)
!1164 = !{!1121, !654, i64 48}
!1165 = !DILocation(line: 409, column: 186, scope: !1151)
!1166 = !DILocation(line: 409, column: 117, scope: !1151)
!1167 = !DILocation(line: 409, column: 205, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !590, file: !451, discriminator: 4)
!1169 = !DILocation(line: 409, column: 205, scope: !589)
!1170 = !DILocation(line: 409, column: 205, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !589, file: !451, discriminator: 5)
!1172 = !DILocation(line: 410, column: 9, scope: !590)
!1173 = !DILocation(line: 412, column: 56, scope: !576)
!1174 = !DILocation(line: 412, column: 50, scope: !576)
!1175 = !DILocation(line: 412, column: 6, scope: !576)
!1176 = !DILocation(line: 412, column: 25, scope: !576)
!1177 = !DILocation(line: 412, column: 7, scope: !576)
!1178 = !DILocation(line: 412, column: 39, scope: !576)
!1179 = !DILocation(line: 412, column: 54, scope: !576)
!1180 = !DILocation(line: 416, column: 13, scope: !576)
!1181 = !DILocation(line: 416, column: 11, scope: !576)
!1182 = !DILocation(line: 420, column: 9, scope: !595)
!1183 = !DILocation(line: 420, column: 15, scope: !595)
!1184 = !DILocation(line: 420, column: 9, scope: !576)
!1185 = !DILocation(line: 421, column: 9, scope: !594)
!1186 = !DILocation(line: 421, column: 14, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !593, file: !451, discriminator: 1)
!1188 = !DILocation(line: 421, column: 24, scope: !593)
!1189 = !DILocation(line: 421, column: 54, scope: !593)
!1190 = !DILocation(line: 421, column: 75, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !593, file: !451, line: 421, column: 72)
!1192 = !DILocation(line: 421, column: 92, scope: !1191)
!1193 = !DILocation(line: 421, column: 72, scope: !1191)
!1194 = !DILocation(line: 421, column: 102, scope: !1191)
!1195 = !DILocation(line: 421, column: 72, scope: !593)
!1196 = !DILocation(line: 421, column: 72, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !593, file: !451, discriminator: 2)
!1198 = !DILocation(line: 421, column: 133, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1191, file: !451, discriminator: 3)
!1200 = !DILocation(line: 421, column: 151, scope: !1191)
!1201 = !DILocation(line: 421, column: 161, scope: !1191)
!1202 = !DILocation(line: 421, column: 186, scope: !1191)
!1203 = !DILocation(line: 421, column: 117, scope: !1191)
!1204 = !DILocation(line: 421, column: 205, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !594, file: !451, discriminator: 4)
!1206 = !DILocation(line: 421, column: 205, scope: !593)
!1207 = !DILocation(line: 421, column: 205, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !593, file: !451, discriminator: 5)
!1209 = !DILocation(line: 422, column: 9, scope: !594)
!1210 = !DILocation(line: 428, column: 56, scope: !576)
!1211 = !DILocation(line: 428, column: 50, scope: !576)
!1212 = !DILocation(line: 428, column: 6, scope: !576)
!1213 = !DILocation(line: 428, column: 25, scope: !576)
!1214 = !DILocation(line: 428, column: 7, scope: !576)
!1215 = !DILocation(line: 428, column: 39, scope: !576)
!1216 = !DILocation(line: 428, column: 54, scope: !576)
!1217 = !DILocation(line: 432, column: 11, scope: !576)
!1218 = !DILocation(line: 433, column: 47, scope: !576)
!1219 = !DILocation(line: 433, column: 11, scope: !576)
!1220 = !DILocation(line: 433, column: 9, scope: !576)
!1221 = !DILocation(line: 434, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !576, file: !451, line: 434, column: 9)
!1223 = !DILocation(line: 434, column: 11, scope: !1222)
!1224 = !DILocation(line: 434, column: 17, scope: !1222)
!1225 = !DILocation(line: 434, column: 20, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1222, file: !451, discriminator: 1)
!1227 = !DILocation(line: 434, column: 24, scope: !1222)
!1228 = !DILocation(line: 434, column: 9, scope: !576)
!1229 = !DILocation(line: 435, column: 50, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1222, file: !451, line: 434, column: 42)
!1231 = !DILocation(line: 435, column: 58, scope: !1230)
!1232 = !DILocation(line: 435, column: 61, scope: !1230)
!1233 = !DILocation(line: 435, column: 17, scope: !1230)
!1234 = !DILocation(line: 435, column: 15, scope: !1230)
!1235 = !DILocation(line: 436, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !451, line: 436, column: 13)
!1237 = !DILocation(line: 436, column: 19, scope: !1236)
!1238 = !DILocation(line: 436, column: 13, scope: !1230)
!1239 = !DILocation(line: 437, column: 13, scope: !1236)
!1240 = !DILocation(line: 438, column: 5, scope: !1230)
!1241 = !DILocation(line: 439, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !576, file: !451, line: 439, column: 9)
!1243 = !DILocation(line: 439, column: 15, scope: !1242)
!1244 = !DILocation(line: 439, column: 9, scope: !576)
!1245 = !DILocation(line: 442, column: 55, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !451, line: 441, column: 5)
!1247 = !DILocation(line: 443, column: 15, scope: !1246)
!1248 = !DILocation(line: 444, column: 5, scope: !1246)
!1249 = !DILocation(line: 445, column: 56, scope: !576)
!1250 = !DILocation(line: 445, column: 50, scope: !576)
!1251 = !DILocation(line: 445, column: 6, scope: !576)
!1252 = !DILocation(line: 445, column: 25, scope: !576)
!1253 = !DILocation(line: 445, column: 7, scope: !576)
!1254 = !DILocation(line: 445, column: 39, scope: !576)
!1255 = !DILocation(line: 445, column: 54, scope: !576)
!1256 = !DILocation(line: 446, column: 12, scope: !576)
!1257 = !DILocation(line: 446, column: 5, scope: !576)
!1258 = !DILocation(line: 447, column: 1, scope: !576)
