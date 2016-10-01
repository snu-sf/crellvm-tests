; ModuleID = './MultiSource.Benchmarks.Ptrdist/24.ks.KS-2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Net = type { %struct._Net*, i64 }
%struct._Module = type { %struct._Module*, i64 }
%struct._ModuleList = type { %struct._ModuleRec*, %struct._ModuleRec* }
%struct._ModuleRec = type { %struct._ModuleRec*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.anon = type { i64, i64, i64 }

@modules = external global [1024 x %struct._Net*], align 16
@cost = external global [1024 x float], align 16
@nets = external global [1024 x %struct._Module*], align 16
@moduleToGroup = external global [1024 x i32], align 16
@D = external global [1024 x float], align 16
@groupA = external global %struct._ModuleList, align 8
@groupB = external global %struct._ModuleList, align 8
@swapToB = external global %struct._ModuleList, align 8
@swapToA = external global %struct._ModuleList, align 8
@numModules = external global i64, align 8
@GP = external global [1024 x float], align 16
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [48 x i8] c"----------------------------------------------\0A\00", align 1
@maxStat = common global i64 0, align 8
@netStats = common global [256 x %struct.anon] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [12 x i8] c"Group A:  \0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%3lu \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Group B:  \0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Conn %3lu - %3lu cut.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Total edge cuts = %lu\0A\00", align 1
@numNets = external global i64, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"Net %3lu cut.\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Total net cuts  = %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"sz:%5lu     total:%5lu     edgesCut:%5lu     netsCuts:%5lu\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"Usage: KL <input_file>\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"No progress: gMax = %f\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"gMax = %f, iMax = %lu\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @CAiBj(%struct._ModuleRec* %mrA, %struct._ModuleRec* %mrB) #0 {
entry:
  %mrA.addr = alloca %struct._ModuleRec*, align 8
  %mrB.addr = alloca %struct._ModuleRec*, align 8
  %netNode = alloca %struct._Net*, align 8
  %modNode = alloca %struct._Module*, align 8
  %gain = alloca float, align 4
  %netCost = alloca float, align 4
  %module = alloca i64, align 8
  store %struct._ModuleRec* %mrA, %struct._ModuleRec** %mrA.addr, align 8
  store %struct._ModuleRec* %mrB, %struct._ModuleRec** %mrB.addr, align 8
  store float 0.000000e+00, float* %gain, align 4
  %0 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB.addr, align 8
  %module1 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %0, i32 0, i32 1
  %1 = load i64, i64* %module1, align 8
  store i64 %1, i64* %module, align 8
  %2 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA.addr, align 8
  %module2 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %2, i32 0, i32 1
  %3 = load i64, i64* %module2, align 8
  %arrayidx = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i32 0, i64 %3
  %4 = load %struct._Net*, %struct._Net** %arrayidx, align 8
  store %struct._Net* %4, %struct._Net** %netNode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %5 = load %struct._Net*, %struct._Net** %netNode, align 8
  %cmp = icmp ne %struct._Net* %5, null
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %6 = load %struct._Net*, %struct._Net** %netNode, align 8
  %net = getelementptr inbounds %struct._Net, %struct._Net* %6, i32 0, i32 1
  %7 = load i64, i64* %net, align 8
  %arrayidx3 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i32 0, i64 %7
  %8 = load float, float* %arrayidx3, align 4
  store float %8, float* %netCost, align 4
  %9 = load %struct._Net*, %struct._Net** %netNode, align 8
  %net4 = getelementptr inbounds %struct._Net, %struct._Net* %9, i32 0, i32 1
  %10 = load i64, i64* %net4, align 8
  %arrayidx5 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %10
  %11 = load %struct._Module*, %struct._Module** %arrayidx5, align 8
  store %struct._Module* %11, %struct._Module** %modNode, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %12 = load %struct._Module*, %struct._Module** %modNode, align 8
  %cmp7 = icmp ne %struct._Module* %12, null
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %13 = load %struct._Module*, %struct._Module** %modNode, align 8
  %module9 = getelementptr inbounds %struct._Module, %struct._Module* %13, i32 0, i32 1
  %14 = load i64, i64* %module9, align 8
  %15 = load i64, i64* %module, align 8
  %cmp10 = icmp eq i64 %14, %15
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.8
  %16 = load float, float* %gain, align 4
  %17 = load float, float* %netCost, align 4
  %add = fadd float %16, %17
  store float %add, float* %gain, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct._Module*, %struct._Module** %modNode, align 8
  %next = getelementptr inbounds %struct._Module, %struct._Module* %18, i32 0, i32 0
  %19 = load %struct._Module*, %struct._Module** %next, align 8
  store %struct._Module* %19, %struct._Module** %modNode, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %20 = load %struct._Net*, %struct._Net** %netNode, align 8
  %next12 = getelementptr inbounds %struct._Net, %struct._Net* %20, i32 0, i32 0
  %21 = load %struct._Net*, %struct._Net** %next12, align 8
  store %struct._Net* %21, %struct._Net** %netNode, align 8
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %22 = load float, float* %gain, align 4
  ret float %22
}

; Function Attrs: nounwind uwtable
define void @SwapNode(%struct._ModuleRec* %maxPrev, %struct._ModuleRec* %max, %struct._ModuleList* %group, %struct._ModuleList* %swapTo) #0 {
entry:
  %maxPrev.addr = alloca %struct._ModuleRec*, align 8
  %max.addr = alloca %struct._ModuleRec*, align 8
  %group.addr = alloca %struct._ModuleList*, align 8
  %swapTo.addr = alloca %struct._ModuleList*, align 8
  store %struct._ModuleRec* %maxPrev, %struct._ModuleRec** %maxPrev.addr, align 8
  store %struct._ModuleRec* %max, %struct._ModuleRec** %max.addr, align 8
  store %struct._ModuleList* %group, %struct._ModuleList** %group.addr, align 8
  store %struct._ModuleList* %swapTo, %struct._ModuleList** %swapTo.addr, align 8
  %0 = load %struct._ModuleRec*, %struct._ModuleRec** %maxPrev.addr, align 8
  %cmp = icmp eq %struct._ModuleRec* %0, null
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %1 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %head = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %1, i32 0, i32 0
  %2 = load %struct._ModuleRec*, %struct._ModuleRec** %head, align 8
  %3 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %tail = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %3, i32 0, i32 1
  %4 = load %struct._ModuleRec*, %struct._ModuleRec** %tail, align 8
  %cmp1 = icmp eq %struct._ModuleRec* %2, %4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %head3 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %5, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %head3, align 8
  %6 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %tail4 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %6, i32 0, i32 1
  store %struct._ModuleRec* null, %struct._ModuleRec** %tail4, align 8
  %7 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %next = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %7, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %next5 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %8, i32 0, i32 0
  %9 = load %struct._ModuleRec*, %struct._ModuleRec** %next5, align 8
  %10 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %head6 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %10, i32 0, i32 0
  store %struct._ModuleRec* %9, %struct._ModuleRec** %head6, align 8
  %11 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %next7 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %11, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.17

if.else.8:                                        ; preds = %entry
  %12 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %tail9 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %12, i32 0, i32 1
  %13 = load %struct._ModuleRec*, %struct._ModuleRec** %tail9, align 8
  %14 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %cmp10 = icmp eq %struct._ModuleRec* %13, %14
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else.8
  %15 = load %struct._ModuleRec*, %struct._ModuleRec** %maxPrev.addr, align 8
  %16 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %tail12 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %16, i32 0, i32 1
  store %struct._ModuleRec* %15, %struct._ModuleRec** %tail12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else.8
  %17 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %next14 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %17, i32 0, i32 0
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** %next14, align 8
  %19 = load %struct._ModuleRec*, %struct._ModuleRec** %maxPrev.addr, align 8
  %next15 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %19, i32 0, i32 0
  store %struct._ModuleRec* %18, %struct._ModuleRec** %next15, align 8
  %20 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %next16 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %20, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.13, %if.end
  %21 = load %struct._ModuleList*, %struct._ModuleList** %swapTo.addr, align 8
  %tail18 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %21, i32 0, i32 1
  %22 = load %struct._ModuleRec*, %struct._ModuleRec** %tail18, align 8
  %cmp19 = icmp eq %struct._ModuleRec* %22, null
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.end.17
  %23 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %24 = load %struct._ModuleList*, %struct._ModuleList** %swapTo.addr, align 8
  %tail21 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %24, i32 0, i32 1
  store %struct._ModuleRec* %23, %struct._ModuleRec** %tail21, align 8
  %25 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %26 = load %struct._ModuleList*, %struct._ModuleList** %swapTo.addr, align 8
  %head22 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %26, i32 0, i32 0
  store %struct._ModuleRec* %25, %struct._ModuleRec** %head22, align 8
  br label %if.end.27

if.else.23:                                       ; preds = %if.end.17
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %28 = load %struct._ModuleList*, %struct._ModuleList** %swapTo.addr, align 8
  %tail24 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %28, i32 0, i32 1
  %29 = load %struct._ModuleRec*, %struct._ModuleRec** %tail24, align 8
  %next25 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %29, i32 0, i32 0
  store %struct._ModuleRec* %27, %struct._ModuleRec** %next25, align 8
  %30 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %31 = load %struct._ModuleList*, %struct._ModuleList** %swapTo.addr, align 8
  %tail26 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %31, i32 0, i32 1
  store %struct._ModuleRec* %30, %struct._ModuleRec** %tail26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.20
  %32 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %next28 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %32, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next28, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateDs(%struct._ModuleRec* %max, i32 %group) #0 {
entry:
  %max.addr = alloca %struct._ModuleRec*, align 8
  %group.addr = alloca i32, align 4
  %net = alloca %struct._Net*, align 8
  %mod = alloca %struct._Module*, align 8
  store %struct._ModuleRec* %max, %struct._ModuleRec** %max.addr, align 8
  store i32 %group, i32* %group.addr, align 4
  %0 = load %struct._ModuleRec*, %struct._ModuleRec** %max.addr, align 8
  %module = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %0, i32 0, i32 1
  %1 = load i64, i64* %module, align 8
  %arrayidx = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i32 0, i64 %1
  %2 = load %struct._Net*, %struct._Net** %arrayidx, align 8
  store %struct._Net* %2, %struct._Net** %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %3 = load %struct._Net*, %struct._Net** %net, align 8
  %cmp = icmp ne %struct._Net* %3, null
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %4 = load %struct._Net*, %struct._Net** %net, align 8
  %net1 = getelementptr inbounds %struct._Net, %struct._Net* %4, i32 0, i32 1
  %5 = load i64, i64* %net1, align 8
  %arrayidx2 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %5
  %6 = load %struct._Module*, %struct._Module** %arrayidx2, align 8
  store %struct._Module* %6, %struct._Module** %mod, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load %struct._Module*, %struct._Module** %mod, align 8
  %cmp4 = icmp ne %struct._Module* %7, null
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %8 = load %struct._Module*, %struct._Module** %mod, align 8
  %module6 = getelementptr inbounds %struct._Module, %struct._Module* %8, i32 0, i32 1
  %9 = load i64, i64* %module6, align 8
  %arrayidx7 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %9
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp ult i32 %10, 2
  br i1 %cmp8, label %if.then, label %if.end.25

if.then:                                          ; preds = %for.body.5
  %11 = load %struct._Module*, %struct._Module** %mod, align 8
  %module9 = getelementptr inbounds %struct._Module, %struct._Module* %11, i32 0, i32 1
  %12 = load i64, i64* %module9, align 8
  %arrayidx10 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %12
  %13 = load i32, i32* %arrayidx10, align 4
  %14 = load i32, i32* %group.addr, align 4
  %cmp11 = icmp eq i32 %13, %14
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %15 = load %struct._Module*, %struct._Module** %mod, align 8
  %module13 = getelementptr inbounds %struct._Module, %struct._Module* %15, i32 0, i32 1
  %16 = load i64, i64* %module13, align 8
  %arrayidx14 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i32 0, i64 %16
  %17 = load float, float* %arrayidx14, align 4
  %18 = load %struct._Net*, %struct._Net** %net, align 8
  %net15 = getelementptr inbounds %struct._Net, %struct._Net* %18, i32 0, i32 1
  %19 = load i64, i64* %net15, align 8
  %arrayidx16 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i32 0, i64 %19
  %20 = load float, float* %arrayidx16, align 4
  %add = fadd float %17, %20
  %21 = load %struct._Module*, %struct._Module** %mod, align 8
  %module17 = getelementptr inbounds %struct._Module, %struct._Module* %21, i32 0, i32 1
  %22 = load i64, i64* %module17, align 8
  %arrayidx18 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i32 0, i64 %22
  store float %add, float* %arrayidx18, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load %struct._Module*, %struct._Module** %mod, align 8
  %module19 = getelementptr inbounds %struct._Module, %struct._Module* %23, i32 0, i32 1
  %24 = load i64, i64* %module19, align 8
  %arrayidx20 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i32 0, i64 %24
  %25 = load float, float* %arrayidx20, align 4
  %26 = load %struct._Net*, %struct._Net** %net, align 8
  %net21 = getelementptr inbounds %struct._Net, %struct._Net* %26, i32 0, i32 1
  %27 = load i64, i64* %net21, align 8
  %arrayidx22 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i32 0, i64 %27
  %28 = load float, float* %arrayidx22, align 4
  %sub = fsub float %25, %28
  %29 = load %struct._Module*, %struct._Module** %mod, align 8
  %module23 = getelementptr inbounds %struct._Module, %struct._Module* %29, i32 0, i32 1
  %30 = load i64, i64* %module23, align 8
  %arrayidx24 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i32 0, i64 %30
  store float %sub, float* %arrayidx24, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %31 = load %struct._Module*, %struct._Module** %mod, align 8
  %next = getelementptr inbounds %struct._Module, %struct._Module* %31, i32 0, i32 0
  %32 = load %struct._Module*, %struct._Module** %next, align 8
  store %struct._Module* %32, %struct._Module** %mod, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %33 = load %struct._Net*, %struct._Net** %net, align 8
  %next27 = getelementptr inbounds %struct._Net, %struct._Net* %33, i32 0, i32 0
  %34 = load %struct._Net*, %struct._Net** %next27, align 8
  store %struct._Net* %34, %struct._Net** %net, align 8
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define float @FindMaxGpAndSwap() #0 {
entry:
  %mrA = alloca %struct._ModuleRec*, align 8
  %mrPrevA = alloca %struct._ModuleRec*, align 8
  %mrB = alloca %struct._ModuleRec*, align 8
  %mrPrevB = alloca %struct._ModuleRec*, align 8
  %maxA = alloca %struct._ModuleRec*, align 8
  %maxPrevA = alloca %struct._ModuleRec*, align 8
  %maxB = alloca %struct._ModuleRec*, align 8
  %maxPrevB = alloca %struct._ModuleRec*, align 8
  %gp = alloca float, align 4
  %gpMax = alloca float, align 4
  store float -9.999999e+06, float* %gpMax, align 4
  store %struct._ModuleRec* null, %struct._ModuleRec** %maxPrevB, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %maxB, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %maxPrevA, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %maxA, align 8
  %0 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %0, %struct._ModuleRec** %mrA, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %mrPrevA, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %1 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %cmp = icmp ne %struct._ModuleRec* %1, null
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %2 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %2, %struct._ModuleRec** %mrB, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %mrPrevB, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %cmp2 = icmp ne %struct._ModuleRec* %3, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %module = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %4, i32 0, i32 1
  %5 = load i64, i64* %module, align 8
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @D, i32 0, i64 %5
  %6 = load float, float* %arrayidx, align 4
  %7 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %module4 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %7, i32 0, i32 1
  %8 = load i64, i64* %module4, align 8
  %arrayidx5 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i32 0, i64 %8
  %9 = load float, float* %arrayidx5, align 4
  %add = fadd float %6, %9
  %10 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %11 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %call = call float @CAiBj(%struct._ModuleRec* %10, %struct._ModuleRec* %11)
  %mul = fmul float 2.000000e+00, %call
  %sub = fsub float %add, %mul
  store float %sub, float* %gp, align 4
  %12 = load float, float* %gp, align 4
  %13 = load float, float* %gpMax, align 4
  %cmp6 = fcmp ogt float %12, %13
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %14 = load float, float* %gp, align 4
  store float %14, float* %gpMax, align 4
  %15 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  store %struct._ModuleRec* %15, %struct._ModuleRec** %maxA, align 8
  %16 = load %struct._ModuleRec*, %struct._ModuleRec** %mrPrevA, align 8
  store %struct._ModuleRec* %16, %struct._ModuleRec** %maxPrevA, align 8
  %17 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  store %struct._ModuleRec* %17, %struct._ModuleRec** %maxB, align 8
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** %mrPrevB, align 8
  store %struct._ModuleRec* %18, %struct._ModuleRec** %maxPrevB, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  store %struct._ModuleRec* %19, %struct._ModuleRec** %mrPrevB, align 8
  %20 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %next = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %20, i32 0, i32 0
  %21 = load %struct._ModuleRec*, %struct._ModuleRec** %next, align 8
  store %struct._ModuleRec* %21, %struct._ModuleRec** %mrB, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %22 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  store %struct._ModuleRec* %22, %struct._ModuleRec** %mrPrevA, align 8
  %23 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %next8 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %23, i32 0, i32 0
  %24 = load %struct._ModuleRec*, %struct._ModuleRec** %next8, align 8
  store %struct._ModuleRec* %24, %struct._ModuleRec** %mrA, align 8
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %25 = load %struct._ModuleRec*, %struct._ModuleRec** %maxPrevA, align 8
  %26 = load %struct._ModuleRec*, %struct._ModuleRec** %maxA, align 8
  call void @SwapNode(%struct._ModuleRec* %25, %struct._ModuleRec* %26, %struct._ModuleList* @groupA, %struct._ModuleList* @swapToB)
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %maxPrevB, align 8
  %28 = load %struct._ModuleRec*, %struct._ModuleRec** %maxB, align 8
  call void @SwapNode(%struct._ModuleRec* %27, %struct._ModuleRec* %28, %struct._ModuleList* @groupB, %struct._ModuleList* @swapToA)
  %29 = load %struct._ModuleRec*, %struct._ModuleRec** %maxA, align 8
  %module10 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %29, i32 0, i32 1
  %30 = load i64, i64* %module10, align 8
  %arrayidx11 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %30
  store i32 3, i32* %arrayidx11, align 4
  %31 = load %struct._ModuleRec*, %struct._ModuleRec** %maxB, align 8
  %module12 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %31, i32 0, i32 1
  %32 = load i64, i64* %module12, align 8
  %arrayidx13 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %32
  store i32 2, i32* %arrayidx13, align 4
  %33 = load %struct._ModuleRec*, %struct._ModuleRec** %maxA, align 8
  call void @UpdateDs(%struct._ModuleRec* %33, i32 0)
  %34 = load %struct._ModuleRec*, %struct._ModuleRec** %maxB, align 8
  call void @UpdateDs(%struct._ModuleRec* %34, i32 1)
  %35 = load float, float* %gpMax, align 4
  ret float %35
}

; Function Attrs: nounwind uwtable
define float @FindGMax(i64* %iMax) #0 {
entry:
  %iMax.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %gMax = alloca float, align 4
  store i64* %iMax, i64** %iMax.addr, align 8
  store float -9.999999e+06, float* %gMax, align 4
  %0 = load i64*, i64** %iMax.addr, align 8
  store i64 4294967295, i64* %0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* @numModules, align 8
  %div = udiv i64 %2, 2
  %cmp = icmp ult i64 %conv, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i32 0, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float, float* %gMax, align 4
  %cmp2 = fcmp ogt float %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i32 0, i64 %idxprom4
  %7 = load float, float* %arrayidx5, align 4
  store float %7, float* %gMax, align 4
  %8 = load i32, i32* %i, align 4
  %conv6 = sext i32 %8 to i64
  %9 = load i64*, i64** %iMax.addr, align 8
  store i64 %conv6, i64* %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load float, float* %gMax, align 4
  ret float %11
}

; Function Attrs: nounwind uwtable
define void @SwapSubsetAndReset(i64 %iMax) #0 {
entry:
  %iMax.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %mrPrevA = alloca %struct._ModuleRec*, align 8
  %mrA = alloca %struct._ModuleRec*, align 8
  %mrPrevB = alloca %struct._ModuleRec*, align 8
  %mrB = alloca %struct._ModuleRec*, align 8
  store i64 %iMax, i64* %iMax.addr, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %mrPrevA, align 8
  %0 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %0, %struct._ModuleRec** %mrA, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %mrPrevB, align 8
  %1 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %1, %struct._ModuleRec** %mrB, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %iMax.addr, align 8
  %cmp = icmp ule i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  store %struct._ModuleRec* %4, %struct._ModuleRec** %mrPrevA, align 8
  %5 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %next = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %5, i32 0, i32 0
  %6 = load %struct._ModuleRec*, %struct._ModuleRec** %next, align 8
  store %struct._ModuleRec* %6, %struct._ModuleRec** %mrA, align 8
  %7 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  store %struct._ModuleRec* %7, %struct._ModuleRec** %mrPrevB, align 8
  %8 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %next1 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %8, i32 0, i32 0
  %9 = load %struct._ModuleRec*, %struct._ModuleRec** %next1, align 8
  store %struct._ModuleRec* %9, %struct._ModuleRec** %mrB, align 8
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %cmp2 = icmp eq %struct._ModuleRec* %11, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._ModuleList* @groupA to i8*), i8* bitcast (%struct._ModuleList* @swapToA to i8*), i64 16, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._ModuleList* @groupB to i8*), i8* bitcast (%struct._ModuleList* @swapToB to i8*), i64 16, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %for.end
  %12 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %13 = load %struct._ModuleRec*, %struct._ModuleRec** %mrPrevA, align 8
  %next3 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %13, i32 0, i32 0
  store %struct._ModuleRec* %12, %struct._ModuleRec** %next3, align 8
  %14 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %14, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  %15 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 1), align 8
  store %struct._ModuleRec* %15, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  %16 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %17 = load %struct._ModuleRec*, %struct._ModuleRec** %mrPrevB, align 8
  %next4 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %17, i32 0, i32 0
  store %struct._ModuleRec* %16, %struct._ModuleRec** %next4, align 8
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %18, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  %19 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 1), align 8
  store %struct._ModuleRec* %19, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %20, %struct._ModuleRec** %mrA, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.8, %if.end
  %21 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %cmp6 = icmp ne %struct._ModuleRec* %21, null
  br i1 %cmp6, label %for.body.7, label %for.end.10

for.body.7:                                       ; preds = %for.cond.5
  %22 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %module = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %22, i32 0, i32 1
  %23 = load i64, i64* %module, align 8
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %23
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.7
  %24 = load %struct._ModuleRec*, %struct._ModuleRec** %mrA, align 8
  %next9 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %24, i32 0, i32 0
  %25 = load %struct._ModuleRec*, %struct._ModuleRec** %next9, align 8
  store %struct._ModuleRec* %25, %struct._ModuleRec** %mrA, align 8
  br label %for.cond.5

for.end.10:                                       ; preds = %for.cond.5
  %26 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %26, %struct._ModuleRec** %mrB, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.16, %for.end.10
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %cmp12 = icmp ne %struct._ModuleRec* %27, null
  br i1 %cmp12, label %for.body.13, label %for.end.18

for.body.13:                                      ; preds = %for.cond.11
  %28 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %module14 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %28, i32 0, i32 1
  %29 = load i64, i64* %module14, align 8
  %arrayidx15 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %29
  store i32 1, i32* %arrayidx15, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.13
  %30 = load %struct._ModuleRec*, %struct._ModuleRec** %mrB, align 8
  %next17 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %30, i32 0, i32 0
  %31 = load %struct._ModuleRec*, %struct._ModuleRec** %next17, align 8
  store %struct._ModuleRec* %31, %struct._ModuleRec** %mrB, align 8
  br label %for.cond.11

for.end.18:                                       ; preds = %for.cond.11
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @PrintResults(i32 %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %mr = alloca %struct._ModuleRec*, align 8
  %nn = alloca %struct._Net*, align 8
  %mn = alloca %struct._Module*, align 8
  %cuts = alloca i64, align 8
  %grp = alloca i32, align 4
  %i = alloca i32, align 4
  %netSz = alloca i32, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0))
  store i64 -1, i64* @maxStat, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom
  %netsCut = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  store i64 0, i64* %netsCut, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom1
  %edgesCut = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx2, i32 0, i32 1
  store i64 0, i64* %edgesCut, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom3
  %total = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 0
  store i64 0, i64* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %8 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %8, %struct._ModuleRec** %mr, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.10, %if.then
  %9 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %cmp7 = icmp ne %struct._ModuleRec* %9, null
  br i1 %cmp7, label %for.body.8, label %for.end.11

for.body.8:                                       ; preds = %for.cond.6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %11, i32 0, i32 1
  %12 = load i64, i64* %module, align 8
  %add = add i64 %12, 1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 %add)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.8
  %13 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %13, i32 0, i32 0
  %14 = load %struct._ModuleRec*, %struct._ModuleRec** %next, align 8
  store %struct._ModuleRec* %14, %struct._ModuleRec** %mr, align 8
  br label %for.cond.6

for.end.11:                                       ; preds = %for.cond.6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %17 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %17, %struct._ModuleRec** %mr, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %for.end.11
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %cmp15 = icmp ne %struct._ModuleRec* %18, null
  br i1 %cmp15, label %for.body.16, label %for.end.22

for.body.16:                                      ; preds = %for.cond.14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module17 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %20, i32 0, i32 1
  %21 = load i64, i64* %module17, align 8
  %add18 = add i64 %21, 1
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 %add18)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.16
  %22 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next21 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %22, i32 0, i32 0
  %23 = load %struct._ModuleRec*, %struct._ModuleRec** %next21, align 8
  store %struct._ModuleRec* %23, %struct._ModuleRec** %mr, align 8
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.22, %for.end
  store i64 0, i64* %cuts, align 8
  %25 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %25, %struct._ModuleRec** %mr, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.71, %if.end
  %26 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %cmp25 = icmp ne %struct._ModuleRec* %26, null
  br i1 %cmp25, label %for.body.26, label %for.end.73

for.body.26:                                      ; preds = %for.cond.24
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module27 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %27, i32 0, i32 1
  %28 = load i64, i64* %module27, align 8
  %arrayidx28 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i32 0, i64 %28
  %29 = load %struct._Net*, %struct._Net** %arrayidx28, align 8
  store %struct._Net* %29, %struct._Net** %nn, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.68, %for.body.26
  %30 = load %struct._Net*, %struct._Net** %nn, align 8
  %cmp30 = icmp ne %struct._Net* %30, null
  br i1 %cmp30, label %for.body.31, label %for.end.70

for.body.31:                                      ; preds = %for.cond.29
  store i32 0, i32* %netSz, align 4
  %31 = load %struct._Net*, %struct._Net** %nn, align 8
  %net = getelementptr inbounds %struct._Net, %struct._Net* %31, i32 0, i32 1
  %32 = load i64, i64* %net, align 8
  %arrayidx32 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %32
  %33 = load %struct._Module*, %struct._Module** %arrayidx32, align 8
  store %struct._Module* %33, %struct._Module** %mn, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.37, %for.body.31
  %34 = load %struct._Module*, %struct._Module** %mn, align 8
  %cmp34 = icmp ne %struct._Module* %34, null
  br i1 %cmp34, label %for.body.35, label %for.end.39

for.body.35:                                      ; preds = %for.cond.33
  %35 = load i32, i32* %netSz, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %netSz, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.35
  %36 = load %struct._Module*, %struct._Module** %mn, align 8
  %next38 = getelementptr inbounds %struct._Module, %struct._Module* %36, i32 0, i32 0
  %37 = load %struct._Module*, %struct._Module** %next38, align 8
  store %struct._Module* %37, %struct._Module** %mn, align 8
  br label %for.cond.33

for.end.39:                                       ; preds = %for.cond.33
  %38 = load %struct._Net*, %struct._Net** %nn, align 8
  %net40 = getelementptr inbounds %struct._Net, %struct._Net* %38, i32 0, i32 1
  %39 = load i64, i64* %net40, align 8
  %arrayidx41 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %39
  %40 = load %struct._Module*, %struct._Module** %arrayidx41, align 8
  store %struct._Module* %40, %struct._Module** %mn, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.65, %for.end.39
  %41 = load %struct._Module*, %struct._Module** %mn, align 8
  %cmp43 = icmp ne %struct._Module* %41, null
  br i1 %cmp43, label %for.body.44, label %for.end.67

for.body.44:                                      ; preds = %for.cond.42
  %42 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module45 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %42, i32 0, i32 1
  %43 = load i64, i64* %module45, align 8
  %arrayidx46 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %43
  %44 = load i32, i32* %arrayidx46, align 4
  %45 = load %struct._Module*, %struct._Module** %mn, align 8
  %module47 = getelementptr inbounds %struct._Module, %struct._Module* %45, i32 0, i32 1
  %46 = load i64, i64* %module47, align 8
  %arrayidx48 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %46
  %47 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp ne i32 %44, %47
  br i1 %cmp49, label %if.then.50, label %if.end.64

if.then.50:                                       ; preds = %for.body.44
  %48 = load i32, i32* %verbose.addr, align 4
  %tobool51 = icmp ne i32 %48, 0
  br i1 %tobool51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.then.50
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module53 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %50, i32 0, i32 1
  %51 = load i64, i64* %module53, align 8
  %add54 = add i64 %51, 1
  %52 = load %struct._Module*, %struct._Module** %mn, align 8
  %module55 = getelementptr inbounds %struct._Module, %struct._Module* %52, i32 0, i32 1
  %53 = load i64, i64* %module55, align 8
  %add56 = add i64 %53, 1
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i64 %add54, i64 %add56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.52, %if.then.50
  %54 = load i32, i32* %netSz, align 4
  %idxprom59 = sext i32 %54 to i64
  %arrayidx60 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom59
  %edgesCut61 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx60, i32 0, i32 1
  %55 = load i64, i64* %edgesCut61, align 8
  %inc62 = add i64 %55, 1
  store i64 %inc62, i64* %edgesCut61, align 8
  %56 = load i64, i64* %cuts, align 8
  %inc63 = add i64 %56, 1
  store i64 %inc63, i64* %cuts, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.58, %for.body.44
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %57 = load %struct._Module*, %struct._Module** %mn, align 8
  %next66 = getelementptr inbounds %struct._Module, %struct._Module* %57, i32 0, i32 0
  %58 = load %struct._Module*, %struct._Module** %next66, align 8
  store %struct._Module* %58, %struct._Module** %mn, align 8
  br label %for.cond.42

for.end.67:                                       ; preds = %for.cond.42
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %59 = load %struct._Net*, %struct._Net** %nn, align 8
  %next69 = getelementptr inbounds %struct._Net, %struct._Net* %59, i32 0, i32 0
  %60 = load %struct._Net*, %struct._Net** %next69, align 8
  store %struct._Net* %60, %struct._Net** %nn, align 8
  br label %for.cond.29

for.end.70:                                       ; preds = %for.cond.29
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %61 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next72 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %61, i32 0, i32 0
  %62 = load %struct._ModuleRec*, %struct._ModuleRec** %next72, align 8
  store %struct._ModuleRec* %62, %struct._ModuleRec** %mr, align 8
  br label %for.cond.24

for.end.73:                                       ; preds = %for.cond.24
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = load i64, i64* %cuts, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i64 %64)
  store i64 0, i64* %cuts, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.129, %for.end.73
  %65 = load i32, i32* %i, align 4
  %conv = sext i32 %65 to i64
  %66 = load i64, i64* @numNets, align 8
  %cmp76 = icmp ult i64 %conv, %66
  br i1 %cmp76, label %for.body.78, label %for.end.131

for.body.78:                                      ; preds = %for.cond.75
  store i32 0, i32* %netSz, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %idxprom79
  %68 = load %struct._Module*, %struct._Module** %arrayidx80, align 8
  store %struct._Module* %68, %struct._Module** %mn, align 8
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.86, %for.body.78
  %69 = load %struct._Module*, %struct._Module** %mn, align 8
  %cmp82 = icmp ne %struct._Module* %69, null
  br i1 %cmp82, label %for.body.84, label %for.end.88

for.body.84:                                      ; preds = %for.cond.81
  %70 = load i32, i32* %netSz, align 4
  %inc85 = add nsw i32 %70, 1
  store i32 %inc85, i32* %netSz, align 4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.84
  %71 = load %struct._Module*, %struct._Module** %mn, align 8
  %next87 = getelementptr inbounds %struct._Module, %struct._Module* %71, i32 0, i32 0
  %72 = load %struct._Module*, %struct._Module** %next87, align 8
  store %struct._Module* %72, %struct._Module** %mn, align 8
  br label %for.cond.81

for.end.88:                                       ; preds = %for.cond.81
  %73 = load i32, i32* %netSz, align 4
  %idxprom89 = sext i32 %73 to i64
  %arrayidx90 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom89
  %total91 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx90, i32 0, i32 0
  %74 = load i64, i64* %total91, align 8
  %inc92 = add i64 %74, 1
  store i64 %inc92, i64* %total91, align 8
  %75 = load i32, i32* %netSz, align 4
  %conv93 = sext i32 %75 to i64
  %76 = load i64, i64* @maxStat, align 8
  %cmp94 = icmp sgt i64 %conv93, %76
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %for.end.88
  %77 = load i32, i32* %netSz, align 4
  %conv97 = sext i32 %77 to i64
  store i64 %conv97, i64* @maxStat, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.end.88
  %78 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %78 to i64
  %arrayidx100 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %idxprom99
  %79 = load %struct._Module*, %struct._Module** %arrayidx100, align 8
  %module101 = getelementptr inbounds %struct._Module, %struct._Module* %79, i32 0, i32 1
  %80 = load i64, i64* %module101, align 8
  %arrayidx102 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %80
  %81 = load i32, i32* %arrayidx102, align 4
  store i32 %81, i32* %grp, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %82 to i64
  %arrayidx104 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %idxprom103
  %83 = load %struct._Module*, %struct._Module** %arrayidx104, align 8
  %next105 = getelementptr inbounds %struct._Module, %struct._Module* %83, i32 0, i32 0
  %84 = load %struct._Module*, %struct._Module** %next105, align 8
  store %struct._Module* %84, %struct._Module** %mn, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.126, %if.end.98
  %85 = load %struct._Module*, %struct._Module** %mn, align 8
  %cmp107 = icmp ne %struct._Module* %85, null
  br i1 %cmp107, label %for.body.109, label %for.end.128

for.body.109:                                     ; preds = %for.cond.106
  %86 = load i32, i32* %grp, align 4
  %87 = load %struct._Module*, %struct._Module** %mn, align 8
  %module110 = getelementptr inbounds %struct._Module, %struct._Module* %87, i32 0, i32 1
  %88 = load i64, i64* %module110, align 8
  %arrayidx111 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %88
  %89 = load i32, i32* %arrayidx111, align 4
  %cmp112 = icmp ne i32 %86, %89
  br i1 %cmp112, label %if.then.114, label %if.end.125

if.then.114:                                      ; preds = %for.body.109
  %90 = load i32, i32* %verbose.addr, align 4
  %tobool115 = icmp ne i32 %90, 0
  br i1 %tobool115, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %if.then.114
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %92, 1
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 %add117)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %if.then.114
  %93 = load i64, i64* %cuts, align 8
  %inc120 = add i64 %93, 1
  store i64 %inc120, i64* %cuts, align 8
  %94 = load i32, i32* %netSz, align 4
  %idxprom121 = sext i32 %94 to i64
  %arrayidx122 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom121
  %netsCut123 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx122, i32 0, i32 2
  %95 = load i64, i64* %netsCut123, align 8
  %inc124 = add i64 %95, 1
  store i64 %inc124, i64* %netsCut123, align 8
  br label %for.end.128

if.end.125:                                       ; preds = %for.body.109
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %96 = load %struct._Module*, %struct._Module** %mn, align 8
  %next127 = getelementptr inbounds %struct._Module, %struct._Module* %96, i32 0, i32 0
  %97 = load %struct._Module*, %struct._Module** %next127, align 8
  store %struct._Module* %97, %struct._Module** %mn, align 8
  br label %for.cond.106

for.end.128:                                      ; preds = %if.end.119, %for.cond.106
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %98 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %98, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.75

for.end.131:                                      ; preds = %for.cond.75
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %100 = load i64, i64* %cuts, align 8
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i64 %100)
  store i32 2, i32* %i, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.148, %for.end.131
  %101 = load i32, i32* %i, align 4
  %conv134 = sext i32 %101 to i64
  %102 = load i64, i64* @maxStat, align 8
  %cmp135 = icmp sle i64 %conv134, %102
  br i1 %cmp135, label %for.body.137, label %for.end.150

for.body.137:                                     ; preds = %for.cond.133
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %105 to i64
  %arrayidx139 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom138
  %total140 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx139, i32 0, i32 0
  %106 = load i64, i64* %total140, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %107 to i64
  %arrayidx142 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom141
  %edgesCut143 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx142, i32 0, i32 1
  %108 = load i64, i64* %edgesCut143, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %109 to i64
  %arrayidx145 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i32 0, i64 %idxprom144
  %netsCut146 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx145, i32 0, i32 2
  %110 = load i64, i64* %netsCut146, align 8
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i32 0, i32 0), i32 %104, i64 %106, i64 %108, i64 %110)
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.137
  %111 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %111, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.133

for.end.150:                                      ; preds = %for.cond.133
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca i64, align 8
  %iMax = alloca i64, align 8
  %gMax = alloca float, align 4
  %lastGMax = alloca float, align 4
  %mr = alloca %struct._ModuleRec*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  call void @ReadNetList(i8* %3)
  call void @NetsToModules()
  call void @ComputeNetCosts()
  call void @InitLists()
  store float 0.000000e+00, float* %lastGMax, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  call void @ComputeDs(%struct._ModuleList* @groupA, i32 0, i32 2)
  call void @ComputeDs(%struct._ModuleList* @groupB, i32 1, i32 3)
  store i64 0, i64* %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %4 = load i64, i64* %p, align 8
  %5 = load i64, i64* @numModules, align 8
  %div = udiv i64 %5, 2
  %cmp1 = icmp ult i64 %4, %div
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call float @FindMaxGpAndSwap()
  %6 = load i64, i64* %p, align 8
  %arrayidx3 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i32 0, i64 %6
  store float %call2, float* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %p, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call float @FindGMax(i64* %iMax)
  store float %call4, float* %gMax, align 4
  %8 = load float, float* %lastGMax, align 4
  %9 = load float, float* %gMax, align 4
  %cmp5 = fcmp oeq float %8, %9
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %for.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = load float, float* %gMax, align 4
  %conv = fpext float %11 to double
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), double %conv)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %for.end
  %12 = load float, float* %gMax, align 4
  store float %12, float* %lastGMax, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = load float, float* %gMax, align 4
  %conv9 = fpext float %14 to double
  %15 = load i64, i64* %iMax, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), double %conv9, i64 %15)
  %16 = load float, float* %gMax, align 4
  %conv11 = fpext float %16 to double
  %cmp12 = fcmp ogt double %conv11, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  %17 = load i64, i64* %iMax, align 8
  call void @SwapSubsetAndReset(i64 %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.8
  call void @PrintResults(i32 0)
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %18 = load float, float* %gMax, align 4
  %conv16 = fpext float %18 to double
  %cmp17 = fcmp ogt double %conv16, 0.000000e+00
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._ModuleList* @groupA to i8*), i8* bitcast (%struct._ModuleList* @swapToB to i8*), i64 16, i32 8, i1 false)
  %19 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %19, %struct._ModuleRec** %mr, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.24, %do.end
  %20 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %cmp20 = icmp ne %struct._ModuleRec* %20, null
  br i1 %cmp20, label %for.body.22, label %for.end.25

for.body.22:                                      ; preds = %for.cond.19
  %21 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %21, i32 0, i32 1
  %22 = load i64, i64* %module, align 8
  %arrayidx23 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %22
  store i32 0, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.22
  %23 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %23, i32 0, i32 0
  %24 = load %struct._ModuleRec*, %struct._ModuleRec** %next, align 8
  store %struct._ModuleRec* %24, %struct._ModuleRec** %mr, align 8
  br label %for.cond.19

for.end.25:                                       ; preds = %for.cond.19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._ModuleList* @groupB to i8*), i8* bitcast (%struct._ModuleList* @swapToA to i8*), i64 16, i32 8, i1 false)
  %25 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %25, %struct._ModuleRec** %mr, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.32, %for.end.25
  %26 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %cmp27 = icmp ne %struct._ModuleRec* %26, null
  br i1 %cmp27, label %for.body.29, label %for.end.34

for.body.29:                                      ; preds = %for.cond.26
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module30 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %27, i32 0, i32 1
  %28 = load i64, i64* %module30, align 8
  %arrayidx31 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %28
  store i32 1, i32* %arrayidx31, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.29
  %29 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next33 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %29, i32 0, i32 0
  %30 = load %struct._ModuleRec*, %struct._ModuleRec** %next33, align 8
  store %struct._ModuleRec* %30, %struct._ModuleRec** %mr, align 8
  br label %for.cond.26

for.end.34:                                       ; preds = %for.cond.26
  call void @PrintResults(i32 1)
  call void @exit(i32 0) #4
  unreachable

return:                                           ; No predecessors!
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @ReadNetList(i8*) #2

declare void @NetsToModules() #2

declare void @ComputeNetCosts() #2

declare void @InitLists() #2

declare void @ComputeDs(%struct._ModuleList*, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
