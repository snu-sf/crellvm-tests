; ModuleID = './thread.bc'
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
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @initialized, align 4
  call void @PyThread__init_thread()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PyThread__init_thread() #0 {
entry:
  ret void
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
  store void (i8*)* %func, void (i8*)** %func.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @PyThread_init_thread()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attrs) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %1 = load i64, i64* @_pythread_stacksize, align 8
  %cmp3 = icmp ne i64 %1, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  %2 = load i64, i64* @_pythread_stacksize, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %tss, align 8
  %3 = load i64, i64* %tss, align 8
  %cmp4 = icmp ne i64 %3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %cond.end
  %4 = load i64, i64* %tss, align 8
  %call6 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attrs, i64 %4) #6
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.5
  %call9 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attrs) #6
  store i64 -1, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %cond.end
  %call12 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %attrs, i32 0) #6
  %5 = load void (i8*)*, void (i8*)** %func.addr, align 8
  %6 = bitcast void (i8*)* %5 to i8* (i8*)*
  %7 = load i8*, i8** %arg.addr, align 8
  %call13 = call i32 @pthread_create(i64* %th, %union.pthread_attr_t* %attrs, i8* (i8*)* %6, i8* %7) #6
  store i32 %call13, i32* %status, align 4
  %call14 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attrs) #6
  %8 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %8, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.11
  store i64 -1, i64* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %9 = load i64, i64* %th, align 8
  %call18 = call i32 @pthread_detach(i64 %9) #6
  %10 = load i64, i64* %th, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.8, %if.then.1
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(%union.pthread_attr_t*, i64) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_setscope(%union.pthread_attr_t*, i32) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind
declare i32 @pthread_detach(i64) #1

; Function Attrs: nounwind uwtable
define i64 @PyThread_get_thread_ident() #0 {
entry:
  %threadid = alloca i64, align 8
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @PyThread_init_thread()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @pthread_self() #7
  store volatile i64 %call, i64* %threadid, align 8
  %1 = load volatile i64, i64* %threadid, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #2

; Function Attrs: nounwind uwtable
define void @PyThread_exit_thread() #0 {
entry:
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @exit(i32 0) #8
  unreachable

if.end:                                           ; preds = %entry
  call void @pthread_exit(i8* null) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #4

; Function Attrs: nounwind uwtable
define i8* @PyThread_allocate_lock() #0 {
entry:
  %lock = alloca %union.sem_t*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  store i32 0, i32* %error, align 4
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @PyThread_init_thread()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i8* @PyMem_RawMalloc(i64 32)
  %1 = bitcast i8* %call to %union.sem_t*
  store %union.sem_t* %1, %union.sem_t** %lock, align 8
  %2 = load %union.sem_t*, %union.sem_t** %lock, align 8
  %tobool1 = icmp ne %union.sem_t* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %3 = load %union.sem_t*, %union.sem_t** %lock, align 8
  %call3 = call i32 @sem_init(%union.sem_t* %3, i32 0, i32 1) #6
  store i32 %call3, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %error, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  %5 = load i32, i32* %error, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %6 = load %union.sem_t*, %union.sem_t** %lock, align 8
  %7 = bitcast %union.sem_t* %6 to i8*
  call void @PyMem_RawFree(i8* %7)
  store %union.sem_t* null, %union.sem_t** %lock, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %8 = load %union.sem_t*, %union.sem_t** %lock, align 8
  %9 = bitcast %union.sem_t* %8 to i8*
  ret i8* %9
}

declare i8* @PyMem_RawMalloc(i64) #5

; Function Attrs: nounwind
declare i32 @sem_init(%union.sem_t*, i32, i32) #1

declare void @perror(i8*) #5

declare void @PyMem_RawFree(i8*) #5

; Function Attrs: nounwind uwtable
define void @PyThread_free_lock(i8* %lock) #0 {
entry:
  %lock.addr = alloca i8*, align 8
  %thelock = alloca %union.sem_t*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  store i8* %lock, i8** %lock.addr, align 8
  %0 = load i8*, i8** %lock.addr, align 8
  %1 = bitcast i8* %0 to %union.sem_t*
  store %union.sem_t* %1, %union.sem_t** %thelock, align 8
  store i32 0, i32* %error, align 4
  %2 = load i32, i32* %error, align 4
  %3 = load %union.sem_t*, %union.sem_t** %thelock, align 8
  %tobool = icmp ne %union.sem_t* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %union.sem_t*, %union.sem_t** %thelock, align 8
  %call = call i32 @sem_destroy(%union.sem_t* %4) #6
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %error, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load %union.sem_t*, %union.sem_t** %thelock, align 8
  %7 = bitcast %union.sem_t* %6 to i8*
  call void @PyMem_RawFree(i8* %7)
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_destroy(%union.sem_t*) #1

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
  store i8* %lock, i8** %lock.addr, align 8
  store i64 %microseconds, i64* %microseconds.addr, align 8
  store i32 %intr_flag, i32* %intr_flag.addr, align 4
  %0 = load i8*, i8** %lock.addr, align 8
  %1 = bitcast i8* %0 to %union.sem_t*
  store %union.sem_t* %1, %union.sem_t** %thelock, align 8
  store i32 0, i32* %error, align 4
  %2 = load i32, i32* %error, align 4
  %3 = load i64, i64* %microseconds.addr, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #6
  %4 = load i64, i64* %microseconds.addr, align 8
  %rem = srem i64 %4, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %5 = load i64, i64* %tv_usec, align 8
  %add = add i64 %5, %rem
  store i64 %add, i64* %tv_usec, align 8
  %6 = load i64, i64* %microseconds.addr, align 8
  %div = sdiv i64 %6, 1000000
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %7 = load i64, i64* %tv_sec, align 8
  %add1 = add i64 %7, %div
  store i64 %add1, i64* %tv_sec, align 8
  %tv_usec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %8 = load i64, i64* %tv_usec2, align 8
  %div3 = sdiv i64 %8, 1000000
  %tv_sec4 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %9 = load i64, i64* %tv_sec4, align 8
  %add5 = add i64 %9, %div3
  store i64 %add5, i64* %tv_sec4, align 8
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %10 = load i64, i64* %tv_usec6, align 8
  %rem7 = srem i64 %10, 1000000
  store i64 %rem7, i64* %tv_usec6, align 8
  %tv_sec8 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %11 = load i64, i64* %tv_sec8, align 8
  %tv_sec9 = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 0
  store i64 %11, i64* %tv_sec9, align 8
  %tv_usec10 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %12 = load i64, i64* %tv_usec10, align 8
  %mul = mul i64 %12, 1000
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 1
  store i64 %mul, i64* %tv_nsec, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  br label %do.body.11

do.body.11:                                       ; preds = %land.end, %if.end
  %13 = load i64, i64* %microseconds.addr, align 8
  %cmp12 = icmp sgt i64 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.11
  %14 = load %union.sem_t*, %union.sem_t** %thelock, align 8
  %call14 = call i32 @sem_timedwait(%union.sem_t* %14, %struct.timespec* %ts)
  %call15 = call i32 @fix_status(i32 %call14)
  store i32 %call15, i32* %status, align 4
  br label %if.end.24

if.else:                                          ; preds = %do.body.11
  %15 = load i64, i64* %microseconds.addr, align 8
  %cmp16 = icmp eq i64 %15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.else
  %16 = load %union.sem_t*, %union.sem_t** %thelock, align 8
  %call18 = call i32 @sem_trywait(%union.sem_t* %16) #6
  %call19 = call i32 @fix_status(i32 %call18)
  store i32 %call19, i32* %status, align 4
  br label %if.end.23

if.else.20:                                       ; preds = %if.else
  %17 = load %union.sem_t*, %union.sem_t** %thelock, align 8
  %call21 = call i32 @sem_wait(%union.sem_t* %17)
  %call22 = call i32 @fix_status(i32 %call21)
  store i32 %call22, i32* %status, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.24
  %18 = load i32, i32* %intr_flag.addr, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %19 = load i32, i32* %status, align 4
  %cmp25 = icmp eq i32 %19, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %20 = phi i1 [ false, %do.cond ], [ %cmp25, %land.rhs ]
  br i1 %20, label %do.body.11, label %do.end.26

do.end.26:                                        ; preds = %land.end
  %21 = load i32, i32* %intr_flag.addr, align 4
  %tobool27 = icmp ne i32 %21, 0
  br i1 %tobool27, label %land.lhs.true, label %if.then.29

land.lhs.true:                                    ; preds = %do.end.26
  %22 = load i32, i32* %status, align 4
  %cmp28 = icmp eq i32 %22, 4
  br i1 %cmp28, label %if.end.53, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true, %do.end.26
  %23 = load i64, i64* %microseconds.addr, align 8
  %cmp30 = icmp sgt i64 %23, 0
  br i1 %cmp30, label %if.then.31, label %if.else.38

if.then.31:                                       ; preds = %if.then.29
  %24 = load i32, i32* %status, align 4
  %cmp32 = icmp ne i32 %24, 110
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.then.31
  %25 = load i32, i32* %status, align 4
  %cmp34 = icmp ne i32 %25, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.33
  call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %error, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.31
  br label %if.end.52

if.else.38:                                       ; preds = %if.then.29
  %26 = load i64, i64* %microseconds.addr, align 8
  %cmp39 = icmp eq i64 %26, 0
  br i1 %cmp39, label %if.then.40, label %if.else.47

if.then.40:                                       ; preds = %if.else.38
  %27 = load i32, i32* %status, align 4
  %cmp41 = icmp ne i32 %27, 11
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.then.40
  %28 = load i32, i32* %status, align 4
  %cmp43 = icmp ne i32 %28, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.42
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %error, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.40
  br label %if.end.51

if.else.47:                                       ; preds = %if.else.38
  %29 = load i32, i32* %status, align 4
  %cmp48 = icmp ne i32 %29, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else.47
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %error, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.else.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.37
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true
  %30 = load i32, i32* %status, align 4
  %cmp54 = icmp eq i32 %30, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.end.53
  store i32 1, i32* %success, align 4
  br label %if.end.63

if.else.56:                                       ; preds = %if.end.53
  %31 = load i32, i32* %intr_flag.addr, align 4
  %tobool57 = icmp ne i32 %31, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.else.61

land.lhs.true.58:                                 ; preds = %if.else.56
  %32 = load i32, i32* %status, align 4
  %cmp59 = icmp eq i32 %32, 4
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.58
  store i32 2, i32* %success, align 4
  br label %if.end.62

if.else.61:                                       ; preds = %land.lhs.true.58, %if.else.56
  store i32 0, i32* %success, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.60
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.55
  %33 = load i32, i32* %success, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fix_status(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i32* @__errno_location() #7
  %1 = load i32, i32* %call, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %status.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

declare i32 @sem_timedwait(%union.sem_t*, %struct.timespec*) #5

; Function Attrs: nounwind
declare i32 @sem_trywait(%union.sem_t*) #1

declare i32 @sem_wait(%union.sem_t*) #5

; Function Attrs: nounwind uwtable
define void @PyThread_release_lock(i8* %lock) #0 {
entry:
  %lock.addr = alloca i8*, align 8
  %thelock = alloca %union.sem_t*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  store i8* %lock, i8** %lock.addr, align 8
  %0 = load i8*, i8** %lock.addr, align 8
  %1 = bitcast i8* %0 to %union.sem_t*
  store %union.sem_t* %1, %union.sem_t** %thelock, align 8
  store i32 0, i32* %error, align 4
  %2 = load i32, i32* %error, align 4
  %3 = load %union.sem_t*, %union.sem_t** %thelock, align 8
  %call = call i32 @sem_post(%union.sem_t* %3) #6
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_post(%union.sem_t*) #1

; Function Attrs: nounwind uwtable
define i32 @PyThread_acquire_lock(i8* %lock, i32 %waitflag) #0 {
entry:
  %lock.addr = alloca i8*, align 8
  %waitflag.addr = alloca i32, align 4
  store i8* %lock, i8** %lock.addr, align 8
  store i32 %waitflag, i32* %waitflag.addr, align 4
  %0 = load i8*, i8** %lock.addr, align 8
  %1 = load i32, i32* %waitflag.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  %conv = sext i32 %cond to i64
  %call = call i32 @PyThread_acquire_lock_timed(i8* %0, i64 %conv, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyThread_create_key() #0 {
entry:
  %key = alloca i32, align 4
  %fail = alloca i32, align 4
  %call = call i32 @pthread_key_create(i32* %key, void (i8*)* null) #6
  store i32 %call, i32* %fail, align 4
  %0 = load i32, i32* %fail, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %key, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define void @PyThread_delete_key(i32 %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %call = call i32 @pthread_key_delete(i32 %0) #6
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32) #1

; Function Attrs: nounwind uwtable
define void @PyThread_delete_key_value(i32 %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %call = call i32 @pthread_setspecific(i32 %0, i8* null) #6
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyThread_set_key_value(i32 %key, i8* %value) #0 {
entry:
  %key.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %fail = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i8*, i8** %value.addr, align 8
  %call = call i32 @pthread_setspecific(i32 %0, i8* %1) #6
  store i32 %call, i32* %fail, align 4
  %2 = load i32, i32* %fail, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i8* @PyThread_get_key_value(i32 %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %call = call i8* @pthread_getspecific(i32 %0) #6
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #1

; Function Attrs: nounwind uwtable
define void @PyThread_ReInitTLS() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @PyThread_get_stacksize() #0 {
entry:
  %0 = load i64, i64* @_pythread_stacksize, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i32 @PyThread_set_stacksize(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call i32 @_pythread_pthread_set_stacksize(i64 %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @_pythread_pthread_set_stacksize(i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %attrs = alloca %union.pthread_attr_t, align 8
  %tss_min = alloca i64, align 8
  %rc = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  store i32 0, i32* %rc, align 4
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* @_pythread_stacksize, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 32768, i64* %tss_min, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i64, i64* %tss_min, align 8
  %cmp1 = icmp uge i64 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attrs) #6
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.then.2
  %3 = load i64, i64* %size.addr, align 8
  %call5 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attrs, i64 %3) #6
  store i32 %call5, i32* %rc, align 4
  %call6 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attrs) #6
  %4 = load i32, i32* %rc, align 4
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.4
  %5 = load i64, i64* %size.addr, align 8
  store i64 %5, i64* @_pythread_stacksize, align 8
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.2
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.8, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store i32 0, i32* %pos, align 4
  %0 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ThreadInfoType, i32 0, i32 1), align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call i32 @PyStructSequence_InitType2(%struct._typeobject* @ThreadInfoType, %struct.PyStructSequence_Desc* @threadinfo_desc)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %call4 = call %struct._object* @PyStructSequence_New(%struct._typeobject* @ThreadInfoType)
  store %struct._object* %call4, %struct._object** %threadinfo, align 8
  %1 = load %struct._object*, %struct._object** %threadinfo, align 8
  %cmp5 = icmp eq %struct._object* %1, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %call8 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %value, align 8
  %2 = load %struct._object*, %struct._object** %value, align 8
  %cmp9 = icmp eq %struct._object* %2, null
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %3 = load %struct._object*, %struct._object** %threadinfo, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %10 = load %struct._object*, %struct._object** %value, align 8
  %11 = load i32, i32* %pos, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._object*, %struct._object** %threadinfo, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %10, %struct._object** %arrayidx, align 8
  %call15 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* %call15, %struct._object** %value, align 8
  %14 = load %struct._object*, %struct._object** %value, align 8
  %cmp16 = icmp eq %struct._object* %14, null
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.end.14
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %15 = load %struct._object*, %struct._object** %threadinfo, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp19, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %17, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %20(%struct._object* %21)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.14
  %22 = load %struct._object*, %struct._object** %value, align 8
  %23 = load i32, i32* %pos, align 4
  %inc30 = add i32 %23, 1
  store i32 %inc30, i32* %pos, align 4
  %idxprom31 = sext i32 %23 to i64
  %24 = load %struct._object*, %struct._object** %threadinfo, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item32 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx33 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item32, i32 0, i64 %idxprom31
  store %struct._object* %22, %struct._object** %arrayidx33, align 8
  store %struct._object* null, %struct._object** %value, align 8
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %buffer, i32 0, i32 0
  %call34 = call i64 @confstr(i32 3, i8* %arraydecay, i64 255) #6
  %conv = trunc i64 %call34 to i32
  store i32 %conv, i32* %len, align 4
  %26 = load i32, i32* %len, align 4
  %cmp35 = icmp slt i32 1, %26
  br i1 %cmp35, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.29
  %27 = load i32, i32* %len, align 4
  %conv37 = sext i32 %27 to i64
  %cmp38 = icmp ult i64 %conv37, 255
  br i1 %cmp38, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %land.lhs.true
  %arraydecay41 = getelementptr inbounds [255 x i8], [255 x i8]* %buffer, i32 0, i32 0
  %28 = load i32, i32* %len, align 4
  %sub = sub i32 %28, 1
  %conv42 = sext i32 %sub to i64
  %call43 = call %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8* %arraydecay41, i64 %conv42)
  store %struct._object* %call43, %struct._object** %value, align 8
  %29 = load %struct._object*, %struct._object** %value, align 8
  %cmp44 = icmp eq %struct._object* %29, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.40
  call void @PyErr_Clear()
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.40
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true, %if.end.29
  %30 = load %struct._object*, %struct._object** %value, align 8
  %cmp49 = icmp eq %struct._object* %30, null
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc52 = add i64 %31, 1
  store i64 %inc52, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  %32 = load %struct._object*, %struct._object** %value, align 8
  %33 = load i32, i32* %pos, align 4
  %inc54 = add i32 %33, 1
  store i32 %inc54, i32* %pos, align 4
  %idxprom55 = sext i32 %33 to i64
  %34 = load %struct._object*, %struct._object** %threadinfo, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*
  %ob_item56 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1
  %arrayidx57 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item56, i32 0, i64 %idxprom55
  store %struct._object* %32, %struct._object** %arrayidx57, align 8
  %36 = load %struct._object*, %struct._object** %threadinfo, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.53, %do.end.28, %do.end, %if.then.6, %if.then.2
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #5

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #5

declare %struct._object* @PyUnicode_FromString(i8*) #5

; Function Attrs: nounwind
declare i64 @confstr(i32, i8*, i64) #1

declare %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8*, i64) #5

declare void @PyErr_Clear() #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
