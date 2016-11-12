; ModuleID = './gp_psync.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.gp_semaphore = type { i8* }
%struct.pt_semaphore_t = type { i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%union.gp_monitor = type { i8* }
%struct.gp_pthread_recursive_s = type { %union.pthread_mutex_t, i64 }
%struct.gp_thread_creation_closure_s = type { void (i8*)*, i8* }
%union.pthread_attr_t = type { i64, [48 x i8] }

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_sizeof() #0 {
entry:
  ret i32 96
}

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_open(%union.gp_semaphore* %sema) #0 {
entry:
  %retval = alloca i32, align 4
  %sema.addr = alloca %union.gp_semaphore*, align 8
  %sem = alloca %struct.pt_semaphore_t*, align 8
  %scode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_semaphore* %1 to %struct.pt_semaphore_t*
  store %struct.pt_semaphore_t* %2, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %3 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %tobool = icmp ne %union.gp_semaphore* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %5, i32 0, i32 0
  store i32 0, i32* %count, align 4, !tbaa !5
  %6 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %mutex = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %6, i32 0, i32 1
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %mutex, %union.pthread_mutexattr_t* null) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %7 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %cond = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %8, i32 0, i32 2
  %call2 = call i32 @pthread_cond_init(%union.pthread_cond_t* %cond, %union.pthread_condattr_t* null) #6
  store i32 %call2, i32* %scode, align 4, !tbaa !8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %9 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp4 = icmp ne i32 %9, 0
  %cond5 = select i1 %cmp4, i32 -12, i32 0
  store i32 %cond5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %10 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_close(%union.gp_semaphore* %sema) #0 {
entry:
  %sema.addr = alloca %union.gp_semaphore*, align 8
  %sem = alloca %struct.pt_semaphore_t*, align 8
  %scode = alloca i32, align 4
  %scode2 = alloca i32, align 4
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_semaphore* %1 to %struct.pt_semaphore_t*
  store %struct.pt_semaphore_t* %2, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %3 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %scode2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %cond = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %5, i32 0, i32 2
  %call = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %cond) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %6 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %mutex = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %6, i32 0, i32 1
  %call1 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %mutex) #6
  store i32 %call1, i32* %scode2, align 4, !tbaa !8
  %7 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %scode2, align 4, !tbaa !8
  store i32 %8, i32* %scode, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp2 = icmp ne i32 %9, 0
  %cond3 = select i1 %cmp2, i32 -12, i32 0
  %10 = bitcast i32* %scode2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %cond3
}

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_wait(%union.gp_semaphore* %sema) #0 {
entry:
  %retval = alloca i32, align 4
  %sema.addr = alloca %union.gp_semaphore*, align 8
  %sem = alloca %struct.pt_semaphore_t*, align 8
  %scode = alloca i32, align 4
  %scode2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_semaphore* %1 to %struct.pt_semaphore_t*
  store %struct.pt_semaphore_t* %2, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %3 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %scode2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %mutex = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %5, i32 0, i32 1
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %mutex) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %6 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp1 = icmp ne i32 %7, 0
  %cond = select i1 %cmp1, i32 -12, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %8 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %8, i32 0, i32 0
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %cond3 = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %10, i32 0, i32 2
  %11 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %mutex4 = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %11, i32 0, i32 1
  %call5 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %cond3, %union.pthread_mutex_t* %mutex4) #7
  store i32 %call5, i32* %scode, align 4, !tbaa !8
  %12 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  br label %while.end

if.end.8:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.7, %while.cond
  %13 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %while.end
  %14 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %count11 = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %14, i32 0, i32 0
  %15 = load i32, i32* %count11, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %count11, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %while.end
  %16 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %mutex13 = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %16, i32 0, i32 1
  %call14 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %mutex13) #6
  store i32 %call14, i32* %scode2, align 4, !tbaa !8
  %17 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %17, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  %18 = load i32, i32* %scode2, align 4, !tbaa !8
  store i32 %18, i32* %scode, align 4, !tbaa !8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.12
  %19 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp18 = icmp ne i32 %19, 0
  %cond19 = select i1 %cmp18, i32 -12, i32 0
  store i32 %cond19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %20 = bitcast i32* %scode2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_signal(%union.gp_semaphore* %sema) #0 {
entry:
  %retval = alloca i32, align 4
  %sema.addr = alloca %union.gp_semaphore*, align 8
  %sem = alloca %struct.pt_semaphore_t*, align 8
  %scode = alloca i32, align 4
  %scode2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_semaphore* %1 to %struct.pt_semaphore_t*
  store %struct.pt_semaphore_t* %2, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %3 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %scode2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %mutex = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %5, i32 0, i32 1
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %mutex) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %6 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp1 = icmp ne i32 %7, 0
  %cond = select i1 %cmp1, i32 -12, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %8, i32 0, i32 0
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %cond4 = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %10, i32 0, i32 2
  %call5 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %cond4) #6
  store i32 %call5, i32* %scode, align 4, !tbaa !8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct.pt_semaphore_t*, %struct.pt_semaphore_t** %sem, align 8, !tbaa !1
  %mutex7 = getelementptr inbounds %struct.pt_semaphore_t, %struct.pt_semaphore_t* %11, i32 0, i32 1
  %call8 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %mutex7) #6
  store i32 %call8, i32* %scode2, align 4, !tbaa !8
  %12 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %13 = load i32, i32* %scode2, align 4, !tbaa !8
  store i32 %13, i32* %scode, align 4, !tbaa !8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.6
  %14 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp12 = icmp ne i32 %14, 0
  %cond13 = select i1 %cmp12, i32 -12, i32 0
  store i32 %cond13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %15 = bitcast i32* %scode2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.pt_semaphore_t** %sem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #2

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_sizeof() #0 {
entry:
  ret i32 48
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_open(%union.gp_monitor* %mona) #0 {
entry:
  %retval = alloca i32, align 4
  %mona.addr = alloca %union.gp_monitor*, align 8
  %mon = alloca %union.pthread_mutex_t*, align 8
  %scode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gp_monitor* %mona, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %0 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %tobool = icmp ne %union.gp_monitor* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %4 = bitcast %union.gp_monitor* %3 to %struct.gp_pthread_recursive_s*
  %mutex = getelementptr inbounds %struct.gp_pthread_recursive_s, %struct.gp_pthread_recursive_s* %4, i32 0, i32 0
  store %union.pthread_mutex_t* %mutex, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %5 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %6 = bitcast %union.gp_monitor* %5 to %struct.gp_pthread_recursive_s*
  %self_id = getelementptr inbounds %struct.gp_pthread_recursive_s, %struct.gp_pthread_recursive_s* %6, i32 0, i32 1
  store i64 0, i64* %self_id, align 8, !tbaa !9
  %7 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %7, %union.pthread_mutexattr_t* null) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %8 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp = icmp ne i32 %8, 0
  %cond = select i1 %cmp, i32 -12, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_close(%union.gp_monitor* %mona) #0 {
entry:
  %mona.addr = alloca %union.gp_monitor*, align 8
  %mon = alloca %union.pthread_mutex_t*, align 8
  %scode = alloca i32, align 4
  store %union.gp_monitor* %mona, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %0 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_monitor* %1 to %struct.gp_pthread_recursive_s*
  %mutex = getelementptr inbounds %struct.gp_pthread_recursive_s, %struct.gp_pthread_recursive_s* %2, i32 0, i32 0
  store %union.pthread_mutex_t* %mutex, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %3 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %4) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %5 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp = icmp ne i32 %5, 0
  %cond = select i1 %cmp, i32 -12, i32 0
  %6 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_enter(%union.gp_monitor* %mona) #0 {
entry:
  %retval = alloca i32, align 4
  %mona.addr = alloca %union.gp_monitor*, align 8
  %mon = alloca %union.pthread_mutex_t*, align 8
  %scode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gp_monitor* %mona, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %0 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_monitor* %1 to %union.pthread_mutex_t*
  store %union.pthread_mutex_t* %2, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %3 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* %4) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @pthread_self() #8
  %5 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %6 = bitcast %union.gp_monitor* %5 to %struct.gp_pthread_recursive_s*
  %self_id = getelementptr inbounds %struct.gp_pthread_recursive_s, %struct.gp_pthread_recursive_s* %6, i32 0, i32 1
  store i64 %call1, i64* %self_id, align 8, !tbaa !9
  %7 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp2 = icmp ne i32 %7, 0
  %cond = select i1 %cmp2, i32 -12, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = call i64 @pthread_self() #8
  %8 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %9 = bitcast %union.gp_monitor* %8 to %struct.gp_pthread_recursive_s*
  %self_id4 = getelementptr inbounds %struct.gp_pthread_recursive_s, %struct.gp_pthread_recursive_s* %9, i32 0, i32 1
  %10 = load i64, i64* %self_id4, align 8, !tbaa !9
  %call5 = call i32 @pthread_equal(i64 %call3, i64 %10) #8
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.7:                                        ; preds = %if.else
  %11 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %call8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %11) #6
  store i32 %call8, i32* %scode, align 4, !tbaa !8
  %call9 = call i64 @pthread_self() #8
  %12 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %13 = bitcast %union.gp_monitor* %12 to %struct.gp_pthread_recursive_s*
  %self_id10 = getelementptr inbounds %struct.gp_pthread_recursive_s, %struct.gp_pthread_recursive_s* %13, i32 0, i32 1
  store i64 %call9, i64* %self_id10, align 8, !tbaa !9
  %14 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp11 = icmp ne i32 %14, 0
  %cond12 = select i1 %cmp11, i32 -12, i32 0
  store i32 %cond12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.7, %if.then.6, %if.then
  %15 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #4

; Function Attrs: inlinehint nounwind readnone uwtable
define available_externally i32 @pthread_equal(i64 %__thread1, i64 %__thread2) #5 {
entry:
  %__thread1.addr = alloca i64, align 8
  %__thread2.addr = alloca i64, align 8
  store i64 %__thread1, i64* %__thread1.addr, align 8, !tbaa !12
  store i64 %__thread2, i64* %__thread2.addr, align 8, !tbaa !12
  %0 = load i64, i64* %__thread1.addr, align 8, !tbaa !12
  %1 = load i64, i64* %__thread2.addr, align 8, !tbaa !12
  %cmp = icmp eq i64 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_leave(%union.gp_monitor* %mona) #0 {
entry:
  %mona.addr = alloca %union.gp_monitor*, align 8
  %mon = alloca %union.pthread_mutex_t*, align 8
  %scode = alloca i32, align 4
  store %union.gp_monitor* %mona, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %0 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_monitor* %1 to %union.pthread_mutex_t*
  store %union.pthread_mutex_t* %2, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %3 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mon, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %4) #6
  store i32 %call, i32* %scode, align 4, !tbaa !8
  %5 = load %union.gp_monitor*, %union.gp_monitor** %mona.addr, align 8, !tbaa !1
  %6 = bitcast %union.gp_monitor* %5 to %struct.gp_pthread_recursive_s*
  %self_id = getelementptr inbounds %struct.gp_pthread_recursive_s, %struct.gp_pthread_recursive_s* %6, i32 0, i32 1
  store i64 0, i64* %self_id, align 8, !tbaa !9
  %7 = load i32, i32* %scode, align 4, !tbaa !8
  %cmp = icmp ne i32 %7, 0
  %cond = select i1 %cmp, i32 -12, i32 0
  %8 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %union.pthread_mutex_t** %mon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gp_create_thread(void (i8*)* %proc, i8* %proc_data) #0 {
entry:
  %retval = alloca i32, align 4
  %proc.addr = alloca void (i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  %closure = alloca %struct.gp_thread_creation_closure_s*, align 8
  %ignore_thread = alloca i64, align 8
  %attr = alloca %union.pthread_attr_t, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store void (i8*)* %proc, void (i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gp_thread_creation_closure_s** %closure to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 16) #6
  %1 = bitcast i8* %call to %struct.gp_thread_creation_closure_s*
  store %struct.gp_thread_creation_closure_s* %1, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %2 = bitcast i64* %ignore_thread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %union.pthread_attr_t* %attr to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %tobool = icmp ne %struct.gp_thread_creation_closure_s* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** %proc.addr, align 8, !tbaa !1
  %7 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %proc1 = getelementptr inbounds %struct.gp_thread_creation_closure_s, %struct.gp_thread_creation_closure_s* %7, i32 0, i32 0
  store void (i8*)* %6, void (i8*)** %proc1, align 8, !tbaa !13
  %8 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %9 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %proc_data2 = getelementptr inbounds %struct.gp_thread_creation_closure_s, %struct.gp_thread_creation_closure_s* %9, i32 0, i32 1
  store i8* %8, i8** %proc_data2, align 8, !tbaa !15
  %call3 = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #6
  %call4 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 1) #6
  %10 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %11 = bitcast %struct.gp_thread_creation_closure_s* %10 to i8*
  %call5 = call i32 @pthread_create(i64* %ignore_thread, %union.pthread_attr_t* %attr, i8* (i8*)* @gp_thread_begin_wrapper, i8* %11) #6
  store i32 %call5, i32* %code, align 4, !tbaa !8
  %12 = load i32, i32* %code, align 4, !tbaa !8
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %14 = bitcast %struct.gp_thread_creation_closure_s* %13 to i8*
  call void @free(i8* %14) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %union.pthread_attr_t* %attr to i8*
  call void @llvm.lifetime.end(i64 56, i8* %16) #1
  %17 = bitcast i64* %ignore_thread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gp_thread_creation_closure_s** %closure to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #2

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @gp_thread_begin_wrapper(i8* %thread_data) #0 {
entry:
  %thread_data.addr = alloca i8*, align 8
  %closure = alloca %struct.gp_thread_creation_closure_s, align 8
  store i8* %thread_data, i8** %thread_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gp_thread_creation_closure_s* %closure to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i8*, i8** %thread_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gp_thread_creation_closure_s*
  %3 = bitcast %struct.gp_thread_creation_closure_s* %closure to i8*
  %4 = bitcast %struct.gp_thread_creation_closure_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false), !tbaa.struct !16
  %5 = load i8*, i8** %thread_data.addr, align 8, !tbaa !1
  call void @free(i8* %5) #6
  %proc = getelementptr inbounds %struct.gp_thread_creation_closure_s, %struct.gp_thread_creation_closure_s* %closure, i32 0, i32 0
  %6 = load void (i8*)*, void (i8*)** %proc, align 8, !tbaa !13
  %proc_data = getelementptr inbounds %struct.gp_thread_creation_closure_s, %struct.gp_thread_creation_closure_s* %closure, i32 0, i32 1
  %7 = load i8*, i8** %proc_data, align 8, !tbaa !15
  call void %6(i8* %7) #7
  %8 = bitcast %struct.gp_thread_creation_closure_s* %closure to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #1
  ret i8* null
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gp_thread_start(void (i8*)* %proc, i8* %proc_data, i8** %thread) #0 {
entry:
  %retval = alloca i32, align 4
  %proc.addr = alloca void (i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  %thread.addr = alloca i8**, align 8
  %closure = alloca %struct.gp_thread_creation_closure_s*, align 8
  %new_thread = alloca i64, align 8
  %attr = alloca %union.pthread_attr_t, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store void (i8*)* %proc, void (i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  store i8** %thread, i8*** %thread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gp_thread_creation_closure_s** %closure to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 16) #6
  %1 = bitcast i8* %call to %struct.gp_thread_creation_closure_s*
  store %struct.gp_thread_creation_closure_s* %1, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %2 = bitcast i64* %new_thread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %union.pthread_attr_t* %attr to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %tobool = icmp ne %struct.gp_thread_creation_closure_s* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** %proc.addr, align 8, !tbaa !1
  %7 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %proc1 = getelementptr inbounds %struct.gp_thread_creation_closure_s, %struct.gp_thread_creation_closure_s* %7, i32 0, i32 0
  store void (i8*)* %6, void (i8*)** %proc1, align 8, !tbaa !13
  %8 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %9 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %proc_data2 = getelementptr inbounds %struct.gp_thread_creation_closure_s, %struct.gp_thread_creation_closure_s* %9, i32 0, i32 1
  store i8* %8, i8** %proc_data2, align 8, !tbaa !15
  %call3 = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #6
  %call4 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 0) #6
  %10 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %11 = bitcast %struct.gp_thread_creation_closure_s* %10 to i8*
  %call5 = call i32 @pthread_create(i64* %new_thread, %union.pthread_attr_t* %attr, i8* (i8*)* @gp_thread_begin_wrapper, i8* %11) #6
  store i32 %call5, i32* %code, align 4, !tbaa !8
  %12 = load i32, i32* %code, align 4, !tbaa !8
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i8**, i8*** %thread.addr, align 8, !tbaa !1
  store i8* null, i8** %13, align 8, !tbaa !1
  %14 = load %struct.gp_thread_creation_closure_s*, %struct.gp_thread_creation_closure_s** %closure, align 8, !tbaa !1
  %15 = bitcast %struct.gp_thread_creation_closure_s* %14 to i8*
  call void @free(i8* %15) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %16 = load i64, i64* %new_thread, align 8, !tbaa !12
  %17 = inttoptr i64 %16 to i8*
  %18 = load i8**, i8*** %thread.addr, align 8, !tbaa !1
  store i8* %17, i8** %18, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %union.pthread_attr_t* %attr to i8*
  call void @llvm.lifetime.end(i64 56, i8* %20) #1
  %21 = bitcast i64* %new_thread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gp_thread_creation_closure_s** %closure to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @gp_thread_finish(i8* %thread) #0 {
entry:
  %thread.addr = alloca i8*, align 8
  store i8* %thread, i8** %thread.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %thread.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %thread.addr, align 8, !tbaa !1
  %2 = ptrtoint i8* %1 to i64
  %call = call i32 @pthread_join(i64 %2, i8** null) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @pthread_join(i64, i8**) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"pt_semaphore_t", !7, i64 0, !3, i64 8, !3, i64 48}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!10, !11, i64 40}
!10 = !{!"gp_pthread_recursive_s", !3, i64 0, !11, i64 40}
!11 = !{!"long", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !2, i64 0}
!14 = !{!"gp_thread_creation_closure_s", !2, i64 0, !2, i64 8}
!15 = !{!14, !2, i64 8}
!16 = !{i64 0, i64 8, !1, i64 8, i64 8, !1}
