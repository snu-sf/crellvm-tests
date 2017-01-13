; ModuleID = './MultiSource.Benchmarks.Ptrdist/9.yacr2.hcg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeHCGType = type { i64*, i64, i64 }

@channelNets = external global i64, align 8
@HCG = common global %struct._nodeHCGType* null, align 8
@storageRootHCG = common global i64* null, align 8
@storageHCG = common global i64* null, align 8
@storageLimitHCG = common global i64 0, align 8
@FIRST = external global i64*, align 8
@LAST = external global i64*, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@channelTracks = external global i64, align 8

; Function Attrs: nounwind uwtable
define void @AllocHCG() #0 {
entry:
  %0 = load i64, i64* @channelNets, align 8
  %add = add i64 %0, 1
  %mul = mul i64 %add, 24
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to %struct._nodeHCGType*
  store %struct._nodeHCGType* %1, %struct._nodeHCGType** @HCG, align 8
  %2 = load i64, i64* @channelNets, align 8
  %add1 = add i64 %2, 1
  %3 = load i64, i64* @channelNets, align 8
  %add2 = add i64 %3, 1
  %mul3 = mul i64 %add1, %add2
  %mul4 = mul i64 %mul3, 8
  %call5 = call noalias i8* @malloc(i64 %mul4) #3
  %4 = bitcast i8* %call5 to i64*
  store i64* %4, i64** @storageRootHCG, align 8
  %5 = load i64*, i64** @storageRootHCG, align 8
  store i64* %5, i64** @storageHCG, align 8
  %6 = load i64, i64* @channelNets, align 8
  %add6 = add i64 %6, 1
  %7 = load i64, i64* @channelNets, align 8
  %add7 = add i64 %7, 1
  %mul8 = mul i64 %add6, %add7
  store i64 %mul8, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @FreeHCG() #0 {
entry:
  %0 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %1 = bitcast %struct._nodeHCGType* %0 to i8*
  call void @free(i8* %1) #3
  %2 = load i64*, i64** @storageRootHCG, align 8
  %3 = bitcast i64* %2 to i8*
  call void @free(i8* %3) #3
  store i64 0, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @BuildHCG() #0 {
entry:
  %net = alloca i64, align 8
  %which = alloca i64, align 8
  %constraint = alloca i64, align 8
  %first = alloca i64, align 8
  %last = alloca i64, align 8
  %check = alloca i64, align 8
  %add = alloca i64, align 8
  call void @AllocHCG()
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64*, i64** @FIRST, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %first, align 8
  %5 = load i64, i64* %net, align 8
  %6 = load i64*, i64** @LAST, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  store i64 %7, i64* %last, align 8
  store i64 0, i64* %constraint, align 8
  %8 = load i64*, i64** @storageHCG, align 8
  %9 = load i64, i64* %net, align 8
  %10 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %10, i64 %9
  %netsHook = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx2, i32 0, i32 0
  store i64* %8, i64** %netsHook, align 8
  store i64 1, i64* %which, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.28, %for.body
  %11 = load i64, i64* %which, align 8
  %12 = load i64, i64* @channelNets, align 8
  %cmp4 = icmp ule i64 %11, %12
  br i1 %cmp4, label %for.body.5, label %for.end.30

for.body.5:                                       ; preds = %for.cond.3
  %13 = load i64, i64* %which, align 8
  %14 = load i64*, i64** @FIRST, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %14, i64 %13
  %15 = load i64, i64* %arrayidx6, align 8
  %16 = load i64, i64* %first, align 8
  %cmp7 = icmp ult i64 %15, %16
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body.5
  %17 = load i64, i64* %which, align 8
  %18 = load i64*, i64** @LAST, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx8, align 8
  %20 = load i64, i64* %first, align 8
  %cmp9 = icmp ult i64 %19, %20
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body.5
  %21 = load i64, i64* %which, align 8
  %22 = load i64*, i64** @FIRST, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %22, i64 %21
  %23 = load i64, i64* %arrayidx10, align 8
  %24 = load i64, i64* %last, align 8
  %cmp11 = icmp ugt i64 %23, %24
  br i1 %cmp11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %25 = load i64, i64* %which, align 8
  %26 = load i64*, i64** @LAST, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %26, i64 %25
  %27 = load i64, i64* %arrayidx13, align 8
  %28 = load i64, i64* %last, align 8
  %cmp14 = icmp ugt i64 %27, %28
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.12, %land.lhs.true
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true.12, %lor.lhs.false
  store i64 1, i64* %add, align 8
  store i64 0, i64* %check, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.else
  %29 = load i64, i64* %check, align 8
  %30 = load i64, i64* %constraint, align 8
  %cmp16 = icmp ult i64 %29, %30
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %31 = load i64, i64* %check, align 8
  %32 = load i64, i64* %net, align 8
  %33 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %arrayidx18 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %33, i64 %32
  %netsHook19 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx18, i32 0, i32 0
  %34 = load i64*, i64** %netsHook19, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %34, i64 %31
  %35 = load i64, i64* %arrayidx20, align 8
  %36 = load i64, i64* %which, align 8
  %cmp21 = icmp eq i64 %35, %36
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.body.17
  store i64 0, i64* %add, align 8
  br label %for.end

if.end:                                           ; preds = %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i64, i64* %check, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %check, align 8
  br label %for.cond.15

for.end:                                          ; preds = %if.then.22, %for.cond.15
  %38 = load i64, i64* %which, align 8
  %39 = load i64, i64* %constraint, align 8
  %40 = load i64, i64* %net, align 8
  %41 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %arrayidx23 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %41, i64 %40
  %netsHook24 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx23, i32 0, i32 0
  %42 = load i64*, i64** %netsHook24, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %42, i64 %39
  store i64 %38, i64* %arrayidx25, align 8
  %43 = load i64*, i64** @storageHCG, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %incdec.ptr, i64** @storageHCG, align 8
  %44 = load i64, i64* @storageLimitHCG, align 8
  %dec = add i64 %44, -1
  store i64 %dec, i64* @storageLimitHCG, align 8
  %45 = load i64, i64* %constraint, align 8
  %inc26 = add i64 %45, 1
  store i64 %inc26, i64* %constraint, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.then
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %46 = load i64, i64* %which, align 8
  %inc29 = add i64 %46, 1
  store i64 %inc29, i64* %which, align 8
  br label %for.cond.3

for.end.30:                                       ; preds = %for.cond.3
  %47 = load i64, i64* %constraint, align 8
  %48 = load i64, i64* %net, align 8
  %49 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %arrayidx31 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %49, i64 %48
  %nets = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx31, i32 0, i32 1
  store i64 %47, i64* %nets, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.30
  %50 = load i64, i64* %net, align 8
  %inc33 = add i64 %50, 1
  store i64 %inc33, i64* %net, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DFSClearHCG(%struct._nodeHCGType* %HCG) #0 {
entry:
  %HCG.addr = alloca %struct._nodeHCGType*, align 8
  %net = alloca i64, align 8
  store %struct._nodeHCGType* %HCG, %struct._nodeHCGType** %HCG.addr, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load %struct._nodeHCGType*, %struct._nodeHCGType** %HCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %3, i64 %2
  %netsReached = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx, i32 0, i32 2
  store i64 0, i64* %netsReached, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %net, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DumpHCG(%struct._nodeHCGType* %HCG) #0 {
entry:
  %HCG.addr = alloca %struct._nodeHCGType*, align 8
  %net = alloca i64, align 8
  %which = alloca i64, align 8
  store %struct._nodeHCGType* %HCG, %struct._nodeHCGType** %HCG.addr, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %2)
  store i64 0, i64* %which, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i64, i64* %which, align 8
  %4 = load i64, i64* %net, align 8
  %5 = load %struct._nodeHCGType*, %struct._nodeHCGType** %HCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %5, i64 %4
  %nets = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx, i32 0, i32 1
  %6 = load i64, i64* %nets, align 8
  %cmp2 = icmp ult i64 %3, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i64, i64* %which, align 8
  %8 = load i64, i64* %net, align 8
  %9 = load %struct._nodeHCGType*, %struct._nodeHCGType** %HCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %9, i64 %8
  %netsHook = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx4, i32 0, i32 0
  %10 = load i64*, i64** %netsHook, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %10, i64 %7
  %11 = load i64, i64* %arrayidx5, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %12 = load i64, i64* %which, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %which, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %13 = load i64, i64* %net, align 8
  %inc9 = add i64 %13, 1
  store i64 %inc9, i64* %net, align 8
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @NoHCV(%struct._nodeHCGType* %HCG, i64 %select, i64* %netsAssign, i64* %tracksNoHCV) #0 {
entry:
  %HCG.addr = alloca %struct._nodeHCGType*, align 8
  %select.addr = alloca i64, align 8
  %netsAssign.addr = alloca i64*, align 8
  %tracksNoHCV.addr = alloca i64*, align 8
  %track = alloca i64, align 8
  %net = alloca i64, align 8
  %which = alloca i64, align 8
  %ok = alloca i64, align 8
  store %struct._nodeHCGType* %HCG, %struct._nodeHCGType** %HCG.addr, align 8
  store i64 %select, i64* %select.addr, align 8
  store i64* %netsAssign, i64** %netsAssign.addr, align 8
  store i64* %tracksNoHCV, i64** %tracksNoHCV.addr, align 8
  store i64 1, i64* %track, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i64, i64* %track, align 8
  %1 = load i64, i64* @channelTracks, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i64 1, i64* %ok, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.16, %for.body
  %2 = load i64, i64* %net, align 8
  %3 = load i64, i64* @channelNets, align 8
  %cmp2 = icmp ule i64 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.18

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i64, i64* %net, align 8
  %5 = load i64*, i64** %netsAssign.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %track, align 8
  %cmp4 = icmp eq i64 %6, %7
  br i1 %cmp4, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body.3
  store i64 0, i64* %which, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %8 = load i64, i64* %which, align 8
  %9 = load i64, i64* %select.addr, align 8
  %10 = load %struct._nodeHCGType*, %struct._nodeHCGType** %HCG.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %10, i64 %9
  %nets = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx6, i32 0, i32 1
  %11 = load i64, i64* %nets, align 8
  %cmp7 = icmp ult i64 %8, %11
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %12 = load i64, i64* %which, align 8
  %13 = load i64, i64* %select.addr, align 8
  %14 = load %struct._nodeHCGType*, %struct._nodeHCGType** %HCG.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %14, i64 %13
  %netsHook = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %arrayidx9, i32 0, i32 0
  %15 = load i64*, i64** %netsHook, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %15, i64 %12
  %16 = load i64, i64* %arrayidx10, align 8
  %17 = load i64, i64* %net, align 8
  %cmp11 = icmp eq i64 %16, %17
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body.8
  store i64 0, i64* %ok, align 8
  br label %for.end

if.end:                                           ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i64, i64* %which, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %which, align 8
  br label %for.cond.5

for.end:                                          ; preds = %if.then.12, %for.cond.5
  %19 = load i64, i64* %ok, align 8
  %tobool = icmp ne i64 %19, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.end
  br label %for.end.18

if.end.14:                                        ; preds = %for.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.body.3
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %20 = load i64, i64* %net, align 8
  %inc17 = add i64 %20, 1
  store i64 %inc17, i64* %net, align 8
  br label %for.cond.1

for.end.18:                                       ; preds = %if.then.13, %for.cond.1
  %21 = load i64, i64* %ok, align 8
  %22 = load i64, i64* %track, align 8
  %23 = load i64*, i64** %tracksNoHCV.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %23, i64 %22
  store i64 %21, i64* %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.18
  %24 = load i64, i64* %track, align 8
  %inc21 = add i64 %24, 1
  store i64 %inc21, i64* %track, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
