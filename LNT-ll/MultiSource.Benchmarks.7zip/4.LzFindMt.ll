; ModuleID = './MultiSource.Benchmarks.7zip/4.LzFindMt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CMtSync = type { i32, i32, i32, i32, %struct._CThread, %struct._CEvent, %struct._CEvent, %struct._CEvent, %struct._CSemaphore, %struct._CSemaphore, i32, i32, %struct.CCriticalSection, i32 }
%struct._CThread = type { i64, i32 }
%struct._CEvent = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct._CSemaphore = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%struct.CCriticalSection = type { %union.pthread_mutex_t }
%struct._CMatchFinderMt = type { i8*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32*, i32* (i8*, i32, i32*)*, %struct._CMtSync, [128 x i8], i32*, i32, i32, i32, i32*, i32, i32, i32, i8*, i32, i32, i32, %struct._CMtSync, void (i8*, i32, i32*, i32, i32*, i32, i32*)*, %struct._CMatchFinder* }
%struct._CMatchFinder = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i8*, %struct.ISeqInStream*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [256 x i32] }
%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct._IMatchFinder = type { void (i8*)*, i8 (i8*, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*, i32*)*, void (i8*, i32)* }

; Function Attrs: nounwind uwtable
define void @MtSync_Construct(%struct._CMtSync* %p) #0 {
entry:
  %p.addr = alloca %struct._CMtSync*, align 8
  store %struct._CMtSync* %p, %struct._CMtSync** %p.addr, align 8
  %0 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasCreated = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %0, i32 0, i32 0
  store i32 0, i32* %wasCreated, align 4
  %1 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasInitialized = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %1, i32 0, i32 10
  store i32 0, i32* %csWasInitialized, align 4
  %2 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasEntered = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %2, i32 0, i32 11
  store i32 0, i32* %csWasEntered, align 4
  %3 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %thread = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %3, i32 0, i32 4
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %thread, i32 0, i32 1
  store i32 0, i32* %_created, align 4
  %4 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %canStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %4, i32 0, i32 5
  %_created1 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %canStart, i32 0, i32 0
  store i32 0, i32* %_created1, align 4
  %5 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStarted = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %5, i32 0, i32 6
  %_created2 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %wasStarted, i32 0, i32 0
  store i32 0, i32* %_created2, align 4
  %6 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStopped = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %6, i32 0, i32 7
  %_created3 = getelementptr inbounds %struct._CEvent, %struct._CEvent* %wasStopped, i32 0, i32 0
  store i32 0, i32* %_created3, align 4
  %7 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %freeSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %7, i32 0, i32 8
  %_created4 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %freeSemaphore, i32 0, i32 0
  store i32 0, i32* %_created4, align 4
  %8 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %filledSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %8, i32 0, i32 9
  %_created5 = getelementptr inbounds %struct._CSemaphore, %struct._CSemaphore* %filledSemaphore, i32 0, i32 0
  store i32 0, i32* %_created5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MtSync_GetNextBlock(%struct._CMtSync* %p) #0 {
entry:
  %p.addr = alloca %struct._CMtSync*, align 8
  store %struct._CMtSync* %p, %struct._CMtSync** %p.addr, align 8
  %0 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %needStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %0, i32 0, i32 1
  %1 = load i32, i32* %needStart, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %numProcessedBlocks = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %2, i32 0, i32 13
  store i32 1, i32* %numProcessedBlocks, align 4
  %3 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %needStart1 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %3, i32 0, i32 1
  store i32 0, i32* %needStart1, align 4
  %4 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %stopWriting = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %4, i32 0, i32 3
  store i32 0, i32* %stopWriting, align 4
  %5 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %exit = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %5, i32 0, i32 2
  store i32 0, i32* %exit, align 4
  %6 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStarted = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %6, i32 0, i32 6
  %call = call i32 @Event_Reset(%struct._CEvent* %wasStarted)
  %7 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStopped = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %7, i32 0, i32 7
  %call2 = call i32 @Event_Reset(%struct._CEvent* %wasStopped)
  %8 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %canStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %8, i32 0, i32 5
  %call3 = call i32 @Event_Set(%struct._CEvent* %canStart)
  %9 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStarted4 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %9, i32 0, i32 6
  %call5 = call i32 @Event_Wait(%struct._CEvent* %wasStarted4)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %cs = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %10, i32 0, i32 12
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex) #3
  %11 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasEntered = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %11, i32 0, i32 11
  store i32 0, i32* %csWasEntered, align 4
  %12 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %numProcessedBlocks7 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %12, i32 0, i32 13
  %13 = load i32, i32* %numProcessedBlocks7, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %numProcessedBlocks7, align 4
  %14 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %freeSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %14, i32 0, i32 8
  %call8 = call i32 @Semaphore_ReleaseN(%struct._CSemaphore* %freeSemaphore, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %filledSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %15, i32 0, i32 9
  %call9 = call i32 @Semaphore_Wait(%struct._CSemaphore* %filledSemaphore)
  %16 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %cs10 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %16, i32 0, i32 12
  %_mutex11 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs10, i32 0, i32 0
  %call12 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex11) #3
  %17 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasEntered13 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %17, i32 0, i32 11
  store i32 1, i32* %csWasEntered13, align 4
  ret void
}

declare i32 @Event_Reset(%struct._CEvent*) #1

declare i32 @Event_Set(%struct._CEvent*) #1

declare i32 @Event_Wait(%struct._CEvent*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

declare i32 @Semaphore_ReleaseN(%struct._CSemaphore*, i32) #1

declare i32 @Semaphore_Wait(%struct._CSemaphore*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define void @MtSync_StopWriting(%struct._CMtSync* %p) #0 {
entry:
  %p.addr = alloca %struct._CMtSync*, align 8
  %myNumBlocks = alloca i32, align 4
  store %struct._CMtSync* %p, %struct._CMtSync** %p.addr, align 8
  %0 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %numProcessedBlocks = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %0, i32 0, i32 13
  %1 = load i32, i32* %numProcessedBlocks, align 4
  store i32 %1, i32* %myNumBlocks, align 4
  %2 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %thread = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %2, i32 0, i32 4
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %thread, i32 0, i32 1
  %3 = load i32, i32* %_created, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %needStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %4, i32 0, i32 1
  %5 = load i32, i32* %needStart, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %stopWriting = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %6, i32 0, i32 3
  store i32 1, i32* %stopWriting, align 4
  %7 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasEntered = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %7, i32 0, i32 11
  %8 = load i32, i32* %csWasEntered, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %cs = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %9, i32 0, i32 12
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex) #3
  %10 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasEntered3 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %10, i32 0, i32 11
  store i32 0, i32* %csWasEntered3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %freeSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %11, i32 0, i32 8
  %call5 = call i32 @Semaphore_ReleaseN(%struct._CSemaphore* %freeSemaphore, i32 1)
  %12 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStopped = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %12, i32 0, i32 7
  %call6 = call i32 @Event_Wait(%struct._CEvent* %wasStopped)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %13 = load i32, i32* %myNumBlocks, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %myNumBlocks, align 4
  %14 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %numProcessedBlocks7 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %14, i32 0, i32 13
  %15 = load i32, i32* %numProcessedBlocks7, align 4
  %cmp8 = icmp ne i32 %13, %15
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %filledSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %16, i32 0, i32 9
  %call9 = call i32 @Semaphore_Wait(%struct._CSemaphore* %filledSemaphore)
  %17 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %freeSemaphore10 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %17, i32 0, i32 8
  %call11 = call i32 @Semaphore_ReleaseN(%struct._CSemaphore* %freeSemaphore10, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %needStart12 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %18, i32 0, i32 1
  store i32 1, i32* %needStart12, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @MtSync_Destruct(%struct._CMtSync* %p) #0 {
entry:
  %p.addr = alloca %struct._CMtSync*, align 8
  store %struct._CMtSync* %p, %struct._CMtSync** %p.addr, align 8
  %0 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %thread = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %0, i32 0, i32 4
  %_created = getelementptr inbounds %struct._CThread, %struct._CThread* %thread, i32 0, i32 1
  %1 = load i32, i32* %_created, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  call void @MtSync_StopWriting(%struct._CMtSync* %2)
  %3 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %exit = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %3, i32 0, i32 2
  store i32 1, i32* %exit, align 4
  %4 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %needStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %4, i32 0, i32 1
  %5 = load i32, i32* %needStart, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %canStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %6, i32 0, i32 5
  %call = call i32 @Event_Set(%struct._CEvent* %canStart)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %7 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %thread2 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %7, i32 0, i32 4
  %call3 = call i32 @Thread_Wait(%struct._CThread* %thread2)
  %8 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %thread4 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %8, i32 0, i32 4
  %call5 = call i32 @Thread_Close(%struct._CThread* %thread4)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %9 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasInitialized = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %9, i32 0, i32 10
  %10 = load i32, i32* %csWasInitialized, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %cs = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %11, i32 0, i32 12
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call9 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %_mutex) #3
  %12 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasInitialized10 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %12, i32 0, i32 10
  store i32 0, i32* %csWasInitialized10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %13 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %canStart12 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %13, i32 0, i32 5
  %call13 = call i32 @Event_Close(%struct._CEvent* %canStart12)
  %14 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStarted = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %14, i32 0, i32 6
  %call14 = call i32 @Event_Close(%struct._CEvent* %wasStarted)
  %15 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStopped = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %15, i32 0, i32 7
  %call15 = call i32 @Event_Close(%struct._CEvent* %wasStopped)
  %16 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %freeSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %16, i32 0, i32 8
  %call16 = call i32 @Semaphore_Close(%struct._CSemaphore* %freeSemaphore)
  %17 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %filledSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %17, i32 0, i32 9
  %call17 = call i32 @Semaphore_Close(%struct._CSemaphore* %filledSemaphore)
  %18 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasCreated = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %18, i32 0, i32 0
  store i32 0, i32* %wasCreated, align 4
  ret void
}

declare i32 @Thread_Wait(%struct._CThread*) #1

declare i32 @Thread_Close(%struct._CThread*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

declare i32 @Event_Close(%struct._CEvent*) #1

declare i32 @Semaphore_Close(%struct._CSemaphore*) #1

; Function Attrs: nounwind uwtable
define void @MtSync_Init(%struct._CMtSync* %p) #0 {
entry:
  %p.addr = alloca %struct._CMtSync*, align 8
  store %struct._CMtSync* %p, %struct._CMtSync** %p.addr, align 8
  %0 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %needStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %0, i32 0, i32 1
  store i32 1, i32* %needStart, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @HashThreadFunc(%struct._CMatchFinderMt* %mt) #0 {
entry:
  %mt.addr = alloca %struct._CMatchFinderMt*, align 8
  %p = alloca %struct._CMtSync*, align 8
  %numProcessedBlocks = alloca i32, align 4
  %mf = alloca %struct._CMatchFinder*, align 8
  %beforePtr = alloca i8*, align 8
  %afterPtr = alloca i8*, align 8
  %subValue = alloca i32, align 4
  %heads = alloca i32*, align 8
  %num = alloca i32, align 4
  store %struct._CMatchFinderMt* %mt, %struct._CMatchFinderMt** %mt.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %hashSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 25
  store %struct._CMtSync* %hashSync, %struct._CMtSync** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  store i32 0, i32* %numProcessedBlocks, align 4
  %1 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %canStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %1, i32 0, i32 5
  %call = call i32 @Event_Wait(%struct._CEvent* %canStart)
  %2 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %wasStarted = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %2, i32 0, i32 6
  %call1 = call i32 @Event_Set(%struct._CEvent* %wasStarted)
  br label %for.cond.2

for.cond.2:                                       ; preds = %if.end.61, %if.then.10, %for.cond
  %3 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %exit = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %3, i32 0, i32 2
  %4 = load i32, i32* %exit, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.2
  ret void

if.end:                                           ; preds = %for.cond.2
  %5 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %stopWriting = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %5, i32 0, i32 3
  %6 = load i32, i32* %stopWriting, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %numProcessedBlocks, align 4
  %8 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %numProcessedBlocks5 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %8, i32 0, i32 13
  store i32 %7, i32* %numProcessedBlocks5, align 4
  %9 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %wasStopped = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %9, i32 0, i32 7
  %call6 = call i32 @Event_Set(%struct._CEvent* %wasStopped)
  br label %for.end

if.end.7:                                         ; preds = %if.end
  %10 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %MatchFinder = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %10, i32 0, i32 27
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %MatchFinder, align 8
  store %struct._CMatchFinder* %11, %struct._CMatchFinder** %mf, align 8
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %call8 = call i32 @MatchFinder_NeedMove(%struct._CMatchFinder* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.31

if.then.10:                                       ; preds = %if.end.7
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %btSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 11
  %cs = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %btSync, i32 0, i32 12
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call11 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %14 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %hashSync12 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %14, i32 0, i32 25
  %cs13 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %hashSync12, i32 0, i32 12
  %_mutex14 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs13, i32 0, i32 0
  %call15 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex14) #3
  %15 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %call16 = call i8* @MatchFinder_GetPointerToCurrentPos(%struct._CMatchFinder* %15)
  store i8* %call16, i8** %beforePtr, align 8
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  call void @MatchFinder_MoveBlock(%struct._CMatchFinder* %16)
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %call17 = call i8* @MatchFinder_GetPointerToCurrentPos(%struct._CMatchFinder* %17)
  store i8* %call17, i8** %afterPtr, align 8
  %18 = load i8*, i8** %beforePtr, align 8
  %19 = load i8*, i8** %afterPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %20 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %20, i32 0, i32 0
  %21 = load i8*, i8** %pointerToCurPos, align 8
  %idx.neg = sub i64 0, %sub.ptr.sub
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %pointerToCurPos, align 8
  %22 = load i8*, i8** %beforePtr, align 8
  %23 = load i8*, i8** %afterPtr, align 8
  %sub.ptr.lhs.cast18 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %23 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %24 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %24, i32 0, i32 21
  %25 = load i8*, i8** %buffer, align 8
  %idx.neg21 = sub i64 0, %sub.ptr.sub20
  %add.ptr22 = getelementptr inbounds i8, i8* %25, i64 %idx.neg21
  store i8* %add.ptr22, i8** %buffer, align 8
  %26 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %btSync23 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %26, i32 0, i32 11
  %cs24 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %btSync23, i32 0, i32 12
  %_mutex25 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs24, i32 0, i32 0
  %call26 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex25) #3
  %27 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %hashSync27 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %27, i32 0, i32 25
  %cs28 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %hashSync27, i32 0, i32 12
  %_mutex29 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs28, i32 0, i32 0
  %call30 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex29) #3
  br label %for.cond.2

if.end.31:                                        ; preds = %if.end.7
  %28 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %freeSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %28, i32 0, i32 8
  %call32 = call i32 @Semaphore_Wait(%struct._CSemaphore* %freeSemaphore)
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  call void @MatchFinder_ReadIfRequired(%struct._CMatchFinder* %29)
  %30 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %30, i32 0, i32 1
  %31 = load i32, i32* %pos, align 4
  %cmp = icmp ugt i32 %31, -8193
  br i1 %cmp, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.31
  %32 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %pos34 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %32, i32 0, i32 1
  %33 = load i32, i32* %pos34, align 4
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %historySize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 23
  %35 = load i32, i32* %historySize, align 4
  %sub = sub i32 %33, %35
  %sub35 = sub i32 %sub, 1
  store i32 %sub35, i32* %subValue, align 4
  %36 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %37 = load i32, i32* %subValue, align 4
  call void @MatchFinder_ReduceOffsets(%struct._CMatchFinder* %36, i32 %37)
  %38 = load i32, i32* %subValue, align 4
  %39 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %39, i32 0, i32 8
  %40 = load i32*, i32** %hash, align 8
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %fixedHashSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 24
  %42 = load i32, i32* %fixedHashSize, align 4
  %idx.ext = zext i32 %42 to i64
  %add.ptr36 = getelementptr inbounds i32, i32* %40, i64 %idx.ext
  %43 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %43, i32 0, i32 10
  %44 = load i32, i32* %hashMask, align 4
  %add = add i32 %44, 1
  call void @MatchFinder_Normalize3(i32 %38, i32* %add.ptr36, i32 %add)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.31
  %45 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %hashBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %45, i32 0, i32 13
  %46 = load i32*, i32** %hashBuf, align 8
  %47 = load i32, i32* %numProcessedBlocks, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %numProcessedBlocks, align 4
  %and = and i32 %47, 7
  %mul = mul i32 %and, 8192
  %idx.ext38 = zext i32 %mul to i64
  %add.ptr39 = getelementptr inbounds i32, i32* %46, i64 %idx.ext38
  store i32* %add.ptr39, i32** %heads, align 8
  %48 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %48, i32 0, i32 3
  %49 = load i32, i32* %streamPos, align 4
  %50 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %pos40 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %50, i32 0, i32 1
  %51 = load i32, i32* %pos40, align 4
  %sub41 = sub i32 %49, %51
  store i32 %sub41, i32* %num, align 4
  %52 = load i32*, i32** %heads, align 8
  %arrayidx = getelementptr inbounds i32, i32* %52, i64 0
  store i32 2, i32* %arrayidx, align 4
  %53 = load i32, i32* %num, align 4
  %54 = load i32*, i32** %heads, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %arrayidx42, align 4
  %55 = load i32, i32* %num, align 4
  %56 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %numHashBytes = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %56, i32 0, i32 18
  %57 = load i32, i32* %numHashBytes, align 4
  %cmp43 = icmp uge i32 %55, %57
  br i1 %cmp43, label %if.then.44, label %if.end.61

if.then.44:                                       ; preds = %if.end.37
  %58 = load i32, i32* %num, align 4
  %59 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %numHashBytes45 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %59, i32 0, i32 18
  %60 = load i32, i32* %numHashBytes45, align 4
  %sub46 = sub i32 %58, %60
  %add47 = add i32 %sub46, 1
  store i32 %add47, i32* %num, align 4
  %61 = load i32, i32* %num, align 4
  %cmp48 = icmp ugt i32 %61, 8190
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.44
  store i32 8190, i32* %num, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.44
  %62 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %GetHeadsFunc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %62, i32 0, i32 26
  %63 = load void (i8*, i32, i32*, i32, i32*, i32, i32*)*, void (i8*, i32, i32*, i32, i32*, i32, i32*)** %GetHeadsFunc, align 8
  %64 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %buffer51 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %64, i32 0, i32 0
  %65 = load i8*, i8** %buffer51, align 8
  %66 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %pos52 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %66, i32 0, i32 1
  %67 = load i32, i32* %pos52, align 4
  %68 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %hash53 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %68, i32 0, i32 8
  %69 = load i32*, i32** %hash53, align 8
  %70 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %fixedHashSize54 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %70, i32 0, i32 24
  %71 = load i32, i32* %fixedHashSize54, align 4
  %idx.ext55 = zext i32 %71 to i64
  %add.ptr56 = getelementptr inbounds i32, i32* %69, i64 %idx.ext55
  %72 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %hashMask57 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %72, i32 0, i32 10
  %73 = load i32, i32* %hashMask57, align 4
  %74 = load i32*, i32** %heads, align 8
  %add.ptr58 = getelementptr inbounds i32, i32* %74, i64 2
  %75 = load i32, i32* %num, align 4
  %76 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %76, i32 0, i32 28
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i32 0
  call void %63(i8* %65, i32 %67, i32* %add.ptr56, i32 %73, i32* %add.ptr58, i32 %75, i32* %arraydecay)
  %77 = load i32, i32* %num, align 4
  %78 = load i32*, i32** %heads, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx59, align 4
  %add60 = add i32 %79, %77
  store i32 %add60, i32* %arrayidx59, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.50, %if.end.37
  %80 = load i32, i32* %num, align 4
  %81 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %pos62 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %81, i32 0, i32 1
  %82 = load i32, i32* %pos62, align 4
  %add63 = add i32 %82, %80
  store i32 %add63, i32* %pos62, align 4
  %83 = load i32, i32* %num, align 4
  %84 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %buffer64 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %84, i32 0, i32 0
  %85 = load i8*, i8** %buffer64, align 8
  %idx.ext65 = zext i32 %83 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %85, i64 %idx.ext65
  store i8* %add.ptr66, i8** %buffer64, align 8
  %86 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %filledSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %86, i32 0, i32 9
  %call67 = call i32 @Semaphore_ReleaseN(%struct._CSemaphore* %filledSemaphore, i32 1)
  br label %for.cond.2

for.end:                                          ; preds = %if.then.4
  br label %for.cond
}

declare i32 @MatchFinder_NeedMove(%struct._CMatchFinder*) #1

declare i8* @MatchFinder_GetPointerToCurrentPos(%struct._CMatchFinder*) #1

declare void @MatchFinder_MoveBlock(%struct._CMatchFinder*) #1

declare void @MatchFinder_ReadIfRequired(%struct._CMatchFinder*) #1

declare void @MatchFinder_ReduceOffsets(%struct._CMatchFinder*, i32) #1

declare void @MatchFinder_Normalize3(i32, i32*, i32) #1

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_GetNextBlock_Hash(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 25
  call void @MtSync_GetNextBlock(%struct._CMtSync* %hashSync)
  %1 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashSync1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %1, i32 0, i32 25
  %numProcessedBlocks = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %hashSync1, i32 0, i32 13
  %2 = load i32, i32* %numProcessedBlocks, align 4
  %sub = sub i32 %2, 1
  %and = and i32 %sub, 7
  %mul = mul i32 %and, 8192
  %3 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %3, i32 0, i32 14
  store i32 %mul, i32* %hashBufPos, align 4
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %4, i32 0, i32 15
  store i32 %mul, i32* %hashBufPosLimit, align 4
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 14
  %6 = load i32, i32* %hashBufPos2, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %hashBufPos2, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 13
  %8 = load i32*, i32** %hashBuf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPosLimit3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %10, i32 0, i32 15
  %11 = load i32, i32* %hashBufPosLimit3, align 4
  %add = add i32 %11, %9
  store i32 %add, i32* %hashBufPosLimit3, align 4
  %12 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPos4 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %12, i32 0, i32 14
  %13 = load i32, i32* %hashBufPos4, align 4
  %inc5 = add i32 %13, 1
  store i32 %inc5, i32* %hashBufPos4, align 4
  %idxprom6 = zext i32 %13 to i64
  %14 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf7 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %14, i32 0, i32 13
  %15 = load i32*, i32** %hashBuf7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom6
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %17, i32 0, i32 16
  store i32 %16, i32* %hashNumAvail, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @BtGetMatches(%struct._CMatchFinderMt* %p, i32* %distances) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %distances.addr = alloca i32*, align 8
  %numProcessed = alloca i32, align 4
  %curPos = alloca i32, align 4
  %limit = alloca i32, align 4
  %size = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %pos = alloca i32, align 4
  %cyclicBufferPos = alloca i32, align 4
  %size2 = alloca i32, align 4
  %startDistances = alloca i32*, align 8
  %num = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  store i32 0, i32* %numProcessed, align 4
  store i32 2, i32* %curPos, align 4
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %matchMaxLen = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 18
  %1 = load i32, i32* %matchMaxLen, align 4
  %mul = mul i32 %1, 2
  %sub = sub i32 16384, %mul
  store i32 %sub, i32* %limit, align 4
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 16
  %3 = load i32, i32* %hashNumAvail, align 4
  %4 = load i32*, i32** %distances.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %3, i32* %arrayidx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.64, %if.then.6, %entry
  %5 = load i32, i32* %curPos, align 4
  %6 = load i32, i32* %limit, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %while.body, label %while.end.66

while.body:                                       ; preds = %while.cond
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 14
  %8 = load i32, i32* %hashBufPos, align 4
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 15
  %10 = load i32, i32* %hashBufPosLimit, align 4
  %cmp1 = icmp eq i32 %8, %10
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %11 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  call void @MatchFinderMt_GetNextBlock_Hash(%struct._CMatchFinderMt* %11)
  %12 = load i32, i32* %numProcessed, align 4
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 16
  %14 = load i32, i32* %hashNumAvail2, align 4
  %add = add i32 %12, %14
  %15 = load i32*, i32** %distances.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %add, i32* %arrayidx3, align 4
  %16 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail4 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %16, i32 0, i32 16
  %17 = load i32, i32* %hashNumAvail4, align 4
  %18 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %numHashBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %18, i32 0, i32 19
  %19 = load i32, i32* %numHashBytes, align 4
  %cmp5 = icmp uge i32 %17, %19
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %while.cond

if.end:                                           ; preds = %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail7 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %20, i32 0, i32 16
  %21 = load i32, i32* %hashNumAvail7, align 4
  %cmp8 = icmp ne i32 %21, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %curPos, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %curPos, align 4
  %idxprom = zext i32 %22 to i64
  %23 = load i32*, i32** %distances.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail10 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %24, i32 0, i32 16
  %25 = load i32, i32* %hashNumAvail10, align 4
  %dec = add i32 %25, -1
  store i32 %dec, i32* %hashNumAvail10, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.end.66

if.end.11:                                        ; preds = %while.body
  %26 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPosLimit12 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %26, i32 0, i32 15
  %27 = load i32, i32* %hashBufPosLimit12, align 4
  %28 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPos13 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %28, i32 0, i32 14
  %29 = load i32, i32* %hashBufPos13, align 4
  %sub14 = sub i32 %27, %29
  store i32 %sub14, i32* %size, align 4
  %30 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %matchMaxLen15 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %30, i32 0, i32 18
  %31 = load i32, i32* %matchMaxLen15, align 4
  store i32 %31, i32* %lenLimit, align 4
  %32 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos16 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %32, i32 0, i32 20
  %33 = load i32, i32* %pos16, align 4
  store i32 %33, i32* %pos, align 4
  %34 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferPos17 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %34, i32 0, i32 22
  %35 = load i32, i32* %cyclicBufferPos17, align 4
  store i32 %35, i32* %cyclicBufferPos, align 4
  %36 = load i32, i32* %lenLimit, align 4
  %37 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail18 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %37, i32 0, i32 16
  %38 = load i32, i32* %hashNumAvail18, align 4
  %cmp19 = icmp uge i32 %36, %38
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.11
  %39 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail21 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %39, i32 0, i32 16
  %40 = load i32, i32* %hashNumAvail21, align 4
  store i32 %40, i32* %lenLimit, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.11
  %41 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail23 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %41, i32 0, i32 16
  %42 = load i32, i32* %hashNumAvail23, align 4
  %43 = load i32, i32* %lenLimit, align 4
  %sub24 = sub i32 %42, %43
  %add25 = add i32 %sub24, 1
  store i32 %add25, i32* %size2, align 4
  %44 = load i32, i32* %size2, align 4
  %45 = load i32, i32* %size, align 4
  %cmp26 = icmp ult i32 %44, %45
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  %46 = load i32, i32* %size2, align 4
  store i32 %46, i32* %size, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.22
  %47 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %47, i32 0, i32 23
  %48 = load i32, i32* %cyclicBufferSize, align 4
  %49 = load i32, i32* %cyclicBufferPos, align 4
  %sub29 = sub i32 %48, %49
  store i32 %sub29, i32* %size2, align 4
  %50 = load i32, i32* %size2, align 4
  %51 = load i32, i32* %size, align 4
  %cmp30 = icmp ult i32 %50, %51
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %52 = load i32, i32* %size2, align 4
  store i32 %52, i32* %size, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.37, %if.end.32
  %53 = load i32, i32* %curPos, align 4
  %54 = load i32, i32* %limit, align 4
  %cmp34 = icmp ult i32 %53, %54
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.33
  %55 = load i32, i32* %size, align 4
  %dec35 = add i32 %55, -1
  store i32 %dec35, i32* %size, align 4
  %cmp36 = icmp ne i32 %55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.33
  %56 = phi i1 [ false, %while.cond.33 ], [ %cmp36, %land.rhs ]
  br i1 %56, label %while.body.37, label %while.end

while.body.37:                                    ; preds = %land.end
  %57 = load i32*, i32** %distances.addr, align 8
  %58 = load i32, i32* %curPos, align 4
  %idx.ext = zext i32 %58 to i64
  %add.ptr = getelementptr inbounds i32, i32* %57, i64 %idx.ext
  store i32* %add.ptr, i32** %startDistances, align 8
  %59 = load i32, i32* %lenLimit, align 4
  %60 = load i32, i32* %pos, align 4
  %61 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPos38 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %61, i32 0, i32 14
  %62 = load i32, i32* %hashBufPos38, align 4
  %inc39 = add i32 %62, 1
  store i32 %inc39, i32* %hashBufPos38, align 4
  %idxprom40 = zext i32 %62 to i64
  %63 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %63, i32 0, i32 13
  %64 = load i32*, i32** %hashBuf, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %64, i64 %idxprom40
  %65 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub i32 %60, %65
  %66 = load i32, i32* %pos, align 4
  %67 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %67, i32 0, i32 21
  %68 = load i8*, i8** %buffer, align 8
  %69 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %69, i32 0, i32 17
  %70 = load i32*, i32** %son, align 8
  %71 = load i32, i32* %cyclicBufferPos, align 4
  %72 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferSize43 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %72, i32 0, i32 23
  %73 = load i32, i32* %cyclicBufferSize43, align 4
  %74 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %74, i32 0, i32 24
  %75 = load i32, i32* %cutValue, align 4
  %76 = load i32*, i32** %startDistances, align 8
  %add.ptr44 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %numHashBytes45 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %77, i32 0, i32 19
  %78 = load i32, i32* %numHashBytes45, align 4
  %sub46 = sub i32 %78, 1
  %call = call i32* @GetMatchesSpec1(i32 %59, i32 %sub42, i32 %66, i8* %68, i32* %70, i32 %71, i32 %73, i32 %75, i32* %add.ptr44, i32 %sub46)
  %79 = load i32*, i32** %startDistances, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %79 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %num, align 4
  %80 = load i32, i32* %num, align 4
  %sub47 = sub i32 %80, 1
  %81 = load i32*, i32** %startDistances, align 8
  store i32 %sub47, i32* %81, align 4
  %82 = load i32, i32* %num, align 4
  %83 = load i32, i32* %curPos, align 4
  %add48 = add i32 %83, %82
  store i32 %add48, i32* %curPos, align 4
  %84 = load i32, i32* %cyclicBufferPos, align 4
  %inc49 = add i32 %84, 1
  store i32 %inc49, i32* %cyclicBufferPos, align 4
  %85 = load i32, i32* %pos, align 4
  %inc50 = add i32 %85, 1
  store i32 %inc50, i32* %pos, align 4
  %86 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %buffer51 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %86, i32 0, i32 21
  %87 = load i8*, i8** %buffer51, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr, i8** %buffer51, align 8
  br label %while.cond.33

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %pos, align 4
  %89 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos52 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %89, i32 0, i32 20
  %90 = load i32, i32* %pos52, align 4
  %sub53 = sub i32 %88, %90
  %91 = load i32, i32* %numProcessed, align 4
  %add54 = add i32 %91, %sub53
  store i32 %add54, i32* %numProcessed, align 4
  %92 = load i32, i32* %pos, align 4
  %93 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos55 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %93, i32 0, i32 20
  %94 = load i32, i32* %pos55, align 4
  %sub56 = sub i32 %92, %94
  %95 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashNumAvail57 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %95, i32 0, i32 16
  %96 = load i32, i32* %hashNumAvail57, align 4
  %sub58 = sub i32 %96, %sub56
  store i32 %sub58, i32* %hashNumAvail57, align 4
  %97 = load i32, i32* %pos, align 4
  %98 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos59 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %98, i32 0, i32 20
  store i32 %97, i32* %pos59, align 4
  %99 = load i32, i32* %cyclicBufferPos, align 4
  %100 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferSize60 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %100, i32 0, i32 23
  %101 = load i32, i32* %cyclicBufferSize60, align 4
  %cmp61 = icmp eq i32 %99, %101
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %while.end
  store i32 0, i32* %cyclicBufferPos, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %while.end
  %102 = load i32, i32* %cyclicBufferPos, align 4
  %103 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferPos65 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %103, i32 0, i32 22
  store i32 %102, i32* %cyclicBufferPos65, align 4
  br label %while.cond

while.end.66:                                     ; preds = %for.end, %while.cond
  %104 = load i32, i32* %curPos, align 4
  %105 = load i32*, i32** %distances.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %arrayidx67, align 4
  ret void
}

declare i32* @GetMatchesSpec1(i32, i32, i32, i8*, i32*, i32, i32, i32, i32*, i32) #1

; Function Attrs: nounwind uwtable
define void @BtFillBlock(%struct._CMatchFinderMt* %p, i32 %globalBlockIndex) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %globalBlockIndex.addr = alloca i32, align 4
  %sync = alloca %struct._CMtSync*, align 8
  %subValue = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %globalBlockIndex, i32* %globalBlockIndex.addr, align 4
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 25
  store %struct._CMtSync* %hashSync, %struct._CMtSync** %sync, align 8
  %1 = load %struct._CMtSync*, %struct._CMtSync** %sync, align 8
  %needStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %1, i32 0, i32 1
  %2 = load i32, i32* %needStart, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._CMtSync*, %struct._CMtSync** %sync, align 8
  %cs = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %3, i32 0, i32 12
  %_mutex = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs, i32 0, i32 0
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %_mutex) #3
  %4 = load %struct._CMtSync*, %struct._CMtSync** %sync, align 8
  %csWasEntered = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %4, i32 0, i32 11
  store i32 1, i32* %csWasEntered, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %6 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %6, i32 0, i32 1
  %7 = load i32*, i32** %btBuf, align 8
  %8 = load i32, i32* %globalBlockIndex.addr, align 4
  %and = and i32 %8, 63
  %mul = mul i32 %and, 16384
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  call void @BtGetMatches(%struct._CMatchFinderMt* %5, i32* %add.ptr)
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 20
  %10 = load i32, i32* %pos, align 4
  %cmp = icmp ugt i32 %10, -16385
  br i1 %cmp, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.end
  %11 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %11, i32 0, i32 20
  %12 = load i32, i32* %pos2, align 4
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 23
  %14 = load i32, i32* %cyclicBufferSize, align 4
  %sub = sub i32 %12, %14
  store i32 %sub, i32* %subValue, align 4
  %15 = load i32, i32* %subValue, align 4
  %16 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %16, i32 0, i32 17
  %17 = load i32*, i32** %son, align 8
  %18 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferSize3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %18, i32 0, i32 23
  %19 = load i32, i32* %cyclicBufferSize3, align 4
  %mul4 = mul i32 %19, 2
  call void @MatchFinder_Normalize3(i32 %15, i32* %17, i32 %mul4)
  %20 = load i32, i32* %subValue, align 4
  %21 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos5 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %21, i32 0, i32 20
  %22 = load i32, i32* %pos5, align 4
  %sub6 = sub i32 %22, %20
  store i32 %sub6, i32* %pos5, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.1, %if.end
  %23 = load %struct._CMtSync*, %struct._CMtSync** %sync, align 8
  %needStart8 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %23, i32 0, i32 1
  %24 = load i32, i32* %needStart8, align 4
  %tobool9 = icmp ne i32 %24, 0
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %25 = load %struct._CMtSync*, %struct._CMtSync** %sync, align 8
  %cs11 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %25, i32 0, i32 12
  %_mutex12 = getelementptr inbounds %struct.CCriticalSection, %struct.CCriticalSection* %cs11, i32 0, i32 0
  %call13 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %_mutex12) #3
  %26 = load %struct._CMtSync*, %struct._CMtSync** %sync, align 8
  %csWasEntered14 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %26, i32 0, i32 11
  store i32 0, i32* %csWasEntered14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @BtThreadFunc(%struct._CMatchFinderMt* %mt) #0 {
entry:
  %mt.addr = alloca %struct._CMatchFinderMt*, align 8
  %p = alloca %struct._CMtSync*, align 8
  %blockIndex = alloca i32, align 4
  store %struct._CMatchFinderMt* %mt, %struct._CMatchFinderMt** %mt.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %btSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 11
  store %struct._CMtSync* %btSync, %struct._CMtSync** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  store i32 0, i32* %blockIndex, align 4
  %1 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %canStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %1, i32 0, i32 5
  %call = call i32 @Event_Wait(%struct._CEvent* %canStart)
  %2 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %wasStarted = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %2, i32 0, i32 6
  %call1 = call i32 @Event_Set(%struct._CEvent* %wasStarted)
  br label %for.cond.2

for.cond.2:                                       ; preds = %if.end.6, %for.cond
  %3 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %exit = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %3, i32 0, i32 2
  %4 = load i32, i32* %exit, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.2
  ret void

if.end:                                           ; preds = %for.cond.2
  %5 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %stopWriting = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %5, i32 0, i32 3
  %6 = load i32, i32* %stopWriting, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %blockIndex, align 4
  %8 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %numProcessedBlocks = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %8, i32 0, i32 13
  store i32 %7, i32* %numProcessedBlocks, align 4
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %hashSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 25
  call void @MtSync_StopWriting(%struct._CMtSync* %hashSync)
  %10 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %wasStopped = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %10, i32 0, i32 7
  %call5 = call i32 @Event_Set(%struct._CEvent* %wasStopped)
  br label %for.end

if.end.6:                                         ; preds = %if.end
  %11 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %freeSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %11, i32 0, i32 8
  %call7 = call i32 @Semaphore_Wait(%struct._CSemaphore* %freeSemaphore)
  %12 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %mt.addr, align 8
  %13 = load i32, i32* %blockIndex, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %blockIndex, align 4
  call void @BtFillBlock(%struct._CMatchFinderMt* %12, i32 %13)
  %14 = load %struct._CMtSync*, %struct._CMtSync** %p, align 8
  %filledSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %14, i32 0, i32 9
  %call8 = call i32 @Semaphore_ReleaseN(%struct._CSemaphore* %filledSemaphore, i32 1)
  br label %for.cond.2

for.end:                                          ; preds = %if.then.4
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_Construct(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 13
  store i32* null, i32** %hashBuf, align 8
  %1 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %1, i32 0, i32 25
  call void @MtSync_Construct(%struct._CMtSync* %hashSync)
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 11
  call void @MtSync_Construct(%struct._CMtSync* %btSync)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_FreeMem(%struct._CMatchFinderMt* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %4, i32 0, i32 13
  %5 = load i32*, i32** %hashBuf, align 8
  %6 = bitcast i32* %5 to i8*
  call void %1(i8* %3, i8* %6)
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 13
  store i32* null, i32** %hashBuf1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_Destruct(%struct._CMatchFinderMt* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 25
  call void @MtSync_Destruct(%struct._CMtSync* %hashSync)
  %1 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %1, i32 0, i32 11
  call void @MtSync_Destruct(%struct._CMtSync* %btSync)
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @MatchFinderMt_FreeMem(%struct._CMatchFinderMt* %2, %struct.ISzAlloc* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @MatchFinderMt_Create(%struct._CMatchFinderMt* %p, i32 %historySize, i32 %keepAddBufferBefore, i32 %matchMaxLen, i32 %keepAddBufferAfter, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %historySize.addr = alloca i32, align 4
  %keepAddBufferBefore.addr = alloca i32, align 4
  %matchMaxLen.addr = alloca i32, align 4
  %keepAddBufferAfter.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %mf = alloca %struct._CMatchFinder*, align 8
  %__result__ = alloca i32, align 4
  %__result__19 = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %historySize, i32* %historySize.addr, align 4
  store i32 %keepAddBufferBefore, i32* %keepAddBufferBefore.addr, align 4
  store i32 %matchMaxLen, i32* %matchMaxLen.addr, align 4
  store i32 %keepAddBufferAfter, i32* %keepAddBufferAfter.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MatchFinder = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 27
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %MatchFinder, align 8
  store %struct._CMatchFinder* %1, %struct._CMatchFinder** %mf, align 8
  %2 = load i32, i32* %historySize.addr, align 4
  %3 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %historySize1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %3, i32 0, i32 8
  store i32 %2, i32* %historySize1, align 4
  %4 = load i32, i32* %matchMaxLen.addr, align 4
  %mul = mul i32 %4, 4
  %cmp = icmp ule i32 16384, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 13
  %6 = load i32*, i32** %hashBuf, align 8
  %cmp2 = icmp eq i32* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %7, i32 0, i32 0
  %8 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %10 = bitcast %struct.ISzAlloc* %9 to i8*
  %call = call i8* %8(i8* %10, i64 4456448)
  %11 = bitcast i8* %call to i32*
  %12 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf4 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %12, i32 0, i32 13
  store i32* %11, i32** %hashBuf4, align 8
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf5 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 13
  %14 = load i32*, i32** %hashBuf5, align 8
  %cmp6 = icmp eq i32* %14, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  store i32 2, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.3
  %15 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBuf9 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %15, i32 0, i32 13
  %16 = load i32*, i32** %hashBuf9, align 8
  %add.ptr = getelementptr inbounds i32, i32* %16, i64 65536
  %17 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %17, i32 0, i32 1
  store i32* %add.ptr, i32** %btBuf, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.8, %if.end
  %18 = load i32, i32* %keepAddBufferBefore.addr, align 4
  %add = add i32 %18, 1114112
  store i32 %add, i32* %keepAddBufferBefore.addr, align 4
  %19 = load i32, i32* %keepAddBufferAfter.addr, align 4
  %add11 = add i32 %19, 8192
  store i32 %add11, i32* %keepAddBufferAfter.addr, align 4
  %20 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %21 = load i32, i32* %historySize.addr, align 4
  %22 = load i32, i32* %keepAddBufferBefore.addr, align 4
  %23 = load i32, i32* %matchMaxLen.addr, align 4
  %24 = load i32, i32* %keepAddBufferAfter.addr, align 4
  %25 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call12 = call i32 @MatchFinder_Create(%struct._CMatchFinder* %20, i32 %21, i32 %22, i32 %23, i32 %24, %struct.ISzAlloc* %25)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  store i32 2, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %26 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %26, i32 0, i32 25
  %27 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %28 = bitcast %struct._CMatchFinderMt* %27 to i8*
  %call15 = call i32 @MtSync_Create(%struct._CMtSync* %hashSync, i32 (i8*)* @HashThreadFunc2, i8* %28, i32 8)
  store i32 %call15, i32* %__result__, align 4
  %29 = load i32, i32* %__result__, align 4
  %cmp16 = icmp ne i32 %29, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %30 = load i32, i32* %__result__, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %31 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %31, i32 0, i32 11
  %32 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %33 = bitcast %struct._CMatchFinderMt* %32 to i8*
  %call20 = call i32 @MtSync_Create(%struct._CMtSync* %btSync, i32 (i8*)* @BtThreadFunc2, i8* %33, i32 64)
  store i32 %call20, i32* %__result__19, align 4
  %34 = load i32, i32* %__result__19, align 4
  %cmp21 = icmp ne i32 %34, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %35 = load i32, i32* %__result__19, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.17, %if.then.13, %if.then.7, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @MatchFinder_Create(%struct._CMatchFinder*, i32, i32, i32, i32, %struct.ISzAlloc*) #1

; Function Attrs: nounwind uwtable
define internal i32 @MtSync_Create(%struct._CMtSync* %p, i32 (i8*)* %startAddress, i8* %obj, i32 %numBlocks) #0 {
entry:
  %p.addr = alloca %struct._CMtSync*, align 8
  %startAddress.addr = alloca i32 (i8*)*, align 8
  %obj.addr = alloca i8*, align 8
  %numBlocks.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._CMtSync* %p, %struct._CMtSync** %p.addr, align 8
  store i32 (i8*)* %startAddress, i32 (i8*)** %startAddress.addr, align 8
  store i8* %obj, i8** %obj.addr, align 8
  store i32 %numBlocks, i32* %numBlocks.addr, align 4
  %0 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %1 = load i32 (i8*)*, i32 (i8*)** %startAddress.addr, align 8
  %2 = load i8*, i8** %obj.addr, align 8
  %3 = load i32, i32* %numBlocks.addr, align 4
  %call = call i32 @MtSync_Create2(%struct._CMtSync* %0, i32 (i8*)* %1, i8* %2, i32 %3)
  store i32 %call, i32* %res, align 4
  %4 = load i32, i32* %res, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  call void @MtSync_Destruct(%struct._CMtSync* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %res, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @HashThreadFunc2(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct._CMatchFinderMt*
  call void @HashThreadFunc(%struct._CMatchFinderMt* %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @BtThreadFunc2(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %allocaDummy = alloca [384 x i8], align 16
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [384 x i8], [384 x i8]* %allocaDummy, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i8*, i8** %p.addr, align 8
  %5 = bitcast i8* %4 to %struct._CMatchFinderMt*
  call void @BtThreadFunc(%struct._CMatchFinderMt* %5)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_Init(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %mf = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MatchFinder = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 27
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %MatchFinder, align 8
  store %struct._CMatchFinder* %1, %struct._CMatchFinder** %mf, align 8
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 3
  store i32 0, i32* %btBufPosLimit, align 4
  %3 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %3, i32 0, i32 2
  store i32 0, i32* %btBufPos, align 4
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %4, i32 0, i32 15
  store i32 0, i32* %hashBufPosLimit, align 4
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hashBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 14
  store i32 0, i32* %hashBufPos, align 4
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  call void @MatchFinder_Init(%struct._CMatchFinder* %6)
  %7 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %call = call i8* @MatchFinder_GetPointerToCurrentPos(%struct._CMatchFinder* %7)
  %8 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %8, i32 0, i32 0
  store i8* %call, i8** %pointerToCurPos, align 8
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 5
  store i32 0, i32* %btNumAvailBytes, align 4
  %10 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %historySize = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %10, i32 0, i32 8
  %11 = load i32, i32* %historySize, align 4
  %add = add i32 %11, 1
  %12 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %12, i32 0, i32 4
  store i32 %add, i32* %lzPos, align 4
  %13 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %13, i32 0, i32 8
  %14 = load i32*, i32** %hash, align 8
  %15 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hash1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %15, i32 0, i32 6
  store i32* %14, i32** %hash1, align 8
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %fixedHashSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %16, i32 0, i32 24
  %17 = load i32, i32* %fixedHashSize, align 4
  %18 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %fixedHashSize2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %18, i32 0, i32 7
  store i32 %17, i32* %fixedHashSize2, align 4
  %19 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %19, i32 0, i32 28
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i32 0
  %20 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %crc3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %20, i32 0, i32 9
  store i32* %arraydecay, i32** %crc3, align 8
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 9
  %22 = load i32*, i32** %son, align 8
  %23 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %son4 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %23, i32 0, i32 17
  store i32* %22, i32** %son4, align 8
  %24 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %matchMaxLen = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %24, i32 0, i32 7
  %25 = load i32, i32* %matchMaxLen, align 4
  %26 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %matchMaxLen5 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %26, i32 0, i32 18
  store i32 %25, i32* %matchMaxLen5, align 4
  %27 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %numHashBytes = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %27, i32 0, i32 18
  %28 = load i32, i32* %numHashBytes, align 4
  %29 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %numHashBytes6 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %29, i32 0, i32 19
  store i32 %28, i32* %numHashBytes6, align 4
  %30 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %30, i32 0, i32 1
  %31 = load i32, i32* %pos, align 4
  %32 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pos7 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %32, i32 0, i32 20
  store i32 %31, i32* %pos7, align 4
  %33 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %33, i32 0, i32 0
  %34 = load i8*, i8** %buffer, align 8
  %35 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %buffer8 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %35, i32 0, i32 21
  store i8* %34, i8** %buffer8, align 8
  %36 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %36, i32 0, i32 5
  %37 = load i32, i32* %cyclicBufferPos, align 4
  %38 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferPos9 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %38, i32 0, i32 22
  store i32 %37, i32* %cyclicBufferPos9, align 4
  %39 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %39, i32 0, i32 6
  %40 = load i32, i32* %cyclicBufferSize, align 4
  %41 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cyclicBufferSize10 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %41, i32 0, i32 23
  store i32 %40, i32* %cyclicBufferSize10, align 4
  %42 = load %struct._CMatchFinder*, %struct._CMatchFinder** %mf, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %42, i32 0, i32 11
  %43 = load i32, i32* %cutValue, align 4
  %44 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %cutValue11 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %44, i32 0, i32 24
  store i32 %43, i32* %cutValue11, align 4
  ret void
}

declare void @MatchFinder_Init(%struct._CMatchFinder*) #1

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_ReleaseStream(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 11
  call void @MtSync_StopWriting(%struct._CMtSync* %btSync)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_Normalize(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 4
  %1 = load i32, i32* %lzPos, align 4
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %historySize = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 8
  %3 = load i32, i32* %historySize, align 4
  %sub = sub i32 %1, %3
  %sub1 = sub i32 %sub, 1
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %4, i32 0, i32 6
  %5 = load i32*, i32** %hash, align 8
  %6 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %fixedHashSize = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %6, i32 0, i32 7
  %7 = load i32, i32* %fixedHashSize, align 4
  call void @MatchFinder_Normalize3(i32 %sub1, i32* %5, i32 %7)
  %8 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %historySize2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %8, i32 0, i32 8
  %9 = load i32, i32* %historySize2, align 4
  %add = add i32 %9, 1
  %10 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %10, i32 0, i32 4
  store i32 %add, i32* %lzPos3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_GetNextBlock_Bt(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %blockIndex = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btSync = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 11
  call void @MtSync_GetNextBlock(%struct._CMtSync* %btSync)
  %1 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btSync1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %1, i32 0, i32 11
  %numProcessedBlocks = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %btSync1, i32 0, i32 13
  %2 = load i32, i32* %numProcessedBlocks, align 4
  %sub = sub i32 %2, 1
  %and = and i32 %sub, 63
  store i32 %and, i32* %blockIndex, align 4
  %3 = load i32, i32* %blockIndex, align 4
  %mul = mul i32 %3, 16384
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %4, i32 0, i32 2
  store i32 %mul, i32* %btBufPos, align 4
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 3
  store i32 %mul, i32* %btBufPosLimit, align 4
  %6 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %6, i32 0, i32 2
  %7 = load i32, i32* %btBufPos2, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %btBufPos2, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %8, i32 0, i32 1
  %9 = load i32*, i32** %btBuf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPosLimit3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %11, i32 0, i32 3
  %12 = load i32, i32* %btBufPosLimit3, align 4
  %add = add i32 %12, %10
  store i32 %add, i32* %btBufPosLimit3, align 4
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos4 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 2
  %14 = load i32, i32* %btBufPos4, align 4
  %inc5 = add i32 %14, 1
  store i32 %inc5, i32* %btBufPos4, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf7 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %15, i32 0, i32 1
  %16 = load i32*, i32** %btBuf7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx8, align 4
  %18 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %18, i32 0, i32 5
  store i32 %17, i32* %btNumAvailBytes, align 4
  %19 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %19, i32 0, i32 4
  %20 = load i32, i32* %lzPos, align 4
  %cmp = icmp uge i32 %20, -16385
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  call void @MatchFinderMt_Normalize(%struct._CMatchFinderMt* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @MatchFinderMt_GetPointerToCurrentPos(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 0
  %1 = load i8*, i8** %pointerToCurPos, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @MatchFinderMt_GetNumAvailableBytes(%struct._CMatchFinderMt* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 2
  %1 = load i32, i32* %btBufPos, align 4
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 3
  %3 = load i32, i32* %btBufPosLimit, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(%struct._CMatchFinderMt* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 5
  %6 = load i32, i32* %btNumAvailBytes, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define zeroext i8 @MatchFinderMt_GetIndexByte(%struct._CMatchFinderMt* %p, i32 %index) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %index.addr = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %1, i32 0, i32 0
  %2 = load i8*, i8** %pointerToCurPos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define i32* @MixMatches2(%struct._CMatchFinderMt* %p, i32 %matchMinPos, i32* %distances) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %matchMinPos.addr = alloca i32, align 4
  %distances.addr = alloca i32*, align 8
  %hash2Value = alloca i32, align 4
  %curMatch2 = alloca i32, align 4
  %hash = alloca i32*, align 8
  %cur = alloca i8*, align 8
  %lzPos = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %matchMinPos, i32* %matchMinPos.addr, align 4
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hash1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 6
  %1 = load i32*, i32** %hash1, align 8
  store i32* %1, i32** %hash, align 8
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 0
  %3 = load i8*, i8** %pointerToCurPos, align 8
  store i8* %3, i8** %cur, align 8
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %4, i32 0, i32 4
  %5 = load i32, i32* %lzPos2, align 4
  store i32 %5, i32* %lzPos, align 4
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %8, i32 0, i32 9
  %9 = load i32*, i32** %crc, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %12 to i32
  %xor = xor i32 %10, %conv
  %and = and i32 %xor, 1023
  store i32 %and, i32* %hash2Value, align 4
  %13 = load i32, i32* %hash2Value, align 4
  %idxprom5 = zext i32 %13 to i64
  %14 = load i32*, i32** %hash, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  store i32 %15, i32* %curMatch2, align 4
  %16 = load i32, i32* %lzPos, align 4
  %17 = load i32, i32* %hash2Value, align 4
  %idxprom7 = zext i32 %17 to i64
  %18 = load i32*, i32** %hash, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 %idxprom7
  store i32 %16, i32* %arrayidx8, align 4
  %19 = load i32, i32* %curMatch2, align 4
  %20 = load i32, i32* %matchMinPos.addr, align 4
  %cmp = icmp uge i32 %19, %20
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %curMatch2, align 4
  %conv10 = zext i32 %21 to i64
  %22 = load i32, i32* %lzPos, align 4
  %conv11 = zext i32 %22 to i64
  %sub = sub nsw i64 %conv10, %conv11
  %23 = load i8*, i8** %cur, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %23, i64 %sub
  %24 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %24 to i32
  %25 = load i8*, i8** %cur, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %26 to i32
  %cmp16 = icmp eq i32 %conv13, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  %27 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %incdec.ptr, i32** %distances.addr, align 8
  store i32 2, i32* %27, align 4
  %28 = load i32, i32* %lzPos, align 4
  %29 = load i32, i32* %curMatch2, align 4
  %sub19 = sub i32 %28, %29
  %sub20 = sub i32 %sub19, 1
  %30 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %incdec.ptr21, i32** %distances.addr, align 8
  store i32 %sub20, i32* %30, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %31 = load i32*, i32** %distances.addr, align 8
  ret i32* %31
}

; Function Attrs: nounwind uwtable
define i32* @MixMatches3(%struct._CMatchFinderMt* %p, i32 %matchMinPos, i32* %distances) #0 {
entry:
  %retval = alloca i32*, align 8
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %matchMinPos.addr = alloca i32, align 4
  %distances.addr = alloca i32*, align 8
  %hash2Value = alloca i32, align 4
  %hash3Value = alloca i32, align 4
  %curMatch2 = alloca i32, align 4
  %curMatch3 = alloca i32, align 4
  %hash = alloca i32*, align 8
  %cur = alloca i8*, align 8
  %lzPos = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %matchMinPos, i32* %matchMinPos.addr, align 4
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hash1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 6
  %1 = load i32*, i32** %hash1, align 8
  store i32* %1, i32** %hash, align 8
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 0
  %3 = load i8*, i8** %pointerToCurPos, align 8
  store i8* %3, i8** %cur, align 8
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %4, i32 0, i32 4
  %5 = load i32, i32* %lzPos2, align 4
  store i32 %5, i32* %lzPos, align 4
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %8, i32 0, i32 9
  %9 = load i32*, i32** %crc, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %12 to i32
  %xor = xor i32 %10, %conv
  store i32 %xor, i32* %temp, align 4
  %13 = load i32, i32* %temp, align 4
  %and = and i32 %13, 1023
  store i32 %and, i32* %hash2Value, align 4
  %14 = load i32, i32* %temp, align 4
  %15 = load i8*, i8** %cur, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %16 to i32
  %shl = shl i32 %conv6, 8
  %xor7 = xor i32 %14, %shl
  %and8 = and i32 %xor7, 65535
  store i32 %and8, i32* %hash3Value, align 4
  %17 = load i32, i32* %hash2Value, align 4
  %idxprom9 = zext i32 %17 to i64
  %18 = load i32*, i32** %hash, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4
  store i32 %19, i32* %curMatch2, align 4
  %20 = load i32, i32* %hash3Value, align 4
  %add = add i32 1024, %20
  %idxprom11 = zext i32 %add to i64
  %21 = load i32*, i32** %hash, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom11
  %22 = load i32, i32* %arrayidx12, align 4
  store i32 %22, i32* %curMatch3, align 4
  %23 = load i32, i32* %lzPos, align 4
  %24 = load i32, i32* %hash3Value, align 4
  %add13 = add i32 1024, %24
  %idxprom14 = zext i32 %add13 to i64
  %25 = load i32*, i32** %hash, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %25, i64 %idxprom14
  store i32 %23, i32* %arrayidx15, align 4
  %26 = load i32, i32* %hash2Value, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i32*, i32** %hash, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  store i32 %23, i32* %arrayidx17, align 4
  %28 = load i32, i32* %curMatch2, align 4
  %29 = load i32, i32* %matchMinPos.addr, align 4
  %cmp = icmp uge i32 %28, %29
  br i1 %cmp, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %entry
  %30 = load i32, i32* %curMatch2, align 4
  %conv19 = zext i32 %30 to i64
  %31 = load i32, i32* %lzPos, align 4
  %conv20 = zext i32 %31 to i64
  %sub = sub nsw i64 %conv19, %conv20
  %32 = load i8*, i8** %cur, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 %sub
  %33 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %33 to i32
  %34 = load i8*, i8** %cur, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %35 to i32
  %cmp25 = icmp eq i32 %conv22, %conv24
  br i1 %cmp25, label %if.then, label %if.end.44

if.then:                                          ; preds = %land.lhs.true
  %36 = load i32, i32* %lzPos, align 4
  %37 = load i32, i32* %curMatch2, align 4
  %sub27 = sub i32 %36, %37
  %sub28 = sub i32 %sub27, 1
  %38 = load i32*, i32** %distances.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %sub28, i32* %arrayidx29, align 4
  %39 = load i32, i32* %curMatch2, align 4
  %conv30 = zext i32 %39 to i64
  %40 = load i32, i32* %lzPos, align 4
  %conv31 = zext i32 %40 to i64
  %sub32 = sub nsw i64 %conv30, %conv31
  %add33 = add nsw i64 %sub32, 2
  %41 = load i8*, i8** %cur, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %41, i64 %add33
  %42 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %42 to i32
  %43 = load i8*, i8** %cur, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %44 to i32
  %cmp38 = icmp eq i32 %conv35, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.then
  %45 = load i32*, i32** %distances.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 3, i32* %arrayidx41, align 4
  %46 = load i32*, i32** %distances.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %46, i64 2
  store i32* %add.ptr, i32** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %47 = load i32*, i32** %distances.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 2, i32* %arrayidx42, align 4
  %48 = load i32*, i32** %distances.addr, align 8
  %add.ptr43 = getelementptr inbounds i32, i32* %48, i64 2
  store i32* %add.ptr43, i32** %distances.addr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %land.lhs.true, %entry
  %49 = load i32, i32* %curMatch3, align 4
  %50 = load i32, i32* %matchMinPos.addr, align 4
  %cmp45 = icmp uge i32 %49, %50
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.61

land.lhs.true.47:                                 ; preds = %if.end.44
  %51 = load i32, i32* %curMatch3, align 4
  %conv48 = zext i32 %51 to i64
  %52 = load i32, i32* %lzPos, align 4
  %conv49 = zext i32 %52 to i64
  %sub50 = sub nsw i64 %conv48, %conv49
  %53 = load i8*, i8** %cur, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %53, i64 %sub50
  %54 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %54 to i32
  %55 = load i8*, i8** %cur, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %56 to i32
  %cmp55 = icmp eq i32 %conv52, %conv54
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %land.lhs.true.47
  %57 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %incdec.ptr, i32** %distances.addr, align 8
  store i32 3, i32* %57, align 4
  %58 = load i32, i32* %lzPos, align 4
  %59 = load i32, i32* %curMatch3, align 4
  %sub58 = sub i32 %58, %59
  %sub59 = sub i32 %sub58, 1
  %60 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %incdec.ptr60, i32** %distances.addr, align 8
  store i32 %sub59, i32* %60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %land.lhs.true.47, %if.end.44
  %61 = load i32*, i32** %distances.addr, align 8
  store i32* %61, i32** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.40
  %62 = load i32*, i32** %retval
  ret i32* %62
}

; Function Attrs: nounwind uwtable
define i32 @MatchFinderMt2_GetMatches(%struct._CMatchFinderMt* %p, i32* %distances) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %distances.addr = alloca i32*, align 8
  %btBuf = alloca i32*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 1
  %1 = load i32*, i32** %btBuf1, align 8
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 2
  %3 = load i32, i32* %btBufPos, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext
  store i32* %add.ptr, i32** %btBuf, align 8
  %4 = load i32*, i32** %btBuf, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %btBuf, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %len, align 4
  %6 = load i32, i32* %len, align 4
  %add = add i32 1, %6
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 2
  %8 = load i32, i32* %btBufPos2, align 4
  %add3 = add i32 %8, %add
  store i32 %add3, i32* %btBufPos2, align 4
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 5
  %10 = load i32, i32* %btNumAvailBytes, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %btNumAvailBytes, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %btBuf, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %incdec.ptr4, i32** %btBuf, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr5, i32** %distances.addr, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %btBuf, align 8
  %incdec.ptr6 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr6, i32** %btBuf, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %incdec.ptr7, i32** %distances.addr, align 8
  store i32 %17, i32* %18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %add8 = add i32 %19, 2
  store i32 %add8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %20, i32 0, i32 4
  %21 = load i32, i32* %lzPos, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %lzPos, align 4
  %22 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %22, i32 0, i32 0
  %23 = load i8*, i8** %pointerToCurPos, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr9, i8** %pointerToCurPos, align 8
  %24 = load i32, i32* %len, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @MatchFinderMt_GetMatches(%struct._CMatchFinderMt* %p, i32* %distances) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %distances.addr = alloca i32*, align 8
  %btBuf = alloca i32*, align 8
  %len = alloca i32, align 4
  %distances2 = alloca i32*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 1
  %1 = load i32*, i32** %btBuf1, align 8
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 2
  %3 = load i32, i32* %btBufPos, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext
  store i32* %add.ptr, i32** %btBuf, align 8
  %4 = load i32*, i32** %btBuf, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %btBuf, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %len, align 4
  %6 = load i32, i32* %len, align 4
  %add = add i32 1, %6
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 2
  %8 = load i32, i32* %btBufPos2, align 4
  %add3 = add i32 %8, %add
  store i32 %add3, i32* %btBufPos2, align 4
  %9 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %10, i32 0, i32 5
  %11 = load i32, i32* %btNumAvailBytes, align 4
  %dec = add i32 %11, -1
  store i32 %dec, i32* %btNumAvailBytes, align 4
  %cmp4 = icmp uge i32 %11, 4
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MixMatchesFunc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %12, i32 0, i32 10
  %13 = load i32* (i8*, i32, i32*)*, i32* (i8*, i32, i32*)** %MixMatchesFunc, align 8
  %14 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %15 = bitcast %struct._CMatchFinderMt* %14 to i8*
  %16 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %16, i32 0, i32 4
  %17 = load i32, i32* %lzPos, align 4
  %18 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %historySize = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %18, i32 0, i32 8
  %19 = load i32, i32* %historySize, align 4
  %sub = sub i32 %17, %19
  %20 = load i32*, i32** %distances.addr, align 8
  %call = call i32* %13(i8* %15, i32 %sub, i32* %20)
  %21 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.24

if.else:                                          ; preds = %entry
  %22 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes6 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %22, i32 0, i32 5
  %23 = load i32, i32* %btNumAvailBytes6, align 4
  %dec7 = add i32 %23, -1
  store i32 %dec7, i32* %btNumAvailBytes6, align 4
  %24 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MixMatchesFunc8 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %24, i32 0, i32 10
  %25 = load i32* (i8*, i32, i32*)*, i32* (i8*, i32, i32*)** %MixMatchesFunc8, align 8
  %26 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %27 = bitcast %struct._CMatchFinderMt* %26 to i8*
  %28 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos9 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %28, i32 0, i32 4
  %29 = load i32, i32* %lzPos9, align 4
  %30 = load i32*, i32** %btBuf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %30, i64 1
  %31 = load i32, i32* %arrayidx, align 4
  %sub10 = sub i32 %29, %31
  %32 = load i32*, i32** %distances.addr, align 8
  %call11 = call i32* %25(i8* %27, i32 %sub10, i32* %32)
  store i32* %call11, i32** %distances2, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %33 = load i32*, i32** %btBuf, align 8
  %incdec.ptr12 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %incdec.ptr12, i32** %btBuf, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %distances2, align 8
  %incdec.ptr13 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr13, i32** %distances2, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %btBuf, align 8
  %incdec.ptr14 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %incdec.ptr14, i32** %btBuf, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %distances2, align 8
  %incdec.ptr15 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr15, i32** %distances2, align 8
  store i32 %37, i32* %38, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %39 = load i32, i32* %len, align 4
  %sub16 = sub i32 %39, 2
  store i32 %sub16, i32* %len, align 4
  %cmp17 = icmp ne i32 %sub16, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i32*, i32** %distances2, align 8
  %41 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast19 = ptrtoint i32* %40 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i32* %41 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %sub.ptr.div22 = sdiv exact i64 %sub.ptr.sub21, 4
  %conv23 = trunc i64 %sub.ptr.div22 to i32
  store i32 %conv23, i32* %len, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %if.end
  %42 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos25 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %42, i32 0, i32 4
  %43 = load i32, i32* %lzPos25, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %lzPos25, align 4
  %44 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %44, i32 0, i32 0
  %45 = load i8*, i8** %pointerToCurPos, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr26, i8** %pointerToCurPos, align 8
  %46 = load i32, i32* %len, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt0_Skip(%struct._CMatchFinderMt* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %num.addr = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 2
  %1 = load i32, i32* %btBufPos, align 4
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 3
  %3 = load i32, i32* %btBufPosLimit, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(%struct._CMatchFinderMt* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 5
  %6 = load i32, i32* %btNumAvailBytes, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %btNumAvailBytes, align 4
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 4
  %8 = load i32, i32* %lzPos, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %lzPos, align 4
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 0
  %10 = load i8*, i8** %pointerToCurPos, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %pointerToCurPos, align 8
  %11 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos1 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %11, i32 0, i32 2
  %12 = load i32, i32* %btBufPos1, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 1
  %14 = load i32*, i32** %btBuf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %add = add i32 %15, 1
  %16 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos2 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %16, i32 0, i32 2
  %17 = load i32, i32* %btBufPos2, align 4
  %add3 = add i32 %17, %add
  store i32 %add3, i32* %btBufPos2, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %18 = load i32, i32* %num.addr, align 4
  %dec4 = add i32 %18, -1
  store i32 %dec4, i32* %num.addr, align 4
  %cmp5 = icmp ne i32 %dec4, 0
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt2_Skip(%struct._CMatchFinderMt* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %num.addr = alloca i32, align 4
  %cur = alloca i8*, align 8
  %hash = alloca i32*, align 8
  %hash2Value = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 2
  %1 = load i32, i32* %btBufPos, align 4
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 3
  %3 = load i32, i32* %btBufPosLimit, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(%struct._CMatchFinderMt* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 5
  %6 = load i32, i32* %btNumAvailBytes, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %btNumAvailBytes, align 4
  %cmp1 = icmp uge i32 %6, 2
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 0
  %8 = load i8*, i8** %pointerToCurPos, align 8
  store i8* %8, i8** %cur, align 8
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hash3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 6
  %10 = load i32*, i32** %hash3, align 8
  store i32* %10, i32** %hash, align 8
  %11 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %12 to i64
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 9
  %14 = load i32*, i32** %crc, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx4, align 4
  %16 = load i8*, i8** %cur, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %17 to i32
  %xor = xor i32 %15, %conv
  %and = and i32 %xor, 1023
  store i32 %and, i32* %hash2Value, align 4
  %18 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %18, i32 0, i32 4
  %19 = load i32, i32* %lzPos, align 4
  %20 = load i32, i32* %hash2Value, align 4
  %idxprom6 = zext i32 %20 to i64
  %21 = load i32*, i32** %hash, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %21, i64 %idxprom6
  store i32 %19, i32* %arrayidx7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.2, %if.end
  %22 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos9 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %22, i32 0, i32 4
  %23 = load i32, i32* %lzPos9, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %lzPos9, align 4
  %24 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos10 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %24, i32 0, i32 0
  %25 = load i8*, i8** %pointerToCurPos10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %pointerToCurPos10, align 8
  %26 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos11 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %26, i32 0, i32 2
  %27 = load i32, i32* %btBufPos11, align 4
  %idxprom12 = zext i32 %27 to i64
  %28 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %28, i32 0, i32 1
  %29 = load i32*, i32** %btBuf, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %29, i64 %idxprom12
  %30 = load i32, i32* %arrayidx13, align 4
  %add = add i32 %30, 1
  %31 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos14 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %31, i32 0, i32 2
  %32 = load i32, i32* %btBufPos14, align 4
  %add15 = add i32 %32, %add
  store i32 %add15, i32* %btBufPos14, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %33 = load i32, i32* %num.addr, align 4
  %dec16 = add i32 %33, -1
  store i32 %dec16, i32* %num.addr, align 4
  %cmp17 = icmp ne i32 %dec16, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt3_Skip(%struct._CMatchFinderMt* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %num.addr = alloca i32, align 4
  %cur = alloca i8*, align 8
  %hash = alloca i32*, align 8
  %hash2Value = alloca i32, align 4
  %hash3Value = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %0, i32 0, i32 2
  %1 = load i32, i32* %btBufPos, align 4
  %2 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPosLimit = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %2, i32 0, i32 3
  %3 = load i32, i32* %btBufPosLimit, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(%struct._CMatchFinderMt* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btNumAvailBytes = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 5
  %6 = load i32, i32* %btNumAvailBytes, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %btNumAvailBytes, align 4
  %cmp1 = icmp uge i32 %6, 3
  br i1 %cmp1, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %7, i32 0, i32 0
  %8 = load i8*, i8** %pointerToCurPos, align 8
  store i8* %8, i8** %cur, align 8
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %hash3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 6
  %10 = load i32*, i32** %hash3, align 8
  store i32* %10, i32** %hash, align 8
  %11 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %12 to i64
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 9
  %14 = load i32*, i32** %crc, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx4, align 4
  %16 = load i8*, i8** %cur, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %17 to i32
  %xor = xor i32 %15, %conv
  store i32 %xor, i32* %temp, align 4
  %18 = load i32, i32* %temp, align 4
  %and = and i32 %18, 1023
  store i32 %and, i32* %hash2Value, align 4
  %19 = load i32, i32* %temp, align 4
  %20 = load i8*, i8** %cur, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %20, i64 2
  %21 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %21 to i32
  %shl = shl i32 %conv7, 8
  %xor8 = xor i32 %19, %shl
  %and9 = and i32 %xor8, 65535
  store i32 %and9, i32* %hash3Value, align 4
  %22 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %22, i32 0, i32 4
  %23 = load i32, i32* %lzPos, align 4
  %24 = load i32, i32* %hash2Value, align 4
  %idxprom10 = zext i32 %24 to i64
  %25 = load i32*, i32** %hash, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %25, i64 %idxprom10
  store i32 %23, i32* %arrayidx11, align 4
  %26 = load i32, i32* %hash3Value, align 4
  %add = add i32 1024, %26
  %idxprom12 = zext i32 %add to i64
  %27 = load i32*, i32** %hash, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %27, i64 %idxprom12
  store i32 %23, i32* %arrayidx13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.2, %if.end
  %28 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %lzPos15 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %28, i32 0, i32 4
  %29 = load i32, i32* %lzPos15, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %lzPos15, align 4
  %30 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %pointerToCurPos16 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %30, i32 0, i32 0
  %31 = load i8*, i8** %pointerToCurPos16, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %pointerToCurPos16, align 8
  %32 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos17 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %32, i32 0, i32 2
  %33 = load i32, i32* %btBufPos17, align 4
  %idxprom18 = zext i32 %33 to i64
  %34 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBuf = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %34, i32 0, i32 1
  %35 = load i32*, i32** %btBuf, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %35, i64 %idxprom18
  %36 = load i32, i32* %arrayidx19, align 4
  %add20 = add i32 %36, 1
  %37 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %btBufPos21 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %37, i32 0, i32 2
  %38 = load i32, i32* %btBufPos21, align 4
  %add22 = add i32 %38, %add20
  store i32 %add22, i32* %btBufPos21, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  %39 = load i32, i32* %num.addr, align 4
  %dec23 = add i32 %39, -1
  store i32 %dec23, i32* %num.addr, align 4
  %cmp24 = icmp ne i32 %dec23, 0
  br i1 %cmp24, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinderMt_CreateVTable(%struct._CMatchFinderMt* %p, %struct._IMatchFinder* %vTable) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinderMt*, align 8
  %vTable.addr = alloca %struct._IMatchFinder*, align 8
  store %struct._CMatchFinderMt* %p, %struct._CMatchFinderMt** %p.addr, align 8
  store %struct._IMatchFinder* %vTable, %struct._IMatchFinder** %vTable.addr, align 8
  %0 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Init = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %0, i32 0, i32 0
  store void (i8*)* bitcast (void (%struct._CMatchFinderMt*)* @MatchFinderMt_Init to void (i8*)*), void (i8*)** %Init, align 8
  %1 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetIndexByte = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %1, i32 0, i32 1
  store i8 (i8*, i32)* bitcast (i8 (%struct._CMatchFinderMt*, i32)* @MatchFinderMt_GetIndexByte to i8 (i8*, i32)*), i8 (i8*, i32)** %GetIndexByte, align 8
  %2 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetNumAvailableBytes = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %2, i32 0, i32 2
  store i32 (i8*)* bitcast (i32 (%struct._CMatchFinderMt*)* @MatchFinderMt_GetNumAvailableBytes to i32 (i8*)*), i32 (i8*)** %GetNumAvailableBytes, align 8
  %3 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetPointerToCurrentPos = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %3, i32 0, i32 3
  store i8* (i8*)* bitcast (i8* (%struct._CMatchFinderMt*)* @MatchFinderMt_GetPointerToCurrentPos to i8* (i8*)*), i8* (i8*)** %GetPointerToCurrentPos, align 8
  %4 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetMatches = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %4, i32 0, i32 4
  store i32 (i8*, i32*)* bitcast (i32 (%struct._CMatchFinderMt*, i32*)* @MatchFinderMt_GetMatches to i32 (i8*, i32*)*), i32 (i8*, i32*)** %GetMatches, align 8
  %5 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MatchFinder = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %5, i32 0, i32 27
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %MatchFinder, align 8
  %numHashBytes = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 18
  %7 = load i32, i32* %numHashBytes, align 4
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %GetHeadsFunc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %8, i32 0, i32 26
  store void (i8*, i32, i32*, i32, i32*, i32, i32*)* @GetHeads2, void (i8*, i32, i32*, i32, i32*, i32, i32*)** %GetHeadsFunc, align 8
  %9 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MixMatchesFunc = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %9, i32 0, i32 10
  store i32* (i8*, i32, i32*)* null, i32* (i8*, i32, i32*)** %MixMatchesFunc, align 8
  %10 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Skip = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %10, i32 0, i32 5
  store void (i8*, i32)* bitcast (void (%struct._CMatchFinderMt*, i32)* @MatchFinderMt0_Skip to void (i8*, i32)*), void (i8*, i32)** %Skip, align 8
  %11 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetMatches1 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %11, i32 0, i32 4
  store i32 (i8*, i32*)* bitcast (i32 (%struct._CMatchFinderMt*, i32*)* @MatchFinderMt2_GetMatches to i32 (i8*, i32*)*), i32 (i8*, i32*)** %GetMatches1, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %12 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %GetHeadsFunc3 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %12, i32 0, i32 26
  store void (i8*, i32, i32*, i32, i32*, i32, i32*)* @GetHeads3, void (i8*, i32, i32*, i32, i32*, i32, i32*)** %GetHeadsFunc3, align 8
  %13 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MixMatchesFunc4 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %13, i32 0, i32 10
  store i32* (i8*, i32, i32*)* bitcast (i32* (%struct._CMatchFinderMt*, i32, i32*)* @MixMatches2 to i32* (i8*, i32, i32*)*), i32* (i8*, i32, i32*)** %MixMatchesFunc4, align 8
  %14 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Skip5 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %14, i32 0, i32 5
  store void (i8*, i32)* bitcast (void (%struct._CMatchFinderMt*, i32)* @MatchFinderMt2_Skip to void (i8*, i32)*), void (i8*, i32)** %Skip5, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MatchFinder6 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %15, i32 0, i32 27
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %MatchFinder6, align 8
  %bigHash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %16, i32 0, i32 22
  %17 = load i32, i32* %bigHash, align 4
  %tobool = icmp ne i32 %17, 0
  %cond = select i1 %tobool, void (i8*, i32, i32*, i32, i32*, i32, i32*)* @GetHeads4b, void (i8*, i32, i32*, i32, i32*, i32, i32*)* @GetHeads4
  %18 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %GetHeadsFunc7 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %18, i32 0, i32 26
  store void (i8*, i32, i32*, i32, i32*, i32, i32*)* %cond, void (i8*, i32, i32*, i32, i32*, i32, i32*)** %GetHeadsFunc7, align 8
  %19 = load %struct._CMatchFinderMt*, %struct._CMatchFinderMt** %p.addr, align 8
  %MixMatchesFunc8 = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %19, i32 0, i32 10
  store i32* (i8*, i32, i32*)* bitcast (i32* (%struct._CMatchFinderMt*, i32, i32*)* @MixMatches3 to i32* (i8*, i32, i32*)*), i32* (i8*, i32, i32*)** %MixMatchesFunc8, align 8
  %20 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Skip9 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %20, i32 0, i32 5
  store void (i8*, i32)* bitcast (void (%struct._CMatchFinderMt*, i32)* @MatchFinderMt3_Skip to void (i8*, i32)*), void (i8*, i32)** %Skip9, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetHeads2(i8* %p, i32 %pos, i32* %hash, i32 %hashMask, i32* %heads, i32 %numHeads, i32* %crc) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32*, align 8
  %hashMask.addr = alloca i32, align 4
  %heads.addr = alloca i32*, align 8
  %numHeads.addr = alloca i32, align 4
  %crc.addr = alloca i32*, align 8
  %value = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %hash, i32** %hash.addr, align 8
  store i32 %hashMask, i32* %hashMask.addr, align 4
  store i32* %heads, i32** %heads.addr, align 8
  store i32 %numHeads, i32* %numHeads.addr, align 4
  store i32* %crc, i32** %crc.addr, align 8
  %0 = load i32, i32* %hashMask.addr, align 4
  store i32 %0, i32* %hashMask.addr, align 4
  %1 = load i32*, i32** %crc.addr, align 8
  store i32* %1, i32** %crc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %numHeads.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %6 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  store i32 %or, i32* %value, align 4
  %7 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %value, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i32*, i32** %hash.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx3, align 4
  %sub = sub i32 %8, %11
  %12 = load i32*, i32** %heads.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr4, i32** %heads.addr, align 8
  store i32 %sub, i32* %12, align 4
  %13 = load i32, i32* %pos.addr, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %pos.addr, align 4
  %14 = load i32, i32* %value, align 4
  %idxprom5 = zext i32 %14 to i64
  %15 = load i32*, i32** %hash.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom5
  store i32 %13, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %numHeads.addr, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* %numHeads.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetHeads3(i8* %p, i32 %pos, i32* %hash, i32 %hashMask, i32* %heads, i32 %numHeads, i32* %crc) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32*, align 8
  %hashMask.addr = alloca i32, align 4
  %heads.addr = alloca i32*, align 8
  %numHeads.addr = alloca i32, align 4
  %crc.addr = alloca i32*, align 8
  %value = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %hash, i32** %hash.addr, align 8
  store i32 %hashMask, i32* %hashMask.addr, align 4
  store i32* %heads, i32** %heads.addr, align 8
  store i32 %numHeads, i32* %numHeads.addr, align 4
  store i32* %crc, i32** %crc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %numHeads.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %2 to i64
  %3 = load i32*, i32** %crc.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i8*, i8** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %4, %conv
  %7 = load i8*, i8** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %shl = shl i32 %conv4, 8
  %xor5 = xor i32 %xor, %shl
  %9 = load i32, i32* %hashMask.addr, align 4
  %and = and i32 %xor5, %9
  store i32 %and, i32* %value, align 4
  %10 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %value, align 4
  %idxprom6 = zext i32 %12 to i64
  %13 = load i32*, i32** %hash.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %sub = sub i32 %11, %14
  %15 = load i32*, i32** %heads.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr8, i32** %heads.addr, align 8
  store i32 %sub, i32* %15, align 4
  %16 = load i32, i32* %pos.addr, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %pos.addr, align 4
  %17 = load i32, i32* %value, align 4
  %idxprom9 = zext i32 %17 to i64
  %18 = load i32*, i32** %hash.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  store i32 %16, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %numHeads.addr, align 4
  %dec = add i32 %19, -1
  store i32 %dec, i32* %numHeads.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetHeads4b(i8* %p, i32 %pos, i32* %hash, i32 %hashMask, i32* %heads, i32 %numHeads, i32* %crc) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32*, align 8
  %hashMask.addr = alloca i32, align 4
  %heads.addr = alloca i32*, align 8
  %numHeads.addr = alloca i32, align 4
  %crc.addr = alloca i32*, align 8
  %value = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %hash, i32** %hash.addr, align 8
  store i32 %hashMask, i32* %hashMask.addr, align 4
  store i32* %heads, i32** %heads.addr, align 8
  store i32 %numHeads, i32* %numHeads.addr, align 4
  store i32* %crc, i32** %crc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %numHeads.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %2 to i64
  %3 = load i32*, i32** %crc.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i8*, i8** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %4, %conv
  %7 = load i8*, i8** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %shl = shl i32 %conv4, 8
  %xor5 = xor i32 %xor, %shl
  %9 = load i8*, i8** %p.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 3
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %shl8 = shl i32 %conv7, 16
  %xor9 = xor i32 %xor5, %shl8
  %11 = load i32, i32* %hashMask.addr, align 4
  %and = and i32 %xor9, %11
  store i32 %and, i32* %value, align 4
  %12 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %13 = load i32, i32* %pos.addr, align 4
  %14 = load i32, i32* %value, align 4
  %idxprom10 = zext i32 %14 to i64
  %15 = load i32*, i32** %hash.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %16 = load i32, i32* %arrayidx11, align 4
  %sub = sub i32 %13, %16
  %17 = load i32*, i32** %heads.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr12, i32** %heads.addr, align 8
  store i32 %sub, i32* %17, align 4
  %18 = load i32, i32* %pos.addr, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %pos.addr, align 4
  %19 = load i32, i32* %value, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load i32*, i32** %hash.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 %idxprom13
  store i32 %18, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %numHeads.addr, align 4
  %dec = add i32 %21, -1
  store i32 %dec, i32* %numHeads.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetHeads4(i8* %p, i32 %pos, i32* %hash, i32 %hashMask, i32* %heads, i32 %numHeads, i32* %crc) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %hash.addr = alloca i32*, align 8
  %hashMask.addr = alloca i32, align 4
  %heads.addr = alloca i32*, align 8
  %numHeads.addr = alloca i32, align 4
  %crc.addr = alloca i32*, align 8
  %value = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %hash, i32** %hash.addr, align 8
  store i32 %hashMask, i32* %hashMask.addr, align 4
  store i32* %heads, i32** %heads.addr, align 8
  store i32 %numHeads, i32* %numHeads.addr, align 4
  store i32* %crc, i32** %crc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %numHeads.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %2 to i64
  %3 = load i32*, i32** %crc.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i8*, i8** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %4, %conv
  %7 = load i8*, i8** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %shl = shl i32 %conv4, 8
  %xor5 = xor i32 %xor, %shl
  %9 = load i8*, i8** %p.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 3
  %10 = load i8, i8* %arrayidx6, align 1
  %idxprom7 = zext i8 %10 to i64
  %11 = load i32*, i32** %crc.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %shl9 = shl i32 %12, 5
  %xor10 = xor i32 %xor5, %shl9
  %13 = load i32, i32* %hashMask.addr, align 4
  %and = and i32 %xor10, %13
  store i32 %and, i32* %value, align 4
  %14 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %value, align 4
  %idxprom11 = zext i32 %16 to i64
  %17 = load i32*, i32** %hash.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 %idxprom11
  %18 = load i32, i32* %arrayidx12, align 4
  %sub = sub i32 %15, %18
  %19 = load i32*, i32** %heads.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr13, i32** %heads.addr, align 8
  store i32 %sub, i32* %19, align 4
  %20 = load i32, i32* %pos.addr, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %pos.addr, align 4
  %21 = load i32, i32* %value, align 4
  %idxprom14 = zext i32 %21 to i64
  %22 = load i32*, i32** %hash.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  store i32 %20, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %numHeads.addr, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %numHeads.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @MtSync_Create2(%struct._CMtSync* %p, i32 (i8*)* %startAddress, i8* %obj, i32 %numBlocks) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMtSync*, align 8
  %startAddress.addr = alloca i32 (i8*)*, align 8
  %obj.addr = alloca i8*, align 8
  %numBlocks.addr = alloca i32, align 4
  store %struct._CMtSync* %p, %struct._CMtSync** %p.addr, align 8
  store i32 (i8*)* %startAddress, i32 (i8*)** %startAddress.addr, align 8
  store i8* %obj, i8** %obj.addr, align 8
  store i32 %numBlocks, i32* %numBlocks.addr, align 4
  %0 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasCreated = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %0, i32 0, i32 0
  %1 = load i32, i32* %wasCreated, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %cs = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %2, i32 0, i32 12
  %call = call i32 @CriticalSection_Init(%struct.CCriticalSection* %cs)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 12, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %csWasInitialized = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %3, i32 0, i32 10
  store i32 1, i32* %csWasInitialized, align 4
  %4 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %canStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %4, i32 0, i32 5
  %call3 = call i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %canStart)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store i32 12, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStarted = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %5, i32 0, i32 6
  %call7 = call i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %wasStarted)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 12, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasStopped = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %6, i32 0, i32 7
  %call11 = call i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent* %wasStopped)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 12, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %7 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %freeSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %7, i32 0, i32 8
  %8 = load i32, i32* %numBlocks.addr, align 4
  %9 = load i32, i32* %numBlocks.addr, align 4
  %call15 = call i32 @Semaphore_Create(%struct._CSemaphore* %freeSemaphore, i32 %8, i32 %9)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 12, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %10 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %filledSemaphore = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %10, i32 0, i32 9
  %11 = load i32, i32* %numBlocks.addr, align 4
  %call19 = call i32 @Semaphore_Create(%struct._CSemaphore* %filledSemaphore, i32 0, i32 %11)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 12, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %12 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %needStart = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %12, i32 0, i32 1
  store i32 1, i32* %needStart, align 4
  %13 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %thread = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %13, i32 0, i32 4
  %14 = load i32 (i8*)*, i32 (i8*)** %startAddress.addr, align 8
  %15 = load i8*, i8** %obj.addr, align 8
  %call23 = call i32 @Thread_Create(%struct._CThread* %thread, i32 (i8*)* %14, i8* %15)
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store i32 12, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %16 = load %struct._CMtSync*, %struct._CMtSync** %p.addr, align 8
  %wasCreated27 = getelementptr inbounds %struct._CMtSync, %struct._CMtSync* %16, i32 0, i32 0
  store i32 1, i32* %wasCreated27, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.21, %if.then.17, %if.then.13, %if.then.9, %if.then.5, %if.then.1, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @CriticalSection_Init(%struct.CCriticalSection*) #1

declare i32 @AutoResetEvent_CreateNotSignaled(%struct._CEvent*) #1

declare i32 @Semaphore_Create(%struct._CSemaphore*, i32, i32) #1

declare i32 @Thread_Create(%struct._CThread*, i32 (i8*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
