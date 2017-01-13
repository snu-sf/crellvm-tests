; ModuleID = './MultiSource.Benchmarks.Prolangs-C/197.TimberWolfMC.config3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@numpads = external global i32, align 4
@blockr = external global i32, align 4
@blockl = external global i32, align 4
@blockt = external global i32, align 4
@blockb = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @config3() #0 {
entry:
  %cellptr = alloca %struct.cellbox*, align 8
  %pad = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %deltaX = alloca i32, align 4
  %deltaY = alloca i32, align 4
  %target = alloca i32, align 4
  %cell = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 1000000, i32* %left, align 4
  store i32 1000000, i32* %bottom, align 4
  store i32 0, i32* %top, align 4
  store i32 0, i32* %right, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %cellptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 2
  %6 = load i32, i32* %xcenter, align 4
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  %left3 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i32 0, i32 9
  %11 = load i32, i32* %left3, align 4
  %add = add nsw i32 %6, %11
  %12 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient4 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 5
  %13 = load i32, i32* %orient4, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i32 0, i32 21
  %arrayidx7 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config6, i32 0, i64 %idxprom5
  %15 = load %struct.tilebox*, %struct.tilebox** %arrayidx7, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i32 0, i32 5
  %16 = load i32, i32* %lborder, align 4
  %mul = mul nsw i32 2, %16
  %sub = sub nsw i32 %add, %mul
  store i32 %sub, i32* %l, align 4
  %17 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 2
  %18 = load i32, i32* %xcenter8, align 4
  %19 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient9 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 5
  %20 = load i32, i32* %orient9, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i32 0, i32 21
  %arrayidx12 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config11, i32 0, i64 %idxprom10
  %22 = load %struct.tilebox*, %struct.tilebox** %arrayidx12, align 8
  %right13 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %22, i32 0, i32 10
  %23 = load i32, i32* %right13, align 4
  %add14 = add nsw i32 %18, %23
  %24 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 5
  %25 = load i32, i32* %orient15, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 21
  %arrayidx18 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config17, i32 0, i64 %idxprom16
  %27 = load %struct.tilebox*, %struct.tilebox** %arrayidx18, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 6
  %28 = load i32, i32* %rborder, align 4
  %mul19 = mul nsw i32 2, %28
  %add20 = add nsw i32 %add14, %mul19
  store i32 %add20, i32* %r, align 4
  %29 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i32 0, i32 3
  %30 = load i32, i32* %ycenter, align 4
  %31 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %31, i32 0, i32 5
  %32 = load i32, i32* %orient21, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %33, i32 0, i32 21
  %arrayidx24 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config23, i32 0, i64 %idxprom22
  %34 = load %struct.tilebox*, %struct.tilebox** %arrayidx24, align 8
  %bottom25 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 11
  %35 = load i32, i32* %bottom25, align 4
  %add26 = add nsw i32 %30, %35
  %36 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient27 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 5
  %37 = load i32, i32* %orient27, align 4
  %idxprom28 = sext i32 %37 to i64
  %38 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 21
  %arrayidx30 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config29, i32 0, i64 %idxprom28
  %39 = load %struct.tilebox*, %struct.tilebox** %arrayidx30, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %39, i32 0, i32 7
  %40 = load i32, i32* %bborder, align 4
  %mul31 = mul nsw i32 2, %40
  %sub32 = sub nsw i32 %add26, %mul31
  store i32 %sub32, i32* %b, align 4
  %41 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i32 0, i32 3
  %42 = load i32, i32* %ycenter33, align 4
  %43 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient34 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %43, i32 0, i32 5
  %44 = load i32, i32* %orient34, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %45, i32 0, i32 21
  %arrayidx37 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config36, i32 0, i64 %idxprom35
  %46 = load %struct.tilebox*, %struct.tilebox** %arrayidx37, align 8
  %top38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %46, i32 0, i32 12
  %47 = load i32, i32* %top38, align 4
  %add39 = add nsw i32 %42, %47
  %48 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient40 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 5
  %49 = load i32, i32* %orient40, align 4
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %50, i32 0, i32 21
  %arrayidx43 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config42, i32 0, i64 %idxprom41
  %51 = load %struct.tilebox*, %struct.tilebox** %arrayidx43, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %51, i32 0, i32 8
  %52 = load i32, i32* %tborder, align 4
  %mul44 = mul nsw i32 2, %52
  %add45 = add nsw i32 %add39, %mul44
  store i32 %add45, i32* %t, align 4
  %53 = load i32, i32* %l, align 4
  %54 = load i32, i32* %left, align 4
  %cmp46 = icmp slt i32 %53, %54
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %55 = load i32, i32* %l, align 4
  store i32 %55, i32* %left, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %56 = load i32, i32* %r, align 4
  %57 = load i32, i32* %right, align 4
  %cmp47 = icmp sgt i32 %56, %57
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end
  %58 = load i32, i32* %r, align 4
  store i32 %58, i32* %right, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end
  %59 = load i32, i32* %b, align 4
  %60 = load i32, i32* %bottom, align 4
  %cmp50 = icmp slt i32 %59, %60
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  %61 = load i32, i32* %b, align 4
  store i32 %61, i32* %bottom, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.49
  %62 = load i32, i32* %t, align 4
  %63 = load i32, i32* %top, align 4
  %cmp53 = icmp sgt i32 %62, %63
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  %64 = load i32, i32* %t, align 4
  store i32 %64, i32* %top, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %65 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %deltaX, align 4
  store i32 0, i32* %deltaY, align 4
  %66 = load i32, i32* @numcells, align 4
  %add56 = add nsw i32 %66, 1
  store i32 %add56, i32* %pad, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.75, %for.end
  %67 = load i32, i32* %pad, align 4
  %68 = load i32, i32* @numcells, align 4
  %69 = load i32, i32* @numpads, align 4
  %add58 = add nsw i32 %68, %69
  %cmp59 = icmp sle i32 %67, %add58
  br i1 %cmp59, label %for.body.60, label %for.end.77

for.body.60:                                      ; preds = %for.cond.57
  %70 = load i32, i32* %pad, align 4
  %idxprom61 = sext i32 %70 to i64
  %71 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx62 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %71, i64 %idxprom61
  %72 = load %struct.cellbox*, %struct.cellbox** %arrayidx62, align 8
  store %struct.cellbox* %72, %struct.cellbox** %cellptr, align 8
  %73 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside = getelementptr inbounds %struct.cellbox, %struct.cellbox* %73, i32 0, i32 11
  %74 = load i32, i32* %padside, align 4
  %cmp63 = icmp ne i32 %74, 4
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.body.60
  br label %for.inc.75

if.end.65:                                        ; preds = %for.body.60
  %75 = load i32, i32* %bottom, align 4
  %76 = load i32, i32* %deltaY, align 4
  %sub66 = sub nsw i32 %75, %76
  store i32 %sub66, i32* %target, align 4
  %77 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter67 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %77, i32 0, i32 3
  %78 = load i32, i32* %ycenter67, align 4
  %79 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i32 0, i32 5
  %80 = load i32, i32* %orient68, align 4
  %idxprom69 = sext i32 %80 to i64
  %81 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config70 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %81, i32 0, i32 21
  %arrayidx71 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config70, i32 0, i64 %idxprom69
  %82 = load %struct.tilebox*, %struct.tilebox** %arrayidx71, align 8
  %top72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %82, i32 0, i32 12
  %83 = load i32, i32* %top72, align 4
  %add73 = add nsw i32 %78, %83
  store i32 %add73, i32* %b, align 4
  %84 = load i32, i32* %target, align 4
  %85 = load i32, i32* %b, align 4
  %sub74 = sub nsw i32 %84, %85
  store i32 %sub74, i32* %b, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.65, %if.then.64
  %86 = load i32, i32* %pad, align 4
  %inc76 = add nsw i32 %86, 1
  store i32 %inc76, i32* %pad, align 4
  br label %for.cond.57

for.end.77:                                       ; preds = %for.cond.57
  %87 = load i32, i32* @numcells, align 4
  %add78 = add nsw i32 %87, 1
  store i32 %add78, i32* %pad, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.98, %for.end.77
  %88 = load i32, i32* %pad, align 4
  %89 = load i32, i32* @numcells, align 4
  %90 = load i32, i32* @numpads, align 4
  %add80 = add nsw i32 %89, %90
  %cmp81 = icmp sle i32 %88, %add80
  br i1 %cmp81, label %for.body.82, label %for.end.100

for.body.82:                                      ; preds = %for.cond.79
  %91 = load i32, i32* %pad, align 4
  %idxprom83 = sext i32 %91 to i64
  %92 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx84 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %92, i64 %idxprom83
  %93 = load %struct.cellbox*, %struct.cellbox** %arrayidx84, align 8
  store %struct.cellbox* %93, %struct.cellbox** %cellptr, align 8
  %94 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %94, i32 0, i32 11
  %95 = load i32, i32* %padside85, align 4
  %cmp86 = icmp ne i32 %95, 2
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.82
  br label %for.inc.98

if.end.88:                                        ; preds = %for.body.82
  %96 = load i32, i32* %top, align 4
  %97 = load i32, i32* %deltaY, align 4
  %add89 = add nsw i32 %96, %97
  store i32 %add89, i32* %target, align 4
  %98 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter90 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %98, i32 0, i32 3
  %99 = load i32, i32* %ycenter90, align 4
  %100 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %100, i32 0, i32 5
  %101 = load i32, i32* %orient91, align 4
  %idxprom92 = sext i32 %101 to i64
  %102 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config93 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %102, i32 0, i32 21
  %arrayidx94 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config93, i32 0, i64 %idxprom92
  %103 = load %struct.tilebox*, %struct.tilebox** %arrayidx94, align 8
  %bottom95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %103, i32 0, i32 11
  %104 = load i32, i32* %bottom95, align 4
  %add96 = add nsw i32 %99, %104
  store i32 %add96, i32* %t, align 4
  %105 = load i32, i32* %target, align 4
  %106 = load i32, i32* %t, align 4
  %sub97 = sub nsw i32 %106, %105
  store i32 %sub97, i32* %t, align 4
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.88, %if.then.87
  %107 = load i32, i32* %pad, align 4
  %inc99 = add nsw i32 %107, 1
  store i32 %inc99, i32* %pad, align 4
  br label %for.cond.79

for.end.100:                                      ; preds = %for.cond.79
  %108 = load i32, i32* @numcells, align 4
  %add101 = add nsw i32 %108, 1
  store i32 %add101, i32* %pad, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.121, %for.end.100
  %109 = load i32, i32* %pad, align 4
  %110 = load i32, i32* @numcells, align 4
  %111 = load i32, i32* @numpads, align 4
  %add103 = add nsw i32 %110, %111
  %cmp104 = icmp sle i32 %109, %add103
  br i1 %cmp104, label %for.body.105, label %for.end.123

for.body.105:                                     ; preds = %for.cond.102
  %112 = load i32, i32* %pad, align 4
  %idxprom106 = sext i32 %112 to i64
  %113 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx107 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %113, i64 %idxprom106
  %114 = load %struct.cellbox*, %struct.cellbox** %arrayidx107, align 8
  store %struct.cellbox* %114, %struct.cellbox** %cellptr, align 8
  %115 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside108 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %115, i32 0, i32 11
  %116 = load i32, i32* %padside108, align 4
  %cmp109 = icmp ne i32 %116, 1
  br i1 %cmp109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %for.body.105
  br label %for.inc.121

if.end.111:                                       ; preds = %for.body.105
  %117 = load i32, i32* %left, align 4
  %118 = load i32, i32* %deltaX, align 4
  %sub112 = sub nsw i32 %117, %118
  store i32 %sub112, i32* %target, align 4
  %119 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter113 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %119, i32 0, i32 2
  %120 = load i32, i32* %xcenter113, align 4
  %121 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient114 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %121, i32 0, i32 5
  %122 = load i32, i32* %orient114, align 4
  %idxprom115 = sext i32 %122 to i64
  %123 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config116 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 21
  %arrayidx117 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config116, i32 0, i64 %idxprom115
  %124 = load %struct.tilebox*, %struct.tilebox** %arrayidx117, align 8
  %right118 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %124, i32 0, i32 10
  %125 = load i32, i32* %right118, align 4
  %add119 = add nsw i32 %120, %125
  store i32 %add119, i32* %l, align 4
  %126 = load i32, i32* %target, align 4
  %127 = load i32, i32* %l, align 4
  %sub120 = sub nsw i32 %126, %127
  store i32 %sub120, i32* %l, align 4
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.111, %if.then.110
  %128 = load i32, i32* %pad, align 4
  %inc122 = add nsw i32 %128, 1
  store i32 %inc122, i32* %pad, align 4
  br label %for.cond.102

for.end.123:                                      ; preds = %for.cond.102
  %129 = load i32, i32* @numcells, align 4
  %add124 = add nsw i32 %129, 1
  store i32 %add124, i32* %pad, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.144, %for.end.123
  %130 = load i32, i32* %pad, align 4
  %131 = load i32, i32* @numcells, align 4
  %132 = load i32, i32* @numpads, align 4
  %add126 = add nsw i32 %131, %132
  %cmp127 = icmp sle i32 %130, %add126
  br i1 %cmp127, label %for.body.128, label %for.end.146

for.body.128:                                     ; preds = %for.cond.125
  %133 = load i32, i32* %pad, align 4
  %idxprom129 = sext i32 %133 to i64
  %134 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx130 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %134, i64 %idxprom129
  %135 = load %struct.cellbox*, %struct.cellbox** %arrayidx130, align 8
  store %struct.cellbox* %135, %struct.cellbox** %cellptr, align 8
  %136 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %padside131 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %136, i32 0, i32 11
  %137 = load i32, i32* %padside131, align 4
  %cmp132 = icmp ne i32 %137, 3
  br i1 %cmp132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %for.body.128
  br label %for.inc.144

if.end.134:                                       ; preds = %for.body.128
  %138 = load i32, i32* %right, align 4
  %139 = load i32, i32* %deltaX, align 4
  %add135 = add nsw i32 %138, %139
  store i32 %add135, i32* %target, align 4
  %140 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter136 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %140, i32 0, i32 2
  %141 = load i32, i32* %xcenter136, align 4
  %142 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient137 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %142, i32 0, i32 5
  %143 = load i32, i32* %orient137, align 4
  %idxprom138 = sext i32 %143 to i64
  %144 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config139 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %144, i32 0, i32 21
  %arrayidx140 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config139, i32 0, i64 %idxprom138
  %145 = load %struct.tilebox*, %struct.tilebox** %arrayidx140, align 8
  %left141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %145, i32 0, i32 9
  %146 = load i32, i32* %left141, align 4
  %add142 = add nsw i32 %141, %146
  store i32 %add142, i32* %r, align 4
  %147 = load i32, i32* %target, align 4
  %148 = load i32, i32* %r, align 4
  %sub143 = sub nsw i32 %148, %147
  store i32 %sub143, i32* %r, align 4
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.134, %if.then.133
  %149 = load i32, i32* %pad, align 4
  %inc145 = add nsw i32 %149, 1
  store i32 %inc145, i32* %pad, align 4
  br label %for.cond.125

for.end.146:                                      ; preds = %for.cond.125
  %150 = load i32, i32* @numcells, align 4
  %add147 = add nsw i32 %150, 1
  store i32 %add147, i32* %pad, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.194, %for.end.146
  %151 = load i32, i32* %pad, align 4
  %152 = load i32, i32* @numcells, align 4
  %153 = load i32, i32* @numpads, align 4
  %add149 = add nsw i32 %152, %153
  %cmp150 = icmp sle i32 %151, %add149
  br i1 %cmp150, label %for.body.151, label %for.end.196

for.body.151:                                     ; preds = %for.cond.148
  %154 = load i32, i32* %pad, align 4
  %idxprom152 = sext i32 %154 to i64
  %155 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx153 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %155, i64 %idxprom152
  %156 = load %struct.cellbox*, %struct.cellbox** %arrayidx153, align 8
  %padside154 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %156, i32 0, i32 11
  %157 = load i32, i32* %padside154, align 4
  %cmp155 = icmp eq i32 %157, 4
  br i1 %cmp155, label %if.then.156, label %if.else

if.then.156:                                      ; preds = %for.body.151
  %158 = load i32, i32* %b, align 4
  %159 = load i32, i32* %pad, align 4
  %idxprom157 = sext i32 %159 to i64
  %160 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx158 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %160, i64 %idxprom157
  %161 = load %struct.cellbox*, %struct.cellbox** %arrayidx158, align 8
  %ycenter159 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %161, i32 0, i32 3
  %162 = load i32, i32* %ycenter159, align 4
  %add160 = add nsw i32 %162, %158
  store i32 %add160, i32* %ycenter159, align 4
  br label %if.end.193

if.else:                                          ; preds = %for.body.151
  %163 = load i32, i32* %pad, align 4
  %idxprom161 = sext i32 %163 to i64
  %164 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx162 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %164, i64 %idxprom161
  %165 = load %struct.cellbox*, %struct.cellbox** %arrayidx162, align 8
  %padside163 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %165, i32 0, i32 11
  %166 = load i32, i32* %padside163, align 4
  %cmp164 = icmp eq i32 %166, 2
  br i1 %cmp164, label %if.then.165, label %if.else.170

if.then.165:                                      ; preds = %if.else
  %167 = load i32, i32* %t, align 4
  %168 = load i32, i32* %pad, align 4
  %idxprom166 = sext i32 %168 to i64
  %169 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx167 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %169, i64 %idxprom166
  %170 = load %struct.cellbox*, %struct.cellbox** %arrayidx167, align 8
  %ycenter168 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %170, i32 0, i32 3
  %171 = load i32, i32* %ycenter168, align 4
  %sub169 = sub nsw i32 %171, %167
  store i32 %sub169, i32* %ycenter168, align 4
  br label %if.end.192

if.else.170:                                      ; preds = %if.else
  %172 = load i32, i32* %pad, align 4
  %idxprom171 = sext i32 %172 to i64
  %173 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx172 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %173, i64 %idxprom171
  %174 = load %struct.cellbox*, %struct.cellbox** %arrayidx172, align 8
  %padside173 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %174, i32 0, i32 11
  %175 = load i32, i32* %padside173, align 4
  %cmp174 = icmp eq i32 %175, 1
  br i1 %cmp174, label %if.then.175, label %if.else.180

if.then.175:                                      ; preds = %if.else.170
  %176 = load i32, i32* %l, align 4
  %177 = load i32, i32* %pad, align 4
  %idxprom176 = sext i32 %177 to i64
  %178 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx177 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %178, i64 %idxprom176
  %179 = load %struct.cellbox*, %struct.cellbox** %arrayidx177, align 8
  %xcenter178 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %179, i32 0, i32 2
  %180 = load i32, i32* %xcenter178, align 4
  %add179 = add nsw i32 %180, %176
  store i32 %add179, i32* %xcenter178, align 4
  br label %if.end.191

if.else.180:                                      ; preds = %if.else.170
  %181 = load i32, i32* %pad, align 4
  %idxprom181 = sext i32 %181 to i64
  %182 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx182 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %182, i64 %idxprom181
  %183 = load %struct.cellbox*, %struct.cellbox** %arrayidx182, align 8
  %padside183 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %183, i32 0, i32 11
  %184 = load i32, i32* %padside183, align 4
  %cmp184 = icmp eq i32 %184, 3
  br i1 %cmp184, label %if.then.185, label %if.end.190

if.then.185:                                      ; preds = %if.else.180
  %185 = load i32, i32* %r, align 4
  %186 = load i32, i32* %pad, align 4
  %idxprom186 = sext i32 %186 to i64
  %187 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx187 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %187, i64 %idxprom186
  %188 = load %struct.cellbox*, %struct.cellbox** %arrayidx187, align 8
  %xcenter188 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %188, i32 0, i32 2
  %189 = load i32, i32* %xcenter188, align 4
  %sub189 = sub nsw i32 %189, %185
  store i32 %sub189, i32* %xcenter188, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.185, %if.else.180
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.175
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.165
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.156
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193
  %190 = load i32, i32* %pad, align 4
  %inc195 = add nsw i32 %190, 1
  store i32 %inc195, i32* %pad, align 4
  br label %for.cond.148

for.end.196:                                      ; preds = %for.cond.148
  ret void
}

; Function Attrs: nounwind uwtable
define void @reconfigSides(double %degree) #0 {
entry:
  %degree.addr = alloca double, align 8
  %ptr = alloca %struct.cellbox*, align 8
  %deltaX = alloca i32, align 4
  %deltaY = alloca i32, align 4
  store double %degree, double* %degree.addr, align 8
  %0 = load double, double* %degree.addr, align 8
  %1 = load i32, i32* @blockr, align 4
  %2 = load i32, i32* @blockl, align 4
  %sub = sub nsw i32 %1, %2
  %conv = sitofp i32 %sub to double
  %mul = fmul double %0, %conv
  %conv1 = fptosi double %mul to i32
  store i32 %conv1, i32* %deltaX, align 4
  %3 = load double, double* %degree.addr, align 8
  %4 = load i32, i32* @blockt, align 4
  %5 = load i32, i32* @blockb, align 4
  %sub2 = sub nsw i32 %4, %5
  %conv3 = sitofp i32 %sub2 to double
  %mul4 = fmul double %3, %conv3
  %conv5 = fptosi double %mul4 to i32
  store i32 %conv5, i32* %deltaY, align 4
  %6 = load i32, i32* @numcells, align 4
  %7 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %6, %7
  %add6 = add nsw i32 %add, 1
  %idxprom = sext i32 %add6 to i64
  %8 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %8, i64 %idxprom
  %9 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %9, %struct.cellbox** %ptr, align 8
  %10 = load i32, i32* %deltaX, align 4
  %11 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 2
  %12 = load i32, i32* %xcenter, align 4
  %sub7 = sub nsw i32 %12, %10
  store i32 %sub7, i32* %xcenter, align 4
  %13 = load i32, i32* @numcells, align 4
  %14 = load i32, i32* @numpads, align 4
  %add8 = add nsw i32 %13, %14
  %add9 = add nsw i32 %add8, 2
  %idxprom10 = sext i32 %add9 to i64
  %15 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx11 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %15, i64 %idxprom10
  %16 = load %struct.cellbox*, %struct.cellbox** %arrayidx11, align 8
  store %struct.cellbox* %16, %struct.cellbox** %ptr, align 8
  %17 = load i32, i32* %deltaX, align 4
  %18 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 2
  %19 = load i32, i32* %xcenter12, align 4
  %add13 = add nsw i32 %19, %17
  store i32 %add13, i32* %xcenter12, align 4
  %20 = load i32, i32* @numcells, align 4
  %21 = load i32, i32* @numpads, align 4
  %add14 = add nsw i32 %20, %21
  %add15 = add nsw i32 %add14, 3
  %idxprom16 = sext i32 %add15 to i64
  %22 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx17 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %22, i64 %idxprom16
  %23 = load %struct.cellbox*, %struct.cellbox** %arrayidx17, align 8
  store %struct.cellbox* %23, %struct.cellbox** %ptr, align 8
  %24 = load i32, i32* %deltaY, align 4
  %25 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 3
  %26 = load i32, i32* %ycenter, align 4
  %sub18 = sub nsw i32 %26, %24
  store i32 %sub18, i32* %ycenter, align 4
  %27 = load i32, i32* @numcells, align 4
  %28 = load i32, i32* @numpads, align 4
  %add19 = add nsw i32 %27, %28
  %add20 = add nsw i32 %add19, 4
  %idxprom21 = sext i32 %add20 to i64
  %29 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx22 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %29, i64 %idxprom21
  %30 = load %struct.cellbox*, %struct.cellbox** %arrayidx22, align 8
  store %struct.cellbox* %30, %struct.cellbox** %ptr, align 8
  %31 = load i32, i32* %deltaY, align 4
  %32 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 3
  %33 = load i32, i32* %ycenter23, align 4
  %add24 = add nsw i32 %33, %31
  store i32 %add24, i32* %ycenter23, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
