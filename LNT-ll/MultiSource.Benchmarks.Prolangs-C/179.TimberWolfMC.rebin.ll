; ModuleID = './MultiSource.Benchmarks.Prolangs-C/179.TimberWolfMC.rebin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numBinsX = external global i32, align 4
@numBinsY = external global i32, align 4
@numcells = external global i32, align 4
@blockarray = external global i32***, align 8
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@binOffsetX = external global i32, align 4
@binWidthX = external global i32, align 4
@binOffsetY = external global i32, align 4
@binWidthY = external global i32, align 4
@bucket = external global i32*, align 8

; Function Attrs: nounwind uwtable
define void @rebin(i32 %flag) #0 {
entry:
  %flag.addr = alloca i32, align 4
  %ptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cell = alloca i32, align 4
  %startx = alloca i32, align 4
  %endx = alloca i32, align 4
  %starty = alloca i32, align 4
  %endy = alloca i32, align 4
  %occuptr = alloca i32*, align 8
  %lowBinX = alloca i32, align 4
  %highBinX = alloca i32, align 4
  %lowBinY = alloca i32, align 4
  %highBinY = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numBinsX, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @numBinsY, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* @numcells, align 4
  %add = add nsw i32 4, %5
  %cmp5 = icmp sle i32 %4, %add
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i32***, i32**** @blockarray, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %9, i64 %idxprom8
  %10 = load i32**, i32*** %arrayidx, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %10, i64 %idxprom7
  %11 = load i32*, i32** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 0, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end.13
  %14 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 1, i32* %cell, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.93, %for.end.16
  %15 = load i32, i32* %cell, align 4
  %16 = load i32, i32* @numcells, align 4
  %17 = load i32, i32* @numpads, align 4
  %add18 = add nsw i32 %16, %17
  %add19 = add nsw i32 %add18, 4
  %cmp20 = icmp sle i32 %15, %add19
  br i1 %cmp20, label %for.body.21, label %for.end.95

for.body.21:                                      ; preds = %for.cond.17
  %18 = load i32, i32* %cell, align 4
  %19 = load i32, i32* @numcells, align 4
  %cmp22 = icmp sgt i32 %18, %19
  br i1 %cmp22, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.21
  %20 = load i32, i32* %cell, align 4
  %21 = load i32, i32* @numcells, align 4
  %22 = load i32, i32* @numpads, align 4
  %add23 = add nsw i32 %21, %22
  %cmp24 = icmp sle i32 %20, %add23
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc.93

if.end:                                           ; preds = %land.lhs.true, %for.body.21
  %23 = load i32, i32* %cell, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx26 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %24, i64 %idxprom25
  %25 = load %struct.cellbox*, %struct.cellbox** %arrayidx26, align 8
  store %struct.cellbox* %25, %struct.cellbox** %ptr, align 8
  %26 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 5
  %27 = load i32, i32* %orient, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 21
  %arrayidx28 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom27
  %29 = load %struct.tilebox*, %struct.tilebox** %arrayidx28, align 8
  store %struct.tilebox* %29, %struct.tilebox** %tileptr, align 8
  %30 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 2
  %31 = load i32, i32* %xcenter, align 4
  %32 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 9
  %33 = load i32, i32* %left, align 4
  %add29 = add nsw i32 %31, %33
  store i32 %add29, i32* %startx, align 4
  %34 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %34, i32 0, i32 2
  %35 = load i32, i32* %xcenter30, align 4
  %36 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 10
  %37 = load i32, i32* %right, align 4
  %add31 = add nsw i32 %35, %37
  store i32 %add31, i32* %endx, align 4
  %38 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 3
  %39 = load i32, i32* %ycenter, align 4
  %40 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %40, i32 0, i32 11
  %41 = load i32, i32* %bottom, align 4
  %add32 = add nsw i32 %39, %41
  store i32 %add32, i32* %starty, align 4
  %42 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 3
  %43 = load i32, i32* %ycenter33, align 4
  %44 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 12
  %45 = load i32, i32* %top, align 4
  %add34 = add nsw i32 %43, %45
  store i32 %add34, i32* %endy, align 4
  %46 = load i32, i32* %flag.addr, align 4
  %cmp35 = icmp eq i32 %46, 1
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.42

land.lhs.true.36:                                 ; preds = %if.end
  %47 = load i32, i32* %cell, align 4
  %48 = load i32, i32* @numcells, align 4
  %cmp37 = icmp sle i32 %47, %48
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %land.lhs.true.36
  %49 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i32 0, i32 5
  %50 = load i32, i32* %lborder, align 4
  %51 = load i32, i32* %startx, align 4
  %sub = sub nsw i32 %51, %50
  store i32 %sub, i32* %startx, align 4
  %52 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i32 0, i32 6
  %53 = load i32, i32* %rborder, align 4
  %54 = load i32, i32* %endx, align 4
  %add39 = add nsw i32 %54, %53
  store i32 %add39, i32* %endx, align 4
  %55 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %55, i32 0, i32 7
  %56 = load i32, i32* %bborder, align 4
  %57 = load i32, i32* %starty, align 4
  %sub40 = sub nsw i32 %57, %56
  store i32 %sub40, i32* %starty, align 4
  %58 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %58, i32 0, i32 8
  %59 = load i32, i32* %tborder, align 4
  %60 = load i32, i32* %endy, align 4
  %add41 = add nsw i32 %60, %59
  store i32 %add41, i32* %endy, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %land.lhs.true.36, %if.end
  %61 = load i32, i32* %startx, align 4
  %62 = load i32, i32* @binOffsetX, align 4
  %sub43 = sub nsw i32 %61, %62
  %63 = load i32, i32* @binWidthX, align 4
  %div = sdiv i32 %sub43, %63
  store i32 %div, i32* %lowBinX, align 4
  %64 = load i32, i32* %lowBinX, align 4
  %cmp44 = icmp slt i32 %64, 1
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.42
  store i32 1, i32* %lowBinX, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.end.42
  %65 = load i32, i32* %lowBinX, align 4
  %66 = load i32, i32* @numBinsX, align 4
  %cmp46 = icmp sgt i32 %65, %66
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else
  %67 = load i32, i32* @numBinsX, align 4
  store i32 %67, i32* %lowBinX, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.45
  %68 = load i32, i32* %endx, align 4
  %69 = load i32, i32* @binOffsetX, align 4
  %sub50 = sub nsw i32 %68, %69
  %70 = load i32, i32* @binWidthX, align 4
  %div51 = sdiv i32 %sub50, %70
  store i32 %div51, i32* %highBinX, align 4
  %71 = load i32, i32* %highBinX, align 4
  %72 = load i32, i32* @numBinsX, align 4
  %cmp52 = icmp sgt i32 %71, %72
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.end.49
  %73 = load i32, i32* @numBinsX, align 4
  store i32 %73, i32* %highBinX, align 4
  br label %if.end.58

if.else.54:                                       ; preds = %if.end.49
  %74 = load i32, i32* %highBinX, align 4
  %cmp55 = icmp slt i32 %74, 1
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else.54
  store i32 1, i32* %highBinX, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.else.54
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.53
  %75 = load i32, i32* %lowBinX, align 4
  %76 = load i32, i32* %highBinX, align 4
  %cmp59 = icmp eq i32 %75, %76
  br i1 %cmp59, label %if.then.60, label %if.else.87

if.then.60:                                       ; preds = %if.end.58
  %77 = load i32, i32* %starty, align 4
  %78 = load i32, i32* @binOffsetY, align 4
  %sub61 = sub nsw i32 %77, %78
  %79 = load i32, i32* @binWidthY, align 4
  %div62 = sdiv i32 %sub61, %79
  store i32 %div62, i32* %lowBinY, align 4
  %80 = load i32, i32* %lowBinY, align 4
  %cmp63 = icmp slt i32 %80, 1
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.then.60
  store i32 1, i32* %lowBinY, align 4
  br label %if.end.69

if.else.65:                                       ; preds = %if.then.60
  %81 = load i32, i32* %lowBinY, align 4
  %82 = load i32, i32* @numBinsY, align 4
  %cmp66 = icmp sgt i32 %81, %82
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else.65
  %83 = load i32, i32* @numBinsY, align 4
  store i32 %83, i32* %lowBinY, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.64
  %84 = load i32, i32* %endy, align 4
  %85 = load i32, i32* @binOffsetY, align 4
  %sub70 = sub nsw i32 %84, %85
  %86 = load i32, i32* @binWidthY, align 4
  %div71 = sdiv i32 %sub70, %86
  store i32 %div71, i32* %highBinY, align 4
  %87 = load i32, i32* %highBinY, align 4
  %88 = load i32, i32* @numBinsY, align 4
  %cmp72 = icmp sgt i32 %87, %88
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.69
  %89 = load i32, i32* @numBinsY, align 4
  store i32 %89, i32* %highBinY, align 4
  br label %if.end.78

if.else.74:                                       ; preds = %if.end.69
  %90 = load i32, i32* %highBinY, align 4
  %cmp75 = icmp slt i32 %90, 1
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else.74
  store i32 1, i32* %highBinY, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.else.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.73
  %91 = load i32, i32* %lowBinY, align 4
  %92 = load i32, i32* %highBinY, align 4
  %cmp79 = icmp eq i32 %91, %92
  br i1 %cmp79, label %if.then.80, label %if.else.85

if.then.80:                                       ; preds = %if.end.78
  %93 = load i32, i32* %lowBinY, align 4
  %idxprom81 = sext i32 %93 to i64
  %94 = load i32, i32* %lowBinX, align 4
  %idxprom82 = sext i32 %94 to i64
  %95 = load i32***, i32**** @blockarray, align 8
  %arrayidx83 = getelementptr inbounds i32**, i32*** %95, i64 %idxprom82
  %96 = load i32**, i32*** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32*, i32** %96, i64 %idxprom81
  %97 = load i32*, i32** %arrayidx84, align 8
  store i32* %97, i32** %occuptr, align 8
  br label %if.end.86

if.else.85:                                       ; preds = %if.end.78
  %98 = load i32*, i32** @bucket, align 8
  store i32* %98, i32** %occuptr, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.80
  br label %if.end.88

if.else.87:                                       ; preds = %if.end.58
  %99 = load i32*, i32** @bucket, align 8
  store i32* %99, i32** %occuptr, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.end.86
  %100 = load i32, i32* %cell, align 4
  %101 = load i32*, i32** %occuptr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx89, align 4
  %inc90 = add nsw i32 %102, 1
  store i32 %inc90, i32* %arrayidx89, align 4
  %idxprom91 = sext i32 %inc90 to i64
  %103 = load i32*, i32** %occuptr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %103, i64 %idxprom91
  store i32 %100, i32* %arrayidx92, align 4
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.88, %if.then
  %104 = load i32, i32* %cell, align 4
  %inc94 = add nsw i32 %104, 1
  store i32 %inc94, i32* %cell, align 4
  br label %for.cond.17

for.end.95:                                       ; preds = %for.cond.17
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
