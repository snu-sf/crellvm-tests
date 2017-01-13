; ModuleID = './MultiSource.Benchmarks.Prolangs-C/212.TimberWolfMC.config2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@coreGiven = external global i32, align 4
@blockt = external global i32, align 4
@blockr = external global i32, align 4
@perim = external global i32, align 4
@totChanLen = external global i32, align 4
@totNetLen = external global i32, align 4
@layersFactor = external global i32, align 4
@defaultTracks = external global i32, align 4
@trackspacing = external global i32, align 4
@wire_est_factor = external global i32, align 4
@aveChanWid = external global i32, align 4
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [49 x i8] c"\0A\0AConfiguration Data\0AInternal Channel Length:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Average Channel Width (un-normalized):%d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Average Channel Width:%d\0A\0A\00", align 1
@maxWeight = external global i32, align 4
@expandExtra = common global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Core Expansion Factor: %f\0A\00", align 1
@core_expansion_given = external global i32, align 4
@core_expansion = external global double, align 8
@chipaspect = external global double, align 8
@baseWeight = external global i32, align 4
@slopeX = external global double, align 8
@slopeY = external global double, align 8
@basefactor = external global double, align 8
@blockl = external global i32, align 4
@blockmx = external global i32, align 4
@blockb = external global i32, align 4
@blockmy = external global i32, align 4
@numBinsX = external global i32, align 4
@binWidthX = external global i32, align 4
@binOffsetX = external global i32, align 4
@numBinsY = external global i32, align 4
@binWidthY = external global i32, align 4
@binOffsetY = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @config2() #0 {
entry:
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %sum = alloca i32, align 4
  %cell = alloca i32, align 4
  %tempint = alloca i32, align 4
  %totNewArea = alloca double, align 8
  %totalArea = alloca double, align 8
  %temp = alloca double, align 8
  %dub = alloca double, align 8
  %reduction_factor = alloca double, align 8
  store double 0.000000e+00, double* %totalArea, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %cellptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 6
  %6 = load i32, i32* %numtiles, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom2
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx3, align 8
  store %struct.tilebox* %10, %struct.tilebox** %tileptr, align 8
  %11 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 9
  %12 = load i32, i32* %left, align 4
  store i32 %12, i32* %l, align 4
  %13 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 10
  %14 = load i32, i32* %right, align 4
  store i32 %14, i32* %r, align 4
  %15 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i32 0, i32 11
  %16 = load i32, i32* %bottom, align 4
  store i32 %16, i32* %b, align 4
  %17 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %17, i32 0, i32 12
  %18 = load i32, i32* %top, align 4
  store i32 %18, i32* %t, align 4
  %19 = load i32, i32* %r, align 4
  %20 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %19, %20
  %21 = load i32, i32* %t, align 4
  %22 = load i32, i32* %b, align 4
  %sub4 = sub nsw i32 %21, %22
  %mul = mul nsw i32 %sub, %sub4
  %conv = sitofp i32 %mul to double
  %23 = load double, double* %totalArea, align 8
  %add = fadd double %23, %conv
  store double %add, double* %totalArea, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 5
  %25 = load i32, i32* %orient5, align 4
  %idxprom6 = sext i32 %25 to i64
  %26 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config7 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 21
  %arrayidx8 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config7, i32 0, i64 %idxprom6
  %27 = load %struct.tilebox*, %struct.tilebox** %arrayidx8, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 0
  %28 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %28, %struct.tilebox** %tileptr, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.else
  %29 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp10 = icmp ne %struct.tilebox* %29, null
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left13 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 9
  %31 = load i32, i32* %left13, align 4
  store i32 %31, i32* %l, align 4
  %32 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right14 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 10
  %33 = load i32, i32* %right14, align 4
  store i32 %33, i32* %r, align 4
  %34 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 11
  %35 = load i32, i32* %bottom15, align 4
  store i32 %35, i32* %b, align 4
  %36 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top16 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 12
  %37 = load i32, i32* %top16, align 4
  store i32 %37, i32* %t, align 4
  %38 = load i32, i32* %r, align 4
  %39 = load i32, i32* %l, align 4
  %sub17 = sub nsw i32 %38, %39
  %40 = load i32, i32* %t, align 4
  %41 = load i32, i32* %b, align 4
  %sub18 = sub nsw i32 %40, %41
  %mul19 = mul nsw i32 %sub17, %sub18
  %conv20 = sitofp i32 %mul19 to double
  %42 = load double, double* %totalArea, align 8
  %add21 = fadd double %42, %conv20
  store double %add21, double* %totalArea, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %43 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile22 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %43, i32 0, i32 0
  %44 = load %struct.tilebox*, %struct.tilebox** %nexttile22, align 8
  store %struct.tilebox* %44, %struct.tilebox** %tileptr, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %45 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %46 = load i32, i32* @coreGiven, align 4
  %cmp25 = icmp eq i32 %46, 0
  br i1 %cmp25, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %for.end.24
  %47 = load double, double* %totalArea, align 8
  %call = call double @sqrt(double %47) #3
  %conv28 = fptosi double %call to i32
  store i32 %conv28, i32* @blockt, align 4
  store i32 %conv28, i32* @blockr, align 4
  %48 = load i32, i32* @perim, align 4
  %div = sdiv i32 %48, 2
  %49 = load i32, i32* @blockr, align 4
  %50 = load i32, i32* @blockt, align 4
  %add29 = add nsw i32 %49, %50
  %sub30 = sub nsw i32 %div, %add29
  store i32 %sub30, i32* @totChanLen, align 4
  %51 = load i32, i32* @totNetLen, align 4
  %conv31 = sitofp i32 %51 to double
  %52 = load i32, i32* @totChanLen, align 4
  %conv32 = sitofp i32 %52 to double
  %div33 = fdiv double %conv31, %conv32
  %53 = load i32, i32* @layersFactor, align 4
  %conv34 = sitofp i32 %53 to double
  %div35 = fdiv double %div33, %conv34
  store double %div35, double* %temp, align 8
  br label %if.end.47

if.else.36:                                       ; preds = %for.end.24
  %54 = load double, double* %totalArea, align 8
  %call37 = call double @sqrt(double %54) #3
  %conv38 = fptosi double %call37 to i32
  store i32 %conv38, i32* %t, align 4
  store i32 %conv38, i32* %r, align 4
  %55 = load i32, i32* @perim, align 4
  %div39 = sdiv i32 %55, 2
  %56 = load i32, i32* %r, align 4
  %57 = load i32, i32* %t, align 4
  %add40 = add nsw i32 %56, %57
  %sub41 = sub nsw i32 %div39, %add40
  store i32 %sub41, i32* @totChanLen, align 4
  %58 = load i32, i32* @totNetLen, align 4
  %conv42 = sitofp i32 %58 to double
  %59 = load i32, i32* @totChanLen, align 4
  %conv43 = sitofp i32 %59 to double
  %div44 = fdiv double %conv42, %conv43
  %60 = load i32, i32* @layersFactor, align 4
  %conv45 = sitofp i32 %60 to double
  %div46 = fdiv double %div44, %conv45
  store double %div46, double* %temp, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.36, %if.then.27
  %61 = load i32, i32* @defaultTracks, align 4
  %conv48 = sitofp i32 %61 to double
  %62 = load double, double* %temp, align 8
  %add49 = fadd double %62, %conv48
  store double %add49, double* %temp, align 8
  %63 = load double, double* %temp, align 8
  %conv50 = fptosi double %63 to i32
  %add51 = add nsw i32 %conv50, 3
  store i32 %add51, i32* %tempint, align 4
  %64 = load i32, i32* @trackspacing, align 4
  %65 = load i32, i32* %tempint, align 4
  %mul52 = mul nsw i32 %65, %64
  store i32 %mul52, i32* %tempint, align 4
  %66 = load i32, i32* @wire_est_factor, align 4
  %conv53 = sitofp i32 %66 to double
  %div54 = fdiv double %conv53, 1.000000e+01
  %add55 = fadd double 1.800000e+00, %div54
  store double %add55, double* %reduction_factor, align 8
  %67 = load i32, i32* %tempint, align 4
  %conv56 = sitofp i32 %67 to double
  %68 = load double, double* %reduction_factor, align 8
  %div57 = fdiv double %conv56, %68
  %conv58 = fptosi double %div57 to i32
  store i32 %conv58, i32* @aveChanWid, align 4
  %69 = load i32, i32* @aveChanWid, align 4
  %add59 = add nsw i32 %69, 2
  store i32 %add59, i32* @aveChanWid, align 4
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %71 = load i32, i32* @totChanLen, align 4
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %73 = load i32, i32* %tempint, align 4
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %75 = load i32, i32* @aveChanWid, align 4
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %75)
  %76 = load i32, i32* @coreGiven, align 4
  %cmp63 = icmp eq i32 %76, 0
  br i1 %cmp63, label %if.then.65, label %if.end.202

if.then.65:                                       ; preds = %if.end.47
  store double 0.000000e+00, double* %totNewArea, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.141, %if.then.65
  %77 = load i32, i32* %cell, align 4
  %78 = load i32, i32* @numcells, align 4
  %cmp67 = icmp sle i32 %77, %78
  br i1 %cmp67, label %for.body.69, label %for.end.143

for.body.69:                                      ; preds = %for.cond.66
  %79 = load i32, i32* %cell, align 4
  %idxprom70 = sext i32 %79 to i64
  %80 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx71 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %80, i64 %idxprom70
  %81 = load %struct.cellbox*, %struct.cellbox** %arrayidx71, align 8
  store %struct.cellbox* %81, %struct.cellbox** %cellptr, align 8
  %82 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numtiles72 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %82, i32 0, i32 6
  %83 = load i32, i32* %numtiles72, align 4
  %cmp73 = icmp eq i32 %83, 1
  br i1 %cmp73, label %if.then.75, label %if.else.95

if.then.75:                                       ; preds = %for.body.69
  %84 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient76 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 5
  %85 = load i32, i32* %orient76, align 4
  %idxprom77 = sext i32 %85 to i64
  %86 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config78 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %86, i32 0, i32 21
  %arrayidx79 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config78, i32 0, i64 %idxprom77
  %87 = load %struct.tilebox*, %struct.tilebox** %arrayidx79, align 8
  store %struct.tilebox* %87, %struct.tilebox** %tileptr, align 8
  %88 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left80 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %88, i32 0, i32 9
  %89 = load i32, i32* %left80, align 4
  store i32 %89, i32* %l, align 4
  %90 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right81 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %90, i32 0, i32 10
  %91 = load i32, i32* %right81, align 4
  store i32 %91, i32* %r, align 4
  %92 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %92, i32 0, i32 11
  %93 = load i32, i32* %bottom82, align 4
  store i32 %93, i32* %b, align 4
  %94 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top83 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 12
  %95 = load i32, i32* %top83, align 4
  store i32 %95, i32* %t, align 4
  %96 = load i32, i32* %r, align 4
  %97 = load i32, i32* %l, align 4
  %sub84 = sub nsw i32 %96, %97
  %98 = load i32, i32* @maxWeight, align 4
  %99 = load i32, i32* @maxWeight, align 4
  %mul85 = mul nsw i32 %98, %99
  %100 = load i32, i32* @aveChanWid, align 4
  %mul86 = mul nsw i32 %mul85, %100
  %add87 = add nsw i32 %sub84, %mul86
  %101 = load i32, i32* %t, align 4
  %102 = load i32, i32* %b, align 4
  %sub88 = sub nsw i32 %101, %102
  %103 = load i32, i32* @maxWeight, align 4
  %104 = load i32, i32* @maxWeight, align 4
  %mul89 = mul nsw i32 %103, %104
  %105 = load i32, i32* @aveChanWid, align 4
  %mul90 = mul nsw i32 %mul89, %105
  %add91 = add nsw i32 %sub88, %mul90
  %mul92 = mul nsw i32 %add87, %add91
  %conv93 = sitofp i32 %mul92 to double
  %106 = load double, double* %totNewArea, align 8
  %add94 = fadd double %106, %conv93
  store double %add94, double* %totNewArea, align 8
  br label %if.end.140

if.else.95:                                       ; preds = %for.body.69
  store i32 0, i32* %sum, align 4
  %107 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient96 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %107, i32 0, i32 5
  %108 = load i32, i32* %orient96, align 4
  %idxprom97 = sext i32 %108 to i64
  %109 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config98 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 21
  %arrayidx99 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config98, i32 0, i64 %idxprom97
  %110 = load %struct.tilebox*, %struct.tilebox** %arrayidx99, align 8
  %nexttile100 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %110, i32 0, i32 0
  %111 = load %struct.tilebox*, %struct.tilebox** %nexttile100, align 8
  store %struct.tilebox* %111, %struct.tilebox** %tileptr, align 8
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.113, %if.else.95
  %112 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp102 = icmp ne %struct.tilebox* %112, null
  br i1 %cmp102, label %for.body.104, label %for.end.115

for.body.104:                                     ; preds = %for.cond.101
  %113 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left105 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 9
  %114 = load i32, i32* %left105, align 4
  store i32 %114, i32* %l, align 4
  %115 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right106 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %115, i32 0, i32 10
  %116 = load i32, i32* %right106, align 4
  store i32 %116, i32* %r, align 4
  %117 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %117, i32 0, i32 11
  %118 = load i32, i32* %bottom107, align 4
  store i32 %118, i32* %b, align 4
  %119 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top108 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 12
  %120 = load i32, i32* %top108, align 4
  store i32 %120, i32* %t, align 4
  %121 = load i32, i32* %r, align 4
  %122 = load i32, i32* %l, align 4
  %sub109 = sub nsw i32 %121, %122
  %123 = load i32, i32* %t, align 4
  %124 = load i32, i32* %b, align 4
  %sub110 = sub nsw i32 %123, %124
  %mul111 = mul nsw i32 %sub109, %sub110
  %125 = load i32, i32* %sum, align 4
  %add112 = add nsw i32 %125, %mul111
  store i32 %add112, i32* %sum, align 4
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.104
  %126 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i32 0, i32 0
  %127 = load %struct.tilebox*, %struct.tilebox** %nexttile114, align 8
  store %struct.tilebox* %127, %struct.tilebox** %tileptr, align 8
  br label %for.cond.101

for.end.115:                                      ; preds = %for.cond.101
  %128 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient116 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %128, i32 0, i32 5
  %129 = load i32, i32* %orient116, align 4
  %idxprom117 = sext i32 %129 to i64
  %130 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config118 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %130, i32 0, i32 21
  %arrayidx119 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config118, i32 0, i64 %idxprom117
  %131 = load %struct.tilebox*, %struct.tilebox** %arrayidx119, align 8
  store %struct.tilebox* %131, %struct.tilebox** %tileptr, align 8
  %132 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left120 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %132, i32 0, i32 9
  %133 = load i32, i32* %left120, align 4
  store i32 %133, i32* %l, align 4
  %134 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 10
  %135 = load i32, i32* %right121, align 4
  store i32 %135, i32* %r, align 4
  %136 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom122 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %136, i32 0, i32 11
  %137 = load i32, i32* %bottom122, align 4
  store i32 %137, i32* %b, align 4
  %138 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top123 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %138, i32 0, i32 12
  %139 = load i32, i32* %top123, align 4
  store i32 %139, i32* %t, align 4
  %140 = load i32, i32* %r, align 4
  %141 = load i32, i32* %l, align 4
  %sub124 = sub nsw i32 %140, %141
  %142 = load i32, i32* @maxWeight, align 4
  %143 = load i32, i32* @maxWeight, align 4
  %mul125 = mul nsw i32 %142, %143
  %144 = load i32, i32* @aveChanWid, align 4
  %mul126 = mul nsw i32 %mul125, %144
  %add127 = add nsw i32 %sub124, %mul126
  %145 = load i32, i32* %t, align 4
  %146 = load i32, i32* %b, align 4
  %sub128 = sub nsw i32 %145, %146
  %147 = load i32, i32* @maxWeight, align 4
  %148 = load i32, i32* @maxWeight, align 4
  %mul129 = mul nsw i32 %147, %148
  %149 = load i32, i32* @aveChanWid, align 4
  %mul130 = mul nsw i32 %mul129, %149
  %add131 = add nsw i32 %sub128, %mul130
  %mul132 = mul nsw i32 %add127, %add131
  %150 = load i32, i32* %r, align 4
  %151 = load i32, i32* %l, align 4
  %sub133 = sub nsw i32 %150, %151
  %152 = load i32, i32* %t, align 4
  %153 = load i32, i32* %b, align 4
  %sub134 = sub nsw i32 %152, %153
  %mul135 = mul nsw i32 %sub133, %sub134
  %sub136 = sub nsw i32 %mul132, %mul135
  %154 = load i32, i32* %sum, align 4
  %add137 = add nsw i32 %sub136, %154
  %conv138 = sitofp i32 %add137 to double
  %155 = load double, double* %totNewArea, align 8
  %add139 = fadd double %155, %conv138
  store double %add139, double* %totNewArea, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %for.end.115, %if.then.75
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %156 = load i32, i32* %cell, align 4
  %inc142 = add nsw i32 %156, 1
  store i32 %inc142, i32* %cell, align 4
  br label %for.cond.66

for.end.143:                                      ; preds = %for.cond.66
  store double 1.050000e+00, double* @expandExtra, align 8
  %157 = load i32, i32* @numcells, align 4
  %cmp144 = icmp slt i32 %157, 10
  br i1 %cmp144, label %if.then.146, label %if.end.155

if.then.146:                                      ; preds = %for.end.143
  %158 = load i32, i32* @numcells, align 4
  %sub147 = sub nsw i32 10, %158
  %conv148 = sitofp i32 %sub147 to double
  %mul149 = fmul double %conv148, 1.000000e-02
  %159 = load double, double* @expandExtra, align 8
  %add150 = fadd double %159, %mul149
  store double %add150, double* @expandExtra, align 8
  %160 = load double, double* @expandExtra, align 8
  %cmp151 = fcmp ogt double %160, 1.100000e+00
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.then.146
  store double 1.100000e+00, double* @expandExtra, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.then.146
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %for.end.143
  %161 = load double, double* @expandExtra, align 8
  %162 = load double, double* %totNewArea, align 8
  %call156 = call double @sqrt(double %162) #3
  %mul157 = fmul double %161, %call156
  %conv158 = fptosi double %mul157 to i32
  %add159 = add nsw i32 %conv158, 1
  store i32 %add159, i32* @blockt, align 4
  store i32 %add159, i32* @blockr, align 4
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %164 = load double, double* @expandExtra, align 8
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %164)
  %165 = load i32, i32* @blockr, align 4
  %conv161 = sitofp i32 %165 to double
  %166 = load i32, i32* @numcells, align 4
  %conv162 = sitofp i32 %166 to double
  %call163 = call double @sqrt(double %conv162) #3
  %div164 = fdiv double %conv161, %call163
  %call165 = call double @log10(double %div164) #3
  store double %call165, double* %dub, align 8
  %167 = load i32, i32* @core_expansion_given, align 4
  %tobool = icmp ne i32 %167, 0
  br i1 %tobool, label %if.end.182, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.155
  %168 = load double, double* %dub, align 8
  %cmp166 = fcmp oge double %168, 3.000000e+00
  br i1 %cmp166, label %if.then.168, label %if.end.182

if.then.168:                                      ; preds = %land.lhs.true
  %169 = load double, double* %dub, align 8
  %sub169 = fsub double %169, 3.000000e+00
  %mul170 = fmul double 4.000000e-02, %sub169
  %add171 = fadd double 2.000000e-02, %mul170
  %170 = load double, double* @expandExtra, align 8
  %add172 = fadd double %170, %add171
  store double %add172, double* @expandExtra, align 8
  %171 = load double, double* @expandExtra, align 8
  %cmp173 = fcmp ogt double %171, 1.100000e+00
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.then.168
  store double 1.100000e+00, double* @expandExtra, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %if.then.168
  %172 = load double, double* @expandExtra, align 8
  %173 = load double, double* %totNewArea, align 8
  %call177 = call double @sqrt(double %173) #3
  %mul178 = fmul double %172, %call177
  %conv179 = fptosi double %mul178 to i32
  %add180 = add nsw i32 %conv179, 1
  store i32 %add180, i32* @blockt, align 4
  store i32 %add180, i32* @blockr, align 4
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %175 = load double, double* @expandExtra, align 8
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %175)
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.176, %land.lhs.true, %if.end.155
  %176 = load i32, i32* @core_expansion_given, align 4
  %tobool183 = icmp ne i32 %176, 0
  br i1 %tobool183, label %if.then.184, label %if.end.190

if.then.184:                                      ; preds = %if.end.182
  %177 = load double, double* @core_expansion, align 8
  store double %177, double* @expandExtra, align 8
  %178 = load double, double* @expandExtra, align 8
  %179 = load double, double* %totNewArea, align 8
  %call185 = call double @sqrt(double %179) #3
  %mul186 = fmul double %178, %call185
  %conv187 = fptosi double %mul186 to i32
  %add188 = add nsw i32 %conv187, 1
  store i32 %add188, i32* @blockt, align 4
  store i32 %add188, i32* @blockr, align 4
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %181 = load double, double* @expandExtra, align 8
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %181)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.184, %if.end.182
  %182 = load double, double* @chipaspect, align 8
  %call191 = call double @sqrt(double %182) #3
  %183 = load i32, i32* @blockt, align 4
  %conv192 = sitofp i32 %183 to double
  %mul193 = fmul double %call191, %conv192
  %conv194 = fptosi double %mul193 to i32
  %add195 = add nsw i32 %conv194, 1
  store i32 %add195, i32* @blockt, align 4
  %184 = load double, double* @chipaspect, align 8
  %call196 = call double @sqrt(double %184) #3
  %div197 = fdiv double 1.000000e+00, %call196
  %185 = load i32, i32* @blockr, align 4
  %conv198 = sitofp i32 %185 to double
  %mul199 = fmul double %div197, %conv198
  %conv200 = fptosi double %mul199 to i32
  %add201 = add nsw i32 %conv200, 1
  store i32 %add201, i32* @blockr, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.190, %if.end.47
  %186 = load i32, i32* @maxWeight, align 4
  %187 = load i32, i32* @baseWeight, align 4
  %sub203 = sub nsw i32 %186, %187
  %conv204 = sitofp i32 %sub203 to double
  %188 = load i32, i32* @blockr, align 4
  %conv205 = sitofp i32 %188 to double
  %mul206 = fmul double %conv205, 5.000000e-01
  %div207 = fdiv double %conv204, %mul206
  store double %div207, double* @slopeX, align 8
  %189 = load i32, i32* @maxWeight, align 4
  %190 = load i32, i32* @baseWeight, align 4
  %sub208 = sub nsw i32 %189, %190
  %conv209 = sitofp i32 %sub208 to double
  %191 = load i32, i32* @blockt, align 4
  %conv210 = sitofp i32 %191 to double
  %mul211 = fmul double %conv210, 5.000000e-01
  %div212 = fdiv double %conv209, %mul211
  store double %div212, double* @slopeY, align 8
  %192 = load i32, i32* @baseWeight, align 4
  %conv213 = sitofp i32 %192 to double
  store double %conv213, double* @basefactor, align 8
  call void @placepads()
  %193 = load i32, i32* @blockr, align 4
  %194 = load i32, i32* @blockl, align 4
  %add214 = add nsw i32 %193, %194
  %div215 = sdiv i32 %add214, 2
  store i32 %div215, i32* @blockmx, align 4
  %195 = load i32, i32* @blockt, align 4
  %196 = load i32, i32* @blockb, align 4
  %add216 = add nsw i32 %195, %196
  %div217 = sdiv i32 %add216, 2
  store i32 %div217, i32* @blockmy, align 4
  %197 = load i32, i32* @blockr, align 4
  %198 = load i32, i32* @blockl, align 4
  %sub218 = sub nsw i32 %197, %198
  %199 = load i32, i32* @numBinsX, align 4
  %div219 = sdiv i32 %sub218, %199
  store i32 %div219, i32* @binWidthX, align 4
  %200 = load i32, i32* @blockr, align 4
  %201 = load i32, i32* @blockl, align 4
  %sub220 = sub nsw i32 %200, %201
  %202 = load i32, i32* @binWidthX, align 4
  %203 = load i32, i32* @numBinsX, align 4
  %mul221 = mul nsw i32 %202, %203
  %sub222 = sub nsw i32 %sub220, %mul221
  %204 = load i32, i32* @numBinsX, align 4
  %div223 = sdiv i32 %204, 2
  %cmp224 = icmp sge i32 %sub222, %div223
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %if.end.202
  %205 = load i32, i32* @binWidthX, align 4
  %inc227 = add nsw i32 %205, 1
  store i32 %inc227, i32* @binWidthX, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %if.end.202
  %206 = load i32, i32* @blockl, align 4
  %add229 = add nsw i32 %206, 1
  %207 = load i32, i32* @binWidthX, align 4
  %sub230 = sub nsw i32 %add229, %207
  store i32 %sub230, i32* @binOffsetX, align 4
  %208 = load i32, i32* @blockt, align 4
  %209 = load i32, i32* @blockb, align 4
  %sub231 = sub nsw i32 %208, %209
  %210 = load i32, i32* @numBinsY, align 4
  %div232 = sdiv i32 %sub231, %210
  store i32 %div232, i32* @binWidthY, align 4
  %211 = load i32, i32* @blockt, align 4
  %212 = load i32, i32* @blockb, align 4
  %sub233 = sub nsw i32 %211, %212
  %213 = load i32, i32* @binWidthY, align 4
  %214 = load i32, i32* @numBinsY, align 4
  %mul234 = mul nsw i32 %213, %214
  %sub235 = sub nsw i32 %sub233, %mul234
  %215 = load i32, i32* @numBinsY, align 4
  %div236 = sdiv i32 %215, 2
  %cmp237 = icmp sge i32 %sub235, %div236
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %if.end.228
  %216 = load i32, i32* @binWidthY, align 4
  %inc240 = add nsw i32 %216, 1
  store i32 %inc240, i32* @binWidthY, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %if.end.228
  %217 = load i32, i32* @blockb, align 4
  %add242 = add nsw i32 %217, 1
  %218 = load i32, i32* @binWidthY, align 4
  %sub243 = sub nsw i32 %add242, %218
  store i32 %sub243, i32* @binOffsetY, align 4
  call void @loadbins(i32 0)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare double @log10(double) #1

declare void @placepads() #2

declare void @loadbins(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
