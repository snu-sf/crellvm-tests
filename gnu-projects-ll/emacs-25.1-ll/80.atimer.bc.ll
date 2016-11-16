; ModuleID = './src/atimer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atimer = type { i32, %struct.timespec, %struct.timespec, void (%struct.atimer*)*, i8*, %struct.atimer* }
%struct.timespec = type { i64, i64 }
%struct.__sigset_t = type { [16 x i64] }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon }
%union.sigval = type { i8* }
%union.anon = type { %struct.anon, [32 x i8] }
%struct.anon = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.sigaction = type { %union.anon.0, %struct.__sigset_t, i32, void ()* }
%union.anon.0 = type { void (i32)* }

@free_atimers = internal global %struct.atimer* null, align 8
@stopped_atimers = internal global %struct.atimer* null, align 8
@atimers = internal global %struct.atimer* null, align 8
@alarm_timer_ok = internal global i8 0, align 1
@alarm_timer = internal global i8* null, align 8
@timerfd = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"EMACS_IGNORE_TIMERFD\00", align 1
@pending_signals = external global i8, align 1

; Function Attrs: nounwind uwtable
define %struct.atimer* @start_atimer(i32 %type, i64 %timestamp.coerce0, i64 %timestamp.coerce1, void (%struct.atimer*)* %fn, i8* %client_data) #0 {
entry:
  %timestamp = alloca %struct.timespec, align 8
  %type.addr = alloca i32, align 4
  %fn.addr = alloca void (%struct.atimer*)*, align 8
  %client_data.addr = alloca i8*, align 8
  %t = alloca %struct.atimer*, align 8
  %oldset = alloca %struct.__sigset_t, align 8
  %agg.tmp = alloca %struct.timespec, align 8
  %coerce = alloca %struct.timespec, align 8
  %agg.tmp10 = alloca %struct.timespec, align 8
  %coerce13 = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %timestamp to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %timestamp.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %timestamp.coerce1, i64* %2
  store i32 %type, i32* %type.addr, align 4
  store void (%struct.atimer*)* %fn, void (%struct.atimer*)** %fn.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %3 = load %struct.atimer*, %struct.atimer** @free_atimers, align 8
  %tobool = icmp ne %struct.atimer* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.atimer*, %struct.atimer** @free_atimers, align 8
  store %struct.atimer* %4, %struct.atimer** %t, align 8
  %5 = load %struct.atimer*, %struct.atimer** %t, align 8
  %next = getelementptr inbounds %struct.atimer, %struct.atimer* %5, i32 0, i32 5
  %6 = load %struct.atimer*, %struct.atimer** %next, align 8
  store %struct.atimer* %6, %struct.atimer** @free_atimers, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noalias i8* @xmalloc(i64 64)
  %7 = bitcast i8* %call to %struct.atimer*
  store %struct.atimer* %7, %struct.atimer** %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.atimer*, %struct.atimer** %t, align 8
  %9 = bitcast %struct.atimer* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 64, i32 8, i1 false)
  %10 = load i32, i32* %type.addr, align 4
  %11 = load %struct.atimer*, %struct.atimer** %t, align 8
  %type1 = getelementptr inbounds %struct.atimer, %struct.atimer* %11, i32 0, i32 0
  store i32 %10, i32* %type1, align 4
  %12 = load void (%struct.atimer*)*, void (%struct.atimer*)** %fn.addr, align 8
  %13 = load %struct.atimer*, %struct.atimer** %t, align 8
  %fn2 = getelementptr inbounds %struct.atimer, %struct.atimer* %13, i32 0, i32 3
  store void (%struct.atimer*)* %12, void (%struct.atimer*)** %fn2, align 8
  %14 = load i8*, i8** %client_data.addr, align 8
  %15 = load %struct.atimer*, %struct.atimer** %t, align 8
  %client_data3 = getelementptr inbounds %struct.atimer, %struct.atimer* %15, i32 0, i32 4
  store i8* %14, i8** %client_data3, align 8
  call void @block_atimers(%struct.__sigset_t* %oldset)
  %16 = load i32, i32* %type.addr, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load %struct.atimer*, %struct.atimer** %t, align 8
  %expiration = getelementptr inbounds %struct.atimer, %struct.atimer* %17, i32 0, i32 1
  %18 = bitcast %struct.timespec* %expiration to i8*
  %19 = bitcast %struct.timespec* %timestamp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %20 = load %struct.atimer*, %struct.atimer** %t, align 8
  %expiration5 = getelementptr inbounds %struct.atimer, %struct.atimer* %20, i32 0, i32 1
  %call6 = call { i64, i64 } @current_timespec()
  %21 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %22 = getelementptr { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i64 } %call6, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i64 } %call6, 1
  store i64 %25, i64* %24, align 8
  %26 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %27 = getelementptr { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 1
  %29 = getelementptr { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 1
  %31 = bitcast %struct.timespec* %timestamp to { i64, i64 }*
  %32 = getelementptr { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 1
  %34 = getelementptr { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 1
  %call7 = call { i64, i64 } @timespec_add(i64 %28, i64 %30, i64 %33, i64 %35) #7
  %36 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %37 = getelementptr { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %call7, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %call7, 1
  store i64 %40, i64* %39, align 8
  %41 = bitcast %struct.timespec* %expiration5 to i8*
  %42 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %43 = load %struct.atimer*, %struct.atimer** %t, align 8
  %expiration9 = getelementptr inbounds %struct.atimer, %struct.atimer* %43, i32 0, i32 1
  %call11 = call { i64, i64 } @current_timespec()
  %44 = bitcast %struct.timespec* %agg.tmp10 to { i64, i64 }*
  %45 = getelementptr { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0
  %46 = extractvalue { i64, i64 } %call11, 0
  store i64 %46, i64* %45, align 8
  %47 = getelementptr { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1
  %48 = extractvalue { i64, i64 } %call11, 1
  store i64 %48, i64* %47, align 8
  %49 = bitcast %struct.timespec* %agg.tmp10 to { i64, i64 }*
  %50 = getelementptr { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 1
  %52 = getelementptr { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 1
  %54 = bitcast %struct.timespec* %timestamp to { i64, i64 }*
  %55 = getelementptr { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 1
  %57 = getelementptr { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 1
  %call12 = call { i64, i64 } @timespec_add(i64 %51, i64 %53, i64 %56, i64 %58) #7
  %59 = bitcast %struct.timespec* %coerce13 to { i64, i64 }*
  %60 = getelementptr { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0
  %61 = extractvalue { i64, i64 } %call12, 0
  store i64 %61, i64* %60, align 8
  %62 = getelementptr { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1
  %63 = extractvalue { i64, i64 } %call12, 1
  store i64 %63, i64* %62, align 8
  %64 = bitcast %struct.timespec* %expiration9 to i8*
  %65 = bitcast %struct.timespec* %coerce13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false)
  %66 = load %struct.atimer*, %struct.atimer** %t, align 8
  %interval = getelementptr inbounds %struct.atimer, %struct.atimer* %66, i32 0, i32 2
  %67 = bitcast %struct.timespec* %interval to i8*
  %68 = bitcast %struct.timespec* %timestamp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 16, i32 8, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.8, %sw.bb.4, %sw.bb
  %69 = load %struct.atimer*, %struct.atimer** %t, align 8
  call void @schedule_atimer(%struct.atimer* %69)
  call void @unblock_atimers(%struct.__sigset_t* %oldset)
  call void @set_alarm()
  %70 = load %struct.atimer*, %struct.atimer** %t, align 8
  ret %struct.atimer* %70
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @block_atimers(%struct.__sigset_t* %oldset) #0 {
entry:
  %oldset.addr = alloca %struct.__sigset_t*, align 8
  %blocked = alloca %struct.__sigset_t, align 8
  store %struct.__sigset_t* %oldset, %struct.__sigset_t** %oldset.addr, align 8
  %call = call i32 @sigemptyset(%struct.__sigset_t* %blocked) #2
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 14) #2
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 2) #2
  %0 = load %struct.__sigset_t*, %struct.__sigset_t** %oldset.addr, align 8
  %call3 = call i32 @pthread_sigmask(i32 0, %struct.__sigset_t* %blocked, %struct.__sigset_t* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare { i64, i64 } @timespec_add(i64, i64, i64, i64) #3

declare { i64, i64 } @current_timespec() #1

; Function Attrs: nounwind uwtable
define internal void @schedule_atimer(%struct.atimer* %t) #0 {
entry:
  %t.addr = alloca %struct.atimer*, align 8
  %a = alloca %struct.atimer*, align 8
  %prev = alloca %struct.atimer*, align 8
  store %struct.atimer* %t, %struct.atimer** %t.addr, align 8
  %0 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  store %struct.atimer* %0, %struct.atimer** %a, align 8
  store %struct.atimer* null, %struct.atimer** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.atimer*, %struct.atimer** %a, align 8
  %tobool = icmp ne %struct.atimer* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.atimer*, %struct.atimer** %a, align 8
  %expiration = getelementptr inbounds %struct.atimer, %struct.atimer* %2, i32 0, i32 1
  %3 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %expiration1 = getelementptr inbounds %struct.atimer, %struct.atimer* %3, i32 0, i32 1
  %4 = bitcast %struct.timespec* %expiration to { i64, i64 }*
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 1
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 1
  %9 = bitcast %struct.timespec* %expiration1 to { i64, i64 }*
  %10 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 1
  %12 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 1
  %call = call i32 @timespec_cmp(i64 %6, i64 %8, i64 %11, i64 %13) #8
  %cmp = icmp slt i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct.atimer*, %struct.atimer** %a, align 8
  store %struct.atimer* %15, %struct.atimer** %prev, align 8
  %16 = load %struct.atimer*, %struct.atimer** %a, align 8
  %next = getelementptr inbounds %struct.atimer, %struct.atimer* %16, i32 0, i32 5
  %17 = load %struct.atimer*, %struct.atimer** %next, align 8
  store %struct.atimer* %17, %struct.atimer** %a, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load %struct.atimer*, %struct.atimer** %prev, align 8
  %tobool2 = icmp ne %struct.atimer* %18, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %19 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %20 = load %struct.atimer*, %struct.atimer** %prev, align 8
  %next3 = getelementptr inbounds %struct.atimer, %struct.atimer* %20, i32 0, i32 5
  store %struct.atimer* %19, %struct.atimer** %next3, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %21 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  store %struct.atimer* %21, %struct.atimer** @atimers, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.atimer*, %struct.atimer** %a, align 8
  %23 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %next4 = getelementptr inbounds %struct.atimer, %struct.atimer* %23, i32 0, i32 5
  store %struct.atimer* %22, %struct.atimer** %next4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unblock_atimers(%struct.__sigset_t* %oldset) #0 {
entry:
  %oldset.addr = alloca %struct.__sigset_t*, align 8
  store %struct.__sigset_t* %oldset, %struct.__sigset_t** %oldset.addr, align 8
  %0 = load %struct.__sigset_t*, %struct.__sigset_t** %oldset.addr, align 8
  %call = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* %0, %struct.__sigset_t* null) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_alarm() #0 {
entry:
  %it = alloca %struct.itimerval, align 8
  %now = alloca %struct.timespec, align 8
  %interval = alloca %struct.timespec, align 8
  %ispec = alloca %struct.itimerspec, align 8
  %coerce = alloca %struct.timespec, align 8
  %coerce17 = alloca %struct.timespec, align 8
  %coerce20 = alloca %struct.timespec, align 8
  %coerce23 = alloca %struct.timeval, align 8
  %0 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %tobool = icmp ne %struct.atimer* %0, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @timerfd, align 4
  %cmp = icmp sle i32 0, %1
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i8, i8* @alarm_timer_ok, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %it_value = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %ispec, i32 0, i32 1
  %3 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %expiration = getelementptr inbounds %struct.atimer, %struct.atimer* %3, i32 0, i32 1
  %4 = bitcast %struct.timespec* %it_value to i8*
  %5 = bitcast %struct.timespec* %expiration to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %it_interval = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %ispec, i32 0, i32 0
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %it_interval, i32 0, i32 1
  store i64 0, i64* %tv_nsec, align 8
  %it_interval3 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %ispec, i32 0, i32 0
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %it_interval3, i32 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  %6 = load i32, i32* @timerfd, align 4
  %call = call i32 @timerfd_settime(i32 %6, i32 1, %struct.itimerspec* %ispec, %struct.itimerspec* null) #2
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %7 = load i32, i32* @timerfd, align 4
  call void @add_timer_wait_descriptor(i32 %7)
  br label %if.end.25

if.end:                                           ; preds = %if.then.2
  %8 = load i8, i8* @alarm_timer_ok, align 1
  %tobool6 = trunc i8 %8 to i1
  br i1 %tobool6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** @alarm_timer, align 8
  %call7 = call i32 @timer_settime(i8* %9, i32 1, %struct.itimerspec* %ispec, %struct.itimerspec* null) #2
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  br label %if.end.25

if.end.10:                                        ; preds = %land.lhs.true, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %lor.lhs.false
  %call12 = call { i64, i64 } @current_timespec()
  %10 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %11 = getelementptr { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i64 } %call12, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i64 } %call12, 1
  store i64 %14, i64* %13, align 8
  %15 = bitcast %struct.timespec* %now to i8*
  %16 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %17 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %expiration13 = getelementptr inbounds %struct.atimer, %struct.atimer* %17, i32 0, i32 1
  %18 = bitcast %struct.timespec* %expiration13 to { i64, i64 }*
  %19 = getelementptr { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 1
  %21 = getelementptr { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64, i64* %21, align 1
  %23 = bitcast %struct.timespec* %now to { i64, i64 }*
  %24 = getelementptr { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 1
  %26 = getelementptr { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 1
  %call14 = call i32 @timespec_cmp(i64 %20, i64 %22, i64 %25, i64 %27) #8
  %cmp15 = icmp sle i32 %call14, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %call16 = call { i64, i64 } @make_timespec(i64 0, i64 1000000)
  %28 = bitcast %struct.timespec* %coerce17 to { i64, i64 }*
  %29 = getelementptr { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i64 } %call16, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i64 } %call16, 1
  store i64 %32, i64* %31, align 8
  %33 = bitcast %struct.timespec* %interval to i8*
  %34 = bitcast %struct.timespec* %coerce17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %35 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %expiration18 = getelementptr inbounds %struct.atimer, %struct.atimer* %35, i32 0, i32 1
  %36 = bitcast %struct.timespec* %expiration18 to { i64, i64 }*
  %37 = getelementptr { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 1
  %39 = getelementptr { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 1
  %41 = bitcast %struct.timespec* %now to { i64, i64 }*
  %42 = getelementptr { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 1
  %44 = getelementptr { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 1
  %call19 = call { i64, i64 } @timespec_sub(i64 %38, i64 %40, i64 %43, i64 %45) #7
  %46 = bitcast %struct.timespec* %coerce20 to { i64, i64 }*
  %47 = getelementptr { i64, i64 }, { i64, i64 }* %46, i32 0, i32 0
  %48 = extractvalue { i64, i64 } %call19, 0
  store i64 %48, i64* %47, align 8
  %49 = getelementptr { i64, i64 }, { i64, i64 }* %46, i32 0, i32 1
  %50 = extractvalue { i64, i64 } %call19, 1
  store i64 %50, i64* %49, align 8
  %51 = bitcast %struct.timespec* %interval to i8*
  %52 = bitcast %struct.timespec* %coerce20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %53 = bitcast %struct.itimerval* %it to i8*
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 32, i32 8, i1 false)
  %it_value21 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %it, i32 0, i32 1
  %54 = bitcast %struct.timespec* %interval to { i64, i64 }*
  %55 = getelementptr { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 1
  %57 = getelementptr { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 1
  %call22 = call { i64, i64 } @make_timeval(i64 %56, i64 %58) #7
  %59 = bitcast %struct.timeval* %coerce23 to { i64, i64 }*
  %60 = getelementptr { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0
  %61 = extractvalue { i64, i64 } %call22, 0
  store i64 %61, i64* %60, align 8
  %62 = getelementptr { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1
  %63 = extractvalue { i64, i64 } %call22, 1
  store i64 %63, i64* %62, align 8
  %64 = bitcast %struct.timeval* %it_value21 to i8*
  %65 = bitcast %struct.timeval* %coerce23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false)
  %call24 = call i32 @setitimer(i32 0, %struct.itimerval* %it, %struct.itimerval* null) #2
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.5, %if.then.9, %cond.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @cancel_atimer(%struct.atimer* %timer) #0 {
entry:
  %timer.addr = alloca %struct.atimer*, align 8
  %i = alloca i32, align 4
  %oldset = alloca %struct.__sigset_t, align 8
  %t = alloca %struct.atimer*, align 8
  %prev = alloca %struct.atimer*, align 8
  %list = alloca %struct.atimer**, align 8
  store %struct.atimer* %timer, %struct.atimer** %timer.addr, align 8
  call void @block_atimers(%struct.__sigset_t* %oldset)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, %struct.atimer** @stopped_atimers, %struct.atimer** @atimers
  store %struct.atimer** %cond, %struct.atimer*** %list, align 8
  %2 = load %struct.atimer**, %struct.atimer*** %list, align 8
  %3 = load %struct.atimer*, %struct.atimer** %2, align 8
  store %struct.atimer* %3, %struct.atimer** %t, align 8
  store %struct.atimer* null, %struct.atimer** %prev, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.atimer*, %struct.atimer** %t, align 8
  %tobool2 = icmp ne %struct.atimer* %4, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %5 = load %struct.atimer*, %struct.atimer** %t, align 8
  %6 = load %struct.atimer*, %struct.atimer** %timer.addr, align 8
  %cmp3 = icmp ne %struct.atimer* %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %7 = phi i1 [ false, %for.cond.1 ], [ %cmp3, %land.rhs ]
  br i1 %7, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %8 = load %struct.atimer*, %struct.atimer** %t, align 8
  store %struct.atimer* %8, %struct.atimer** %prev, align 8
  %9 = load %struct.atimer*, %struct.atimer** %t, align 8
  %next = getelementptr inbounds %struct.atimer, %struct.atimer* %9, i32 0, i32 5
  %10 = load %struct.atimer*, %struct.atimer** %next, align 8
  store %struct.atimer* %10, %struct.atimer** %t, align 8
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %11 = load %struct.atimer*, %struct.atimer** %t, align 8
  %tobool5 = icmp ne %struct.atimer* %11, null
  br i1 %tobool5, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.end
  %12 = load %struct.atimer*, %struct.atimer** %prev, align 8
  %tobool6 = icmp ne %struct.atimer* %12, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %13 = load %struct.atimer*, %struct.atimer** %t, align 8
  %next8 = getelementptr inbounds %struct.atimer, %struct.atimer* %13, i32 0, i32 5
  %14 = load %struct.atimer*, %struct.atimer** %next8, align 8
  %15 = load %struct.atimer*, %struct.atimer** %prev, align 8
  %next9 = getelementptr inbounds %struct.atimer, %struct.atimer* %15, i32 0, i32 5
  store %struct.atimer* %14, %struct.atimer** %next9, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct.atimer*, %struct.atimer** %t, align 8
  %next10 = getelementptr inbounds %struct.atimer, %struct.atimer* %16, i32 0, i32 5
  %17 = load %struct.atimer*, %struct.atimer** %next10, align 8
  %18 = load %struct.atimer**, %struct.atimer*** %list, align 8
  store %struct.atimer* %17, %struct.atimer** %18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %19 = load %struct.atimer*, %struct.atimer** @free_atimers, align 8
  %20 = load %struct.atimer*, %struct.atimer** %t, align 8
  %next11 = getelementptr inbounds %struct.atimer, %struct.atimer* %20, i32 0, i32 5
  store %struct.atimer* %19, %struct.atimer** %next11, align 8
  %21 = load %struct.atimer*, %struct.atimer** %t, align 8
  store %struct.atimer* %21, %struct.atimer** @free_atimers, align 8
  br label %for.end.14

if.end.12:                                        ; preds = %for.end
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %if.end, %for.cond
  call void @unblock_atimers(%struct.__sigset_t* %oldset)
  ret void
}

; Function Attrs: nounwind uwtable
define void @stop_other_atimers(%struct.atimer* %t) #0 {
entry:
  %t.addr = alloca %struct.atimer*, align 8
  %oldset = alloca %struct.__sigset_t, align 8
  %p = alloca %struct.atimer*, align 8
  %prev = alloca %struct.atimer*, align 8
  store %struct.atimer* %t, %struct.atimer** %t.addr, align 8
  call void @block_atimers(%struct.__sigset_t* %oldset)
  %0 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %tobool = icmp ne %struct.atimer* %0, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  store %struct.atimer* %1, %struct.atimer** %p, align 8
  store %struct.atimer* null, %struct.atimer** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.atimer*, %struct.atimer** %p, align 8
  %tobool1 = icmp ne %struct.atimer* %2, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.atimer*, %struct.atimer** %p, align 8
  %4 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %cmp = icmp ne %struct.atimer* %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.atimer*, %struct.atimer** %p, align 8
  store %struct.atimer* %6, %struct.atimer** %prev, align 8
  %7 = load %struct.atimer*, %struct.atimer** %p, align 8
  %next = getelementptr inbounds %struct.atimer, %struct.atimer* %7, i32 0, i32 5
  %8 = load %struct.atimer*, %struct.atimer** %next, align 8
  store %struct.atimer* %8, %struct.atimer** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load %struct.atimer*, %struct.atimer** %p, align 8
  %10 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %cmp2 = icmp eq %struct.atimer* %9, %10
  br i1 %cmp2, label %if.then.3, label %if.else.10

if.then.3:                                        ; preds = %for.end
  %11 = load %struct.atimer*, %struct.atimer** %prev, align 8
  %tobool4 = icmp ne %struct.atimer* %11, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  %12 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %next6 = getelementptr inbounds %struct.atimer, %struct.atimer* %12, i32 0, i32 5
  %13 = load %struct.atimer*, %struct.atimer** %next6, align 8
  %14 = load %struct.atimer*, %struct.atimer** %prev, align 8
  %next7 = getelementptr inbounds %struct.atimer, %struct.atimer* %14, i32 0, i32 5
  store %struct.atimer* %13, %struct.atimer** %next7, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %15 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %next8 = getelementptr inbounds %struct.atimer, %struct.atimer* %15, i32 0, i32 5
  %16 = load %struct.atimer*, %struct.atimer** %next8, align 8
  store %struct.atimer* %16, %struct.atimer** @atimers, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %17 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  %next9 = getelementptr inbounds %struct.atimer, %struct.atimer* %17, i32 0, i32 5
  store %struct.atimer* null, %struct.atimer** %next9, align 8
  br label %if.end.11

if.else.10:                                       ; preds = %for.end
  store %struct.atimer* null, %struct.atimer** %t.addr, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  %18 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %19 = load %struct.atimer*, %struct.atimer** @stopped_atimers, align 8
  %call = call %struct.atimer* @append_atimer_lists(%struct.atimer* %18, %struct.atimer* %19)
  store %struct.atimer* %call, %struct.atimer** @stopped_atimers, align 8
  %20 = load %struct.atimer*, %struct.atimer** %t.addr, align 8
  store %struct.atimer* %20, %struct.atimer** @atimers, align 8
  call void @unblock_atimers(%struct.__sigset_t* %oldset)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.atimer* @append_atimer_lists(%struct.atimer* %list_1, %struct.atimer* %list_2) #0 {
entry:
  %retval = alloca %struct.atimer*, align 8
  %list_1.addr = alloca %struct.atimer*, align 8
  %list_2.addr = alloca %struct.atimer*, align 8
  %p = alloca %struct.atimer*, align 8
  store %struct.atimer* %list_1, %struct.atimer** %list_1.addr, align 8
  store %struct.atimer* %list_2, %struct.atimer** %list_2.addr, align 8
  %0 = load %struct.atimer*, %struct.atimer** %list_1.addr, align 8
  %cmp = icmp eq %struct.atimer* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.atimer*, %struct.atimer** %list_2.addr, align 8
  store %struct.atimer* %1, %struct.atimer** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.atimer*, %struct.atimer** %list_2.addr, align 8
  %cmp1 = icmp eq %struct.atimer* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.atimer*, %struct.atimer** %list_1.addr, align 8
  store %struct.atimer* %3, %struct.atimer** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %4 = load %struct.atimer*, %struct.atimer** %list_1.addr, align 8
  store %struct.atimer* %4, %struct.atimer** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.3
  %5 = load %struct.atimer*, %struct.atimer** %p, align 8
  %next = getelementptr inbounds %struct.atimer, %struct.atimer* %5, i32 0, i32 5
  %6 = load %struct.atimer*, %struct.atimer** %next, align 8
  %tobool = icmp ne %struct.atimer* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.atimer*, %struct.atimer** %p, align 8
  %next4 = getelementptr inbounds %struct.atimer, %struct.atimer* %7, i32 0, i32 5
  %8 = load %struct.atimer*, %struct.atimer** %next4, align 8
  store %struct.atimer* %8, %struct.atimer** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.atimer*, %struct.atimer** %list_2.addr, align 8
  %10 = load %struct.atimer*, %struct.atimer** %p, align 8
  %next5 = getelementptr inbounds %struct.atimer, %struct.atimer* %10, i32 0, i32 5
  store %struct.atimer* %9, %struct.atimer** %next5, align 8
  %11 = load %struct.atimer*, %struct.atimer** %list_1.addr, align 8
  store %struct.atimer* %11, %struct.atimer** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %12 = load %struct.atimer*, %struct.atimer** %retval
  ret %struct.atimer* %12
}

; Function Attrs: nounwind uwtable
define void @run_all_atimers() #0 {
entry:
  %t = alloca %struct.atimer*, align 8
  %next = alloca %struct.atimer*, align 8
  %oldset = alloca %struct.__sigset_t, align 8
  %0 = load %struct.atimer*, %struct.atimer** @stopped_atimers, align 8
  %tobool = icmp ne %struct.atimer* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  store %struct.atimer* %1, %struct.atimer** %t, align 8
  call void @block_atimers(%struct.__sigset_t* %oldset)
  %2 = load %struct.atimer*, %struct.atimer** @stopped_atimers, align 8
  store %struct.atimer* %2, %struct.atimer** @atimers, align 8
  store %struct.atimer* null, %struct.atimer** @stopped_atimers, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.atimer*, %struct.atimer** %t, align 8
  %tobool1 = icmp ne %struct.atimer* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.atimer*, %struct.atimer** %t, align 8
  %next2 = getelementptr inbounds %struct.atimer, %struct.atimer* %4, i32 0, i32 5
  %5 = load %struct.atimer*, %struct.atimer** %next2, align 8
  store %struct.atimer* %5, %struct.atimer** %next, align 8
  %6 = load %struct.atimer*, %struct.atimer** %t, align 8
  call void @schedule_atimer(%struct.atimer* %6)
  %7 = load %struct.atimer*, %struct.atimer** %next, align 8
  store %struct.atimer* %7, %struct.atimer** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @unblock_atimers(%struct.__sigset_t* %oldset)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @timerfd_callback(i32 %fd, i8* %arg) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %nbytes = alloca i64, align 8
  %expirations = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast i64* %expirations to i8*
  %call = call i64 @emacs_read(i32 %0, i8* %1, i64 8)
  store i64 %call, i64* %nbytes, align 8
  %2 = load i64, i64* %nbytes, align 8
  %cmp = icmp eq i64 %2, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @do_pending_atimers()
  br label %if.end.4

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %nbytes, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  br label %if.end

if.else.3:                                        ; preds = %if.else
  call void @emacs_abort() #9
  unreachable

if.end:                                           ; preds = %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

declare i64 @emacs_read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @do_pending_atimers() #0 {
entry:
  %oldset = alloca %struct.__sigset_t, align 8
  %0 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %tobool = icmp ne %struct.atimer* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @block_atimers(%struct.__sigset_t* %oldset)
  call void @run_timers()
  call void @unblock_atimers(%struct.__sigset_t* %oldset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noreturn
declare void @emacs_abort() #4

; Function Attrs: nounwind uwtable
define internal void @run_timers() #0 {
entry:
  %now = alloca %struct.timespec, align 8
  %t = alloca %struct.atimer*, align 8
  %coerce = alloca %struct.timespec, align 8
  %call = call { i64, i64 } @current_timespec()
  %0 = bitcast %struct.timespec* %now to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call, 1
  store i64 %4, i64* %3, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %tobool = icmp ne %struct.atimer* %5, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %expiration = getelementptr inbounds %struct.atimer, %struct.atimer* %6, i32 0, i32 1
  %7 = bitcast %struct.timespec* %expiration to { i64, i64 }*
  %8 = getelementptr { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 1
  %10 = getelementptr { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = load i64, i64* %10, align 1
  %12 = bitcast %struct.timespec* %now to { i64, i64 }*
  %13 = getelementptr { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 1
  %15 = getelementptr { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 1
  %call1 = call i32 @timespec_cmp(i64 %9, i64 %11, i64 %14, i64 %16) #8
  %cmp = icmp sle i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  store %struct.atimer* %18, %struct.atimer** %t, align 8
  %19 = load %struct.atimer*, %struct.atimer** @atimers, align 8
  %next = getelementptr inbounds %struct.atimer, %struct.atimer* %19, i32 0, i32 5
  %20 = load %struct.atimer*, %struct.atimer** %next, align 8
  store %struct.atimer* %20, %struct.atimer** @atimers, align 8
  %21 = load %struct.atimer*, %struct.atimer** %t, align 8
  %fn = getelementptr inbounds %struct.atimer, %struct.atimer* %21, i32 0, i32 3
  %22 = load void (%struct.atimer*)*, void (%struct.atimer*)** %fn, align 8
  %23 = load %struct.atimer*, %struct.atimer** %t, align 8
  call void %22(%struct.atimer* %23)
  %24 = load %struct.atimer*, %struct.atimer** %t, align 8
  %type = getelementptr inbounds %struct.atimer, %struct.atimer* %24, i32 0, i32 0
  %25 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %25, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %26 = load %struct.atimer*, %struct.atimer** %t, align 8
  %expiration3 = getelementptr inbounds %struct.atimer, %struct.atimer* %26, i32 0, i32 1
  %27 = load %struct.atimer*, %struct.atimer** %t, align 8
  %interval = getelementptr inbounds %struct.atimer, %struct.atimer* %27, i32 0, i32 2
  %28 = bitcast %struct.timespec* %now to { i64, i64 }*
  %29 = getelementptr { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 1
  %31 = getelementptr { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 1
  %33 = bitcast %struct.timespec* %interval to { i64, i64 }*
  %34 = getelementptr { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 1
  %36 = getelementptr { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 1
  %call4 = call { i64, i64 } @timespec_add(i64 %30, i64 %32, i64 %35, i64 %37) #7
  %38 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %39 = getelementptr { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i64 } %call4, 0
  store i64 %40, i64* %39, align 8
  %41 = getelementptr { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i64 } %call4, 1
  store i64 %42, i64* %41, align 8
  %43 = bitcast %struct.timespec* %expiration3 to i8*
  %44 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = load %struct.atimer*, %struct.atimer** %t, align 8
  call void @schedule_atimer(%struct.atimer* %45)
  br label %if.end

if.else:                                          ; preds = %while.body
  %46 = load %struct.atimer*, %struct.atimer** @free_atimers, align 8
  %47 = load %struct.atimer*, %struct.atimer** %t, align 8
  %next5 = getelementptr inbounds %struct.atimer, %struct.atimer* %47, i32 0, i32 5
  store %struct.atimer* %46, %struct.atimer** %next5, align 8
  %48 = load %struct.atimer*, %struct.atimer** %t, align 8
  store %struct.atimer* %48, %struct.atimer** @free_atimers, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @set_alarm()
  ret void
}

; Function Attrs: nounwind uwtable
define void @turn_on_atimers(i1 zeroext %on) #0 {
entry:
  %on.addr = alloca i8, align 1
  %ispec = alloca %struct.itimerspec, align 8
  %frombool = zext i1 %on to i8
  store i8 %frombool, i8* %on.addr, align 1
  %0 = load i8, i8* %on.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @set_alarm()
  br label %if.end.5

if.else:                                          ; preds = %entry
  %1 = bitcast %struct.itimerspec* %ispec to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false)
  %2 = load i8, i8* @alarm_timer_ok, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load i8*, i8** @alarm_timer, align 8
  %call = call i32 @timer_settime(i8* %3, i32 1, %struct.itimerspec* %ispec, %struct.itimerspec* null) #2
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %4 = load i32, i32* @timerfd, align 4
  %call3 = call i32 @timerfd_settime(i32 %4, i32 1, %struct.itimerspec* %ispec, %struct.itimerspec* null) #2
  %call4 = call i32 @alarm(i32 0) #2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @timer_settime(i8*, i32, %struct.itimerspec*, %struct.itimerspec*) #5

; Function Attrs: nounwind
declare i32 @timerfd_settime(i32, i32, %struct.itimerspec*, %struct.itimerspec*) #5

; Function Attrs: nounwind
declare i32 @alarm(i32) #5

; Function Attrs: nounwind uwtable
define void @init_atimer() #0 {
entry:
  %sigev = alloca %struct.sigevent, align 8
  %action = alloca %struct.sigaction, align 8
  %call = call i8* @egetenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i32 @timerfd_create(i32 0, i32 526336) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call1, %cond.false ]
  store i32 %cond, i32* @timerfd, align 4
  %0 = load i32, i32* @timerfd, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %sigev_notify = getelementptr inbounds %struct.sigevent, %struct.sigevent* %sigev, i32 0, i32 2
  store i32 0, i32* %sigev_notify, align 4
  %sigev_signo = getelementptr inbounds %struct.sigevent, %struct.sigevent* %sigev, i32 0, i32 1
  store i32 14, i32* %sigev_signo, align 4
  %sigev_value = getelementptr inbounds %struct.sigevent, %struct.sigevent* %sigev, i32 0, i32 0
  %sival_ptr = bitcast %union.sigval* %sigev_value to i8**
  store i8* bitcast (i8** @alarm_timer to i8*), i8** %sival_ptr, align 8
  %call2 = call i32 @timer_create(i32 0, %struct.sigevent* %sigev, i8** @alarm_timer) #2
  %cmp3 = icmp eq i32 %call2, 0
  %frombool = zext i1 %cmp3 to i8
  store i8 %frombool, i8* @alarm_timer_ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  store %struct.atimer* null, %struct.atimer** @atimers, align 8
  store %struct.atimer* null, %struct.atimer** @stopped_atimers, align 8
  store %struct.atimer* null, %struct.atimer** @free_atimers, align 8
  call void @emacs_sigaction_init(%struct.sigaction* %action, void (i32)* @handle_alarm_signal)
  %call4 = call i32 @sigaction(i32 14, %struct.sigaction* %action, %struct.sigaction* null) #2
  ret void
}

declare i8* @egetenv(i8*) #1

; Function Attrs: nounwind
declare i32 @timerfd_create(i32, i32) #5

; Function Attrs: nounwind
declare i32 @timer_create(i32, %struct.sigevent*, i8**) #5

declare void @emacs_sigaction_init(%struct.sigaction*, void (i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @handle_alarm_signal(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store volatile i8 1, i8* @pending_signals, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #5

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #5

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #5

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #5

declare void @add_timer_wait_descriptor(i32) #1

; Function Attrs: nounwind readonly
declare i32 @timespec_cmp(i64, i64, i64, i64) #6

declare { i64, i64 } @make_timespec(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i64, i64 } @timespec_sub(i64, i64, i64, i64) #3

; Function Attrs: nounwind readnone
declare { i64, i64 } @make_timeval(i64, i64) #3

; Function Attrs: nounwind
declare i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
