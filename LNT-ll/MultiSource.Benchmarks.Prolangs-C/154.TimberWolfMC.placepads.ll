; ModuleID = './MultiSource.Benchmarks.Prolangs-C/154.TimberWolfMC.placepads.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@blockt = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockl = external global i32, align 4
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@fixLRBT = external global i32*, align 8
@padspace = external global double*, align 8

; Function Attrs: nounwind uwtable
define void @placepads() #0 {
entry:
  %coreHeight = alloca i32, align 4
  %coreWidth = alloca i32, align 4
  %zxshift = alloca i32, align 4
  %zyshift = alloca i32, align 4
  %pad = alloca i32, align 4
  %count = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %maxHeight = alloca i32, align 4
  %maxWidth = alloca i32, align 4
  %space = alloca i32, align 4
  %separation = alloca i32, align 4
  %extraSpace = alloca i32, align 4
  %last = alloca i32, align 4
  %xshift = alloca i32, align 4
  %0 = load i32, i32* @blockt, align 4
  store i32 %0, i32* %coreHeight, align 4
  %1 = load i32, i32* @blockr, align 4
  store i32 %1, i32* %coreWidth, align 4
  store i32 0, i32* @blockb, align 4
  store i32 0, i32* @blockl, align 4
  store i32 0, i32* %zxshift, align 4
  store i32 0, i32* %zyshift, align 4
  store i32 0, i32* %xshift, align 4
  %2 = load i32, i32* @numcells, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %pad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.219, %entry
  %3 = load i32, i32* %pad, align 4
  %4 = load i32, i32* @numcells, align 4
  %5 = load i32, i32* @numpads, align 4
  %add1 = add nsw i32 %4, %5
  %cmp = icmp sle i32 %3, %add1
  br i1 %cmp, label %for.body, label %for.end.221

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %pad, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %7, i64 %idxprom
  %8 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %padside = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 11
  %9 = load i32, i32* %padside, align 4
  %cmp2 = icmp eq i32 %9, 4
  br i1 %cmp2, label %if.then, label %if.end.218

if.then:                                          ; preds = %for.body
  store i32 1, i32* %count, align 4
  %10 = load i32, i32* %pad, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx4 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %11, i64 %idxprom3
  %12 = load %struct.cellbox*, %struct.cellbox** %arrayidx4, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 21
  %arrayidx5 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  %13 = load %struct.tilebox*, %struct.tilebox** %arrayidx5, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 12
  %14 = load i32, i32* %top, align 4
  %15 = load i32, i32* %pad, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx7 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %16, i64 %idxprom6
  %17 = load %struct.cellbox*, %struct.cellbox** %arrayidx7, align 8
  %config8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 21
  %arrayidx9 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config8, i32 0, i64 0
  %18 = load %struct.tilebox*, %struct.tilebox** %arrayidx9, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %18, i32 0, i32 11
  %19 = load i32, i32* %bottom, align 4
  %sub = sub nsw i32 %14, %19
  store i32 %sub, i32* %height, align 4
  %20 = load i32, i32* %pad, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx11 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %21, i64 %idxprom10
  %22 = load %struct.cellbox*, %struct.cellbox** %arrayidx11, align 8
  %config12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 21
  %arrayidx13 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config12, i32 0, i64 0
  %23 = load %struct.tilebox*, %struct.tilebox** %arrayidx13, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 10
  %24 = load i32, i32* %right, align 4
  %25 = load i32, i32* %pad, align 4
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx15 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %26, i64 %idxprom14
  %27 = load %struct.cellbox*, %struct.cellbox** %arrayidx15, align 8
  %config16 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %27, i32 0, i32 21
  %arrayidx17 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config16, i32 0, i64 0
  %28 = load %struct.tilebox*, %struct.tilebox** %arrayidx17, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %28, i32 0, i32 9
  %29 = load i32, i32* %left, align 4
  %sub18 = sub nsw i32 %24, %29
  store i32 %sub18, i32* %width, align 4
  %30 = load i32, i32* %pad, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %pad, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then
  %31 = load i32, i32* %pad, align 4
  %32 = load i32, i32* @numcells, align 4
  %33 = load i32, i32* @numpads, align 4
  %add20 = add nsw i32 %32, %33
  %cmp21 = icmp sle i32 %31, %add20
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %34 = load i32, i32* %pad, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx24 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %35, i64 %idxprom23
  %36 = load %struct.cellbox*, %struct.cellbox** %arrayidx24, align 8
  %padside25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 11
  %37 = load i32, i32* %padside25, align 4
  %cmp26 = icmp ne i32 %37, 4
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.body.22
  br label %for.end

if.end:                                           ; preds = %for.body.22
  %38 = load i32, i32* %count, align 4
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, i32* %count, align 4
  %39 = load i32, i32* %pad, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx30 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %40, i64 %idxprom29
  %41 = load %struct.cellbox*, %struct.cellbox** %arrayidx30, align 8
  %config31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i32 0, i32 21
  %arrayidx32 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config31, i32 0, i64 0
  %42 = load %struct.tilebox*, %struct.tilebox** %arrayidx32, align 8
  %top33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %42, i32 0, i32 12
  %43 = load i32, i32* %top33, align 4
  %44 = load i32, i32* %pad, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx35 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %45, i64 %idxprom34
  %46 = load %struct.cellbox*, %struct.cellbox** %arrayidx35, align 8
  %config36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %46, i32 0, i32 21
  %arrayidx37 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config36, i32 0, i64 0
  %47 = load %struct.tilebox*, %struct.tilebox** %arrayidx37, align 8
  %bottom38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 11
  %48 = load i32, i32* %bottom38, align 4
  %sub39 = sub nsw i32 %43, %48
  %49 = load i32, i32* %height, align 4
  %cmp40 = icmp sgt i32 %sub39, %49
  br i1 %cmp40, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %if.end
  %50 = load i32, i32* %pad, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx43 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %51, i64 %idxprom42
  %52 = load %struct.cellbox*, %struct.cellbox** %arrayidx43, align 8
  %config44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %52, i32 0, i32 21
  %arrayidx45 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config44, i32 0, i64 0
  %53 = load %struct.tilebox*, %struct.tilebox** %arrayidx45, align 8
  %top46 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %53, i32 0, i32 12
  %54 = load i32, i32* %top46, align 4
  %55 = load i32, i32* %pad, align 4
  %idxprom47 = sext i32 %55 to i64
  %56 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx48 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %56, i64 %idxprom47
  %57 = load %struct.cellbox*, %struct.cellbox** %arrayidx48, align 8
  %config49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %57, i32 0, i32 21
  %arrayidx50 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config49, i32 0, i64 0
  %58 = load %struct.tilebox*, %struct.tilebox** %arrayidx50, align 8
  %bottom51 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %58, i32 0, i32 11
  %59 = load i32, i32* %bottom51, align 4
  %sub52 = sub nsw i32 %54, %59
  store i32 %sub52, i32* %height, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.41, %if.end
  %60 = load i32, i32* %pad, align 4
  %idxprom54 = sext i32 %60 to i64
  %61 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx55 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %61, i64 %idxprom54
  %62 = load %struct.cellbox*, %struct.cellbox** %arrayidx55, align 8
  %config56 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %62, i32 0, i32 21
  %arrayidx57 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config56, i32 0, i64 0
  %63 = load %struct.tilebox*, %struct.tilebox** %arrayidx57, align 8
  %right58 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %63, i32 0, i32 10
  %64 = load i32, i32* %right58, align 4
  %65 = load i32, i32* %pad, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx60 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %66, i64 %idxprom59
  %67 = load %struct.cellbox*, %struct.cellbox** %arrayidx60, align 8
  %config61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %67, i32 0, i32 21
  %arrayidx62 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config61, i32 0, i64 0
  %68 = load %struct.tilebox*, %struct.tilebox** %arrayidx62, align 8
  %left63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 9
  %69 = load i32, i32* %left63, align 4
  %sub64 = sub nsw i32 %64, %69
  %70 = load i32, i32* %width, align 4
  %add65 = add nsw i32 %70, %sub64
  store i32 %add65, i32* %width, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %71 = load i32, i32* %pad, align 4
  %inc66 = add nsw i32 %71, 1
  store i32 %inc66, i32* %pad, align 4
  br label %for.cond.19

for.end:                                          ; preds = %if.then.27, %for.cond.19
  %72 = load i32, i32* %height, align 4
  store i32 %72, i32* %maxHeight, align 4
  %73 = load i32*, i32** @fixLRBT, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %73, i64 2
  %74 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp eq i32 %74, 0
  br i1 %cmp68, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %for.end
  %75 = load i32, i32* %coreWidth, align 4
  %76 = load i32, i32* %width, align 4
  %sub70 = sub nsw i32 %75, %76
  store i32 %sub70, i32* %space, align 4
  %77 = load i32, i32* %space, align 4
  %78 = load i32, i32* %count, align 4
  %add71 = add nsw i32 %78, 1
  %div = sdiv i32 %77, %add71
  store i32 %div, i32* %separation, align 4
  %79 = load i32, i32* %separation, align 4
  %cmp72 = icmp slt i32 %79, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.69
  store i32 0, i32* %separation, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.69
  br label %if.end.76

if.else:                                          ; preds = %for.end
  %80 = load i32, i32* %coreWidth, align 4
  %81 = load i32, i32* %width, align 4
  %cmp75 = icmp sge i32 %80, %81
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %82 = load i32, i32* %coreWidth, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %83 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %82, %cond.true ], [ %83, %cond.false ]
  store i32 %cond, i32* %space, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %cond.end, %if.end.74
  %84 = load i32, i32* %width, align 4
  %85 = load i32, i32* %coreWidth, align 4
  %cmp77 = icmp sgt i32 %84, %85
  br i1 %cmp77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.76
  %86 = load i32, i32* %width, align 4
  %87 = load i32, i32* %coreWidth, align 4
  %sub79 = sub nsw i32 %86, %87
  %div80 = sdiv i32 %sub79, 2
  store i32 %div80, i32* %zxshift, align 4
  %88 = load i32, i32* %width, align 4
  store i32 %88, i32* %coreWidth, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.76
  %89 = load i32, i32* @blockt, align 4
  %90 = load i32, i32* @blockb, align 4
  %sub82 = sub nsw i32 %89, %90
  %conv = sitofp i32 %sub82 to double
  %mul = fmul double 1.000000e-01, %conv
  %conv83 = fptosi double %mul to i32
  store i32 %conv83, i32* %extraSpace, align 4
  %91 = load i32, i32* %maxHeight, align 4
  %92 = load i32, i32* %extraSpace, align 4
  %add84 = add nsw i32 %91, %92
  %93 = load i32, i32* @blockb, align 4
  %add85 = add nsw i32 %93, %add84
  store i32 %add85, i32* @blockb, align 4
  %94 = load i32, i32* %maxHeight, align 4
  %95 = load i32, i32* %extraSpace, align 4
  %add86 = add nsw i32 %94, %95
  %96 = load i32, i32* @blockt, align 4
  %add87 = add nsw i32 %96, %add86
  store i32 %add87, i32* @blockt, align 4
  %97 = load i32, i32* @numcells, align 4
  %add88 = add nsw i32 %97, 1
  store i32 %add88, i32* %pad, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.215, %if.end.81
  %98 = load i32, i32* %pad, align 4
  %99 = load i32, i32* @numcells, align 4
  %100 = load i32, i32* @numpads, align 4
  %add90 = add nsw i32 %99, %100
  %cmp91 = icmp sle i32 %98, %add90
  br i1 %cmp91, label %for.body.93, label %for.end.217

for.body.93:                                      ; preds = %for.cond.89
  %101 = load i32, i32* %pad, align 4
  %idxprom94 = sext i32 %101 to i64
  %102 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx95 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %102, i64 %idxprom94
  %103 = load %struct.cellbox*, %struct.cellbox** %arrayidx95, align 8
  %padside96 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %103, i32 0, i32 11
  %104 = load i32, i32* %padside96, align 4
  %cmp97 = icmp eq i32 %104, 4
  br i1 %cmp97, label %if.then.99, label %if.end.214

if.then.99:                                       ; preds = %for.body.93
  %105 = load i32, i32* %pad, align 4
  %idxprom100 = sext i32 %105 to i64
  %106 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx101 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %106, i64 %idxprom100
  %107 = load %struct.cellbox*, %struct.cellbox** %arrayidx101, align 8
  %config102 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %107, i32 0, i32 21
  %arrayidx103 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config102, i32 0, i64 0
  %108 = load %struct.tilebox*, %struct.tilebox** %arrayidx103, align 8
  %top104 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %108, i32 0, i32 12
  %109 = load i32, i32* %top104, align 4
  %110 = load i32, i32* %pad, align 4
  %idxprom105 = sext i32 %110 to i64
  %111 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx106 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %111, i64 %idxprom105
  %112 = load %struct.cellbox*, %struct.cellbox** %arrayidx106, align 8
  %config107 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i32 0, i32 21
  %arrayidx108 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config107, i32 0, i64 0
  %113 = load %struct.tilebox*, %struct.tilebox** %arrayidx108, align 8
  %bottom109 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 11
  %114 = load i32, i32* %bottom109, align 4
  %sub110 = sub nsw i32 %109, %114
  store i32 %sub110, i32* %height, align 4
  %115 = load i32, i32* %pad, align 4
  %idxprom111 = sext i32 %115 to i64
  %116 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx112 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %116, i64 %idxprom111
  %117 = load %struct.cellbox*, %struct.cellbox** %arrayidx112, align 8
  %config113 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %117, i32 0, i32 21
  %arrayidx114 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config113, i32 0, i64 0
  %118 = load %struct.tilebox*, %struct.tilebox** %arrayidx114, align 8
  %right115 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %118, i32 0, i32 10
  %119 = load i32, i32* %right115, align 4
  %120 = load i32, i32* %pad, align 4
  %idxprom116 = sext i32 %120 to i64
  %121 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx117 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %121, i64 %idxprom116
  %122 = load %struct.cellbox*, %struct.cellbox** %arrayidx117, align 8
  %config118 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i32 0, i32 21
  %arrayidx119 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config118, i32 0, i64 0
  %123 = load %struct.tilebox*, %struct.tilebox** %arrayidx119, align 8
  %left120 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %123, i32 0, i32 9
  %124 = load i32, i32* %left120, align 4
  %sub121 = sub nsw i32 %119, %124
  store i32 %sub121, i32* %width, align 4
  %125 = load i32*, i32** @fixLRBT, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %125, i64 2
  %126 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp eq i32 %126, 0
  br i1 %cmp123, label %if.then.125, label %if.else.130

if.then.125:                                      ; preds = %if.then.99
  %127 = load i32, i32* %separation, align 4
  %128 = load i32, i32* %width, align 4
  %div126 = sdiv i32 %128, 2
  %add127 = add nsw i32 %127, %div126
  %129 = load i32, i32* %pad, align 4
  %idxprom128 = sext i32 %129 to i64
  %130 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx129 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %130, i64 %idxprom128
  %131 = load %struct.cellbox*, %struct.cellbox** %arrayidx129, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %131, i32 0, i32 2
  store i32 %add127, i32* %xcenter, align 4
  br label %if.end.140

if.else.130:                                      ; preds = %if.then.99
  %132 = load i32, i32* %pad, align 4
  %133 = load i32, i32* @numcells, align 4
  %sub131 = sub nsw i32 %132, %133
  %idxprom132 = sext i32 %sub131 to i64
  %134 = load double*, double** @padspace, align 8
  %arrayidx133 = getelementptr inbounds double, double* %134, i64 %idxprom132
  %135 = load double, double* %arrayidx133, align 8
  %136 = load i32, i32* %space, align 4
  %conv134 = sitofp i32 %136 to double
  %mul135 = fmul double %135, %conv134
  %conv136 = fptosi double %mul135 to i32
  %137 = load i32, i32* %pad, align 4
  %idxprom137 = sext i32 %137 to i64
  %138 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx138 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %138, i64 %idxprom137
  %139 = load %struct.cellbox*, %struct.cellbox** %arrayidx138, align 8
  %xcenter139 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %139, i32 0, i32 2
  store i32 %conv136, i32* %xcenter139, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.130, %if.then.125
  %140 = load i32, i32* %maxHeight, align 4
  %141 = load i32, i32* %height, align 4
  %142 = load i32, i32* %height, align 4
  %div141 = sdiv i32 %142, 2
  %sub142 = sub nsw i32 %141, %div141
  %sub143 = sub nsw i32 %140, %sub142
  %143 = load i32, i32* %pad, align 4
  %idxprom144 = sext i32 %143 to i64
  %144 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx145 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %144, i64 %idxprom144
  %145 = load %struct.cellbox*, %struct.cellbox** %arrayidx145, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %145, i32 0, i32 3
  store i32 %sub143, i32* %ycenter, align 4
  %146 = load i32, i32* %separation, align 4
  %147 = load i32, i32* %width, align 4
  %add146 = add nsw i32 %146, %147
  store i32 %add146, i32* %last, align 4
  %148 = load i32, i32* %pad, align 4
  %inc147 = add nsw i32 %148, 1
  store i32 %inc147, i32* %pad, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.211, %if.end.140
  %149 = load i32, i32* %pad, align 4
  %150 = load i32, i32* @numcells, align 4
  %151 = load i32, i32* @numpads, align 4
  %add149 = add nsw i32 %150, %151
  %cmp150 = icmp sle i32 %149, %add149
  br i1 %cmp150, label %for.body.152, label %for.end.213

for.body.152:                                     ; preds = %for.cond.148
  %152 = load i32, i32* %pad, align 4
  %idxprom153 = sext i32 %152 to i64
  %153 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx154 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %153, i64 %idxprom153
  %154 = load %struct.cellbox*, %struct.cellbox** %arrayidx154, align 8
  %padside155 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %154, i32 0, i32 11
  %155 = load i32, i32* %padside155, align 4
  %cmp156 = icmp ne i32 %155, 4
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %for.body.152
  br label %for.end.213

if.end.159:                                       ; preds = %for.body.152
  %156 = load i32, i32* %pad, align 4
  %idxprom160 = sext i32 %156 to i64
  %157 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx161 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %157, i64 %idxprom160
  %158 = load %struct.cellbox*, %struct.cellbox** %arrayidx161, align 8
  %config162 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %158, i32 0, i32 21
  %arrayidx163 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config162, i32 0, i64 0
  %159 = load %struct.tilebox*, %struct.tilebox** %arrayidx163, align 8
  %top164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %159, i32 0, i32 12
  %160 = load i32, i32* %top164, align 4
  %161 = load i32, i32* %pad, align 4
  %idxprom165 = sext i32 %161 to i64
  %162 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx166 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %162, i64 %idxprom165
  %163 = load %struct.cellbox*, %struct.cellbox** %arrayidx166, align 8
  %config167 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %163, i32 0, i32 21
  %arrayidx168 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config167, i32 0, i64 0
  %164 = load %struct.tilebox*, %struct.tilebox** %arrayidx168, align 8
  %bottom169 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %164, i32 0, i32 11
  %165 = load i32, i32* %bottom169, align 4
  %sub170 = sub nsw i32 %160, %165
  store i32 %sub170, i32* %height, align 4
  %166 = load i32, i32* %pad, align 4
  %idxprom171 = sext i32 %166 to i64
  %167 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx172 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %167, i64 %idxprom171
  %168 = load %struct.cellbox*, %struct.cellbox** %arrayidx172, align 8
  %config173 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %168, i32 0, i32 21
  %arrayidx174 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config173, i32 0, i64 0
  %169 = load %struct.tilebox*, %struct.tilebox** %arrayidx174, align 8
  %right175 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %169, i32 0, i32 10
  %170 = load i32, i32* %right175, align 4
  %171 = load i32, i32* %pad, align 4
  %idxprom176 = sext i32 %171 to i64
  %172 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx177 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %172, i64 %idxprom176
  %173 = load %struct.cellbox*, %struct.cellbox** %arrayidx177, align 8
  %config178 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %173, i32 0, i32 21
  %arrayidx179 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config178, i32 0, i64 0
  %174 = load %struct.tilebox*, %struct.tilebox** %arrayidx179, align 8
  %left180 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %174, i32 0, i32 9
  %175 = load i32, i32* %left180, align 4
  %sub181 = sub nsw i32 %170, %175
  store i32 %sub181, i32* %width, align 4
  %176 = load i32*, i32** @fixLRBT, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %176, i64 2
  %177 = load i32, i32* %arrayidx182, align 4
  %cmp183 = icmp eq i32 %177, 0
  br i1 %cmp183, label %if.then.185, label %if.else.192

if.then.185:                                      ; preds = %if.end.159
  %178 = load i32, i32* %last, align 4
  %179 = load i32, i32* %separation, align 4
  %add186 = add nsw i32 %178, %179
  %180 = load i32, i32* %width, align 4
  %div187 = sdiv i32 %180, 2
  %add188 = add nsw i32 %add186, %div187
  %181 = load i32, i32* %pad, align 4
  %idxprom189 = sext i32 %181 to i64
  %182 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx190 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %182, i64 %idxprom189
  %183 = load %struct.cellbox*, %struct.cellbox** %arrayidx190, align 8
  %xcenter191 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %183, i32 0, i32 2
  store i32 %add188, i32* %xcenter191, align 4
  br label %if.end.202

if.else.192:                                      ; preds = %if.end.159
  %184 = load i32, i32* %pad, align 4
  %185 = load i32, i32* @numcells, align 4
  %sub193 = sub nsw i32 %184, %185
  %idxprom194 = sext i32 %sub193 to i64
  %186 = load double*, double** @padspace, align 8
  %arrayidx195 = getelementptr inbounds double, double* %186, i64 %idxprom194
  %187 = load double, double* %arrayidx195, align 8
  %188 = load i32, i32* %space, align 4
  %conv196 = sitofp i32 %188 to double
  %mul197 = fmul double %187, %conv196
  %conv198 = fptosi double %mul197 to i32
  %189 = load i32, i32* %pad, align 4
  %idxprom199 = sext i32 %189 to i64
  %190 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx200 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %190, i64 %idxprom199
  %191 = load %struct.cellbox*, %struct.cellbox** %arrayidx200, align 8
  %xcenter201 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %191, i32 0, i32 2
  store i32 %conv198, i32* %xcenter201, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.192, %if.then.185
  %192 = load i32, i32* %maxHeight, align 4
  %193 = load i32, i32* %height, align 4
  %194 = load i32, i32* %height, align 4
  %div203 = sdiv i32 %194, 2
  %sub204 = sub nsw i32 %193, %div203
  %sub205 = sub nsw i32 %192, %sub204
  %195 = load i32, i32* %pad, align 4
  %idxprom206 = sext i32 %195 to i64
  %196 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx207 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %196, i64 %idxprom206
  %197 = load %struct.cellbox*, %struct.cellbox** %arrayidx207, align 8
  %ycenter208 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %197, i32 0, i32 3
  store i32 %sub205, i32* %ycenter208, align 4
  %198 = load i32, i32* %separation, align 4
  %199 = load i32, i32* %width, align 4
  %add209 = add nsw i32 %198, %199
  %200 = load i32, i32* %last, align 4
  %add210 = add nsw i32 %200, %add209
  store i32 %add210, i32* %last, align 4
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.202
  %201 = load i32, i32* %pad, align 4
  %inc212 = add nsw i32 %201, 1
  store i32 %inc212, i32* %pad, align 4
  br label %for.cond.148

for.end.213:                                      ; preds = %if.then.158, %for.cond.148
  br label %if.end.214

if.end.214:                                       ; preds = %for.end.213, %for.body.93
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.214
  %202 = load i32, i32* %pad, align 4
  %inc216 = add nsw i32 %202, 1
  store i32 %inc216, i32* %pad, align 4
  br label %for.cond.89

for.end.217:                                      ; preds = %for.cond.89
  br label %if.end.218

if.end.218:                                       ; preds = %for.end.217, %for.body
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %203 = load i32, i32* %pad, align 4
  %inc220 = add nsw i32 %203, 1
  store i32 %inc220, i32* %pad, align 4
  br label %for.cond

for.end.221:                                      ; preds = %for.cond
  %204 = load i32, i32* @numcells, align 4
  %add222 = add nsw i32 %204, 1
  store i32 %add222, i32* %pad, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.445, %for.end.221
  %205 = load i32, i32* %pad, align 4
  %206 = load i32, i32* @numcells, align 4
  %207 = load i32, i32* @numpads, align 4
  %add224 = add nsw i32 %206, %207
  %cmp225 = icmp sle i32 %205, %add224
  br i1 %cmp225, label %for.body.227, label %for.end.447

for.body.227:                                     ; preds = %for.cond.223
  %208 = load i32, i32* %pad, align 4
  %idxprom228 = sext i32 %208 to i64
  %209 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx229 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %209, i64 %idxprom228
  %210 = load %struct.cellbox*, %struct.cellbox** %arrayidx229, align 8
  %padside230 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %210, i32 0, i32 11
  %211 = load i32, i32* %padside230, align 4
  %cmp231 = icmp eq i32 %211, 2
  br i1 %cmp231, label %if.then.233, label %if.end.444

if.then.233:                                      ; preds = %for.body.227
  store i32 1, i32* %count, align 4
  %212 = load i32, i32* %pad, align 4
  %idxprom234 = sext i32 %212 to i64
  %213 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx235 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %213, i64 %idxprom234
  %214 = load %struct.cellbox*, %struct.cellbox** %arrayidx235, align 8
  %config236 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %214, i32 0, i32 21
  %arrayidx237 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config236, i32 0, i64 0
  %215 = load %struct.tilebox*, %struct.tilebox** %arrayidx237, align 8
  %right238 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %215, i32 0, i32 10
  %216 = load i32, i32* %right238, align 4
  %217 = load i32, i32* %pad, align 4
  %idxprom239 = sext i32 %217 to i64
  %218 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx240 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %218, i64 %idxprom239
  %219 = load %struct.cellbox*, %struct.cellbox** %arrayidx240, align 8
  %config241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %219, i32 0, i32 21
  %arrayidx242 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config241, i32 0, i64 0
  %220 = load %struct.tilebox*, %struct.tilebox** %arrayidx242, align 8
  %left243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %220, i32 0, i32 9
  %221 = load i32, i32* %left243, align 4
  %sub244 = sub nsw i32 %216, %221
  store i32 %sub244, i32* %width, align 4
  %222 = load i32, i32* %pad, align 4
  %inc245 = add nsw i32 %222, 1
  store i32 %inc245, i32* %pad, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.271, %if.then.233
  %223 = load i32, i32* %pad, align 4
  %224 = load i32, i32* @numcells, align 4
  %225 = load i32, i32* @numpads, align 4
  %add247 = add nsw i32 %224, %225
  %cmp248 = icmp sle i32 %223, %add247
  br i1 %cmp248, label %for.body.250, label %for.end.273

for.body.250:                                     ; preds = %for.cond.246
  %226 = load i32, i32* %pad, align 4
  %idxprom251 = sext i32 %226 to i64
  %227 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx252 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %227, i64 %idxprom251
  %228 = load %struct.cellbox*, %struct.cellbox** %arrayidx252, align 8
  %padside253 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %228, i32 0, i32 11
  %229 = load i32, i32* %padside253, align 4
  %cmp254 = icmp ne i32 %229, 2
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %for.body.250
  br label %for.end.273

if.end.257:                                       ; preds = %for.body.250
  %230 = load i32, i32* %count, align 4
  %inc258 = add nsw i32 %230, 1
  store i32 %inc258, i32* %count, align 4
  %231 = load i32, i32* %pad, align 4
  %idxprom259 = sext i32 %231 to i64
  %232 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx260 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %232, i64 %idxprom259
  %233 = load %struct.cellbox*, %struct.cellbox** %arrayidx260, align 8
  %config261 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %233, i32 0, i32 21
  %arrayidx262 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config261, i32 0, i64 0
  %234 = load %struct.tilebox*, %struct.tilebox** %arrayidx262, align 8
  %right263 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %234, i32 0, i32 10
  %235 = load i32, i32* %right263, align 4
  %236 = load i32, i32* %pad, align 4
  %idxprom264 = sext i32 %236 to i64
  %237 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx265 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %237, i64 %idxprom264
  %238 = load %struct.cellbox*, %struct.cellbox** %arrayidx265, align 8
  %config266 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %238, i32 0, i32 21
  %arrayidx267 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config266, i32 0, i64 0
  %239 = load %struct.tilebox*, %struct.tilebox** %arrayidx267, align 8
  %left268 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %239, i32 0, i32 9
  %240 = load i32, i32* %left268, align 4
  %sub269 = sub nsw i32 %235, %240
  %241 = load i32, i32* %width, align 4
  %add270 = add nsw i32 %241, %sub269
  store i32 %add270, i32* %width, align 4
  br label %for.inc.271

for.inc.271:                                      ; preds = %if.end.257
  %242 = load i32, i32* %pad, align 4
  %inc272 = add nsw i32 %242, 1
  store i32 %inc272, i32* %pad, align 4
  br label %for.cond.246

for.end.273:                                      ; preds = %if.then.256, %for.cond.246
  %243 = load i32*, i32** @fixLRBT, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %243, i64 3
  %244 = load i32, i32* %arrayidx274, align 4
  %cmp275 = icmp eq i32 %244, 0
  br i1 %cmp275, label %if.then.277, label %if.else.285

if.then.277:                                      ; preds = %for.end.273
  %245 = load i32, i32* %coreWidth, align 4
  %246 = load i32, i32* %width, align 4
  %sub278 = sub nsw i32 %245, %246
  store i32 %sub278, i32* %space, align 4
  %247 = load i32, i32* %space, align 4
  %248 = load i32, i32* %count, align 4
  %add279 = add nsw i32 %248, 1
  %div280 = sdiv i32 %247, %add279
  store i32 %div280, i32* %separation, align 4
  %249 = load i32, i32* %separation, align 4
  %cmp281 = icmp slt i32 %249, 0
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.then.277
  store i32 0, i32* %separation, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %if.then.277
  br label %if.end.292

if.else.285:                                      ; preds = %for.end.273
  %250 = load i32, i32* %coreWidth, align 4
  %251 = load i32, i32* %width, align 4
  %cmp286 = icmp sge i32 %250, %251
  br i1 %cmp286, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %if.else.285
  %252 = load i32, i32* %coreWidth, align 4
  br label %cond.end.290

cond.false.289:                                   ; preds = %if.else.285
  %253 = load i32, i32* %width, align 4
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.288
  %cond291 = phi i32 [ %252, %cond.true.288 ], [ %253, %cond.false.289 ]
  store i32 %cond291, i32* %space, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %cond.end.290, %if.end.284
  %254 = load i32, i32* %width, align 4
  %255 = load i32, i32* %coreWidth, align 4
  %cmp293 = icmp sgt i32 %254, %255
  br i1 %cmp293, label %if.then.295, label %if.end.299

if.then.295:                                      ; preds = %if.end.292
  %256 = load i32, i32* %width, align 4
  %257 = load i32, i32* %coreWidth, align 4
  %sub296 = sub nsw i32 %256, %257
  %div297 = sdiv i32 %sub296, 2
  %258 = load i32, i32* %zxshift, align 4
  %add298 = add nsw i32 %258, %div297
  store i32 %add298, i32* %zxshift, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.295, %if.end.292
  %259 = load i32, i32* @numcells, align 4
  %add300 = add nsw i32 %259, 1
  store i32 %add300, i32* %pad, align 4
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.441, %if.end.299
  %260 = load i32, i32* %pad, align 4
  %261 = load i32, i32* @numcells, align 4
  %262 = load i32, i32* @numpads, align 4
  %add302 = add nsw i32 %261, %262
  %cmp303 = icmp sle i32 %260, %add302
  br i1 %cmp303, label %for.body.305, label %for.end.443

for.body.305:                                     ; preds = %for.cond.301
  %263 = load i32, i32* %pad, align 4
  %idxprom306 = sext i32 %263 to i64
  %264 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx307 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %264, i64 %idxprom306
  %265 = load %struct.cellbox*, %struct.cellbox** %arrayidx307, align 8
  %padside308 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %265, i32 0, i32 11
  %266 = load i32, i32* %padside308, align 4
  %cmp309 = icmp eq i32 %266, 2
  br i1 %cmp309, label %if.then.311, label %if.end.440

if.then.311:                                      ; preds = %for.body.305
  %267 = load i32, i32* %pad, align 4
  %idxprom312 = sext i32 %267 to i64
  %268 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx313 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %268, i64 %idxprom312
  %269 = load %struct.cellbox*, %struct.cellbox** %arrayidx313, align 8
  %config314 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %269, i32 0, i32 21
  %arrayidx315 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config314, i32 0, i64 0
  %270 = load %struct.tilebox*, %struct.tilebox** %arrayidx315, align 8
  %top316 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %270, i32 0, i32 12
  %271 = load i32, i32* %top316, align 4
  %272 = load i32, i32* %pad, align 4
  %idxprom317 = sext i32 %272 to i64
  %273 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx318 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %273, i64 %idxprom317
  %274 = load %struct.cellbox*, %struct.cellbox** %arrayidx318, align 8
  %config319 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %274, i32 0, i32 21
  %arrayidx320 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config319, i32 0, i64 0
  %275 = load %struct.tilebox*, %struct.tilebox** %arrayidx320, align 8
  %bottom321 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %275, i32 0, i32 11
  %276 = load i32, i32* %bottom321, align 4
  %sub322 = sub nsw i32 %271, %276
  store i32 %sub322, i32* %height, align 4
  %277 = load i32, i32* %pad, align 4
  %idxprom323 = sext i32 %277 to i64
  %278 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx324 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %278, i64 %idxprom323
  %279 = load %struct.cellbox*, %struct.cellbox** %arrayidx324, align 8
  %config325 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %279, i32 0, i32 21
  %arrayidx326 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config325, i32 0, i64 0
  %280 = load %struct.tilebox*, %struct.tilebox** %arrayidx326, align 8
  %right327 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %280, i32 0, i32 10
  %281 = load i32, i32* %right327, align 4
  %282 = load i32, i32* %pad, align 4
  %idxprom328 = sext i32 %282 to i64
  %283 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx329 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %283, i64 %idxprom328
  %284 = load %struct.cellbox*, %struct.cellbox** %arrayidx329, align 8
  %config330 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %284, i32 0, i32 21
  %arrayidx331 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config330, i32 0, i64 0
  %285 = load %struct.tilebox*, %struct.tilebox** %arrayidx331, align 8
  %left332 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %285, i32 0, i32 9
  %286 = load i32, i32* %left332, align 4
  %sub333 = sub nsw i32 %281, %286
  store i32 %sub333, i32* %width, align 4
  %287 = load i32*, i32** @fixLRBT, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %287, i64 3
  %288 = load i32, i32* %arrayidx334, align 4
  %cmp335 = icmp eq i32 %288, 0
  br i1 %cmp335, label %if.then.337, label %if.else.343

if.then.337:                                      ; preds = %if.then.311
  %289 = load i32, i32* %separation, align 4
  %290 = load i32, i32* %width, align 4
  %div338 = sdiv i32 %290, 2
  %add339 = add nsw i32 %289, %div338
  %291 = load i32, i32* %pad, align 4
  %idxprom340 = sext i32 %291 to i64
  %292 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx341 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %292, i64 %idxprom340
  %293 = load %struct.cellbox*, %struct.cellbox** %arrayidx341, align 8
  %xcenter342 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %293, i32 0, i32 2
  store i32 %add339, i32* %xcenter342, align 4
  br label %if.end.353

if.else.343:                                      ; preds = %if.then.311
  %294 = load i32, i32* %pad, align 4
  %295 = load i32, i32* @numcells, align 4
  %sub344 = sub nsw i32 %294, %295
  %idxprom345 = sext i32 %sub344 to i64
  %296 = load double*, double** @padspace, align 8
  %arrayidx346 = getelementptr inbounds double, double* %296, i64 %idxprom345
  %297 = load double, double* %arrayidx346, align 8
  %298 = load i32, i32* %space, align 4
  %conv347 = sitofp i32 %298 to double
  %mul348 = fmul double %297, %conv347
  %conv349 = fptosi double %mul348 to i32
  %299 = load i32, i32* %pad, align 4
  %idxprom350 = sext i32 %299 to i64
  %300 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx351 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %300, i64 %idxprom350
  %301 = load %struct.cellbox*, %struct.cellbox** %arrayidx351, align 8
  %xcenter352 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %301, i32 0, i32 2
  store i32 %conv349, i32* %xcenter352, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.else.343, %if.then.337
  %302 = load i32, i32* @blockt, align 4
  %conv354 = sitofp i32 %302 to double
  %303 = load i32, i32* @blockt, align 4
  %304 = load i32, i32* @blockb, align 4
  %sub355 = sub nsw i32 %303, %304
  %conv356 = sitofp i32 %sub355 to double
  %mul357 = fmul double 1.000000e-01, %conv356
  %add358 = fadd double %conv354, %mul357
  %305 = load i32, i32* %height, align 4
  %div359 = sdiv i32 %305, 2
  %conv360 = sitofp i32 %div359 to double
  %add361 = fadd double %add358, %conv360
  %conv362 = fptosi double %add361 to i32
  %306 = load i32, i32* %pad, align 4
  %idxprom363 = sext i32 %306 to i64
  %307 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx364 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %307, i64 %idxprom363
  %308 = load %struct.cellbox*, %struct.cellbox** %arrayidx364, align 8
  %ycenter365 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %308, i32 0, i32 3
  store i32 %conv362, i32* %ycenter365, align 4
  %309 = load i32, i32* %separation, align 4
  %310 = load i32, i32* %width, align 4
  %add366 = add nsw i32 %309, %310
  store i32 %add366, i32* %last, align 4
  %311 = load i32, i32* %pad, align 4
  %inc367 = add nsw i32 %311, 1
  store i32 %inc367, i32* %pad, align 4
  br label %for.cond.368

for.cond.368:                                     ; preds = %for.inc.437, %if.end.353
  %312 = load i32, i32* %pad, align 4
  %313 = load i32, i32* @numcells, align 4
  %314 = load i32, i32* @numpads, align 4
  %add369 = add nsw i32 %313, %314
  %cmp370 = icmp sle i32 %312, %add369
  br i1 %cmp370, label %for.body.372, label %for.end.439

for.body.372:                                     ; preds = %for.cond.368
  %315 = load i32, i32* %pad, align 4
  %idxprom373 = sext i32 %315 to i64
  %316 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx374 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %316, i64 %idxprom373
  %317 = load %struct.cellbox*, %struct.cellbox** %arrayidx374, align 8
  %padside375 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %317, i32 0, i32 11
  %318 = load i32, i32* %padside375, align 4
  %cmp376 = icmp ne i32 %318, 2
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %for.body.372
  br label %for.end.439

if.end.379:                                       ; preds = %for.body.372
  %319 = load i32, i32* %pad, align 4
  %idxprom380 = sext i32 %319 to i64
  %320 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx381 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %320, i64 %idxprom380
  %321 = load %struct.cellbox*, %struct.cellbox** %arrayidx381, align 8
  %config382 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %321, i32 0, i32 21
  %arrayidx383 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config382, i32 0, i64 0
  %322 = load %struct.tilebox*, %struct.tilebox** %arrayidx383, align 8
  %top384 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %322, i32 0, i32 12
  %323 = load i32, i32* %top384, align 4
  %324 = load i32, i32* %pad, align 4
  %idxprom385 = sext i32 %324 to i64
  %325 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx386 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %325, i64 %idxprom385
  %326 = load %struct.cellbox*, %struct.cellbox** %arrayidx386, align 8
  %config387 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %326, i32 0, i32 21
  %arrayidx388 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config387, i32 0, i64 0
  %327 = load %struct.tilebox*, %struct.tilebox** %arrayidx388, align 8
  %bottom389 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %327, i32 0, i32 11
  %328 = load i32, i32* %bottom389, align 4
  %sub390 = sub nsw i32 %323, %328
  store i32 %sub390, i32* %height, align 4
  %329 = load i32, i32* %pad, align 4
  %idxprom391 = sext i32 %329 to i64
  %330 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx392 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %330, i64 %idxprom391
  %331 = load %struct.cellbox*, %struct.cellbox** %arrayidx392, align 8
  %config393 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %331, i32 0, i32 21
  %arrayidx394 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config393, i32 0, i64 0
  %332 = load %struct.tilebox*, %struct.tilebox** %arrayidx394, align 8
  %right395 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %332, i32 0, i32 10
  %333 = load i32, i32* %right395, align 4
  %334 = load i32, i32* %pad, align 4
  %idxprom396 = sext i32 %334 to i64
  %335 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx397 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %335, i64 %idxprom396
  %336 = load %struct.cellbox*, %struct.cellbox** %arrayidx397, align 8
  %config398 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %336, i32 0, i32 21
  %arrayidx399 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config398, i32 0, i64 0
  %337 = load %struct.tilebox*, %struct.tilebox** %arrayidx399, align 8
  %left400 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %337, i32 0, i32 9
  %338 = load i32, i32* %left400, align 4
  %sub401 = sub nsw i32 %333, %338
  store i32 %sub401, i32* %width, align 4
  %339 = load i32*, i32** @fixLRBT, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %339, i64 3
  %340 = load i32, i32* %arrayidx402, align 4
  %cmp403 = icmp eq i32 %340, 0
  br i1 %cmp403, label %if.then.405, label %if.else.412

if.then.405:                                      ; preds = %if.end.379
  %341 = load i32, i32* %last, align 4
  %342 = load i32, i32* %separation, align 4
  %add406 = add nsw i32 %341, %342
  %343 = load i32, i32* %width, align 4
  %div407 = sdiv i32 %343, 2
  %add408 = add nsw i32 %add406, %div407
  %344 = load i32, i32* %pad, align 4
  %idxprom409 = sext i32 %344 to i64
  %345 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx410 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %345, i64 %idxprom409
  %346 = load %struct.cellbox*, %struct.cellbox** %arrayidx410, align 8
  %xcenter411 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %346, i32 0, i32 2
  store i32 %add408, i32* %xcenter411, align 4
  br label %if.end.422

if.else.412:                                      ; preds = %if.end.379
  %347 = load i32, i32* %pad, align 4
  %348 = load i32, i32* @numcells, align 4
  %sub413 = sub nsw i32 %347, %348
  %idxprom414 = sext i32 %sub413 to i64
  %349 = load double*, double** @padspace, align 8
  %arrayidx415 = getelementptr inbounds double, double* %349, i64 %idxprom414
  %350 = load double, double* %arrayidx415, align 8
  %351 = load i32, i32* %space, align 4
  %conv416 = sitofp i32 %351 to double
  %mul417 = fmul double %350, %conv416
  %conv418 = fptosi double %mul417 to i32
  %352 = load i32, i32* %pad, align 4
  %idxprom419 = sext i32 %352 to i64
  %353 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx420 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %353, i64 %idxprom419
  %354 = load %struct.cellbox*, %struct.cellbox** %arrayidx420, align 8
  %xcenter421 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %354, i32 0, i32 2
  store i32 %conv418, i32* %xcenter421, align 4
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.412, %if.then.405
  %355 = load i32, i32* @blockt, align 4
  %conv423 = sitofp i32 %355 to double
  %356 = load i32, i32* @blockt, align 4
  %357 = load i32, i32* @blockb, align 4
  %sub424 = sub nsw i32 %356, %357
  %conv425 = sitofp i32 %sub424 to double
  %mul426 = fmul double 1.000000e-01, %conv425
  %add427 = fadd double %conv423, %mul426
  %358 = load i32, i32* %height, align 4
  %div428 = sdiv i32 %358, 2
  %conv429 = sitofp i32 %div428 to double
  %add430 = fadd double %add427, %conv429
  %conv431 = fptosi double %add430 to i32
  %359 = load i32, i32* %pad, align 4
  %idxprom432 = sext i32 %359 to i64
  %360 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx433 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %360, i64 %idxprom432
  %361 = load %struct.cellbox*, %struct.cellbox** %arrayidx433, align 8
  %ycenter434 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %361, i32 0, i32 3
  store i32 %conv431, i32* %ycenter434, align 4
  %362 = load i32, i32* %separation, align 4
  %363 = load i32, i32* %width, align 4
  %add435 = add nsw i32 %362, %363
  %364 = load i32, i32* %last, align 4
  %add436 = add nsw i32 %364, %add435
  store i32 %add436, i32* %last, align 4
  br label %for.inc.437

for.inc.437:                                      ; preds = %if.end.422
  %365 = load i32, i32* %pad, align 4
  %inc438 = add nsw i32 %365, 1
  store i32 %inc438, i32* %pad, align 4
  br label %for.cond.368

for.end.439:                                      ; preds = %if.then.378, %for.cond.368
  br label %if.end.440

if.end.440:                                       ; preds = %for.end.439, %for.body.305
  br label %for.inc.441

for.inc.441:                                      ; preds = %if.end.440
  %366 = load i32, i32* %pad, align 4
  %inc442 = add nsw i32 %366, 1
  store i32 %inc442, i32* %pad, align 4
  br label %for.cond.301

for.end.443:                                      ; preds = %for.cond.301
  br label %if.end.444

if.end.444:                                       ; preds = %for.end.443, %for.body.227
  br label %for.inc.445

for.inc.445:                                      ; preds = %if.end.444
  %367 = load i32, i32* %pad, align 4
  %inc446 = add nsw i32 %367, 1
  store i32 %inc446, i32* %pad, align 4
  br label %for.cond.223

for.end.447:                                      ; preds = %for.cond.223
  %368 = load i32, i32* @numcells, align 4
  %add448 = add nsw i32 %368, 1
  store i32 %add448, i32* %pad, align 4
  br label %for.cond.449

for.cond.449:                                     ; preds = %for.inc.710, %for.end.447
  %369 = load i32, i32* %pad, align 4
  %370 = load i32, i32* @numcells, align 4
  %371 = load i32, i32* @numpads, align 4
  %add450 = add nsw i32 %370, %371
  %cmp451 = icmp sle i32 %369, %add450
  br i1 %cmp451, label %for.body.453, label %for.end.712

for.body.453:                                     ; preds = %for.cond.449
  %372 = load i32, i32* %pad, align 4
  %idxprom454 = sext i32 %372 to i64
  %373 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx455 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %373, i64 %idxprom454
  %374 = load %struct.cellbox*, %struct.cellbox** %arrayidx455, align 8
  %padside456 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %374, i32 0, i32 11
  %375 = load i32, i32* %padside456, align 4
  %cmp457 = icmp eq i32 %375, 1
  br i1 %cmp457, label %if.then.459, label %if.end.709

if.then.459:                                      ; preds = %for.body.453
  store i32 1, i32* %count, align 4
  %376 = load i32, i32* %pad, align 4
  %idxprom460 = sext i32 %376 to i64
  %377 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx461 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %377, i64 %idxprom460
  %378 = load %struct.cellbox*, %struct.cellbox** %arrayidx461, align 8
  %config462 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %378, i32 0, i32 21
  %arrayidx463 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config462, i32 0, i64 0
  %379 = load %struct.tilebox*, %struct.tilebox** %arrayidx463, align 8
  %top464 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %379, i32 0, i32 12
  %380 = load i32, i32* %top464, align 4
  %381 = load i32, i32* %pad, align 4
  %idxprom465 = sext i32 %381 to i64
  %382 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx466 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %382, i64 %idxprom465
  %383 = load %struct.cellbox*, %struct.cellbox** %arrayidx466, align 8
  %config467 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %383, i32 0, i32 21
  %arrayidx468 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config467, i32 0, i64 0
  %384 = load %struct.tilebox*, %struct.tilebox** %arrayidx468, align 8
  %bottom469 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %384, i32 0, i32 11
  %385 = load i32, i32* %bottom469, align 4
  %sub470 = sub nsw i32 %380, %385
  store i32 %sub470, i32* %height, align 4
  %386 = load i32, i32* %pad, align 4
  %idxprom471 = sext i32 %386 to i64
  %387 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx472 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %387, i64 %idxprom471
  %388 = load %struct.cellbox*, %struct.cellbox** %arrayidx472, align 8
  %config473 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %388, i32 0, i32 21
  %arrayidx474 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config473, i32 0, i64 0
  %389 = load %struct.tilebox*, %struct.tilebox** %arrayidx474, align 8
  %right475 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %389, i32 0, i32 10
  %390 = load i32, i32* %right475, align 4
  %391 = load i32, i32* %pad, align 4
  %idxprom476 = sext i32 %391 to i64
  %392 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx477 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %392, i64 %idxprom476
  %393 = load %struct.cellbox*, %struct.cellbox** %arrayidx477, align 8
  %config478 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %393, i32 0, i32 21
  %arrayidx479 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config478, i32 0, i64 0
  %394 = load %struct.tilebox*, %struct.tilebox** %arrayidx479, align 8
  %left480 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %394, i32 0, i32 9
  %395 = load i32, i32* %left480, align 4
  %sub481 = sub nsw i32 %390, %395
  store i32 %sub481, i32* %width, align 4
  %396 = load i32, i32* %pad, align 4
  %inc482 = add nsw i32 %396, 1
  store i32 %inc482, i32* %pad, align 4
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.534, %if.then.459
  %397 = load i32, i32* %pad, align 4
  %398 = load i32, i32* @numcells, align 4
  %399 = load i32, i32* @numpads, align 4
  %add484 = add nsw i32 %398, %399
  %cmp485 = icmp sle i32 %397, %add484
  br i1 %cmp485, label %for.body.487, label %for.end.536

for.body.487:                                     ; preds = %for.cond.483
  %400 = load i32, i32* %pad, align 4
  %idxprom488 = sext i32 %400 to i64
  %401 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx489 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %401, i64 %idxprom488
  %402 = load %struct.cellbox*, %struct.cellbox** %arrayidx489, align 8
  %padside490 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %402, i32 0, i32 11
  %403 = load i32, i32* %padside490, align 4
  %cmp491 = icmp ne i32 %403, 1
  br i1 %cmp491, label %if.then.493, label %if.end.494

if.then.493:                                      ; preds = %for.body.487
  br label %for.end.536

if.end.494:                                       ; preds = %for.body.487
  %404 = load i32, i32* %count, align 4
  %inc495 = add nsw i32 %404, 1
  store i32 %inc495, i32* %count, align 4
  %405 = load i32, i32* %pad, align 4
  %idxprom496 = sext i32 %405 to i64
  %406 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx497 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %406, i64 %idxprom496
  %407 = load %struct.cellbox*, %struct.cellbox** %arrayidx497, align 8
  %config498 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %407, i32 0, i32 21
  %arrayidx499 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config498, i32 0, i64 0
  %408 = load %struct.tilebox*, %struct.tilebox** %arrayidx499, align 8
  %right500 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %408, i32 0, i32 10
  %409 = load i32, i32* %right500, align 4
  %410 = load i32, i32* %pad, align 4
  %idxprom501 = sext i32 %410 to i64
  %411 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx502 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %411, i64 %idxprom501
  %412 = load %struct.cellbox*, %struct.cellbox** %arrayidx502, align 8
  %config503 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %412, i32 0, i32 21
  %arrayidx504 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config503, i32 0, i64 0
  %413 = load %struct.tilebox*, %struct.tilebox** %arrayidx504, align 8
  %left505 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %413, i32 0, i32 9
  %414 = load i32, i32* %left505, align 4
  %sub506 = sub nsw i32 %409, %414
  %415 = load i32, i32* %width, align 4
  %cmp507 = icmp sgt i32 %sub506, %415
  br i1 %cmp507, label %if.then.509, label %if.end.521

if.then.509:                                      ; preds = %if.end.494
  %416 = load i32, i32* %pad, align 4
  %idxprom510 = sext i32 %416 to i64
  %417 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx511 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %417, i64 %idxprom510
  %418 = load %struct.cellbox*, %struct.cellbox** %arrayidx511, align 8
  %config512 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %418, i32 0, i32 21
  %arrayidx513 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config512, i32 0, i64 0
  %419 = load %struct.tilebox*, %struct.tilebox** %arrayidx513, align 8
  %right514 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %419, i32 0, i32 10
  %420 = load i32, i32* %right514, align 4
  %421 = load i32, i32* %pad, align 4
  %idxprom515 = sext i32 %421 to i64
  %422 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx516 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %422, i64 %idxprom515
  %423 = load %struct.cellbox*, %struct.cellbox** %arrayidx516, align 8
  %config517 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %423, i32 0, i32 21
  %arrayidx518 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config517, i32 0, i64 0
  %424 = load %struct.tilebox*, %struct.tilebox** %arrayidx518, align 8
  %left519 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %424, i32 0, i32 9
  %425 = load i32, i32* %left519, align 4
  %sub520 = sub nsw i32 %420, %425
  store i32 %sub520, i32* %width, align 4
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.509, %if.end.494
  %426 = load i32, i32* %pad, align 4
  %idxprom522 = sext i32 %426 to i64
  %427 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx523 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %427, i64 %idxprom522
  %428 = load %struct.cellbox*, %struct.cellbox** %arrayidx523, align 8
  %config524 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %428, i32 0, i32 21
  %arrayidx525 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config524, i32 0, i64 0
  %429 = load %struct.tilebox*, %struct.tilebox** %arrayidx525, align 8
  %top526 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i32 0, i32 12
  %430 = load i32, i32* %top526, align 4
  %431 = load i32, i32* %pad, align 4
  %idxprom527 = sext i32 %431 to i64
  %432 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx528 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %432, i64 %idxprom527
  %433 = load %struct.cellbox*, %struct.cellbox** %arrayidx528, align 8
  %config529 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %433, i32 0, i32 21
  %arrayidx530 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config529, i32 0, i64 0
  %434 = load %struct.tilebox*, %struct.tilebox** %arrayidx530, align 8
  %bottom531 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %434, i32 0, i32 11
  %435 = load i32, i32* %bottom531, align 4
  %sub532 = sub nsw i32 %430, %435
  %436 = load i32, i32* %height, align 4
  %add533 = add nsw i32 %436, %sub532
  store i32 %add533, i32* %height, align 4
  br label %for.inc.534

for.inc.534:                                      ; preds = %if.end.521
  %437 = load i32, i32* %pad, align 4
  %inc535 = add nsw i32 %437, 1
  store i32 %inc535, i32* %pad, align 4
  br label %for.cond.483

for.end.536:                                      ; preds = %if.then.493, %for.cond.483
  %438 = load i32, i32* %width, align 4
  store i32 %438, i32* %maxWidth, align 4
  %439 = load i32*, i32** @fixLRBT, align 8
  %arrayidx537 = getelementptr inbounds i32, i32* %439, i64 0
  %440 = load i32, i32* %arrayidx537, align 4
  %cmp538 = icmp eq i32 %440, 0
  br i1 %cmp538, label %if.then.540, label %if.else.548

if.then.540:                                      ; preds = %for.end.536
  %441 = load i32, i32* %coreHeight, align 4
  %442 = load i32, i32* %height, align 4
  %sub541 = sub nsw i32 %441, %442
  store i32 %sub541, i32* %space, align 4
  %443 = load i32, i32* %space, align 4
  %444 = load i32, i32* %count, align 4
  %add542 = add nsw i32 %444, 1
  %div543 = sdiv i32 %443, %add542
  store i32 %div543, i32* %separation, align 4
  %445 = load i32, i32* %separation, align 4
  %cmp544 = icmp slt i32 %445, 0
  br i1 %cmp544, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %if.then.540
  store i32 0, i32* %separation, align 4
  br label %if.end.547

if.end.547:                                       ; preds = %if.then.546, %if.then.540
  br label %if.end.555

if.else.548:                                      ; preds = %for.end.536
  %446 = load i32, i32* %coreHeight, align 4
  %447 = load i32, i32* %height, align 4
  %cmp549 = icmp sge i32 %446, %447
  br i1 %cmp549, label %cond.true.551, label %cond.false.552

cond.true.551:                                    ; preds = %if.else.548
  %448 = load i32, i32* %coreHeight, align 4
  br label %cond.end.553

cond.false.552:                                   ; preds = %if.else.548
  %449 = load i32, i32* %height, align 4
  br label %cond.end.553

cond.end.553:                                     ; preds = %cond.false.552, %cond.true.551
  %cond554 = phi i32 [ %448, %cond.true.551 ], [ %449, %cond.false.552 ]
  store i32 %cond554, i32* %space, align 4
  br label %if.end.555

if.end.555:                                       ; preds = %cond.end.553, %if.end.547
  %450 = load i32, i32* %height, align 4
  %451 = load i32, i32* %coreHeight, align 4
  %cmp556 = icmp sgt i32 %450, %451
  br i1 %cmp556, label %if.then.558, label %if.end.561

if.then.558:                                      ; preds = %if.end.555
  %452 = load i32, i32* %height, align 4
  %453 = load i32, i32* %coreHeight, align 4
  %sub559 = sub nsw i32 %452, %453
  %div560 = sdiv i32 %sub559, 2
  store i32 %div560, i32* %zyshift, align 4
  %454 = load i32, i32* %height, align 4
  store i32 %454, i32* %coreHeight, align 4
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.558, %if.end.555
  %455 = load i32, i32* @blockr, align 4
  %456 = load i32, i32* @blockl, align 4
  %sub562 = sub nsw i32 %455, %456
  %conv563 = sitofp i32 %sub562 to double
  %mul564 = fmul double 1.000000e-01, %conv563
  %conv565 = fptosi double %mul564 to i32
  store i32 %conv565, i32* %extraSpace, align 4
  %457 = load i32, i32* %maxWidth, align 4
  %458 = load i32, i32* %extraSpace, align 4
  %add566 = add nsw i32 %457, %458
  %459 = load i32, i32* @blockr, align 4
  %add567 = add nsw i32 %459, %add566
  store i32 %add567, i32* @blockr, align 4
  %460 = load i32, i32* %maxWidth, align 4
  %461 = load i32, i32* %extraSpace, align 4
  %add568 = add nsw i32 %460, %461
  %462 = load i32, i32* @blockl, align 4
  %add569 = add nsw i32 %462, %add568
  store i32 %add569, i32* @blockl, align 4
  %463 = load i32, i32* %maxWidth, align 4
  %464 = load i32, i32* %extraSpace, align 4
  %add570 = add nsw i32 %463, %464
  store i32 %add570, i32* %xshift, align 4
  %465 = load i32, i32* @numcells, align 4
  %add571 = add nsw i32 %465, 1
  store i32 %add571, i32* %pad, align 4
  br label %for.cond.572

for.cond.572:                                     ; preds = %for.inc.706, %if.end.561
  %466 = load i32, i32* %pad, align 4
  %467 = load i32, i32* @numcells, align 4
  %468 = load i32, i32* @numpads, align 4
  %add573 = add nsw i32 %467, %468
  %cmp574 = icmp sle i32 %466, %add573
  br i1 %cmp574, label %for.body.576, label %for.end.708

for.body.576:                                     ; preds = %for.cond.572
  %469 = load i32, i32* %pad, align 4
  %idxprom577 = sext i32 %469 to i64
  %470 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx578 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %470, i64 %idxprom577
  %471 = load %struct.cellbox*, %struct.cellbox** %arrayidx578, align 8
  %padside579 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %471, i32 0, i32 11
  %472 = load i32, i32* %padside579, align 4
  %cmp580 = icmp eq i32 %472, 1
  br i1 %cmp580, label %if.then.582, label %if.end.705

if.then.582:                                      ; preds = %for.body.576
  %473 = load i32, i32* %pad, align 4
  %idxprom583 = sext i32 %473 to i64
  %474 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx584 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %474, i64 %idxprom583
  %475 = load %struct.cellbox*, %struct.cellbox** %arrayidx584, align 8
  %config585 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %475, i32 0, i32 21
  %arrayidx586 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config585, i32 0, i64 0
  %476 = load %struct.tilebox*, %struct.tilebox** %arrayidx586, align 8
  %top587 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %476, i32 0, i32 12
  %477 = load i32, i32* %top587, align 4
  %478 = load i32, i32* %pad, align 4
  %idxprom588 = sext i32 %478 to i64
  %479 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx589 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %479, i64 %idxprom588
  %480 = load %struct.cellbox*, %struct.cellbox** %arrayidx589, align 8
  %config590 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %480, i32 0, i32 21
  %arrayidx591 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config590, i32 0, i64 0
  %481 = load %struct.tilebox*, %struct.tilebox** %arrayidx591, align 8
  %bottom592 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %481, i32 0, i32 11
  %482 = load i32, i32* %bottom592, align 4
  %sub593 = sub nsw i32 %477, %482
  store i32 %sub593, i32* %height, align 4
  %483 = load i32, i32* %pad, align 4
  %idxprom594 = sext i32 %483 to i64
  %484 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx595 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %484, i64 %idxprom594
  %485 = load %struct.cellbox*, %struct.cellbox** %arrayidx595, align 8
  %config596 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %485, i32 0, i32 21
  %arrayidx597 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config596, i32 0, i64 0
  %486 = load %struct.tilebox*, %struct.tilebox** %arrayidx597, align 8
  %right598 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %486, i32 0, i32 10
  %487 = load i32, i32* %right598, align 4
  %488 = load i32, i32* %pad, align 4
  %idxprom599 = sext i32 %488 to i64
  %489 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx600 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %489, i64 %idxprom599
  %490 = load %struct.cellbox*, %struct.cellbox** %arrayidx600, align 8
  %config601 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %490, i32 0, i32 21
  %arrayidx602 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config601, i32 0, i64 0
  %491 = load %struct.tilebox*, %struct.tilebox** %arrayidx602, align 8
  %left603 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %491, i32 0, i32 9
  %492 = load i32, i32* %left603, align 4
  %sub604 = sub nsw i32 %487, %492
  store i32 %sub604, i32* %width, align 4
  %493 = load i32*, i32** @fixLRBT, align 8
  %arrayidx605 = getelementptr inbounds i32, i32* %493, i64 0
  %494 = load i32, i32* %arrayidx605, align 4
  %cmp606 = icmp eq i32 %494, 0
  br i1 %cmp606, label %if.then.608, label %if.else.615

if.then.608:                                      ; preds = %if.then.582
  %495 = load i32, i32* @blockb, align 4
  %496 = load i32, i32* %separation, align 4
  %add609 = add nsw i32 %495, %496
  %497 = load i32, i32* %height, align 4
  %div610 = sdiv i32 %497, 2
  %add611 = add nsw i32 %add609, %div610
  %498 = load i32, i32* %pad, align 4
  %idxprom612 = sext i32 %498 to i64
  %499 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx613 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %499, i64 %idxprom612
  %500 = load %struct.cellbox*, %struct.cellbox** %arrayidx613, align 8
  %ycenter614 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %500, i32 0, i32 3
  store i32 %add611, i32* %ycenter614, align 4
  br label %if.end.627

if.else.615:                                      ; preds = %if.then.582
  %501 = load i32, i32* @blockb, align 4
  %conv616 = sitofp i32 %501 to double
  %502 = load i32, i32* %pad, align 4
  %503 = load i32, i32* @numcells, align 4
  %sub617 = sub nsw i32 %502, %503
  %idxprom618 = sext i32 %sub617 to i64
  %504 = load double*, double** @padspace, align 8
  %arrayidx619 = getelementptr inbounds double, double* %504, i64 %idxprom618
  %505 = load double, double* %arrayidx619, align 8
  %506 = load i32, i32* %space, align 4
  %conv620 = sitofp i32 %506 to double
  %mul621 = fmul double %505, %conv620
  %add622 = fadd double %conv616, %mul621
  %conv623 = fptosi double %add622 to i32
  %507 = load i32, i32* %pad, align 4
  %idxprom624 = sext i32 %507 to i64
  %508 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx625 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %508, i64 %idxprom624
  %509 = load %struct.cellbox*, %struct.cellbox** %arrayidx625, align 8
  %ycenter626 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %509, i32 0, i32 3
  store i32 %conv623, i32* %ycenter626, align 4
  br label %if.end.627

if.end.627:                                       ; preds = %if.else.615, %if.then.608
  %510 = load i32, i32* %maxWidth, align 4
  %511 = load i32, i32* %width, align 4
  %512 = load i32, i32* %width, align 4
  %div628 = sdiv i32 %512, 2
  %sub629 = sub nsw i32 %511, %div628
  %sub630 = sub nsw i32 %510, %sub629
  %513 = load i32, i32* %pad, align 4
  %idxprom631 = sext i32 %513 to i64
  %514 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx632 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %514, i64 %idxprom631
  %515 = load %struct.cellbox*, %struct.cellbox** %arrayidx632, align 8
  %xcenter633 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %515, i32 0, i32 2
  store i32 %sub630, i32* %xcenter633, align 4
  %516 = load i32, i32* @blockb, align 4
  %517 = load i32, i32* %separation, align 4
  %add634 = add nsw i32 %516, %517
  %518 = load i32, i32* %height, align 4
  %add635 = add nsw i32 %add634, %518
  store i32 %add635, i32* %last, align 4
  %519 = load i32, i32* %pad, align 4
  %inc636 = add nsw i32 %519, 1
  store i32 %inc636, i32* %pad, align 4
  br label %for.cond.637

for.cond.637:                                     ; preds = %for.inc.702, %if.end.627
  %520 = load i32, i32* %pad, align 4
  %521 = load i32, i32* @numcells, align 4
  %522 = load i32, i32* @numpads, align 4
  %add638 = add nsw i32 %521, %522
  %cmp639 = icmp sle i32 %520, %add638
  br i1 %cmp639, label %for.body.641, label %for.end.704

for.body.641:                                     ; preds = %for.cond.637
  %523 = load i32, i32* %pad, align 4
  %idxprom642 = sext i32 %523 to i64
  %524 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx643 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %524, i64 %idxprom642
  %525 = load %struct.cellbox*, %struct.cellbox** %arrayidx643, align 8
  %padside644 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %525, i32 0, i32 11
  %526 = load i32, i32* %padside644, align 4
  %cmp645 = icmp ne i32 %526, 1
  br i1 %cmp645, label %if.then.647, label %if.end.648

if.then.647:                                      ; preds = %for.body.641
  br label %for.end.704

if.end.648:                                       ; preds = %for.body.641
  %527 = load i32, i32* %pad, align 4
  %idxprom649 = sext i32 %527 to i64
  %528 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx650 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %528, i64 %idxprom649
  %529 = load %struct.cellbox*, %struct.cellbox** %arrayidx650, align 8
  %config651 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %529, i32 0, i32 21
  %arrayidx652 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config651, i32 0, i64 0
  %530 = load %struct.tilebox*, %struct.tilebox** %arrayidx652, align 8
  %top653 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %530, i32 0, i32 12
  %531 = load i32, i32* %top653, align 4
  %532 = load i32, i32* %pad, align 4
  %idxprom654 = sext i32 %532 to i64
  %533 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx655 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %533, i64 %idxprom654
  %534 = load %struct.cellbox*, %struct.cellbox** %arrayidx655, align 8
  %config656 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %534, i32 0, i32 21
  %arrayidx657 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config656, i32 0, i64 0
  %535 = load %struct.tilebox*, %struct.tilebox** %arrayidx657, align 8
  %bottom658 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %535, i32 0, i32 11
  %536 = load i32, i32* %bottom658, align 4
  %sub659 = sub nsw i32 %531, %536
  store i32 %sub659, i32* %height, align 4
  %537 = load i32, i32* %pad, align 4
  %idxprom660 = sext i32 %537 to i64
  %538 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx661 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %538, i64 %idxprom660
  %539 = load %struct.cellbox*, %struct.cellbox** %arrayidx661, align 8
  %config662 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %539, i32 0, i32 21
  %arrayidx663 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config662, i32 0, i64 0
  %540 = load %struct.tilebox*, %struct.tilebox** %arrayidx663, align 8
  %right664 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %540, i32 0, i32 10
  %541 = load i32, i32* %right664, align 4
  %542 = load i32, i32* %pad, align 4
  %idxprom665 = sext i32 %542 to i64
  %543 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx666 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %543, i64 %idxprom665
  %544 = load %struct.cellbox*, %struct.cellbox** %arrayidx666, align 8
  %config667 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %544, i32 0, i32 21
  %arrayidx668 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config667, i32 0, i64 0
  %545 = load %struct.tilebox*, %struct.tilebox** %arrayidx668, align 8
  %left669 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %545, i32 0, i32 9
  %546 = load i32, i32* %left669, align 4
  %sub670 = sub nsw i32 %541, %546
  store i32 %sub670, i32* %width, align 4
  %547 = load i32*, i32** @fixLRBT, align 8
  %arrayidx671 = getelementptr inbounds i32, i32* %547, i64 0
  %548 = load i32, i32* %arrayidx671, align 4
  %cmp672 = icmp eq i32 %548, 0
  br i1 %cmp672, label %if.then.674, label %if.else.681

if.then.674:                                      ; preds = %if.end.648
  %549 = load i32, i32* %last, align 4
  %550 = load i32, i32* %separation, align 4
  %add675 = add nsw i32 %549, %550
  %551 = load i32, i32* %height, align 4
  %div676 = sdiv i32 %551, 2
  %add677 = add nsw i32 %add675, %div676
  %552 = load i32, i32* %pad, align 4
  %idxprom678 = sext i32 %552 to i64
  %553 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx679 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %553, i64 %idxprom678
  %554 = load %struct.cellbox*, %struct.cellbox** %arrayidx679, align 8
  %ycenter680 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %554, i32 0, i32 3
  store i32 %add677, i32* %ycenter680, align 4
  br label %if.end.693

if.else.681:                                      ; preds = %if.end.648
  %555 = load i32, i32* @blockb, align 4
  %conv682 = sitofp i32 %555 to double
  %556 = load i32, i32* %pad, align 4
  %557 = load i32, i32* @numcells, align 4
  %sub683 = sub nsw i32 %556, %557
  %idxprom684 = sext i32 %sub683 to i64
  %558 = load double*, double** @padspace, align 8
  %arrayidx685 = getelementptr inbounds double, double* %558, i64 %idxprom684
  %559 = load double, double* %arrayidx685, align 8
  %560 = load i32, i32* %space, align 4
  %conv686 = sitofp i32 %560 to double
  %mul687 = fmul double %559, %conv686
  %add688 = fadd double %conv682, %mul687
  %conv689 = fptosi double %add688 to i32
  %561 = load i32, i32* %pad, align 4
  %idxprom690 = sext i32 %561 to i64
  %562 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx691 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %562, i64 %idxprom690
  %563 = load %struct.cellbox*, %struct.cellbox** %arrayidx691, align 8
  %ycenter692 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %563, i32 0, i32 3
  store i32 %conv689, i32* %ycenter692, align 4
  br label %if.end.693

if.end.693:                                       ; preds = %if.else.681, %if.then.674
  %564 = load i32, i32* %maxWidth, align 4
  %565 = load i32, i32* %width, align 4
  %566 = load i32, i32* %width, align 4
  %div694 = sdiv i32 %566, 2
  %sub695 = sub nsw i32 %565, %div694
  %sub696 = sub nsw i32 %564, %sub695
  %567 = load i32, i32* %pad, align 4
  %idxprom697 = sext i32 %567 to i64
  %568 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx698 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %568, i64 %idxprom697
  %569 = load %struct.cellbox*, %struct.cellbox** %arrayidx698, align 8
  %xcenter699 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %569, i32 0, i32 2
  store i32 %sub696, i32* %xcenter699, align 4
  %570 = load i32, i32* %separation, align 4
  %571 = load i32, i32* %height, align 4
  %add700 = add nsw i32 %570, %571
  %572 = load i32, i32* %last, align 4
  %add701 = add nsw i32 %572, %add700
  store i32 %add701, i32* %last, align 4
  br label %for.inc.702

for.inc.702:                                      ; preds = %if.end.693
  %573 = load i32, i32* %pad, align 4
  %inc703 = add nsw i32 %573, 1
  store i32 %inc703, i32* %pad, align 4
  br label %for.cond.637

for.end.704:                                      ; preds = %if.then.647, %for.cond.637
  br label %if.end.705

if.end.705:                                       ; preds = %for.end.704, %for.body.576
  br label %for.inc.706

for.inc.706:                                      ; preds = %if.end.705
  %574 = load i32, i32* %pad, align 4
  %inc707 = add nsw i32 %574, 1
  store i32 %inc707, i32* %pad, align 4
  br label %for.cond.572

for.end.708:                                      ; preds = %for.cond.572
  br label %if.end.709

if.end.709:                                       ; preds = %for.end.708, %for.body.453
  br label %for.inc.710

for.inc.710:                                      ; preds = %if.end.709
  %575 = load i32, i32* %pad, align 4
  %inc711 = add nsw i32 %575, 1
  store i32 %inc711, i32* %pad, align 4
  br label %for.cond.449

for.end.712:                                      ; preds = %for.cond.449
  %576 = load i32, i32* @numcells, align 4
  %add713 = add nsw i32 %576, 1
  store i32 %add713, i32* %pad, align 4
  br label %for.cond.714

for.cond.714:                                     ; preds = %for.inc.942, %for.end.712
  %577 = load i32, i32* %pad, align 4
  %578 = load i32, i32* @numcells, align 4
  %579 = load i32, i32* @numpads, align 4
  %add715 = add nsw i32 %578, %579
  %cmp716 = icmp sle i32 %577, %add715
  br i1 %cmp716, label %for.body.718, label %for.end.944

for.body.718:                                     ; preds = %for.cond.714
  %580 = load i32, i32* %pad, align 4
  %idxprom719 = sext i32 %580 to i64
  %581 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx720 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %581, i64 %idxprom719
  %582 = load %struct.cellbox*, %struct.cellbox** %arrayidx720, align 8
  %padside721 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %582, i32 0, i32 11
  %583 = load i32, i32* %padside721, align 4
  %cmp722 = icmp eq i32 %583, 3
  br i1 %cmp722, label %if.then.724, label %if.end.941

if.then.724:                                      ; preds = %for.body.718
  store i32 1, i32* %count, align 4
  %584 = load i32, i32* %pad, align 4
  %idxprom725 = sext i32 %584 to i64
  %585 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx726 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %585, i64 %idxprom725
  %586 = load %struct.cellbox*, %struct.cellbox** %arrayidx726, align 8
  %config727 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %586, i32 0, i32 21
  %arrayidx728 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config727, i32 0, i64 0
  %587 = load %struct.tilebox*, %struct.tilebox** %arrayidx728, align 8
  %top729 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %587, i32 0, i32 12
  %588 = load i32, i32* %top729, align 4
  %589 = load i32, i32* %pad, align 4
  %idxprom730 = sext i32 %589 to i64
  %590 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx731 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %590, i64 %idxprom730
  %591 = load %struct.cellbox*, %struct.cellbox** %arrayidx731, align 8
  %config732 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %591, i32 0, i32 21
  %arrayidx733 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config732, i32 0, i64 0
  %592 = load %struct.tilebox*, %struct.tilebox** %arrayidx733, align 8
  %bottom734 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %592, i32 0, i32 11
  %593 = load i32, i32* %bottom734, align 4
  %sub735 = sub nsw i32 %588, %593
  store i32 %sub735, i32* %height, align 4
  %594 = load i32, i32* %pad, align 4
  %inc736 = add nsw i32 %594, 1
  store i32 %inc736, i32* %pad, align 4
  br label %for.cond.737

for.cond.737:                                     ; preds = %for.inc.762, %if.then.724
  %595 = load i32, i32* %pad, align 4
  %596 = load i32, i32* @numcells, align 4
  %597 = load i32, i32* @numpads, align 4
  %add738 = add nsw i32 %596, %597
  %cmp739 = icmp sle i32 %595, %add738
  br i1 %cmp739, label %for.body.741, label %for.end.764

for.body.741:                                     ; preds = %for.cond.737
  %598 = load i32, i32* %pad, align 4
  %idxprom742 = sext i32 %598 to i64
  %599 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx743 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %599, i64 %idxprom742
  %600 = load %struct.cellbox*, %struct.cellbox** %arrayidx743, align 8
  %padside744 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %600, i32 0, i32 11
  %601 = load i32, i32* %padside744, align 4
  %cmp745 = icmp ne i32 %601, 3
  br i1 %cmp745, label %if.then.747, label %if.end.748

if.then.747:                                      ; preds = %for.body.741
  br label %for.end.764

if.end.748:                                       ; preds = %for.body.741
  %602 = load i32, i32* %count, align 4
  %inc749 = add nsw i32 %602, 1
  store i32 %inc749, i32* %count, align 4
  %603 = load i32, i32* %pad, align 4
  %idxprom750 = sext i32 %603 to i64
  %604 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx751 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %604, i64 %idxprom750
  %605 = load %struct.cellbox*, %struct.cellbox** %arrayidx751, align 8
  %config752 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %605, i32 0, i32 21
  %arrayidx753 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config752, i32 0, i64 0
  %606 = load %struct.tilebox*, %struct.tilebox** %arrayidx753, align 8
  %top754 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %606, i32 0, i32 12
  %607 = load i32, i32* %top754, align 4
  %608 = load i32, i32* %pad, align 4
  %idxprom755 = sext i32 %608 to i64
  %609 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx756 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %609, i64 %idxprom755
  %610 = load %struct.cellbox*, %struct.cellbox** %arrayidx756, align 8
  %config757 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %610, i32 0, i32 21
  %arrayidx758 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config757, i32 0, i64 0
  %611 = load %struct.tilebox*, %struct.tilebox** %arrayidx758, align 8
  %bottom759 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %611, i32 0, i32 11
  %612 = load i32, i32* %bottom759, align 4
  %sub760 = sub nsw i32 %607, %612
  %613 = load i32, i32* %height, align 4
  %add761 = add nsw i32 %613, %sub760
  store i32 %add761, i32* %height, align 4
  br label %for.inc.762

for.inc.762:                                      ; preds = %if.end.748
  %614 = load i32, i32* %pad, align 4
  %inc763 = add nsw i32 %614, 1
  store i32 %inc763, i32* %pad, align 4
  br label %for.cond.737

for.end.764:                                      ; preds = %if.then.747, %for.cond.737
  %615 = load i32*, i32** @fixLRBT, align 8
  %arrayidx765 = getelementptr inbounds i32, i32* %615, i64 1
  %616 = load i32, i32* %arrayidx765, align 4
  %cmp766 = icmp eq i32 %616, 0
  br i1 %cmp766, label %if.then.768, label %if.else.776

if.then.768:                                      ; preds = %for.end.764
  %617 = load i32, i32* %coreHeight, align 4
  %618 = load i32, i32* %height, align 4
  %sub769 = sub nsw i32 %617, %618
  store i32 %sub769, i32* %space, align 4
  %619 = load i32, i32* %space, align 4
  %620 = load i32, i32* %count, align 4
  %add770 = add nsw i32 %620, 1
  %div771 = sdiv i32 %619, %add770
  store i32 %div771, i32* %separation, align 4
  %621 = load i32, i32* %separation, align 4
  %cmp772 = icmp slt i32 %621, 0
  br i1 %cmp772, label %if.then.774, label %if.end.775

if.then.774:                                      ; preds = %if.then.768
  store i32 0, i32* %separation, align 4
  br label %if.end.775

if.end.775:                                       ; preds = %if.then.774, %if.then.768
  br label %if.end.783

if.else.776:                                      ; preds = %for.end.764
  %622 = load i32, i32* %coreHeight, align 4
  %623 = load i32, i32* %height, align 4
  %cmp777 = icmp sge i32 %622, %623
  br i1 %cmp777, label %cond.true.779, label %cond.false.780

cond.true.779:                                    ; preds = %if.else.776
  %624 = load i32, i32* %coreHeight, align 4
  br label %cond.end.781

cond.false.780:                                   ; preds = %if.else.776
  %625 = load i32, i32* %height, align 4
  br label %cond.end.781

cond.end.781:                                     ; preds = %cond.false.780, %cond.true.779
  %cond782 = phi i32 [ %624, %cond.true.779 ], [ %625, %cond.false.780 ]
  store i32 %cond782, i32* %space, align 4
  br label %if.end.783

if.end.783:                                       ; preds = %cond.end.781, %if.end.775
  %626 = load i32, i32* %height, align 4
  %627 = load i32, i32* %coreHeight, align 4
  %cmp784 = icmp sgt i32 %626, %627
  br i1 %cmp784, label %if.then.786, label %if.end.790

if.then.786:                                      ; preds = %if.end.783
  %628 = load i32, i32* %height, align 4
  %629 = load i32, i32* %coreHeight, align 4
  %sub787 = sub nsw i32 %628, %629
  %div788 = sdiv i32 %sub787, 2
  %630 = load i32, i32* %zyshift, align 4
  %add789 = add nsw i32 %630, %div788
  store i32 %add789, i32* %zyshift, align 4
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.786, %if.end.783
  %631 = load i32, i32* @numcells, align 4
  %add791 = add nsw i32 %631, 1
  store i32 %add791, i32* %pad, align 4
  br label %for.cond.792

for.cond.792:                                     ; preds = %for.inc.938, %if.end.790
  %632 = load i32, i32* %pad, align 4
  %633 = load i32, i32* @numcells, align 4
  %634 = load i32, i32* @numpads, align 4
  %add793 = add nsw i32 %633, %634
  %cmp794 = icmp sle i32 %632, %add793
  br i1 %cmp794, label %for.body.796, label %for.end.940

for.body.796:                                     ; preds = %for.cond.792
  %635 = load i32, i32* %pad, align 4
  %idxprom797 = sext i32 %635 to i64
  %636 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx798 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %636, i64 %idxprom797
  %637 = load %struct.cellbox*, %struct.cellbox** %arrayidx798, align 8
  %padside799 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %637, i32 0, i32 11
  %638 = load i32, i32* %padside799, align 4
  %cmp800 = icmp eq i32 %638, 3
  br i1 %cmp800, label %if.then.802, label %if.end.937

if.then.802:                                      ; preds = %for.body.796
  %639 = load i32, i32* %pad, align 4
  %idxprom803 = sext i32 %639 to i64
  %640 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx804 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %640, i64 %idxprom803
  %641 = load %struct.cellbox*, %struct.cellbox** %arrayidx804, align 8
  %config805 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %641, i32 0, i32 21
  %arrayidx806 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config805, i32 0, i64 0
  %642 = load %struct.tilebox*, %struct.tilebox** %arrayidx806, align 8
  %top807 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %642, i32 0, i32 12
  %643 = load i32, i32* %top807, align 4
  %644 = load i32, i32* %pad, align 4
  %idxprom808 = sext i32 %644 to i64
  %645 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx809 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %645, i64 %idxprom808
  %646 = load %struct.cellbox*, %struct.cellbox** %arrayidx809, align 8
  %config810 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %646, i32 0, i32 21
  %arrayidx811 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config810, i32 0, i64 0
  %647 = load %struct.tilebox*, %struct.tilebox** %arrayidx811, align 8
  %bottom812 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %647, i32 0, i32 11
  %648 = load i32, i32* %bottom812, align 4
  %sub813 = sub nsw i32 %643, %648
  store i32 %sub813, i32* %height, align 4
  %649 = load i32, i32* %pad, align 4
  %idxprom814 = sext i32 %649 to i64
  %650 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx815 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %650, i64 %idxprom814
  %651 = load %struct.cellbox*, %struct.cellbox** %arrayidx815, align 8
  %config816 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %651, i32 0, i32 21
  %arrayidx817 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config816, i32 0, i64 0
  %652 = load %struct.tilebox*, %struct.tilebox** %arrayidx817, align 8
  %right818 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %652, i32 0, i32 10
  %653 = load i32, i32* %right818, align 4
  %654 = load i32, i32* %pad, align 4
  %idxprom819 = sext i32 %654 to i64
  %655 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx820 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %655, i64 %idxprom819
  %656 = load %struct.cellbox*, %struct.cellbox** %arrayidx820, align 8
  %config821 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %656, i32 0, i32 21
  %arrayidx822 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config821, i32 0, i64 0
  %657 = load %struct.tilebox*, %struct.tilebox** %arrayidx822, align 8
  %left823 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %657, i32 0, i32 9
  %658 = load i32, i32* %left823, align 4
  %sub824 = sub nsw i32 %653, %658
  store i32 %sub824, i32* %width, align 4
  %659 = load i32*, i32** @fixLRBT, align 8
  %arrayidx825 = getelementptr inbounds i32, i32* %659, i64 1
  %660 = load i32, i32* %arrayidx825, align 4
  %cmp826 = icmp eq i32 %660, 0
  br i1 %cmp826, label %if.then.828, label %if.else.835

if.then.828:                                      ; preds = %if.then.802
  %661 = load i32, i32* @blockb, align 4
  %662 = load i32, i32* %separation, align 4
  %add829 = add nsw i32 %661, %662
  %663 = load i32, i32* %height, align 4
  %div830 = sdiv i32 %663, 2
  %add831 = add nsw i32 %add829, %div830
  %664 = load i32, i32* %pad, align 4
  %idxprom832 = sext i32 %664 to i64
  %665 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx833 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %665, i64 %idxprom832
  %666 = load %struct.cellbox*, %struct.cellbox** %arrayidx833, align 8
  %ycenter834 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %666, i32 0, i32 3
  store i32 %add831, i32* %ycenter834, align 4
  br label %if.end.847

if.else.835:                                      ; preds = %if.then.802
  %667 = load i32, i32* @blockb, align 4
  %conv836 = sitofp i32 %667 to double
  %668 = load i32, i32* %pad, align 4
  %669 = load i32, i32* @numcells, align 4
  %sub837 = sub nsw i32 %668, %669
  %idxprom838 = sext i32 %sub837 to i64
  %670 = load double*, double** @padspace, align 8
  %arrayidx839 = getelementptr inbounds double, double* %670, i64 %idxprom838
  %671 = load double, double* %arrayidx839, align 8
  %672 = load i32, i32* %space, align 4
  %conv840 = sitofp i32 %672 to double
  %mul841 = fmul double %671, %conv840
  %add842 = fadd double %conv836, %mul841
  %conv843 = fptosi double %add842 to i32
  %673 = load i32, i32* %pad, align 4
  %idxprom844 = sext i32 %673 to i64
  %674 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx845 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %674, i64 %idxprom844
  %675 = load %struct.cellbox*, %struct.cellbox** %arrayidx845, align 8
  %ycenter846 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %675, i32 0, i32 3
  store i32 %conv843, i32* %ycenter846, align 4
  br label %if.end.847

if.end.847:                                       ; preds = %if.else.835, %if.then.828
  %676 = load i32, i32* @blockr, align 4
  %conv848 = sitofp i32 %676 to double
  %677 = load i32, i32* @blockr, align 4
  %678 = load i32, i32* @blockl, align 4
  %sub849 = sub nsw i32 %677, %678
  %conv850 = sitofp i32 %sub849 to double
  %mul851 = fmul double 1.000000e-01, %conv850
  %add852 = fadd double %conv848, %mul851
  %679 = load i32, i32* %width, align 4
  %div853 = sdiv i32 %679, 2
  %conv854 = sitofp i32 %div853 to double
  %add855 = fadd double %add852, %conv854
  %conv856 = fptosi double %add855 to i32
  %680 = load i32, i32* %pad, align 4
  %idxprom857 = sext i32 %680 to i64
  %681 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx858 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %681, i64 %idxprom857
  %682 = load %struct.cellbox*, %struct.cellbox** %arrayidx858, align 8
  %xcenter859 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %682, i32 0, i32 2
  store i32 %conv856, i32* %xcenter859, align 4
  %683 = load i32, i32* @blockb, align 4
  %684 = load i32, i32* %separation, align 4
  %add860 = add nsw i32 %683, %684
  %685 = load i32, i32* %height, align 4
  %add861 = add nsw i32 %add860, %685
  store i32 %add861, i32* %last, align 4
  %686 = load i32, i32* %pad, align 4
  %inc862 = add nsw i32 %686, 1
  store i32 %inc862, i32* %pad, align 4
  br label %for.cond.863

for.cond.863:                                     ; preds = %for.inc.934, %if.end.847
  %687 = load i32, i32* %pad, align 4
  %688 = load i32, i32* @numcells, align 4
  %689 = load i32, i32* @numpads, align 4
  %add864 = add nsw i32 %688, %689
  %cmp865 = icmp sle i32 %687, %add864
  br i1 %cmp865, label %for.body.867, label %for.end.936

for.body.867:                                     ; preds = %for.cond.863
  %690 = load i32, i32* %pad, align 4
  %idxprom868 = sext i32 %690 to i64
  %691 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx869 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %691, i64 %idxprom868
  %692 = load %struct.cellbox*, %struct.cellbox** %arrayidx869, align 8
  %padside870 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %692, i32 0, i32 11
  %693 = load i32, i32* %padside870, align 4
  %cmp871 = icmp ne i32 %693, 3
  br i1 %cmp871, label %if.then.873, label %if.end.874

if.then.873:                                      ; preds = %for.body.867
  br label %for.end.936

if.end.874:                                       ; preds = %for.body.867
  %694 = load i32, i32* %pad, align 4
  %idxprom875 = sext i32 %694 to i64
  %695 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx876 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %695, i64 %idxprom875
  %696 = load %struct.cellbox*, %struct.cellbox** %arrayidx876, align 8
  %config877 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %696, i32 0, i32 21
  %arrayidx878 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config877, i32 0, i64 0
  %697 = load %struct.tilebox*, %struct.tilebox** %arrayidx878, align 8
  %top879 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %697, i32 0, i32 12
  %698 = load i32, i32* %top879, align 4
  %699 = load i32, i32* %pad, align 4
  %idxprom880 = sext i32 %699 to i64
  %700 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx881 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %700, i64 %idxprom880
  %701 = load %struct.cellbox*, %struct.cellbox** %arrayidx881, align 8
  %config882 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %701, i32 0, i32 21
  %arrayidx883 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config882, i32 0, i64 0
  %702 = load %struct.tilebox*, %struct.tilebox** %arrayidx883, align 8
  %bottom884 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %702, i32 0, i32 11
  %703 = load i32, i32* %bottom884, align 4
  %sub885 = sub nsw i32 %698, %703
  store i32 %sub885, i32* %height, align 4
  %704 = load i32, i32* %pad, align 4
  %idxprom886 = sext i32 %704 to i64
  %705 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx887 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %705, i64 %idxprom886
  %706 = load %struct.cellbox*, %struct.cellbox** %arrayidx887, align 8
  %config888 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %706, i32 0, i32 21
  %arrayidx889 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config888, i32 0, i64 0
  %707 = load %struct.tilebox*, %struct.tilebox** %arrayidx889, align 8
  %right890 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %707, i32 0, i32 10
  %708 = load i32, i32* %right890, align 4
  %709 = load i32, i32* %pad, align 4
  %idxprom891 = sext i32 %709 to i64
  %710 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx892 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %710, i64 %idxprom891
  %711 = load %struct.cellbox*, %struct.cellbox** %arrayidx892, align 8
  %config893 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %711, i32 0, i32 21
  %arrayidx894 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config893, i32 0, i64 0
  %712 = load %struct.tilebox*, %struct.tilebox** %arrayidx894, align 8
  %left895 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %712, i32 0, i32 9
  %713 = load i32, i32* %left895, align 4
  %sub896 = sub nsw i32 %708, %713
  store i32 %sub896, i32* %width, align 4
  %714 = load i32*, i32** @fixLRBT, align 8
  %arrayidx897 = getelementptr inbounds i32, i32* %714, i64 1
  %715 = load i32, i32* %arrayidx897, align 4
  %cmp898 = icmp eq i32 %715, 0
  br i1 %cmp898, label %if.then.900, label %if.else.907

if.then.900:                                      ; preds = %if.end.874
  %716 = load i32, i32* %last, align 4
  %717 = load i32, i32* %separation, align 4
  %add901 = add nsw i32 %716, %717
  %718 = load i32, i32* %height, align 4
  %div902 = sdiv i32 %718, 2
  %add903 = add nsw i32 %add901, %div902
  %719 = load i32, i32* %pad, align 4
  %idxprom904 = sext i32 %719 to i64
  %720 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx905 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %720, i64 %idxprom904
  %721 = load %struct.cellbox*, %struct.cellbox** %arrayidx905, align 8
  %ycenter906 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %721, i32 0, i32 3
  store i32 %add903, i32* %ycenter906, align 4
  br label %if.end.919

if.else.907:                                      ; preds = %if.end.874
  %722 = load i32, i32* @blockb, align 4
  %conv908 = sitofp i32 %722 to double
  %723 = load i32, i32* %pad, align 4
  %724 = load i32, i32* @numcells, align 4
  %sub909 = sub nsw i32 %723, %724
  %idxprom910 = sext i32 %sub909 to i64
  %725 = load double*, double** @padspace, align 8
  %arrayidx911 = getelementptr inbounds double, double* %725, i64 %idxprom910
  %726 = load double, double* %arrayidx911, align 8
  %727 = load i32, i32* %space, align 4
  %conv912 = sitofp i32 %727 to double
  %mul913 = fmul double %726, %conv912
  %add914 = fadd double %conv908, %mul913
  %conv915 = fptosi double %add914 to i32
  %728 = load i32, i32* %pad, align 4
  %idxprom916 = sext i32 %728 to i64
  %729 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx917 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %729, i64 %idxprom916
  %730 = load %struct.cellbox*, %struct.cellbox** %arrayidx917, align 8
  %ycenter918 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %730, i32 0, i32 3
  store i32 %conv915, i32* %ycenter918, align 4
  br label %if.end.919

if.end.919:                                       ; preds = %if.else.907, %if.then.900
  %731 = load i32, i32* @blockr, align 4
  %conv920 = sitofp i32 %731 to double
  %732 = load i32, i32* @blockr, align 4
  %733 = load i32, i32* @blockl, align 4
  %sub921 = sub nsw i32 %732, %733
  %conv922 = sitofp i32 %sub921 to double
  %mul923 = fmul double 1.000000e-01, %conv922
  %add924 = fadd double %conv920, %mul923
  %734 = load i32, i32* %width, align 4
  %div925 = sdiv i32 %734, 2
  %conv926 = sitofp i32 %div925 to double
  %add927 = fadd double %add924, %conv926
  %conv928 = fptosi double %add927 to i32
  %735 = load i32, i32* %pad, align 4
  %idxprom929 = sext i32 %735 to i64
  %736 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx930 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %736, i64 %idxprom929
  %737 = load %struct.cellbox*, %struct.cellbox** %arrayidx930, align 8
  %xcenter931 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %737, i32 0, i32 2
  store i32 %conv928, i32* %xcenter931, align 4
  %738 = load i32, i32* %separation, align 4
  %739 = load i32, i32* %height, align 4
  %add932 = add nsw i32 %738, %739
  %740 = load i32, i32* %last, align 4
  %add933 = add nsw i32 %740, %add932
  store i32 %add933, i32* %last, align 4
  br label %for.inc.934

for.inc.934:                                      ; preds = %if.end.919
  %741 = load i32, i32* %pad, align 4
  %inc935 = add nsw i32 %741, 1
  store i32 %inc935, i32* %pad, align 4
  br label %for.cond.863

for.end.936:                                      ; preds = %if.then.873, %for.cond.863
  br label %if.end.937

if.end.937:                                       ; preds = %for.end.936, %for.body.796
  br label %for.inc.938

for.inc.938:                                      ; preds = %if.end.937
  %742 = load i32, i32* %pad, align 4
  %inc939 = add nsw i32 %742, 1
  store i32 %inc939, i32* %pad, align 4
  br label %for.cond.792

for.end.940:                                      ; preds = %for.cond.792
  br label %if.end.941

if.end.941:                                       ; preds = %for.end.940, %for.body.718
  br label %for.inc.942

for.inc.942:                                      ; preds = %if.end.941
  %743 = load i32, i32* %pad, align 4
  %inc943 = add nsw i32 %743, 1
  store i32 %inc943, i32* %pad, align 4
  br label %for.cond.714

for.end.944:                                      ; preds = %for.cond.714
  %744 = load i32, i32* @numcells, align 4
  %add945 = add nsw i32 %744, 1
  store i32 %add945, i32* %pad, align 4
  br label %for.cond.946

for.cond.946:                                     ; preds = %for.inc.967, %for.end.944
  %745 = load i32, i32* %pad, align 4
  %746 = load i32, i32* @numcells, align 4
  %747 = load i32, i32* @numpads, align 4
  %add947 = add nsw i32 %746, %747
  %cmp948 = icmp sle i32 %745, %add947
  br i1 %cmp948, label %for.body.950, label %for.end.969

for.body.950:                                     ; preds = %for.cond.946
  %748 = load i32, i32* %pad, align 4
  %idxprom951 = sext i32 %748 to i64
  %749 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx952 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %749, i64 %idxprom951
  %750 = load %struct.cellbox*, %struct.cellbox** %arrayidx952, align 8
  %padside953 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %750, i32 0, i32 11
  %751 = load i32, i32* %padside953, align 4
  %cmp954 = icmp eq i32 %751, 2
  br i1 %cmp954, label %if.then.961, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.950
  %752 = load i32, i32* %pad, align 4
  %idxprom956 = sext i32 %752 to i64
  %753 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx957 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %753, i64 %idxprom956
  %754 = load %struct.cellbox*, %struct.cellbox** %arrayidx957, align 8
  %padside958 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %754, i32 0, i32 11
  %755 = load i32, i32* %padside958, align 4
  %cmp959 = icmp eq i32 %755, 4
  br i1 %cmp959, label %if.then.961, label %if.end.966

if.then.961:                                      ; preds = %lor.lhs.false, %for.body.950
  %756 = load i32, i32* %xshift, align 4
  %757 = load i32, i32* %pad, align 4
  %idxprom962 = sext i32 %757 to i64
  %758 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx963 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %758, i64 %idxprom962
  %759 = load %struct.cellbox*, %struct.cellbox** %arrayidx963, align 8
  %xcenter964 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %759, i32 0, i32 2
  %760 = load i32, i32* %xcenter964, align 4
  %add965 = add nsw i32 %760, %756
  store i32 %add965, i32* %xcenter964, align 4
  br label %if.end.966

if.end.966:                                       ; preds = %if.then.961, %lor.lhs.false
  br label %for.inc.967

for.inc.967:                                      ; preds = %if.end.966
  %761 = load i32, i32* %pad, align 4
  %inc968 = add nsw i32 %761, 1
  store i32 %inc968, i32* %pad, align 4
  br label %for.cond.946

for.end.969:                                      ; preds = %for.cond.946
  %762 = load i32, i32* %zxshift, align 4
  %763 = load i32, i32* @blockl, align 4
  %add970 = add nsw i32 %763, %762
  store i32 %add970, i32* @blockl, align 4
  %764 = load i32, i32* %zxshift, align 4
  %765 = load i32, i32* @blockr, align 4
  %add971 = add nsw i32 %765, %764
  store i32 %add971, i32* @blockr, align 4
  %766 = load i32, i32* %zyshift, align 4
  %767 = load i32, i32* @blockb, align 4
  %add972 = add nsw i32 %767, %766
  store i32 %add972, i32* @blockb, align 4
  %768 = load i32, i32* %zyshift, align 4
  %769 = load i32, i32* @blockt, align 4
  %add973 = add nsw i32 %769, %768
  store i32 %add973, i32* @blockt, align 4
  %770 = load i32, i32* @numcells, align 4
  %add974 = add nsw i32 %770, 1
  store i32 %add974, i32* %pad, align 4
  br label %for.cond.975

for.cond.975:                                     ; preds = %for.inc.992, %for.end.969
  %771 = load i32, i32* %pad, align 4
  %772 = load i32, i32* @numcells, align 4
  %773 = load i32, i32* @numpads, align 4
  %add976 = add nsw i32 %772, %773
  %cmp977 = icmp sle i32 %771, %add976
  br i1 %cmp977, label %for.body.979, label %for.end.994

for.body.979:                                     ; preds = %for.cond.975
  %774 = load i32, i32* %pad, align 4
  %idxprom980 = sext i32 %774 to i64
  %775 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx981 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %775, i64 %idxprom980
  %776 = load %struct.cellbox*, %struct.cellbox** %arrayidx981, align 8
  %padside982 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %776, i32 0, i32 11
  %777 = load i32, i32* %padside982, align 4
  %cmp983 = icmp eq i32 %777, 3
  br i1 %cmp983, label %if.then.985, label %if.end.991

if.then.985:                                      ; preds = %for.body.979
  %778 = load i32, i32* %zxshift, align 4
  %mul986 = mul nsw i32 2, %778
  %779 = load i32, i32* %pad, align 4
  %idxprom987 = sext i32 %779 to i64
  %780 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx988 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %780, i64 %idxprom987
  %781 = load %struct.cellbox*, %struct.cellbox** %arrayidx988, align 8
  %xcenter989 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %781, i32 0, i32 2
  %782 = load i32, i32* %xcenter989, align 4
  %add990 = add nsw i32 %782, %mul986
  store i32 %add990, i32* %xcenter989, align 4
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.985, %for.body.979
  br label %for.inc.992

for.inc.992:                                      ; preds = %if.end.991
  %783 = load i32, i32* %pad, align 4
  %inc993 = add nsw i32 %783, 1
  store i32 %inc993, i32* %pad, align 4
  br label %for.cond.975

for.end.994:                                      ; preds = %for.cond.975
  %784 = load i32, i32* @numcells, align 4
  %add995 = add nsw i32 %784, 1
  store i32 %add995, i32* %pad, align 4
  br label %for.cond.996

for.cond.996:                                     ; preds = %for.inc.1013, %for.end.994
  %785 = load i32, i32* %pad, align 4
  %786 = load i32, i32* @numcells, align 4
  %787 = load i32, i32* @numpads, align 4
  %add997 = add nsw i32 %786, %787
  %cmp998 = icmp sle i32 %785, %add997
  br i1 %cmp998, label %for.body.1000, label %for.end.1015

for.body.1000:                                    ; preds = %for.cond.996
  %788 = load i32, i32* %pad, align 4
  %idxprom1001 = sext i32 %788 to i64
  %789 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx1002 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %789, i64 %idxprom1001
  %790 = load %struct.cellbox*, %struct.cellbox** %arrayidx1002, align 8
  %padside1003 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %790, i32 0, i32 11
  %791 = load i32, i32* %padside1003, align 4
  %cmp1004 = icmp eq i32 %791, 2
  br i1 %cmp1004, label %if.then.1006, label %if.end.1012

if.then.1006:                                     ; preds = %for.body.1000
  %792 = load i32, i32* %zyshift, align 4
  %mul1007 = mul nsw i32 2, %792
  %793 = load i32, i32* %pad, align 4
  %idxprom1008 = sext i32 %793 to i64
  %794 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx1009 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %794, i64 %idxprom1008
  %795 = load %struct.cellbox*, %struct.cellbox** %arrayidx1009, align 8
  %ycenter1010 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %795, i32 0, i32 3
  %796 = load i32, i32* %ycenter1010, align 4
  %add1011 = add nsw i32 %796, %mul1007
  store i32 %add1011, i32* %ycenter1010, align 4
  br label %if.end.1012

if.end.1012:                                      ; preds = %if.then.1006, %for.body.1000
  br label %for.inc.1013

for.inc.1013:                                     ; preds = %if.end.1012
  %797 = load i32, i32* %pad, align 4
  %inc1014 = add nsw i32 %797, 1
  store i32 %inc1014, i32* %pad, align 4
  br label %for.cond.996

for.end.1015:                                     ; preds = %for.cond.996
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
