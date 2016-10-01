; ModuleID = './MultiSource.Benchmarks.Ptrdist/13.yacr2.assign.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeVCGType = type { %struct._constraintVCGType*, i64, i64, i64, %struct._constraintVCGType*, i64, i64, i64 }
%struct._constraintVCGType = type { i64, i64, i64, i64 }
%struct._nodeHCGType = type { i64*, i64, i64 }

@channelNets = external global i64, align 8
@costMatrix = common global i64** null, align 8
@channelTracks = external global i64, align 8
@tracksNotPref = common global i64* null, align 8
@tracksTopNotPref = common global i64* null, align 8
@tracksBotNotPref = common global i64* null, align 8
@tracksNoHCV = common global i64* null, align 8
@tracksAssign = common global i64* null, align 8
@netsAssign = common global i64* null, align 8
@netsAssignCopy = common global i64* null, align 8
@FIRST = external global i64*, align 8
@channelDensityColumn = external global i64, align 8
@LAST = external global i64*, align 8
@CROSSING = external global i64*, align 8
@VCG = external global %struct._nodeVCGType*, align 8
@HCG = external global %struct._nodeHCGType*, align 8
@channelColumns = external global i64, align 8
@TOP = external global i64*, align 8
@BOT = external global i64*, align 8
@cardTopNotPref = common global i64 0, align 8
@cardBotNotPref = common global i64 0, align 8
@cardNotPref = common global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @AllocAssign() #0 {
entry:
  %net = alloca i64, align 8
  %0 = load i64, i64* @channelNets, align 8
  %add = add i64 %0, 1
  %mul = mul i64 %add, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i64**
  store i64** %1, i64*** @costMatrix, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %net, align 8
  %3 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* @channelTracks, align 8
  %add1 = add i64 %4, 2
  %mul2 = mul i64 %add1, 8
  %call3 = call noalias i8* @malloc(i64 %mul2) #3
  %5 = bitcast i8* %call3 to i64*
  %6 = load i64, i64* %net, align 8
  %7 = load i64**, i64*** @costMatrix, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %7, i64 %6
  store i64* %5, i64** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %net, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* @channelTracks, align 8
  %add4 = add i64 %9, 2
  %mul5 = mul i64 %add4, 8
  %call6 = call noalias i8* @malloc(i64 %mul5) #3
  %10 = bitcast i8* %call6 to i64*
  store i64* %10, i64** @tracksNotPref, align 8
  %11 = load i64, i64* @channelTracks, align 8
  %add7 = add i64 %11, 2
  %mul8 = mul i64 %add7, 8
  %call9 = call noalias i8* @malloc(i64 %mul8) #3
  %12 = bitcast i8* %call9 to i64*
  store i64* %12, i64** @tracksTopNotPref, align 8
  %13 = load i64, i64* @channelTracks, align 8
  %add10 = add i64 %13, 2
  %mul11 = mul i64 %add10, 8
  %call12 = call noalias i8* @malloc(i64 %mul11) #3
  %14 = bitcast i8* %call12 to i64*
  store i64* %14, i64** @tracksBotNotPref, align 8
  %15 = load i64, i64* @channelTracks, align 8
  %add13 = add i64 %15, 2
  %mul14 = mul i64 %add13, 8
  %call15 = call noalias i8* @malloc(i64 %mul14) #3
  %16 = bitcast i8* %call15 to i64*
  store i64* %16, i64** @tracksNoHCV, align 8
  %17 = load i64, i64* @channelTracks, align 8
  %add16 = add i64 %17, 2
  %mul17 = mul i64 %add16, 8
  %call18 = call noalias i8* @malloc(i64 %mul17) #3
  %18 = bitcast i8* %call18 to i64*
  store i64* %18, i64** @tracksAssign, align 8
  %19 = load i64, i64* @channelNets, align 8
  %add19 = add i64 %19, 1
  %mul20 = mul i64 %add19, 8
  %call21 = call noalias i8* @malloc(i64 %mul20) #3
  %20 = bitcast i8* %call21 to i64*
  store i64* %20, i64** @netsAssign, align 8
  %21 = load i64, i64* @channelNets, align 8
  %add22 = add i64 %21, 1
  %mul23 = mul i64 %add22, 8
  %call24 = call noalias i8* @malloc(i64 %mul23) #3
  %22 = bitcast i8* %call24 to i64*
  store i64* %22, i64** @netsAssignCopy, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @FreeAssign() #0 {
entry:
  %net = alloca i64, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64**, i64*** @costMatrix, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %3, i64 %2
  %4 = load i64*, i64** %arrayidx, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %net, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64**, i64*** @costMatrix, align 8
  %8 = bitcast i64** %7 to i8*
  call void @free(i8* %8) #3
  %9 = load i64*, i64** @tracksNotPref, align 8
  %10 = bitcast i64* %9 to i8*
  call void @free(i8* %10) #3
  %11 = load i64*, i64** @tracksTopNotPref, align 8
  %12 = bitcast i64* %11 to i8*
  call void @free(i8* %12) #3
  %13 = load i64*, i64** @tracksBotNotPref, align 8
  %14 = bitcast i64* %13 to i8*
  call void @free(i8* %14) #3
  %15 = load i64*, i64** @tracksNoHCV, align 8
  %16 = bitcast i64* %15 to i8*
  call void @free(i8* %16) #3
  %17 = load i64*, i64** @tracksAssign, align 8
  %18 = bitcast i64* %17 to i8*
  call void @free(i8* %18) #3
  %19 = load i64*, i64** @netsAssign, align 8
  %20 = bitcast i64* %19 to i8*
  call void @free(i8* %20) #3
  %21 = load i64*, i64** @netsAssignCopy, align 8
  %22 = bitcast i64* %21 to i8*
  call void @free(i8* %22) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @NetsAssign() #0 {
entry:
  %net = alloca i64, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64*, i64** @netsAssign, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %net, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @MaxNetsAssign()
  call void @LeftNetsAssign()
  call void @RightNetsAssign()
  ret void
}

; Function Attrs: nounwind uwtable
define void @MaxNetsAssign() #0 {
entry:
  %net = alloca i64, align 8
  %netSelect = alloca i64, align 8
  %netsCrossing = alloca i64, align 8
  store i64 0, i64* %netsCrossing, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64*, i64** @FIRST, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* @channelDensityColumn, align 8
  %cmp1 = icmp ule i64 %4, %5
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = load i64, i64* %net, align 8
  %7 = load i64*, i64** @LAST, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx2, align 8
  %9 = load i64, i64* @channelDensityColumn, align 8
  %cmp3 = icmp uge i64 %8, %9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load i64, i64* %net, align 8
  %11 = load i64*, i64** @CROSSING, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %11, i64 %10
  store i64 1, i64* %arrayidx4, align 8
  %12 = load i64, i64* %netsCrossing, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %netsCrossing, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %13 = load i64, i64* %net, align 8
  %14 = load i64*, i64** @CROSSING, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %14, i64 %13
  store i64 0, i64* %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, i64* %net, align 8
  %inc6 = add i64 %15, 1
  store i64 %inc6, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %16 = load i64, i64* %netsCrossing, align 8
  %cmp7 = icmp ugt i64 %16, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %18 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %19 = load i64*, i64** @netsAssign, align 8
  %20 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* %17, %struct._nodeHCGType* %18, i64* %19, i64* %netSelect, i64* %20)
  %21 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %22 = load i64*, i64** @netsAssign, align 8
  %23 = load i64, i64* %netSelect, align 8
  call void @Assign(%struct._nodeVCGType* %21, i64* %22, i64 %23)
  %24 = load i64, i64* %netSelect, align 8
  %25 = load i64*, i64** @CROSSING, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %25, i64 %24
  store i64 0, i64* %arrayidx8, align 8
  %26 = load i64, i64* %netsCrossing, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %netsCrossing, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @LeftNetsAssign() #0 {
entry:
  %net = alloca i64, align 8
  %col = alloca i64, align 8
  %top = alloca i64, align 8
  %bot = alloca i64, align 8
  %netsCrossing = alloca i64, align 8
  %netSelect = alloca i64, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64*, i64** @CROSSING, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %net, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %netsCrossing, align 8
  %5 = load i64, i64* @channelDensityColumn, align 8
  %sub = sub i64 %5, 1
  store i64 %sub, i64* %col, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.37, %for.end
  %6 = load i64, i64* %col, align 8
  %cmp2 = icmp uge i64 %6, 1
  br i1 %cmp2, label %for.body.3, label %for.end.39

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i64, i64* %col, align 8
  %8 = load i64*, i64** @TOP, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx4, align 8
  store i64 %9, i64* %top, align 8
  %10 = load i64, i64* %col, align 8
  %11 = load i64*, i64** @BOT, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx5, align 8
  store i64 %12, i64* %bot, align 8
  %13 = load i64, i64* %top, align 8
  %14 = load i64, i64* %bot, align 8
  %cmp6 = icmp ne i64 %13, %14
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %15 = load i64, i64* %top, align 8
  %tobool = icmp ne i64 %15, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %16 = load i64, i64* %top, align 8
  %17 = load i64*, i64** @LAST, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %17, i64 %16
  %18 = load i64, i64* %arrayidx7, align 8
  %19 = load i64, i64* %col, align 8
  %cmp8 = icmp eq i64 %18, %19
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %20 = load i64, i64* %top, align 8
  %21 = load i64*, i64** @CROSSING, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %21, i64 %20
  store i64 1, i64* %arrayidx10, align 8
  %22 = load i64, i64* %netsCrossing, align 8
  %inc11 = add i64 %22, 1
  store i64 %inc11, i64* %netsCrossing, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then
  %23 = load i64, i64* %bot, align 8
  %tobool12 = icmp ne i64 %23, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.19

land.lhs.true.13:                                 ; preds = %if.end
  %24 = load i64, i64* %bot, align 8
  %25 = load i64*, i64** @LAST, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %25, i64 %24
  %26 = load i64, i64* %arrayidx14, align 8
  %27 = load i64, i64* %col, align 8
  %cmp15 = icmp eq i64 %26, %27
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true.13
  %28 = load i64, i64* %bot, align 8
  %29 = load i64*, i64** @CROSSING, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %29, i64 %28
  store i64 1, i64* %arrayidx17, align 8
  %30 = load i64, i64* %netsCrossing, align 8
  %inc18 = add i64 %30, 1
  store i64 %inc18, i64* %netsCrossing, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %land.lhs.true.13, %if.end
  br label %if.end.28

if.else:                                          ; preds = %for.body.3
  %31 = load i64, i64* %top, align 8
  %tobool20 = icmp ne i64 %31, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %if.else
  %32 = load i64, i64* %top, align 8
  %33 = load i64*, i64** @LAST, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %33, i64 %32
  %34 = load i64, i64* %arrayidx22, align 8
  %35 = load i64, i64* %col, align 8
  %cmp23 = icmp eq i64 %34, %35
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true.21
  %36 = load i64, i64* %top, align 8
  %37 = load i64*, i64** @CROSSING, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %37, i64 %36
  store i64 1, i64* %arrayidx25, align 8
  %38 = load i64, i64* %netsCrossing, align 8
  %inc26 = add i64 %38, 1
  store i64 %inc26, i64* %netsCrossing, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.21, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.19
  %39 = load i64, i64* %top, align 8
  %40 = load i64*, i64** @FIRST, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %40, i64 %39
  %41 = load i64, i64* %arrayidx29, align 8
  %42 = load i64, i64* %col, align 8
  %cmp30 = icmp eq i64 %41, %42
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %43 = load i64, i64* %bot, align 8
  %44 = load i64*, i64** @FIRST, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %44, i64 %43
  %45 = load i64, i64* %arrayidx31, align 8
  %46 = load i64, i64* %col, align 8
  %cmp32 = icmp eq i64 %45, %46
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.33
  %47 = load i64, i64* %netsCrossing, align 8
  %cmp34 = icmp ugt i64 %47, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %49 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %50 = load i64*, i64** @netsAssign, align 8
  %51 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* %48, %struct._nodeHCGType* %49, i64* %50, i64* %netSelect, i64* %51)
  %52 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %53 = load i64*, i64** @netsAssign, align 8
  %54 = load i64, i64* %netSelect, align 8
  call void @Assign(%struct._nodeVCGType* %52, i64* %53, i64 %54)
  %55 = load i64, i64* %netSelect, align 8
  %56 = load i64*, i64** @CROSSING, align 8
  %arrayidx35 = getelementptr inbounds i64, i64* %56, i64 %55
  store i64 0, i64* %arrayidx35, align 8
  %57 = load i64, i64* %netsCrossing, align 8
  %dec = add i64 %57, -1
  store i64 %dec, i64* %netsCrossing, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.36

if.end.36:                                        ; preds = %while.end, %lor.lhs.false
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %58 = load i64, i64* %col, align 8
  %dec38 = add i64 %58, -1
  store i64 %dec38, i64* %col, align 8
  br label %for.cond.1

for.end.39:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @RightNetsAssign() #0 {
entry:
  %net = alloca i64, align 8
  %col = alloca i64, align 8
  %top = alloca i64, align 8
  %bot = alloca i64, align 8
  %netsCrossing = alloca i64, align 8
  %netSelect = alloca i64, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64*, i64** @CROSSING, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %net, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %netsCrossing, align 8
  %5 = load i64, i64* @channelDensityColumn, align 8
  %add = add i64 %5, 1
  store i64 %add, i64* %col, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.37, %for.end
  %6 = load i64, i64* %col, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %cmp2 = icmp ule i64 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end.39

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i64, i64* %col, align 8
  %9 = load i64*, i64** @TOP, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 %8
  %10 = load i64, i64* %arrayidx4, align 8
  store i64 %10, i64* %top, align 8
  %11 = load i64, i64* %col, align 8
  %12 = load i64*, i64** @BOT, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx5, align 8
  store i64 %13, i64* %bot, align 8
  %14 = load i64, i64* %top, align 8
  %15 = load i64, i64* %bot, align 8
  %cmp6 = icmp ne i64 %14, %15
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %16 = load i64, i64* %top, align 8
  %tobool = icmp ne i64 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %17 = load i64, i64* %top, align 8
  %18 = load i64*, i64** @FIRST, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx7, align 8
  %20 = load i64, i64* %col, align 8
  %cmp8 = icmp eq i64 %19, %20
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %21 = load i64, i64* %top, align 8
  %22 = load i64*, i64** @CROSSING, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %22, i64 %21
  store i64 1, i64* %arrayidx10, align 8
  %23 = load i64, i64* %netsCrossing, align 8
  %inc11 = add i64 %23, 1
  store i64 %inc11, i64* %netsCrossing, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then
  %24 = load i64, i64* %bot, align 8
  %tobool12 = icmp ne i64 %24, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.19

land.lhs.true.13:                                 ; preds = %if.end
  %25 = load i64, i64* %bot, align 8
  %26 = load i64*, i64** @FIRST, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %26, i64 %25
  %27 = load i64, i64* %arrayidx14, align 8
  %28 = load i64, i64* %col, align 8
  %cmp15 = icmp eq i64 %27, %28
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true.13
  %29 = load i64, i64* %bot, align 8
  %30 = load i64*, i64** @CROSSING, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %30, i64 %29
  store i64 1, i64* %arrayidx17, align 8
  %31 = load i64, i64* %netsCrossing, align 8
  %inc18 = add i64 %31, 1
  store i64 %inc18, i64* %netsCrossing, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %land.lhs.true.13, %if.end
  br label %if.end.28

if.else:                                          ; preds = %for.body.3
  %32 = load i64, i64* %top, align 8
  %tobool20 = icmp ne i64 %32, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %if.else
  %33 = load i64, i64* %top, align 8
  %34 = load i64*, i64** @FIRST, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %34, i64 %33
  %35 = load i64, i64* %arrayidx22, align 8
  %36 = load i64, i64* %col, align 8
  %cmp23 = icmp eq i64 %35, %36
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true.21
  %37 = load i64, i64* %top, align 8
  %38 = load i64*, i64** @CROSSING, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %38, i64 %37
  store i64 1, i64* %arrayidx25, align 8
  %39 = load i64, i64* %netsCrossing, align 8
  %inc26 = add i64 %39, 1
  store i64 %inc26, i64* %netsCrossing, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.21, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.19
  %40 = load i64, i64* %top, align 8
  %41 = load i64*, i64** @LAST, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %41, i64 %40
  %42 = load i64, i64* %arrayidx29, align 8
  %43 = load i64, i64* %col, align 8
  %cmp30 = icmp eq i64 %42, %43
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %44 = load i64, i64* %bot, align 8
  %45 = load i64*, i64** @LAST, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %45, i64 %44
  %46 = load i64, i64* %arrayidx31, align 8
  %47 = load i64, i64* %col, align 8
  %cmp32 = icmp eq i64 %46, %47
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.33
  %48 = load i64, i64* %netsCrossing, align 8
  %cmp34 = icmp ugt i64 %48, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %50 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %51 = load i64*, i64** @netsAssign, align 8
  %52 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* %49, %struct._nodeHCGType* %50, i64* %51, i64* %netSelect, i64* %52)
  %53 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %54 = load i64*, i64** @netsAssign, align 8
  %55 = load i64, i64* %netSelect, align 8
  call void @Assign(%struct._nodeVCGType* %53, i64* %54, i64 %55)
  %56 = load i64, i64* %netSelect, align 8
  %57 = load i64*, i64** @CROSSING, align 8
  %arrayidx35 = getelementptr inbounds i64, i64* %57, i64 %56
  store i64 0, i64* %arrayidx35, align 8
  %58 = load i64, i64* %netsCrossing, align 8
  %dec = add i64 %58, -1
  store i64 %dec, i64* %netsCrossing, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.36

if.end.36:                                        ; preds = %while.end, %lor.lhs.false
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %59 = load i64, i64* %col, align 8
  %inc38 = add i64 %59, 1
  store i64 %inc38, i64* %col, align 8
  br label %for.cond.1

for.end.39:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @Select(%struct._nodeVCGType* %VCG, %struct._nodeHCGType* %HCG, i64* %netsAssign, i64* %netSelect, i64* %CROSSING) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %HCG.addr = alloca %struct._nodeHCGType*, align 8
  %netsAssign.addr = alloca i64*, align 8
  %netSelect.addr = alloca i64*, align 8
  %CROSSING.addr = alloca i64*, align 8
  %net = alloca i64, align 8
  %track = alloca i64, align 8
  %select = alloca i64, align 8
  %costNet = alloca i64*, align 8
  %cost = alloca i64, align 8
  %largest = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store %struct._nodeHCGType* %HCG, %struct._nodeHCGType** %HCG.addr, align 8
  store i64* %netsAssign, i64** %netsAssign.addr, align 8
  store i64* %netSelect, i64** %netSelect.addr, align 8
  store i64* %CROSSING, i64** %CROSSING.addr, align 8
  %0 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %1 = load %struct._nodeHCGType*, %struct._nodeHCGType** %HCG.addr, align 8
  %2 = load i64*, i64** %netsAssign.addr, align 8
  %3 = load i64*, i64** %CROSSING.addr, align 8
  call void @BuildCostMatrix(%struct._nodeVCGType* %0, %struct._nodeHCGType* %1, i64* %2, i64* %3)
  store i64 -1, i64* %largest, align 8
  store i64 0, i64* %select, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %4 = load i64, i64* %net, align 8
  %5 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %net, align 8
  %7 = load i64*, i64** %CROSSING.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  store i64 0, i64* %cost, align 8
  %9 = load i64, i64* %net, align 8
  %10 = load i64**, i64*** @costMatrix, align 8
  %arrayidx1 = getelementptr inbounds i64*, i64** %10, i64 %9
  %11 = load i64*, i64** %arrayidx1, align 8
  store i64* %11, i64** %costNet, align 8
  store i64 1, i64* %track, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %12 = load i64, i64* %track, align 8
  %13 = load i64, i64* @channelTracks, align 8
  %cmp3 = icmp ule i64 %12, %13
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %14 = load i64, i64* %track, align 8
  %15 = load i64*, i64** %costNet, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx5, align 8
  %17 = load i64, i64* %cost, align 8
  %add = add nsw i64 %17, %16
  store i64 %add, i64* %cost, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %18 = load i64, i64* %track, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %track, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %19 = load i64, i64* %cost, align 8
  %20 = load i64, i64* %largest, align 8
  %cmp6 = icmp sgt i64 %19, %20
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.end
  %21 = load i64, i64* %cost, align 8
  store i64 %21, i64* %largest, align 8
  %22 = load i64, i64* %net, align 8
  store i64 %22, i64* %select, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end.8
  %23 = load i64, i64* %net, align 8
  %inc10 = add i64 %23, 1
  store i64 %inc10, i64* %net, align 8
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %24 = load i64, i64* %select, align 8
  %25 = load i64*, i64** %netSelect.addr, align 8
  store i64 %24, i64* %25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Assign(%struct._nodeVCGType* %VCG, i64* %assign, i64 %select) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %assign.addr = alloca i64*, align 8
  %select.addr = alloca i64, align 8
  %dist = alloca i64, align 8
  %ideal = alloca i64, align 8
  %track = alloca i64, align 8
  %tracks = alloca i64, align 8
  %trackAssign = alloca i64, align 8
  %vcv = alloca i64, align 8
  %vcvDist = alloca i64, align 8
  %vcvAssign = alloca i64, align 8
  %costNet = alloca i64*, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64* %assign, i64** %assign.addr, align 8
  store i64 %select, i64* %select.addr, align 8
  %0 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %1 = load i64, i64* %select.addr, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* %0, i64 %1)
  %2 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %3 = load i64, i64* %select.addr, align 8
  %4 = load i64*, i64** %assign.addr, align 8
  %5 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* %2, i64 %3, i64* %4, i64* %5)
  %6 = load i64, i64* @channelTracks, align 8
  %7 = load i64, i64* @cardTopNotPref, align 8
  %8 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 %6, i64 %7, i64 %8, i64* %ideal)
  %9 = load i64, i64* %select.addr, align 8
  %10 = load i64**, i64*** @costMatrix, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %10, i64 %9
  %11 = load i64*, i64** %arrayidx, align 8
  store i64* %11, i64** %costNet, align 8
  store i64 0, i64* %tracks, align 8
  store i64 1, i64* %track, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i64, i64* %track, align 8
  %13 = load i64, i64* @channelTracks, align 8
  %cmp = icmp ule i64 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %track, align 8
  %15 = load i64*, i64** @tracksAssign, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %15, i64 %14
  store i64 0, i64* %arrayidx1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %track, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %track, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 1, i64* %track, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.10, %for.end
  %17 = load i64, i64* %track, align 8
  %18 = load i64, i64* @channelTracks, align 8
  %cmp3 = icmp ule i64 %17, %18
  br i1 %cmp3, label %for.body.4, label %for.end.12

for.body.4:                                       ; preds = %for.cond.2
  %19 = load i64, i64* %track, align 8
  %20 = load i64*, i64** @tracksNoHCV, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %20, i64 %19
  %21 = load i64, i64* %arrayidx5, align 8
  %tobool = icmp ne i64 %21, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.4
  %22 = load i64, i64* %track, align 8
  %23 = load i64*, i64** @tracksNotPref, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %23, i64 %22
  %24 = load i64, i64* %arrayidx6, align 8
  %tobool7 = icmp ne i64 %24, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %25 = load i64, i64* %track, align 8
  %26 = load i64*, i64** @tracksAssign, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %26, i64 %25
  store i64 1, i64* %arrayidx8, align 8
  %27 = load i64, i64* %tracks, align 8
  %inc9 = add i64 %27, 1
  store i64 %inc9, i64* %tracks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end
  %28 = load i64, i64* %track, align 8
  %inc11 = add i64 %28, 1
  store i64 %inc11, i64* %track, align 8
  br label %for.cond.2

for.end.12:                                       ; preds = %for.cond.2
  %29 = load i64, i64* %tracks, align 8
  %cmp13 = icmp eq i64 %29, 0
  br i1 %cmp13, label %if.then.14, label %if.end.33

if.then.14:                                       ; preds = %for.end.12
  store i64 1, i64* %track, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.30, %if.then.14
  %30 = load i64, i64* %track, align 8
  %31 = load i64, i64* @channelTracks, align 8
  %cmp16 = icmp ule i64 %30, %31
  br i1 %cmp16, label %for.body.17, label %for.end.32

for.body.17:                                      ; preds = %for.cond.15
  %32 = load i64, i64* %track, align 8
  %33 = load i64*, i64** @tracksNoHCV, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %33, i64 %32
  %34 = load i64, i64* %arrayidx18, align 8
  %tobool19 = icmp ne i64 %34, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %for.body.17
  %35 = load i64, i64* %track, align 8
  %36 = load i64*, i64** @tracksTopNotPref, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %36, i64 %35
  %37 = load i64, i64* %arrayidx21, align 8
  %tobool22 = icmp ne i64 %37, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.29

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %38 = load i64, i64* %track, align 8
  %39 = load i64*, i64** @tracksBotNotPref, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %39, i64 %38
  %40 = load i64, i64* %arrayidx24, align 8
  %tobool25 = icmp ne i64 %40, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %land.lhs.true.23
  %41 = load i64, i64* %track, align 8
  %42 = load i64*, i64** @tracksAssign, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %42, i64 %41
  store i64 1, i64* %arrayidx27, align 8
  %43 = load i64, i64* %tracks, align 8
  %inc28 = add i64 %43, 1
  store i64 %inc28, i64* %tracks, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %land.lhs.true.23, %land.lhs.true.20, %for.body.17
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %44 = load i64, i64* %track, align 8
  %inc31 = add i64 %44, 1
  store i64 %inc31, i64* %track, align 8
  br label %for.cond.15

for.end.32:                                       ; preds = %for.cond.15
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %for.end.12
  %45 = load i64, i64* %tracks, align 8
  %cmp34 = icmp eq i64 %45, 0
  br i1 %cmp34, label %if.then.35, label %if.end.51

if.then.35:                                       ; preds = %if.end.33
  store i64 2, i64* %track, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.48, %if.then.35
  %46 = load i64, i64* %track, align 8
  %47 = load i64, i64* @channelTracks, align 8
  %cmp37 = icmp ult i64 %46, %47
  br i1 %cmp37, label %for.body.38, label %for.end.50

for.body.38:                                      ; preds = %for.cond.36
  %48 = load i64, i64* %track, align 8
  %49 = load i64*, i64** @tracksNoHCV, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %49, i64 %48
  %50 = load i64, i64* %arrayidx39, align 8
  %tobool40 = icmp ne i64 %50, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.47

land.lhs.true.41:                                 ; preds = %for.body.38
  %51 = load i64, i64* %track, align 8
  %52 = load i64*, i64** @tracksNotPref, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %52, i64 %51
  %53 = load i64, i64* %arrayidx42, align 8
  %tobool43 = icmp ne i64 %53, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true.41
  %54 = load i64, i64* %track, align 8
  %55 = load i64*, i64** @tracksAssign, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %55, i64 %54
  store i64 1, i64* %arrayidx45, align 8
  %56 = load i64, i64* %tracks, align 8
  %inc46 = add i64 %56, 1
  store i64 %inc46, i64* %tracks, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %land.lhs.true.41, %for.body.38
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %57 = load i64, i64* %track, align 8
  %inc49 = add i64 %57, 1
  store i64 %inc49, i64* %track, align 8
  br label %for.cond.36

for.end.50:                                       ; preds = %for.cond.36
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %if.end.33
  %58 = load i64, i64* %tracks, align 8
  %cmp52 = icmp eq i64 %58, 0
  br i1 %cmp52, label %if.then.53, label %if.end.66

if.then.53:                                       ; preds = %if.end.51
  %59 = load i64*, i64** @tracksNoHCV, align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %59, i64 1
  %60 = load i64, i64* %arrayidx54, align 8
  %tobool55 = icmp ne i64 %60, 0
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.then.53
  %61 = load i64*, i64** @tracksAssign, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %61, i64 1
  store i64 1, i64* %arrayidx57, align 8
  %62 = load i64, i64* %tracks, align 8
  %inc58 = add i64 %62, 1
  store i64 %inc58, i64* %tracks, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.then.53
  %63 = load i64, i64* @channelTracks, align 8
  %64 = load i64*, i64** @tracksNoHCV, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %64, i64 %63
  %65 = load i64, i64* %arrayidx60, align 8
  %tobool61 = icmp ne i64 %65, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.59
  %66 = load i64, i64* @channelTracks, align 8
  %67 = load i64*, i64** @tracksAssign, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %67, i64 %66
  store i64 1, i64* %arrayidx63, align 8
  %68 = load i64, i64* %tracks, align 8
  %inc64 = add i64 %68, 1
  store i64 %inc64, i64* %tracks, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.51
  store i64 0, i64* %trackAssign, align 8
  store i64 1000000, i64* %vcvAssign, align 8
  store i64 1, i64* %track, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.91, %if.end.66
  %69 = load i64, i64* %track, align 8
  %70 = load i64, i64* @channelTracks, align 8
  %cmp68 = icmp ule i64 %69, %70
  br i1 %cmp68, label %for.body.69, label %for.end.93

for.body.69:                                      ; preds = %for.cond.67
  %71 = load i64, i64* %track, align 8
  %72 = load i64*, i64** @tracksAssign, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %72, i64 %71
  %73 = load i64, i64* %arrayidx70, align 8
  %tobool71 = icmp ne i64 %73, 0
  br i1 %tobool71, label %if.then.72, label %if.end.90

if.then.72:                                       ; preds = %for.body.69
  %74 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %75 = load i64, i64* %select.addr, align 8
  %76 = load i64, i64* %track, align 8
  %77 = load i64*, i64** @netsAssign, align 8
  %call = call i64 @VCV(%struct._nodeVCGType* %74, i64 %75, i64 %76, i64* %77)
  store i64 %call, i64* %vcv, align 8
  %78 = load i64, i64* %vcv, align 8
  %79 = load i64, i64* %vcvAssign, align 8
  %cmp73 = icmp ult i64 %78, %79
  br i1 %cmp73, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %if.then.72
  %80 = load i64, i64* %vcv, align 8
  store i64 %80, i64* %vcvAssign, align 8
  %81 = load i64, i64* %track, align 8
  store i64 %81, i64* %trackAssign, align 8
  %82 = load i64, i64* %track, align 8
  %83 = load i64, i64* %ideal, align 8
  %sub = sub i64 %82, %83
  store i64 %sub, i64* %vcvDist, align 8
  %84 = load i64, i64* %vcvDist, align 8
  %cmp75 = icmp slt i64 %84, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.74
  %85 = load i64, i64* %vcvDist, align 8
  %mul = mul nsw i64 %85, -1
  store i64 %mul, i64* %vcvDist, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.74
  br label %if.end.89

if.else:                                          ; preds = %if.then.72
  %86 = load i64, i64* %vcv, align 8
  %87 = load i64, i64* %vcvAssign, align 8
  %cmp78 = icmp eq i64 %86, %87
  br i1 %cmp78, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %if.else
  %88 = load i64, i64* %track, align 8
  %89 = load i64, i64* %ideal, align 8
  %sub80 = sub i64 %88, %89
  store i64 %sub80, i64* %dist, align 8
  %90 = load i64, i64* %dist, align 8
  %cmp81 = icmp slt i64 %90, 0
  br i1 %cmp81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.79
  %91 = load i64, i64* %dist, align 8
  %mul83 = mul nsw i64 %91, -1
  store i64 %mul83, i64* %dist, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.then.79
  %92 = load i64, i64* %dist, align 8
  %93 = load i64, i64* %vcvDist, align 8
  %cmp85 = icmp slt i64 %92, %93
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.84
  %94 = load i64, i64* %dist, align 8
  store i64 %94, i64* %vcvDist, align 8
  %95 = load i64, i64* %vcv, align 8
  store i64 %95, i64* %vcvAssign, align 8
  %96 = load i64, i64* %track, align 8
  store i64 %96, i64* %trackAssign, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.84
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.else
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.77
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.body.69
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %97 = load i64, i64* %track, align 8
  %inc92 = add i64 %97, 1
  store i64 %inc92, i64* %track, align 8
  br label %for.cond.67

for.end.93:                                       ; preds = %for.cond.67
  %98 = load i64, i64* %trackAssign, align 8
  %99 = load i64, i64* %select.addr, align 8
  %100 = load i64*, i64** %assign.addr, align 8
  %arrayidx94 = getelementptr inbounds i64, i64* %100, i64 %99
  store i64 %98, i64* %arrayidx94, align 8
  ret void
}

declare void @LongestPathVCG(%struct._nodeVCGType*, i64) #2

declare void @NoHCV(%struct._nodeHCGType*, i64, i64*, i64*) #2

; Function Attrs: nounwind uwtable
define void @IdealTrack(i64 %tracks, i64 %top, i64 %bot, i64* %ideal) #0 {
entry:
  %tracks.addr = alloca i64, align 8
  %top.addr = alloca i64, align 8
  %bot.addr = alloca i64, align 8
  %ideal.addr = alloca i64*, align 8
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  store i64 %tracks, i64* %tracks.addr, align 8
  store i64 %top, i64* %top.addr, align 8
  store i64 %bot, i64* %bot.addr, align 8
  store i64* %ideal, i64** %ideal.addr, align 8
  %0 = load i64, i64* %top.addr, align 8
  %1 = load i64, i64* %tracks.addr, align 8
  %2 = load i64, i64* %bot.addr, align 8
  %sub = sub i64 %1, %2
  %mul = mul i64 %0, %sub
  %3 = load i64, i64* %bot.addr, align 8
  %4 = load i64, i64* %top.addr, align 8
  %add = add i64 %4, 1
  %mul1 = mul i64 %3, %add
  %add2 = add i64 %mul, %mul1
  store i64 %add2, i64* %num, align 8
  %5 = load i64, i64* %top.addr, align 8
  %6 = load i64, i64* %bot.addr, align 8
  %add3 = add i64 %5, %6
  store i64 %add3, i64* %den, align 8
  %7 = load i64, i64* %den, align 8
  %cmp = icmp ne i64 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %num, align 8
  %9 = load i64, i64* %den, align 8
  %div = udiv i64 %8, %9
  %10 = load i64*, i64** %ideal.addr, align 8
  store i64 %div, i64* %10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i64*, i64** %ideal.addr, align 8
  store i64 1, i64* %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i64 @VCV(%struct._nodeVCGType*, i64, i64, i64*) #2

; Function Attrs: nounwind uwtable
define void @BuildCostMatrix(%struct._nodeVCGType* %VCG, %struct._nodeHCGType* %HCG, i64* %netsAssign, i64* %CROSSING) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %HCG.addr = alloca %struct._nodeHCGType*, align 8
  %netsAssign.addr = alloca i64*, align 8
  %CROSSING.addr = alloca i64*, align 8
  %net = alloca i64, align 8
  %track = alloca i64, align 8
  %ideal = alloca i64, align 8
  %dist = alloca i64, align 8
  %mult = alloca i64, align 8
  %costNet = alloca i64*, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store %struct._nodeHCGType* %HCG, %struct._nodeHCGType** %HCG.addr, align 8
  store i64* %netsAssign, i64** %netsAssign.addr, align 8
  store i64* %CROSSING, i64** %CROSSING.addr, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64**, i64*** @costMatrix, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %3, i64 %2
  %4 = load i64*, i64** %arrayidx, align 8
  store i64* %4, i64** %costNet, align 8
  store i64 1, i64* %track, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i64, i64* %track, align 8
  %6 = load i64, i64* @channelTracks, align 8
  %cmp2 = icmp ule i64 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i64, i64* %track, align 8
  %8 = load i64*, i64** %costNet, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 %7
  store i64 0, i64* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i64, i64* %track, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %track, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %10 = load i64, i64* %net, align 8
  %inc6 = add i64 %10, 1
  store i64 %inc6, i64* %net, align 8
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  store i64 1, i64* %net, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.57, %for.end.7
  %11 = load i64, i64* %net, align 8
  %12 = load i64, i64* @channelNets, align 8
  %cmp9 = icmp ule i64 %11, %12
  br i1 %cmp9, label %for.body.10, label %for.end.59

for.body.10:                                      ; preds = %for.cond.8
  %13 = load i64, i64* %net, align 8
  %14 = load i64*, i64** %CROSSING.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %14, i64 %13
  %15 = load i64, i64* %arrayidx11, align 8
  %tobool = icmp ne i64 %15, 0
  br i1 %tobool, label %if.then, label %if.end.56

if.then:                                          ; preds = %for.body.10
  %16 = load i64, i64* %net, align 8
  %17 = load i64**, i64*** @costMatrix, align 8
  %arrayidx12 = getelementptr inbounds i64*, i64** %17, i64 %16
  %18 = load i64*, i64** %arrayidx12, align 8
  store i64* %18, i64** %costNet, align 8
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %20 = load i64, i64* %net, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* %19, i64 %20)
  %21 = load %struct._nodeHCGType*, %struct._nodeHCGType** %HCG.addr, align 8
  %22 = load i64, i64* %net, align 8
  %23 = load i64*, i64** %netsAssign.addr, align 8
  %24 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* %21, i64 %22, i64* %23, i64* %24)
  %25 = load i64, i64* @channelTracks, align 8
  %26 = load i64, i64* @cardTopNotPref, align 8
  %27 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 %25, i64 %26, i64 %27, i64* %ideal)
  store i64 1, i64* %track, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.53, %if.then
  %28 = load i64, i64* %track, align 8
  %29 = load i64, i64* @channelTracks, align 8
  %cmp14 = icmp ule i64 %28, %29
  br i1 %cmp14, label %for.body.15, label %for.end.55

for.body.15:                                      ; preds = %for.cond.13
  %30 = load i64, i64* %track, align 8
  %31 = load i64*, i64** @tracksNoHCV, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %31, i64 %30
  %32 = load i64, i64* %arrayidx16, align 8
  %tobool17 = icmp ne i64 %32, 0
  br i1 %tobool17, label %if.then.18, label %if.else.50

if.then.18:                                       ; preds = %for.body.15
  %33 = load i64, i64* @cardNotPref, align 8
  %34 = load i64, i64* @channelTracks, align 8
  %cmp19 = icmp ne i64 %33, %34
  br i1 %cmp19, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %if.then.18
  %35 = load i64, i64* %track, align 8
  %36 = load i64*, i64** @tracksNotPref, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %36, i64 %35
  %37 = load i64, i64* %arrayidx21, align 8
  %tobool22 = icmp ne i64 %37, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.20
  %38 = load i64, i64* %track, align 8
  %39 = load i64*, i64** %costNet, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %39, i64 %38
  store i64 10000, i64* %arrayidx24, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.20
  %40 = load i64, i64* @cardNotPref, align 8
  %mul = mul i64 100, %40
  %41 = load i64, i64* %track, align 8
  %42 = load i64*, i64** %costNet, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %42, i64 %41
  store i64 %mul, i64* %arrayidx25, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  br label %if.end.37

if.else.26:                                       ; preds = %if.then.18
  %43 = load i64, i64* %track, align 8
  %44 = load i64, i64* @channelTracks, align 8
  %45 = load i64, i64* @cardBotNotPref, align 8
  %sub = sub i64 %44, %45
  %cmp27 = icmp ugt i64 %43, %sub
  br i1 %cmp27, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %if.else.26
  %46 = load i64, i64* %track, align 8
  %47 = load i64, i64* @cardTopNotPref, align 8
  %cmp28 = icmp ule i64 %46, %47
  br i1 %cmp28, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %land.lhs.true
  %48 = load i64, i64* @cardNotPref, align 8
  %49 = load i64, i64* @cardTopNotPref, align 8
  %50 = load i64, i64* @cardBotNotPref, align 8
  %add = add i64 %49, %50
  %51 = load i64, i64* @channelTracks, align 8
  %sub30 = sub i64 %add, %51
  %sub31 = sub i64 %48, %sub30
  store i64 %sub31, i64* %mult, align 8
  %52 = load i64, i64* %mult, align 8
  %mul32 = mul nsw i64 100, %52
  %53 = load i64, i64* %track, align 8
  %54 = load i64*, i64** %costNet, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %54, i64 %53
  store i64 %mul32, i64* %arrayidx33, align 8
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true, %if.else.26
  %55 = load i64, i64* %track, align 8
  %56 = load i64*, i64** %costNet, align 8
  %arrayidx35 = getelementptr inbounds i64, i64* %56, i64 %55
  store i64 10000, i64* %arrayidx35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %57 = load i64, i64* %track, align 8
  %58 = load i64*, i64** %costNet, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %58, i64 %57
  %59 = load i64, i64* %arrayidx38, align 8
  %cmp39 = icmp slt i64 %59, 1000000
  br i1 %cmp39, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.end.37
  %60 = load i64, i64* %ideal, align 8
  %61 = load i64, i64* %track, align 8
  %sub41 = sub i64 %60, %61
  store i64 %sub41, i64* %dist, align 8
  %62 = load i64, i64* %dist, align 8
  %cmp42 = icmp slt i64 %62, 0
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.40
  %63 = load i64, i64* %dist, align 8
  %mul44 = mul nsw i64 %63, -1
  store i64 %mul44, i64* %dist, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.then.40
  %64 = load i64, i64* %dist, align 8
  %mul46 = mul nsw i64 1, %64
  %65 = load i64, i64* %track, align 8
  %66 = load i64*, i64** %costNet, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %66, i64 %65
  %67 = load i64, i64* %arrayidx47, align 8
  %add48 = add nsw i64 %67, %mul46
  store i64 %add48, i64* %arrayidx47, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.45, %if.end.37
  br label %if.end.52

if.else.50:                                       ; preds = %for.body.15
  %68 = load i64, i64* %track, align 8
  %69 = load i64*, i64** %costNet, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %69, i64 %68
  store i64 1000000, i64* %arrayidx51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.end.49
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %70 = load i64, i64* %track, align 8
  %inc54 = add i64 %70, 1
  store i64 %inc54, i64* %track, align 8
  br label %for.cond.13

for.end.55:                                       ; preds = %for.cond.13
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.55, %for.body.10
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %71 = load i64, i64* %net, align 8
  %inc58 = add i64 %71, 1
  store i64 %inc58, i64* %net, align 8
  br label %for.cond.8

for.end.59:                                       ; preds = %for.cond.8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
