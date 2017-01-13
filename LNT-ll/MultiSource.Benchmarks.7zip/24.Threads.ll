; ModuleID = './MultiSource.Benchmarks.7zip/24.Threads.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CThread = type { i64, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct._CEvent = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%struct._CSemaphore = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%struct.CCriticalSection = type { %union.pthread_mutex_t }

; Function Attrs: nounwind uwtable
define i32 @Thread_Create(%struct._CThread* %thread, i32 (i8*)* %startAddress, i8* %parameter) #0 {
entry:
  %retval = alloca i32, align 4
  %thread.addr = alloca %struct._CThread*, align 8
  %startAddress.addr = alloca i32 (i8*)*, align 8
  %parameter.addr = alloca i8*, align 8
  %attr = alloca %union.pthread_attr_t, align 8
  %ret = alloca i32, align 4
  store %struct._CThread* %thread, %struct._CThread** %thread.addr, align 8
  store i32 (i8*)* %startAddress, i32 (i8*)** %startAddress.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %0, i32 0, i32 1
  store i32 0, i32* %_created, align 4
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #3
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 0) #3
  store i32 %call1, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_tid = getelementptr inbounds %struct._CThread, %struct._CThread* %5, i32 0, i32 0
  %6 = load i32 (i8*)*, i32 (i8*)** %startAddress.addr, align 8
  %7 = bitcast i32 (i8*)* %6 to i8* (i8*)*
  %8 = load i8*, i8** %parameter.addr, align 8
  %call5 = call i32 @pthread_create(i64* %_tid, %union.pthread_attr_t* %attr, i8* (i8*)* %7, i8* %8) #3
  store i32 %call5, i32* %ret, align 4
  %call6 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attr) #3
  %9 = load i32, i32* %ret, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %11 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_created10 = getelementptr inbounds %struct._CThread, %struct._CThread* %11, i32 0, i32 1
  store i32 1, i32* %_created10, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.3, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) #1

; Function Attrs: nounwind uwtable
define i32 @Thread_Wait(%struct._CThread* %thread) #0 {
entry:
  %retval = alloca i32, align 4
  %thread.addr = alloca %struct._CThread*, align 8
  %thread_return = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct._CThread* %thread, %struct._CThread** %thread.addr, align 8
  %0 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %0, i32 0, i32 1
  %1 = load i32, i32* %_created, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_tid = getelementptr inbounds %struct._CThread, %struct._CThread* %2, i32 0, i32 0
  %3 = load i64, i64* %_tid, align 8
  %call = call i32 @pthread_join(i64 %3, i8** %thread_return)
  store i32 %call, i32* %ret, align 4
  %4 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_created1 = getelementptr inbounds %struct._CThread, %struct._CThread* %4, i32 0, i32 1
  store i32 0, i32* %_created1, align 4
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind uwtable
define i32 @Thread_Close(%struct._CThread* %thread) #0 {
entry:
  %retval = alloca i32, align 4
  %thread.addr = alloca %struct._CThread*, align 8
  store %struct._CThread* %thread, %struct._CThread** %thread.addr, align 8
  %0 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %0, i32 0, i32 1
  %1 = load i32, i32* %_created, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_tid = getelementptr inbounds %struct._CThread, %struct._CThread* %2, i32 0, i32 0
  %3 = load i64, i64* %_tid, align 8
  %call = call i32 @pthread_detach(i64 %3) #3
  %4 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_tid1 = getelementptr inbounds %struct._CThread, %struct._CThread* %4, i32 0, i32 0
  store i64 0, i64* %_tid1, align 8
  %5 = load %struct._CThread*, %struct._CThread** %thread.addr, align 8
  %_created2 = getelementptr inbounds %struct._CThread, %struct._CThread* %5, i32 0, i32 1
  store i32 0, i32* %_created2, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64) #1

; Function Attrs: nounwind uwtable
define i32 @Event_Create(%struct._CEvent* %p, i32 %manualReset, i32 %initialSignaled) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  %manualReset.addr = alloca i32, align 4
  %initialSignaled.addr = alloca i32, align 4
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  store i32 %manualReset, i32* %manualReset.addr, align 4
  store i32 %initialSignaled, i32* %initialSignaled.addr, align 4
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CEvent, %struct._CEvent* %0, i32 0, i32 3
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %_mutex, %union.pthread_mutexattr_t* null) #3
  %1 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CEvent, %struct._CEvent* %1, i32 0, i32 4
  %call1 = call i32 @pthread_cond_init(%union.pthread_cond_t* %_cond, %union.pthread_condattr_t* null) #3
  %2 = load i32, i32* %manualReset.addr, align 4
  %3 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_manual_reset = getelementptr inbounds %struct._CEvent, %struct._CEvent* %3, i32 0, i32 1
  store i32 %2, i32* %_manual_reset, align 4
  %4 = load i32, i32* %initialSignaled.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_state = getelementptr inbounds %struct._CEvent, %struct._CEvent* %5, i32 0, i32 2
  store i32 %cond, i32* %_state, align 4
  %6 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_created = getelementptr inbounds %struct._CEvent, %struct._CEvent* %6, i32 0, i32 0
  store i32 1, i32* %_created, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #1

; Function Attrs: nounwind uwtable
define i32 @Event_Set(%struct._CEvent* %p) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CEvent, %struct._CEvent* %0, i32 0, i32 3
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %1 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_state = getelementptr inbounds %struct._CEvent, %struct._CEvent* %1, i32 0, i32 2
  store i32 1, i32* %_state, align 4
  %2 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CEvent, %struct._CEvent* %2, i32 0, i32 4
  %call1 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %_cond) #3
  %3 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex2 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %3, i32 0, i32 3
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex2) #3
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind uwtable
define i32 @Event_Reset(%struct._CEvent* %p) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CEvent, %struct._CEvent* %0, i32 0, i32 3
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %1 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_state = getelementptr inbounds %struct._CEvent, %struct._CEvent* %1, i32 0, i32 2
  store i32 0, i32* %_state, align 4
  %2 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex1 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %2, i32 0, i32 3
  %call2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex1) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Event_Wait(%struct._CEvent* %p) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CEvent, %struct._CEvent* %0, i32 0, i32 3
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_state = getelementptr inbounds %struct._CEvent, %struct._CEvent* %1, i32 0, i32 2
  %2 = load i32, i32* %_state, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CEvent, %struct._CEvent* %3, i32 0, i32 4
  %4 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex1 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %4, i32 0, i32 3
  %call2 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %_cond, %union.pthread_mutex_t* %_mutex1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_manual_reset = getelementptr inbounds %struct._CEvent, %struct._CEvent* %5, i32 0, i32 1
  %6 = load i32, i32* %_manual_reset, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %7 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_state4 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %7, i32 0, i32 2
  store i32 0, i32* %_state4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %8 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex5 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %8, i32 0, i32 3
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex5) #3
  ret i32 0
}

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define i32 @Event_Close(%struct._CEvent* %p) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_created = getelementptr inbounds %struct._CEvent, %struct._CEvent* %0, i32 0, i32 0
  %1 = load i32, i32* %_created, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_created1 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %2, i32 0, i32 0
  store i32 0, i32* %_created1, align 4
  %3 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CEvent, %struct._CEvent* %3, i32 0, i32 3
  %call = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %_mutex) #3
  %4 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CEvent, %struct._CEvent* %4, i32 0, i32 4
  %call2 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %_cond) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) #1

; Function Attrs: nounwind uwtable
define i32 @Semaphore_Create(%struct._CSemaphore* %p, i32 %initiallyCount, i32 %maxCount) #0 {
entry:
  %p.addr = alloca %struct._CSemaphore*, align 8
  %initiallyCount.addr = alloca i32, align 4
  %maxCount.addr = alloca i32, align 4
  store %struct._CSemaphore* %p, %struct._CSemaphore** %p.addr, align 8
  store i32 %initiallyCount, i32* %initiallyCount.addr, align 4
  store i32 %maxCount, i32* %maxCount.addr, align 4
  %0 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %0, i32 0, i32 3
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %_mutex, %union.pthread_mutexattr_t* null) #3
  %1 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %1, i32 0, i32 4
  %call1 = call i32 @pthread_cond_init(%union.pthread_cond_t* %_cond, %union.pthread_condattr_t* null) #3
  %2 = load i32, i32* %initiallyCount.addr, align 4
  %3 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_count = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %3, i32 0, i32 1
  store i32 %2, i32* %_count, align 4
  %4 = load i32, i32* %maxCount.addr, align 4
  %5 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_maxCount = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %5, i32 0, i32 2
  store i32 %4, i32* %_maxCount, align 4
  %6 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_created = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %6, i32 0, i32 0
  store i32 1, i32* %_created, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Semaphore_ReleaseN(%struct._CSemaphore* %p, i32 %releaseCount) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CSemaphore*, align 8
  %releaseCount.addr = alloca i32, align 4
  %newCount = alloca i32, align 4
  store %struct._CSemaphore* %p, %struct._CSemaphore** %p.addr, align 8
  store i32 %releaseCount, i32* %releaseCount.addr, align 4
  %0 = load i32, i32* %releaseCount.addr, align 4
  %cmp = icmp ult i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %1, i32 0, i32 3
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %2 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_count = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %2, i32 0, i32 1
  %3 = load i32, i32* %_count, align 4
  %4 = load i32, i32* %releaseCount.addr, align 4
  %add = add i32 %3, %4
  store i32 %add, i32* %newCount, align 4
  %5 = load i32, i32* %newCount, align 4
  %6 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_maxCount = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %6, i32 0, i32 2
  %7 = load i32, i32* %_maxCount, align 4
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex3 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %8, i32 0, i32 3
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex3) #3
  store i32 22, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load i32, i32* %newCount, align 4
  %10 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_count6 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %10, i32 0, i32 1
  store i32 %9, i32* %_count6, align 4
  %11 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %11, i32 0, i32 4
  %call7 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %_cond) #3
  %12 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex8 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %12, i32 0, i32 3
  %call9 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex8) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @Semaphore_Wait(%struct._CSemaphore* %p) #0 {
entry:
  %p.addr = alloca %struct._CSemaphore*, align 8
  store %struct._CSemaphore* %p, %struct._CSemaphore** %p.addr, align 8
  %0 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %0, i32 0, i32 3
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_count = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %1, i32 0, i32 1
  %2 = load i32, i32* %_count, align 4
  %cmp = icmp ult i32 %2, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %3, i32 0, i32 4
  %4 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex1 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %4, i32 0, i32 3
  %call2 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %_cond, %union.pthread_mutex_t* %_mutex1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_count3 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %5, i32 0, i32 1
  %6 = load i32, i32* %_count3, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %_count3, align 4
  %7 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex4 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %7, i32 0, i32 3
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex4) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Semaphore_Close(%struct._CSemaphore* %p) #0 {
entry:
  %p.addr = alloca %struct._CSemaphore*, align 8
  store %struct._CSemaphore* %p, %struct._CSemaphore** %p.addr, align 8
  %0 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_created = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %0, i32 0, i32 0
  %1 = load i32, i32* %_created, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_created1 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %2, i32 0, i32 0
  store i32 0, i32* %_created1, align 4
  %3 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_mutex = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %3, i32 0, i32 3
  %call = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %_mutex) #3
  %4 = load %struct._CSemaphore*, %struct._CSemaphore** %p.addr, align 8
  %_cond = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %4, i32 0, i32 4
  %call2 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %_cond) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @CriticalSection_Init(%struct.CCriticalSection* %lpCriticalSection) #0 {
entry:
  %lpCriticalSection.addr = alloca %struct.CCriticalSection*, align 8
  store %struct.CCriticalSection* %lpCriticalSection, %struct.CCriticalSection** %lpCriticalSection.addr, align 8
  %0 = load %struct.CCriticalSection*, %struct.CCriticalSection** %lpCriticalSection.addr, align 8
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %0, i32 0, i32 0
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %_mutex, %union.pthread_mutexattr_t* null) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @ManualResetEvent_Create(%struct._CEvent* %p, i32 %initialSignaled) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  %initialSignaled.addr = alloca i32, align 4
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  store i32 %initialSignaled, i32* %initialSignaled.addr, align 4
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %1 = load i32, i32* %initialSignaled.addr, align 4
  %call = call i32 @Event_Create(%struct._CEvent* %0, i32 1, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @ManualResetEvent_CreateNotSignaled(%struct._CEvent* %p) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %call = call i32 @ManualResetEvent_Create(%struct._CEvent* %0, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @AutoResetEvent_Create(%struct._CEvent* %p, i32 %initialSignaled) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  %initialSignaled.addr = alloca i32, align 4
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  store i32 %initialSignaled, i32* %initialSignaled.addr, align 4
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %1 = load i32, i32* %initialSignaled.addr, align 4
  %call = call i32 @Event_Create(%struct._CEvent* %0, i32 0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %p) #0 {
entry:
  %p.addr = alloca %struct._CEvent*, align 8
  store %struct._CEvent* %p, %struct._CEvent** %p.addr, align 8
  %0 = load %struct._CEvent*, %struct._CEvent** %p.addr, align 8
  %call = call i32 @AutoResetEvent_Create(%struct._CEvent* %0, i32 0)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
