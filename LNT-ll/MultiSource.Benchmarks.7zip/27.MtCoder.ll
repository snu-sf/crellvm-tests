; ModuleID = './MultiSource.Benchmarks.7zip/27.MtCoder.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CLoopThread = type { %struct._CThread, %struct._CEvent, %struct._CEvent, i32, i32 (i8*)*, i8*, i32 }
%struct._CThread = type { i64, i32 }
%struct._CEvent = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.CMtProgress = type { i64, i64, %struct.ICompressProgress*, i32, %struct.CCriticalSection, [32 x i64], [32 x i64] }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }
%struct.CCriticalSection = type { %union.pthread_mutex_t }
%struct.CMtThread = type { %struct._CMtCoder*, i8*, i64, i8*, i64, i32, %struct.CLoopThread, i32, i32, %struct._CEvent, %struct._CEvent }
%struct._CMtCoder = type { i64, i64, i32, %struct.ISeqInStream*, %struct.ISeqOutStream*, %struct.ICompressProgress*, %struct.ISzAlloc*, %struct.IMtCoderCallback*, %struct.CCriticalSection, i32, %struct.CMtProgress, [32 x %struct.CMtThread] }
%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.ISeqOutStream = type { i64 (i8*, i8*, i64)* }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.IMtCoderCallback = type { i32 (i8*, i32, i8*, i64*, i8*, i64, i32)* }

; Function Attrs: nounwind uwtable
define void @LoopThread_Construct(%struct.CLoopThread* %p) #0 {
entry:
  %p.addr = alloca %struct.CLoopThread*, align 8
  store %struct.CLoopThread* %p, %struct.CLoopThread** %p.addr, align 8
  %0 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %thread = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %0, i32 0, i32 0
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %thread, i32 0, i32 1
  store i32 0, i32* %_created, align 4
  %1 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %startEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %1, i32 0, i32 1
  %_created1 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %startEvent, i32 0, i32 0
  store i32 0, i32* %_created1, align 4
  %2 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %finishedEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %2, i32 0, i32 2
  %_created2 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %finishedEvent, i32 0, i32 0
  store i32 0, i32* %_created2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoopThread_Close(%struct.CLoopThread* %p) #0 {
entry:
  %p.addr = alloca %struct.CLoopThread*, align 8
  store %struct.CLoopThread* %p, %struct.CLoopThread** %p.addr, align 8
  %0 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %thread = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %0, i32 0, i32 0
  %call = call i32 @Thread_Close(%struct._CThread* %thread)
  %1 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %startEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %1, i32 0, i32 1
  %call1 = call i32 @Event_Close(%struct._CEvent* %startEvent)
  %2 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %finishedEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %2, i32 0, i32 2
  %call2 = call i32 @Event_Close(%struct._CEvent* %finishedEvent)
  ret void
}

declare i32 @Thread_Close(%struct._CThread*) #1

declare i32 @Event_Close(%struct._CEvent*) #1

; Function Attrs: nounwind uwtable
define i32 @LoopThread_Create(%struct.CLoopThread* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLoopThread*, align 8
  %__result__ = alloca i32, align 4
  %__result__1 = alloca i32, align 4
  store %struct.CLoopThread* %p, %struct.CLoopThread** %p.addr, align 8
  %0 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %stop = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %0, i32 0, i32 3
  store i32 0, i32* %stop, align 4
  %1 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %startEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %1, i32 0, i32 1
  %call = call i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %startEvent)
  store i32 %call, i32* %__result__, align 4
  %2 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %__result__, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %finishedEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %4, i32 0, i32 2
  %call2 = call i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %finishedEvent)
  store i32 %call2, i32* %__result__1, align 4
  %5 = load i32, i32* %__result__1, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %__result__1, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %thread = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %7, i32 0, i32 0
  %8 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %9 = bitcast %struct.CLoopThread* %8 to i8*
  %call6 = call i32 @Thread_Create(%struct._CThread* %thread, i32 (i8*)* @LoopThreadFunc, i8* %9)
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent*) #1

declare i32 @Thread_Create(%struct._CThread*, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @LoopThreadFunc(i8* %pp) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CLoopThread*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLoopThread*
  store %struct.CLoopThread* %1, %struct.CLoopThread** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.7, %entry
  %2 = load %struct.CLoopThread*, %struct.CLoopThread** %p, align 8
  %startEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %2, i32 0, i32 1
  %call = call i32 @Event_Wait(%struct._CEvent* %startEvent)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %3 = load %struct.CLoopThread*, %struct.CLoopThread** %p, align 8
  %stop = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %3, i32 0, i32 3
  %4 = load i32, i32* %stop, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.CLoopThread*, %struct.CLoopThread** %p, align 8
  %func = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %5, i32 0, i32 4
  %6 = load i32 (i8*)*, i32 (i8*)** %func, align 8
  %7 = load %struct.CLoopThread*, %struct.CLoopThread** %p, align 8
  %param = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %7, i32 0, i32 5
  %8 = load i8*, i8** %param, align 8
  %call3 = call i32 %6(i8* %8)
  %9 = load %struct.CLoopThread*, %struct.CLoopThread** %p, align 8
  %res = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %9, i32 0, i32 6
  store i32 %call3, i32* %res, align 4
  %10 = load %struct.CLoopThread*, %struct.CLoopThread** %p, align 8
  %finishedEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %10, i32 0, i32 2
  %call4 = call i32 @Event_Set(%struct._CEvent* %finishedEvent)
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  store i32 12, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  br label %for.cond

return:                                           ; preds = %if.then.6, %if.then.1, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @LoopThread_StopAndWait(%struct.CLoopThread* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLoopThread*, align 8
  store %struct.CLoopThread* %p, %struct.CLoopThread** %p.addr, align 8
  %0 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %stop = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %0, i32 0, i32 3
  store i32 1, i32* %stop, align 4
  %1 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %startEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %1, i32 0, i32 1
  %call = call i32 @Event_Set(%struct._CEvent* %startEvent)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %thread = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %2, i32 0, i32 0
  %call1 = call i32 @Thread_Wait(%struct._CThread* %thread)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @Event_Set(%struct._CEvent*) #1

declare i32 @Thread_Wait(%struct._CThread*) #1

; Function Attrs: nounwind uwtable
define i32 @LoopThread_StartSubThread(%struct.CLoopThread* %p) #0 {
entry:
  %p.addr = alloca %struct.CLoopThread*, align 8
  store %struct.CLoopThread* %p, %struct.CLoopThread** %p.addr, align 8
  %0 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %startEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %0, i32 0, i32 1
  %call = call i32 @Event_Set(%struct._CEvent* %startEvent)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @LoopThread_WaitSubThread(%struct.CLoopThread* %p) #0 {
entry:
  %p.addr = alloca %struct.CLoopThread*, align 8
  store %struct.CLoopThread* %p, %struct.CLoopThread** %p.addr, align 8
  %0 = load %struct.CLoopThread*, %struct.CLoopThread** %p.addr, align 8
  %finishedEvent = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %0, i32 0, i32 2
  %call = call i32 @Event_Wait(%struct._CEvent* %finishedEvent)
  ret i32 %call
}

declare i32 @Event_Wait(%struct._CEvent*) #1

; Function Attrs: nounwind uwtable
define i32 @MtProgress_Set(%struct.CMtProgress* %p, i32 %index, i64 %inSize, i64 %outSize) #0 {
entry:
  %p.addr = alloca %struct.CMtProgress*, align 8
  %index.addr = alloca i32, align 4
  %inSize.addr = alloca i64, align 8
  %outSize.addr = alloca i64, align 8
  %res = alloca i32, align 4
  store %struct.CMtProgress* %p, %struct.CMtProgress** %p.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i64 %inSize, i64* %inSize.addr, align 8
  store i64 %outSize, i64* %outSize.addr, align 8
  %0 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %cs = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %0, i32 0, i32 4
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %1 = load i64, i64* %inSize.addr, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %inSize.addr, align 8
  %3 = load i32, i32* %index.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %inSizes = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %4, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i64], [32 x i64]* %inSizes, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %sub = sub i64 %2, %5
  %6 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %totalInSize = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %6, i32 0, i32 0
  %7 = load i64, i64* %totalInSize, align 8
  %add = add i64 %7, %sub
  store i64 %add, i64* %totalInSize, align 8
  %8 = load i64, i64* %inSize.addr, align 8
  %9 = load i32, i32* %index.addr, align 4
  %idxprom1 = zext i32 %9 to i64
  %10 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %inSizes2 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %10, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [32 x i64], [32 x i64]* %inSizes2, i32 0, i64 %idxprom1
  store i64 %8, i64* %arrayidx3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %outSize.addr, align 8
  %cmp4 = icmp ne i64 %11, -1
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %12 = load i64, i64* %outSize.addr, align 8
  %13 = load i32, i32* %index.addr, align 4
  %idxprom6 = zext i32 %13 to i64
  %14 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %outSizes = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %14, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [32 x i64], [32 x i64]* %outSizes, i32 0, i64 %idxprom6
  %15 = load i64, i64* %arrayidx7, align 8
  %sub8 = sub i64 %12, %15
  %16 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %totalOutSize = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %16, i32 0, i32 1
  %17 = load i64, i64* %totalOutSize, align 8
  %add9 = add i64 %17, %sub8
  store i64 %add9, i64* %totalOutSize, align 8
  %18 = load i64, i64* %outSize.addr, align 8
  %19 = load i32, i32* %index.addr, align 4
  %idxprom10 = zext i32 %19 to i64
  %20 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %outSizes11 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %20, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [32 x i64], [32 x i64]* %outSizes11, i32 0, i64 %idxprom10
  store i64 %18, i64* %arrayidx12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.5, %if.end
  %21 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %res14 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %21, i32 0, i32 3
  %22 = load i32, i32* %res14, align 4
  %cmp15 = icmp eq i32 %22, 0
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %23 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %progress = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %23, i32 0, i32 2
  %24 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress, align 8
  %25 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %totalInSize17 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %25, i32 0, i32 0
  %26 = load i64, i64* %totalInSize17, align 8
  %27 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %totalOutSize18 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %27, i32 0, i32 1
  %28 = load i64, i64* %totalOutSize18, align 8
  %call19 = call i32 @Progress(%struct.ICompressProgress* %24, i64 %26, i64 %28)
  %29 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %res20 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %29, i32 0, i32 3
  store i32 %call19, i32* %res20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.13
  %30 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %res22 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %30, i32 0, i32 3
  %31 = load i32, i32* %res22, align 4
  store i32 %31, i32* %res, align 4
  %32 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %cs23 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %32, i32 0, i32 4
  %_mutex24 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs23, i32 0, i32 0
  %call25 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex24) #3
  %33 = load i32, i32* %res, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define internal i32 @Progress(%struct.ICompressProgress* %p, i64 %inSize, i64 %outSize) #0 {
entry:
  %p.addr = alloca %struct.ICompressProgress*, align 8
  %inSize.addr = alloca i64, align 8
  %outSize.addr = alloca i64, align 8
  store %struct.ICompressProgress* %p, %struct.ICompressProgress** %p.addr, align 8
  store i64 %inSize, i64* %inSize.addr, align 8
  store i64 %outSize, i64* %outSize.addr, align 8
  %0 = load %struct.ICompressProgress*, %struct.ICompressProgress** %p.addr, align 8
  %tobool = icmp ne %struct.ICompressProgress* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.ICompressProgress*, %struct.ICompressProgress** %p.addr, align 8
  %Progress = getelementptr inbounds %struct.ICompressProgress, %struct.ICompressProgress* %1, i32 0, i32 0
  %2 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** %Progress, align 8
  %3 = load %struct.ICompressProgress*, %struct.ICompressProgress** %p.addr, align 8
  %4 = bitcast %struct.ICompressProgress* %3 to i8*
  %5 = load i64, i64* %inSize.addr, align 8
  %6 = load i64, i64* %outSize.addr, align 8
  %call = call i32 %2(i8* %4, i64 %5, i64 %6)
  %cmp = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %cond = select i1 %7, i32 10, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define void @CMtThread_Construct(%struct.CMtThread* %p, %struct._CMtCoder* %mtCoder) #0 {
entry:
  %p.addr = alloca %struct.CMtThread*, align 8
  %mtCoder.addr = alloca %struct._CMtCoder*, align 8
  store %struct.CMtThread* %p, %struct.CMtThread** %p.addr, align 8
  store %struct._CMtCoder* %mtCoder, %struct._CMtCoder** %mtCoder.addr, align 8
  %0 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder.addr, align 8
  %1 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder1 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %1, i32 0, i32 0
  store %struct._CMtCoder* %0, %struct._CMtCoder** %mtCoder1, align 8
  %2 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %2, i32 0, i32 1
  store i8* null, i8** %outBuf, align 8
  %3 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %3, i32 0, i32 3
  store i8* null, i8** %inBuf, align 8
  %4 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canRead = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %4, i32 0, i32 9
  %_created = getelementptr inbounds %struct._CEvent, %struct._CEvent* %canRead, i32 0, i32 0
  store i32 0, i32* %_created, align 4
  %5 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canWrite = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %5, i32 0, i32 10
  %_created2 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %canWrite, i32 0, i32 0
  store i32 0, i32* %_created2, align 4
  %6 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %thread = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %6, i32 0, i32 6
  call void @LoopThread_Construct(%struct.CLoopThread* %thread)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MtCoder_Construct(%struct._CMtCoder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMtCoder*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.CMtThread*, align 8
  store %struct._CMtCoder* %p, %struct._CMtCoder** %p.addr, align 8
  %0 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %alloc = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %0, i32 0, i32 6
  store %struct.ISzAlloc* null, %struct.ISzAlloc** %alloc, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %3, i32 0, i32 11
  %arrayidx = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads, i32 0, i64 %idxprom
  store %struct.CMtThread* %arrayidx, %struct.CMtThread** %t, align 8
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.CMtThread*, %struct.CMtThread** %t, align 8
  %index = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %5, i32 0, i32 5
  store i32 %4, i32* %index, align 4
  %6 = load %struct.CMtThread*, %struct.CMtThread** %t, align 8
  %7 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  call void @CMtThread_Construct(%struct.CMtThread* %6, %struct._CMtCoder* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %cs = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %9, i32 0, i32 8
  %call = call i32 @CriticalSection_Init(%struct.CCriticalSection* %cs)
  %10 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %mtProgress = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %10, i32 0, i32 10
  %cs1 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %mtProgress, i32 0, i32 4
  %call2 = call i32 @CriticalSection_Init(%struct.CCriticalSection* %cs1)
  ret void
}

declare i32 @CriticalSection_Init(%struct.CCriticalSection*) #1

; Function Attrs: nounwind uwtable
define void @MtCoder_Destruct(%struct._CMtCoder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMtCoder*, align 8
  %i = alloca i32, align 4
  store %struct._CMtCoder* %p, %struct._CMtCoder** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %2, i32 0, i32 11
  %arrayidx = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads, i32 0, i64 %idxprom
  call void @CMtThread_Destruct(%struct.CMtThread* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %cs = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %4, i32 0, i32 8
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %_mutex) #3
  %5 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %mtProgress = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %5, i32 0, i32 10
  %cs1 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %mtProgress, i32 0, i32 4
  %_mutex2 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs1, i32 0, i32 0
  %call3 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %_mutex2) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CMtThread_Destruct(%struct.CMtThread* %p) #0 {
entry:
  %p.addr = alloca %struct.CMtThread*, align 8
  store %struct.CMtThread* %p, %struct.CMtThread** %p.addr, align 8
  %0 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  call void @CMtThread_CloseEvents(%struct.CMtThread* %0)
  %1 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %thread = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %1, i32 0, i32 6
  %thread1 = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %thread, i32 0, i32 0
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %thread1, i32 0, i32 1
  %2 = load i32, i32* %_created, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %thread2 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %3, i32 0, i32 6
  %call = call i32 @LoopThread_StopAndWait(%struct.CLoopThread* %thread2)
  %4 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %thread3 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %4, i32 0, i32 6
  call void @LoopThread_Close(%struct.CLoopThread* %thread3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %5, i32 0, i32 0
  %6 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder, align 8
  %alloc = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %6, i32 0, i32 6
  %7 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %tobool = icmp ne %struct.ISzAlloc* %7, null
  br i1 %tobool, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder5 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %8, i32 0, i32 0
  %9 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder5, align 8
  %alloc6 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %9, i32 0, i32 6
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc6, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %10, i32 0, i32 1
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %12 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder7 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %12, i32 0, i32 0
  %13 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder7, align 8
  %alloc8 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %13, i32 0, i32 6
  %14 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc8, align 8
  %15 = bitcast %struct.ISzAlloc* %14 to i8*
  %16 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %16, i32 0, i32 1
  %17 = load i8*, i8** %outBuf, align 8
  call void %11(i8* %15, i8* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %18 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf10 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %18, i32 0, i32 1
  store i8* null, i8** %outBuf10, align 8
  %19 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder11 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %19, i32 0, i32 0
  %20 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder11, align 8
  %alloc12 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %20, i32 0, i32 6
  %21 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc12, align 8
  %tobool13 = icmp ne %struct.ISzAlloc* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.9
  %22 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder15 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %22, i32 0, i32 0
  %23 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder15, align 8
  %alloc16 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %23, i32 0, i32 6
  %24 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc16, align 8
  %Free17 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %24, i32 0, i32 1
  %25 = load void (i8*, i8*)*, void (i8*, i8*)** %Free17, align 8
  %26 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder18 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %26, i32 0, i32 0
  %27 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder18, align 8
  %alloc19 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %27, i32 0, i32 6
  %28 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc19, align 8
  %29 = bitcast %struct.ISzAlloc* %28 to i8*
  %30 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %30, i32 0, i32 3
  %31 = load i8*, i8** %inBuf, align 8
  call void %25(i8* %29, i8* %31)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.end.9
  %32 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf21 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %32, i32 0, i32 3
  store i8* null, i8** %inBuf21, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define i32 @MtCoder_Code(%struct._CMtCoder* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMtCoder*, align 8
  %i = alloca i32, align 4
  %numThreads = alloca i32, align 4
  %res = alloca i32, align 4
  %__result__ = alloca i32, align 4
  %t = alloca %struct.CMtThread*, align 8
  %lt = alloca %struct.CLoopThread*, align 8
  %j = alloca i32, align 4
  %t26 = alloca %struct.CMtThread*, align 8
  store %struct._CMtCoder* %p, %struct._CMtCoder** %p.addr, align 8
  %0 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %numThreads1 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %0, i32 0, i32 2
  %1 = load i32, i32* %numThreads1, align 4
  store i32 %1, i32* %numThreads, align 4
  store i32 0, i32* %res, align 4
  %2 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %res2 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %2, i32 0, i32 9
  store i32 0, i32* %res2, align 4
  %3 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %mtProgress = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %3, i32 0, i32 10
  %4 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %progress = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %4, i32 0, i32 5
  %5 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress, align 8
  call void @MtProgress_Init(%struct.CMtProgress* %mtProgress, %struct.ICompressProgress* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %numThreads, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %9, i32 0, i32 11
  %arrayidx = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads, i32 0, i64 %idxprom
  %call = call i32 @CMtThread_Prepare(%struct.CMtThread* %arrayidx)
  store i32 %call, i32* %__result__, align 4
  %10 = load i32, i32* %__result__, align 4
  %cmp3 = icmp ne i32 %10, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %__result__, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.18, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %numThreads, align 4
  %cmp5 = icmp ult i32 %13, %14
  br i1 %cmp5, label %for.body.6, label %for.end.20

for.body.6:                                       ; preds = %for.cond.4
  %15 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %15 to i64
  %16 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads8 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %16, i32 0, i32 11
  %arrayidx9 = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads8, i32 0, i64 %idxprom7
  store %struct.CMtThread* %arrayidx9, %struct.CMtThread** %t, align 8
  %17 = load %struct.CMtThread*, %struct.CMtThread** %t, align 8
  %thread = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %17, i32 0, i32 6
  store %struct.CLoopThread* %thread, %struct.CLoopThread** %lt, align 8
  %18 = load %struct.CLoopThread*, %struct.CLoopThread** %lt, align 8
  %thread10 = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %18, i32 0, i32 0
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %thread10, i32 0, i32 1
  %19 = load i32, i32* %_created, align 4
  %cmp11 = icmp ne i32 %19, 0
  br i1 %cmp11, label %if.end.17, label %if.then.12

if.then.12:                                       ; preds = %for.body.6
  %20 = load %struct.CLoopThread*, %struct.CLoopThread** %lt, align 8
  %func = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %20, i32 0, i32 4
  store i32 (i8*)* @ThreadFunc, i32 (i8*)** %func, align 8
  %21 = load %struct.CMtThread*, %struct.CMtThread** %t, align 8
  %22 = bitcast %struct.CMtThread* %21 to i8*
  %23 = load %struct.CLoopThread*, %struct.CLoopThread** %lt, align 8
  %param = getelementptr inbounds %struct.CLoopThread, %struct.CLoopThread* %23, i32 0, i32 5
  store i8* %22, i8** %param, align 8
  %24 = load %struct.CLoopThread*, %struct.CLoopThread** %lt, align 8
  %call13 = call i32 @LoopThread_Create(%struct.CLoopThread* %24)
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 12, i32* %res, align 4
  br label %for.end.20

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %for.body.6
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.17
  %25 = load i32, i32* %i, align 4
  %inc19 = add i32 %25, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.4

for.end.20:                                       ; preds = %if.then.15, %for.cond.4
  %26 = load i32, i32* %res, align 4
  %cmp21 = icmp eq i32 %26, 0
  br i1 %cmp21, label %if.then.22, label %if.end.57

if.then.22:                                       ; preds = %for.end.20
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.37, %if.then.22
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %numThreads, align 4
  %cmp24 = icmp ult i32 %27, %28
  br i1 %cmp24, label %for.body.25, label %for.end.39

for.body.25:                                      ; preds = %for.cond.23
  %29 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %29 to i64
  %30 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads28 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %30, i32 0, i32 11
  %arrayidx29 = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads28, i32 0, i64 %idxprom27
  store %struct.CMtThread* %arrayidx29, %struct.CMtThread** %t26, align 8
  %31 = load %struct.CMtThread*, %struct.CMtThread** %t26, align 8
  %thread30 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %31, i32 0, i32 6
  %call31 = call i32 @LoopThread_StartSubThread(%struct.CLoopThread* %thread30)
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %for.body.25
  store i32 12, i32* %res, align 4
  %32 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads34 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %32, i32 0, i32 11
  %arrayidx35 = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads34, i32 0, i64 0
  %stopReading = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %arrayidx35, i32 0, i32 7
  store i32 1, i32* %stopReading, align 4
  br label %for.end.39

if.end.36:                                        ; preds = %for.body.25
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %33 = load i32, i32* %i, align 4
  %inc38 = add i32 %33, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.23

for.end.39:                                       ; preds = %if.then.33, %for.cond.23
  %34 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads40 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %34, i32 0, i32 11
  %arrayidx41 = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads40, i32 0, i64 0
  %canWrite = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %arrayidx41, i32 0, i32 10
  %call42 = call i32 @Event_Set(%struct._CEvent* %canWrite)
  %35 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads43 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %35, i32 0, i32 11
  %arrayidx44 = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads43, i32 0, i64 0
  %canRead = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %arrayidx44, i32 0, i32 9
  %call45 = call i32 @Event_Set(%struct._CEvent* %canRead)
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %for.end.39
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %i, align 4
  %cmp47 = icmp ult i32 %36, %37
  br i1 %cmp47, label %for.body.48, label %for.end.56

for.body.48:                                      ; preds = %for.cond.46
  %38 = load i32, i32* %j, align 4
  %idxprom49 = zext i32 %38 to i64
  %39 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads50 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %39, i32 0, i32 11
  %arrayidx51 = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads50, i32 0, i64 %idxprom49
  %thread52 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %arrayidx51, i32 0, i32 6
  %call53 = call i32 @LoopThread_WaitSubThread(%struct.CLoopThread* %thread52)
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.48
  %40 = load i32, i32* %j, align 4
  %inc55 = add i32 %40, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  br label %if.end.57

if.end.57:                                        ; preds = %for.end.56, %for.end.20
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.64, %if.end.57
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %numThreads, align 4
  %cmp59 = icmp ult i32 %41, %42
  br i1 %cmp59, label %for.body.60, label %for.end.66

for.body.60:                                      ; preds = %for.cond.58
  %43 = load i32, i32* %i, align 4
  %idxprom61 = zext i32 %43 to i64
  %44 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %threads62 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %44, i32 0, i32 11
  %arrayidx63 = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads62, i32 0, i64 %idxprom61
  call void @CMtThread_CloseEvents(%struct.CMtThread* %arrayidx63)
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.60
  %45 = load i32, i32* %i, align 4
  %inc65 = add i32 %45, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.58

for.end.66:                                       ; preds = %for.cond.58
  %46 = load i32, i32* %res, align 4
  %cmp67 = icmp eq i32 %46, 0
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.66
  %47 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %res68 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %47, i32 0, i32 9
  %48 = load i32, i32* %res68, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.66
  %49 = load i32, i32* %res, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %49, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @MtProgress_Init(%struct.CMtProgress* %p, %struct.ICompressProgress* %progress) #0 {
entry:
  %p.addr = alloca %struct.CMtProgress*, align 8
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %i = alloca i32, align 4
  store %struct.CMtProgress* %p, %struct.CMtProgress** %p.addr, align 8
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %outSizes = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [32 x i64], [32 x i64]* %outSizes, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %inSizes = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %4, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [32 x i64], [32 x i64]* %inSizes, i32 0, i64 %idxprom1
  store i64 0, i64* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %totalOutSize = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %6, i32 0, i32 1
  store i64 0, i64* %totalOutSize, align 8
  %7 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %totalInSize = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %7, i32 0, i32 0
  store i64 0, i64* %totalInSize, align 8
  %8 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %9 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %progress3 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %9, i32 0, i32 2
  store %struct.ICompressProgress* %8, %struct.ICompressProgress** %progress3, align 8
  %10 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %res = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %10, i32 0, i32 3
  store i32 0, i32* %res, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @CMtThread_Prepare(%struct.CMtThread* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CMtThread*, align 8
  store %struct.CMtThread* %p, %struct.CMtThread** %p.addr, align 8
  %0 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %0, i32 0, i32 3
  %1 = load i8*, i8** %inBuf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBufSize = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %2, i32 0, i32 4
  %3 = load i64, i64* %inBufSize, align 8
  %4 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %4, i32 0, i32 0
  %5 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder, align 8
  %blockSize = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %5, i32 0, i32 0
  %6 = load i64, i64* %blockSize, align 8
  %cmp1 = icmp ne i64 %3, %6
  br i1 %cmp1, label %if.then, label %if.end.18

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder2 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %7, i32 0, i32 0
  %8 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder2, align 8
  %alloc = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %8, i32 0, i32 6
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %9, i32 0, i32 1
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %11 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder3 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %11, i32 0, i32 0
  %12 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder3, align 8
  %alloc4 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %12, i32 0, i32 6
  %13 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc4, align 8
  %14 = bitcast %struct.ISzAlloc* %13 to i8*
  %15 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf5 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %15, i32 0, i32 3
  %16 = load i8*, i8** %inBuf5, align 8
  call void %10(i8* %14, i8* %16)
  %17 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder6 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %17, i32 0, i32 0
  %18 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder6, align 8
  %blockSize7 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %18, i32 0, i32 0
  %19 = load i64, i64* %blockSize7, align 8
  %20 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBufSize8 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %20, i32 0, i32 4
  store i64 %19, i64* %inBufSize8, align 8
  %21 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder9 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %21, i32 0, i32 0
  %22 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder9, align 8
  %alloc10 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %22, i32 0, i32 6
  %23 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc10, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %23, i32 0, i32 0
  %24 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %25 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder11 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %25, i32 0, i32 0
  %26 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder11, align 8
  %alloc12 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %26, i32 0, i32 6
  %27 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc12, align 8
  %28 = bitcast %struct.ISzAlloc* %27 to i8*
  %29 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBufSize13 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %29, i32 0, i32 4
  %30 = load i64, i64* %inBufSize13, align 8
  %call = call i8* %24(i8* %28, i64 %30)
  %31 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf14 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %31, i32 0, i32 3
  store i8* %call, i8** %inBuf14, align 8
  %32 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf15 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %32, i32 0, i32 3
  %33 = load i8*, i8** %inBuf15, align 8
  %cmp16 = icmp eq i8* %33, null
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %lor.lhs.false
  %34 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %34, i32 0, i32 1
  %35 = load i8*, i8** %outBuf, align 8
  %cmp19 = icmp eq i8* %35, null
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %36 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBufSize = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %36, i32 0, i32 2
  %37 = load i64, i64* %outBufSize, align 8
  %38 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder21 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %38, i32 0, i32 0
  %39 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder21, align 8
  %destBlockSize = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %39, i32 0, i32 1
  %40 = load i64, i64* %destBlockSize, align 8
  %cmp22 = icmp ne i64 %37, %40
  br i1 %cmp22, label %if.then.23, label %if.end.45

if.then.23:                                       ; preds = %lor.lhs.false.20, %if.end.18
  %41 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder24 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %41, i32 0, i32 0
  %42 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder24, align 8
  %alloc25 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %42, i32 0, i32 6
  %43 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc25, align 8
  %Free26 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %43, i32 0, i32 1
  %44 = load void (i8*, i8*)*, void (i8*, i8*)** %Free26, align 8
  %45 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder27 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %45, i32 0, i32 0
  %46 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder27, align 8
  %alloc28 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %46, i32 0, i32 6
  %47 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc28, align 8
  %48 = bitcast %struct.ISzAlloc* %47 to i8*
  %49 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf29 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %49, i32 0, i32 1
  %50 = load i8*, i8** %outBuf29, align 8
  call void %44(i8* %48, i8* %50)
  %51 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder30 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %51, i32 0, i32 0
  %52 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder30, align 8
  %destBlockSize31 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %52, i32 0, i32 1
  %53 = load i64, i64* %destBlockSize31, align 8
  %54 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBufSize32 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %54, i32 0, i32 2
  store i64 %53, i64* %outBufSize32, align 8
  %55 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder33 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %55, i32 0, i32 0
  %56 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder33, align 8
  %alloc34 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %56, i32 0, i32 6
  %57 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc34, align 8
  %Alloc35 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %57, i32 0, i32 0
  %58 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc35, align 8
  %59 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder36 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %59, i32 0, i32 0
  %60 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder36, align 8
  %alloc37 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %60, i32 0, i32 6
  %61 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc37, align 8
  %62 = bitcast %struct.ISzAlloc* %61 to i8*
  %63 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBufSize38 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %63, i32 0, i32 2
  %64 = load i64, i64* %outBufSize38, align 8
  %call39 = call i8* %58(i8* %62, i64 %64)
  %65 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf40 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %65, i32 0, i32 1
  store i8* %call39, i8** %outBuf40, align 8
  %66 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf41 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %66, i32 0, i32 1
  %67 = load i8*, i8** %outBuf41, align 8
  %cmp42 = icmp eq i8* %67, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.23
  store i32 2, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.23
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false.20
  %68 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %stopReading = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %68, i32 0, i32 7
  store i32 0, i32* %stopReading, align 4
  %69 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %stopWriting = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %69, i32 0, i32 8
  store i32 0, i32* %stopWriting, align 4
  %70 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canRead = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %70, i32 0, i32 9
  %call46 = call i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %canRead)
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  store i32 12, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.45
  %71 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canWrite = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %71, i32 0, i32 10
  %call50 = call i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %canWrite)
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  store i32 12, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.49
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52, %if.then.48, %if.then.43, %if.then.17
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @ThreadFunc(i8* %pp) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CMtThread*, align 8
  %stop = alloca i32, align 4
  %next = alloca %struct.CMtThread*, align 8
  %res = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CMtThread*
  store %struct.CMtThread* %1, %struct.CMtThread** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.9, %entry
  %2 = load %struct.CMtThread*, %struct.CMtThread** %p, align 8
  %index = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %2, i32 0, i32 5
  %3 = load i32, i32* %index, align 4
  %4 = load %struct.CMtThread*, %struct.CMtThread** %p, align 8
  %mtCoder = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %4, i32 0, i32 0
  %5 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder, align 8
  %numThreads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %5, i32 0, i32 2
  %6 = load i32, i32* %numThreads, align 4
  %sub = sub i32 %6, 1
  %cmp = icmp eq i32 %3, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %7 = load %struct.CMtThread*, %struct.CMtThread** %p, align 8
  %index1 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %7, i32 0, i32 5
  %8 = load i32, i32* %index1, align 4
  %add = add i32 %8, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  %idxprom = zext i32 %cond to i64
  %9 = load %struct.CMtThread*, %struct.CMtThread** %p, align 8
  %mtCoder2 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %9, i32 0, i32 0
  %10 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder2, align 8
  %threads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %10, i32 0, i32 11
  %arrayidx = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads, i32 0, i64 %idxprom
  store %struct.CMtThread* %arrayidx, %struct.CMtThread** %next, align 8
  %11 = load %struct.CMtThread*, %struct.CMtThread** %p, align 8
  %call = call i32 @MtThread_Process(%struct.CMtThread* %11, i32* %stop)
  store i32 %call, i32* %res, align 4
  %12 = load i32, i32* %res, align 4
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load %struct.CMtThread*, %struct.CMtThread** %p, align 8
  %mtCoder4 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %13, i32 0, i32 0
  %14 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder4, align 8
  %15 = load i32, i32* %res, align 4
  call void @MtCoder_SetError(%struct._CMtCoder* %14, i32 %15)
  %16 = load %struct.CMtThread*, %struct.CMtThread** %p, align 8
  %mtCoder5 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %16, i32 0, i32 0
  %17 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder5, align 8
  %mtProgress = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %17, i32 0, i32 10
  %18 = load i32, i32* %res, align 4
  call void @MtProgress_SetError(%struct.CMtProgress* %mtProgress, i32 %18)
  %19 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %stopReading = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %19, i32 0, i32 7
  store i32 1, i32* %stopReading, align 4
  %20 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %stopWriting = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %20, i32 0, i32 8
  store i32 1, i32* %stopWriting, align 4
  %21 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %canRead = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %21, i32 0, i32 9
  %call6 = call i32 @Event_Set(%struct._CEvent* %canRead)
  %22 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %canWrite = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %22, i32 0, i32 10
  %call7 = call i32 @Event_Set(%struct._CEvent* %canWrite)
  %23 = load i32, i32* %res, align 4
  store i32 %23, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %24 = load i32, i32* %stop, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %for.cond

return:                                           ; preds = %if.then.8, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal void @CMtThread_CloseEvents(%struct.CMtThread* %p) #0 {
entry:
  %p.addr = alloca %struct.CMtThread*, align 8
  store %struct.CMtThread* %p, %struct.CMtThread** %p.addr, align 8
  %0 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canRead = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %0, i32 0, i32 9
  %call = call i32 @Event_Close(%struct._CEvent* %canRead)
  %1 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canWrite = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %1, i32 0, i32 10
  %call1 = call i32 @Event_Close(%struct._CEvent* %canWrite)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @MtThread_Process(%struct.CMtThread* %p, i32* %stop) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CMtThread*, align 8
  %stop.addr = alloca i32*, align 8
  %next = alloca %struct.CMtThread*, align 8
  %size = alloca i64, align 8
  %destSize = alloca i64, align 8
  %__result__ = alloca i32, align 4
  %__result__27 = alloca i32, align 4
  store %struct.CMtThread* %p, %struct.CMtThread** %p.addr, align 8
  store i32* %stop, i32** %stop.addr, align 8
  %0 = load i32*, i32** %stop.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canRead = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %1, i32 0, i32 9
  %call = call i32 @Event_Wait(%struct._CEvent* %canRead)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %index = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %2, i32 0, i32 5
  %3 = load i32, i32* %index, align 4
  %4 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %4, i32 0, i32 0
  %5 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder, align 8
  %numThreads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %5, i32 0, i32 2
  %6 = load i32, i32* %numThreads, align 4
  %sub = sub i32 %6, 1
  %cmp1 = icmp eq i32 %3, %sub
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %index2 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %7, i32 0, i32 5
  %8 = load i32, i32* %index2, align 4
  %add = add i32 %8, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  %idxprom = zext i32 %cond to i64
  %9 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder3 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %9, i32 0, i32 0
  %10 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder3, align 8
  %threads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %10, i32 0, i32 11
  %arrayidx = getelementptr inbounds [32 x %struct.CMtThread], [32 x %struct.CMtThread]* %threads, i32 0, i64 %idxprom
  store %struct.CMtThread* %arrayidx, %struct.CMtThread** %next, align 8
  %11 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %stopReading = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %11, i32 0, i32 7
  %12 = load i32, i32* %stopReading, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %cond.end
  %13 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %stopReading5 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %13, i32 0, i32 7
  store i32 1, i32* %stopReading5, align 4
  %14 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %canRead6 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %14, i32 0, i32 9
  %call7 = call i32 @Event_Set(%struct._CEvent* %canRead6)
  %cmp8 = icmp eq i32 %call7, 0
  %cond9 = select i1 %cmp8, i32 0, i32 12
  store i32 %cond9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %cond.end
  %15 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder11 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %15, i32 0, i32 0
  %16 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder11, align 8
  %blockSize = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %16, i32 0, i32 0
  %17 = load i64, i64* %blockSize, align 8
  store i64 %17, i64* %size, align 8
  %18 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBufSize = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %18, i32 0, i32 2
  %19 = load i64, i64* %outBufSize, align 8
  store i64 %19, i64* %destSize, align 8
  %20 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder12 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %20, i32 0, i32 0
  %21 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder12, align 8
  %inStream = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %21, i32 0, i32 3
  %22 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream, align 8
  %23 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %23, i32 0, i32 3
  %24 = load i8*, i8** %inBuf, align 8
  %call13 = call i32 @FullRead(%struct.ISeqInStream* %22, i8* %24, i64* %size)
  store i32 %call13, i32* %__result__, align 4
  %25 = load i32, i32* %__result__, align 4
  %cmp14 = icmp ne i32 %25, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  %26 = load i32, i32* %__result__, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  %27 = load i64, i64* %size, align 8
  %28 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder17 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %28, i32 0, i32 0
  %29 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder17, align 8
  %blockSize18 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %29, i32 0, i32 0
  %30 = load i64, i64* %blockSize18, align 8
  %cmp19 = icmp ne i64 %27, %30
  %conv = zext i1 %cmp19 to i32
  %31 = load i32*, i32** %stop.addr, align 8
  store i32 %conv, i32* %31, align 4
  %32 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %stopReading20 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %32, i32 0, i32 7
  store i32 %conv, i32* %stopReading20, align 4
  %33 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %canRead21 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %33, i32 0, i32 9
  %call22 = call i32 @Event_Set(%struct._CEvent* %canRead21)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.16
  store i32 12, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.16
  %34 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder28 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %34, i32 0, i32 0
  %35 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder28, align 8
  %mtCallback = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %35, i32 0, i32 7
  %36 = load %struct.IMtCoderCallback*, %struct.IMtCoderCallback** %mtCallback, align 8
  %Code = getelementptr inbounds %struct.IMtCoderCallback, %struct.IMtCoderCallback* %36, i32 0, i32 0
  %37 = load i32 (i8*, i32, i8*, i64*, i8*, i64, i32)*, i32 (i8*, i32, i8*, i64*, i8*, i64, i32)** %Code, align 8
  %38 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder29 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %38, i32 0, i32 0
  %39 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder29, align 8
  %mtCallback30 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %39, i32 0, i32 7
  %40 = load %struct.IMtCoderCallback*, %struct.IMtCoderCallback** %mtCallback30, align 8
  %41 = bitcast %struct.IMtCoderCallback* %40 to i8*
  %42 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %index31 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %42, i32 0, i32 5
  %43 = load i32, i32* %index31, align 4
  %44 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %44, i32 0, i32 1
  %45 = load i8*, i8** %outBuf, align 8
  %46 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %inBuf32 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %46, i32 0, i32 3
  %47 = load i8*, i8** %inBuf32, align 8
  %48 = load i64, i64* %size, align 8
  %49 = load i32*, i32** %stop.addr, align 8
  %50 = load i32, i32* %49, align 4
  %call33 = call i32 %37(i8* %41, i32 %43, i8* %45, i64* %destSize, i8* %47, i64 %48, i32 %50)
  store i32 %call33, i32* %__result__27, align 4
  %51 = load i32, i32* %__result__27, align 4
  %cmp34 = icmp ne i32 %51, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.26
  %52 = load i32, i32* %__result__27, align 4
  store i32 %52, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.26
  %53 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder38 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %53, i32 0, i32 0
  %54 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder38, align 8
  %mtProgress = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %54, i32 0, i32 10
  %55 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %index39 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %55, i32 0, i32 5
  %56 = load i32, i32* %index39, align 4
  call void @MtProgress_Reinit(%struct.CMtProgress* %mtProgress, i32 %56)
  %57 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %canWrite = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %57, i32 0, i32 10
  %call40 = call i32 @Event_Wait(%struct._CEvent* %canWrite)
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.37
  store i32 12, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.37
  %58 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %stopWriting = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %58, i32 0, i32 8
  %59 = load i32, i32* %stopWriting, align 4
  %tobool45 = icmp ne i32 %59, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  store i32 11, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.44
  %60 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder48 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %60, i32 0, i32 0
  %61 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder48, align 8
  %outStream = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %61, i32 0, i32 4
  %62 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream, align 8
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %62, i32 0, i32 0
  %63 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %Write, align 8
  %64 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %mtCoder49 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %64, i32 0, i32 0
  %65 = load %struct._CMtCoder*, %struct._CMtCoder** %mtCoder49, align 8
  %outStream50 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %65, i32 0, i32 4
  %66 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream50, align 8
  %67 = bitcast %struct.ISeqOutStream* %66 to i8*
  %68 = load %struct.CMtThread*, %struct.CMtThread** %p.addr, align 8
  %outBuf51 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %68, i32 0, i32 1
  %69 = load i8*, i8** %outBuf51, align 8
  %70 = load i64, i64* %destSize, align 8
  %call52 = call i64 %63(i8* %67, i8* %69, i64 %70)
  %71 = load i64, i64* %destSize, align 8
  %cmp53 = icmp ne i64 %call52, %71
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.47
  store i32 9, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.47
  %72 = load %struct.CMtThread*, %struct.CMtThread** %next, align 8
  %canWrite57 = getelementptr inbounds %struct.CMtThread, %struct.CMtThread* %72, i32 0, i32 10
  %call58 = call i32 @Event_Set(%struct._CEvent* %canWrite57)
  %cmp59 = icmp eq i32 %call58, 0
  %cond61 = select i1 %cmp59, i32 0, i32 12
  store i32 %cond61, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.55, %if.then.46, %if.then.43, %if.then.36, %if.then.25, %if.then.15, %if.then.4, %if.then
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal void @MtCoder_SetError(%struct._CMtCoder* %p, i32 %res) #0 {
entry:
  %p.addr = alloca %struct._CMtCoder*, align 8
  %res.addr = alloca i32, align 4
  store %struct._CMtCoder* %p, %struct._CMtCoder** %p.addr, align 8
  store i32 %res, i32* %res.addr, align 4
  %0 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %cs = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %0, i32 0, i32 8
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %1 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %res1 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %1, i32 0, i32 9
  %2 = load i32, i32* %res1, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %res.addr, align 4
  %4 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %res2 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %4, i32 0, i32 9
  store i32 %3, i32* %res2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._CMtCoder*, %struct._CMtCoder** %p.addr, align 8
  %cs3 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %5, i32 0, i32 8
  %_mutex4 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs3, i32 0, i32 0
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex4) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MtProgress_SetError(%struct.CMtProgress* %p, i32 %res) #0 {
entry:
  %p.addr = alloca %struct.CMtProgress*, align 8
  %res.addr = alloca i32, align 4
  store %struct.CMtProgress* %p, %struct.CMtProgress** %p.addr, align 8
  store i32 %res, i32* %res.addr, align 4
  %0 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %cs = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %0, i32 0, i32 4
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %1 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %res1 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %1, i32 0, i32 3
  %2 = load i32, i32* %res1, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %res.addr, align 4
  %4 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %res2 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %4, i32 0, i32 3
  store i32 %3, i32* %res2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %cs3 = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %5, i32 0, i32 4
  %_mutex4 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs3, i32 0, i32 0
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex4) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @FullRead(%struct.ISeqInStream* %stream, i8* %data, i64* %processedSize) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ISeqInStream*, align 8
  %data.addr = alloca i8*, align 8
  %processedSize.addr = alloca i64*, align 8
  %size = alloca i64, align 8
  %curSize = alloca i64, align 8
  %res = alloca i32, align 4
  %__result__ = alloca i32, align 4
  store %struct.ISeqInStream* %stream, %struct.ISeqInStream** %stream.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64* %processedSize, i64** %processedSize.addr, align 8
  %0 = load i64*, i64** %processedSize.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64*, i64** %processedSize.addr, align 8
  store i64 0, i64* %2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %3 = load i64, i64* %size, align 8
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %size, align 8
  store i64 %4, i64* %curSize, align 8
  %5 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream.addr, align 8
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %5, i32 0, i32 0
  %6 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %7 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream.addr, align 8
  %8 = bitcast %struct.ISeqInStream* %7 to i8*
  %9 = load i8*, i8** %data.addr, align 8
  %call = call i32 %6(i8* %8, i8* %9, i64* %curSize)
  store i32 %call, i32* %res, align 4
  %10 = load i64, i64* %curSize, align 8
  %11 = load i64*, i64** %processedSize.addr, align 8
  %12 = load i64, i64* %11, align 8
  %add = add i64 %12, %10
  store i64 %add, i64* %11, align 8
  %13 = load i64, i64* %curSize, align 8
  %14 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %add.ptr, i8** %data.addr, align 8
  %15 = load i64, i64* %curSize, align 8
  %16 = load i64, i64* %size, align 8
  %sub = sub i64 %16, %15
  store i64 %sub, i64* %size, align 8
  %17 = load i32, i32* %res, align 4
  store i32 %17, i32* %__result__, align 4
  %18 = load i32, i32* %__result__, align 4
  %cmp1 = icmp ne i32 %18, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = load i32, i32* %__result__, align 4
  store i32 %19, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %20 = load i64, i64* %curSize, align 8
  %cmp2 = icmp eq i64 %20, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @MtProgress_Reinit(%struct.CMtProgress* %p, i32 %index) #0 {
entry:
  %p.addr = alloca %struct.CMtProgress*, align 8
  %index.addr = alloca i32, align 4
  store %struct.CMtProgress* %p, %struct.CMtProgress** %p.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %inSizes = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %1, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i64], [32 x i64]* %inSizes, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  %2 = load i32, i32* %index.addr, align 4
  %idxprom1 = zext i32 %2 to i64
  %3 = load %struct.CMtProgress*, %struct.CMtProgress** %p.addr, align 8
  %outSizes = getelementptr inbounds %struct.CMtProgress, %struct.CMtProgress* %3, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [32 x i64], [32 x i64]* %outSizes, i32 0, i64 %idxprom1
  store i64 0, i64* %arrayidx2, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
