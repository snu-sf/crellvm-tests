; ModuleID = './MultiSource.Benchmarks.Prolangs-C/155.TimberWolfMC.finalpin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.flogbox = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@UCptr = common global %struct.uncombox* null, align 8
@HorV = common global i32 0, align 4
@pinSpacing = external global i32, align 4
@nPinLocs = common global i32 0, align 4
@lArray = common global %struct.flogbox* null, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"OOPs: a endSeqs \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot fit in the\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" site:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"TimberWolf has \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"to leave it out\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Current cell: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"OOPs: a begSeqs \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"cannot fit in \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"TimberWolf has t\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"o leave it out\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Current cell:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"OOPs: an endSeqs cannot fit in site:%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"TimberWolf will have to leave it out\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"OOPs: a begSeqs cannot fit in site:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"OOPs: TimberWolf has to ignore a \0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"contained sequence in site:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"OOPs: isolated pin(s) cannot fit in \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"the site: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"TimberWolf will have to ignore this \00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"number of pins: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @finalpin() #0 {
entry:
  %ptr = alloca %struct.cellbox*, align 8
  %SCptr = alloca %struct.contentbox*, align 8
  %SLptr = alloca %struct.locbox*, align 8
  %aspFactor = alloca double, align 8
  %cell = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %site = alloca i32, align 4
  %span = alloca i32, align 4
  %trueSpan = alloca i32, align 4
  %pin1 = alloca i32, align 4
  %overlapping = alloca i32, align 4
  %xprev = alloca i32, align 4
  %yprev = alloca i32, align 4
  %totalPin = alloca i32, align 4
  %loc = alloca i32, align 4
  %xnext = alloca i32, align 4
  %ynext = alloca i32, align 4
  %sum = alloca i32, align 4
  %firstLoc = alloca i32, align 4
  %lastLoc = alloca i32, align 4
  %val = alloca i32, align 4
  %isoNum = alloca i32, align 4
  %loFill = alloca i32, align 4
  %hiFill = alloca i32, align 4
  %hit = alloca i32, align 4
  %totLeft = alloca i32, align 4
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %secLoc = alloca i32, align 4
  %prefer = alloca i32, align 4
  %lastPin = alloca i32, align 4
  %endSeqs = alloca [101 x i32], align 16
  %begSeqs = alloca [101 x i32], align 16
  %conSeqs = alloca [11 x [101 x i32]], align 16
  %isolated = alloca [201 x i32], align 16
  %nextS = alloca i32, align 4
  %nextUp = alloca i32, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1725, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.1727

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %ptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 18
  %6 = load i32, i32* %numUnComTerms, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.1725

if.end:                                           ; preds = %for.body
  %7 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 19
  %8 = load %struct.contentbox*, %struct.contentbox** %siteContent, align 8
  store %struct.contentbox* %8, %struct.contentbox** %SCptr, align 8
  %9 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 5
  %10 = load i32, i32* %orient, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom2
  %12 = load %struct.tilebox*, %struct.tilebox** %arrayidx3, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i32 0, i32 18
  %13 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  store %struct.locbox* %13, %struct.locbox** %SLptr, align 8
  %14 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i32 0, i32 20
  %15 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %15, %struct.uncombox** @UCptr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 18
  %18 = load i32, i32* %numUnComTerms5, align 4
  %cmp6 = icmp sle i32 %16, %18
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx9 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %20, i64 %idxprom8
  %finalx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx9, i32 0, i32 9
  store i32 -100000000, i32* %finalx, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx11 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %22, i64 %idxprom10
  %finaly = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx11, i32 0, i32 10
  store i32 -100000000, i32* %finaly, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  store i32 1, i32* %site, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.1683, %for.end
  %24 = load i32, i32* %site, align 4
  %25 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 17
  %26 = load i32, i32* %numsites, align 4
  %cmp13 = icmp sle i32 %24, %26
  br i1 %cmp13, label %for.body.14, label %for.end.1685

for.body.14:                                      ; preds = %for.cond.12
  %27 = load i32, i32* %site, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx16 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %28, i64 %idxprom15
  %contents = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx16, i32 0, i32 0
  %29 = load i32, i32* %contents, align 4
  %cmp17 = icmp sle i32 %29, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.14
  br label %for.inc.1683

if.end.19:                                        ; preds = %for.body.14
  %30 = load i32, i32* %site, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx21 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %31, i64 %idxprom20
  %span22 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx21, i32 0, i32 4
  %32 = load i32, i32* %span22, align 4
  store i32 %32, i32* %span, align 4
  %33 = load i32, i32* %site, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx24 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %34, i64 %idxprom23
  %HorV = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx24, i32 0, i32 3
  %35 = load i32, i32* %HorV, align 4
  store i32 %35, i32* @HorV, align 4
  %36 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 5
  %37 = load i32, i32* %orient25, align 4
  %cmp26 = icmp sle i32 %37, 3
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.19
  %38 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspect = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 13
  %39 = load double, double* %aspect, align 8
  %40 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspectO = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 14
  %41 = load double, double* %aspectO, align 8
  %div = fdiv double %39, %41
  %call = call double @sqrt(double %div) #3
  store double %call, double* %aspFactor, align 8
  br label %if.end.36

if.else:                                          ; preds = %if.end.19
  %42 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspectO28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 14
  %43 = load double, double* %aspectO28, align 8
  %44 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspect29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 13
  %45 = load double, double* %aspect29, align 8
  %div30 = fdiv double %43, %45
  %call31 = call double @sqrt(double %div30) #3
  store double %call31, double* %aspFactor, align 8
  %46 = load i32, i32* @HorV, align 4
  %cmp32 = icmp eq i32 %46, 1
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else
  store i32 0, i32* @HorV, align 4
  br label %if.end.35

if.else.34:                                       ; preds = %if.else
  store i32 1, i32* @HorV, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.27
  %47 = load i32, i32* @HorV, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.37, label %if.else.51

if.then.37:                                       ; preds = %if.end.36
  %48 = load i32, i32* %span, align 4
  %conv = sitofp i32 %48 to double
  %49 = load double, double* %aspFactor, align 8
  %mul = fmul double %conv, %49
  %conv38 = fptosi double %mul to i32
  store i32 %conv38, i32* %trueSpan, align 4
  %50 = load i32, i32* %span, align 4
  %conv39 = sitofp i32 %50 to double
  %51 = load i32, i32* %trueSpan, align 4
  %conv40 = sitofp i32 %51 to double
  %52 = load double, double* %aspFactor, align 8
  %div41 = fdiv double %conv40, %52
  %sub = fsub double %conv39, %div41
  %53 = load i32, i32* %trueSpan, align 4
  %add = add nsw i32 %53, 1
  %conv42 = sitofp i32 %add to double
  %54 = load double, double* %aspFactor, align 8
  %div43 = fdiv double %conv42, %54
  %55 = load i32, i32* %span, align 4
  %conv44 = sitofp i32 %55 to double
  %sub45 = fsub double %div43, %conv44
  %cmp46 = fcmp ogt double %sub, %sub45
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.37
  %56 = load i32, i32* %trueSpan, align 4
  %inc49 = add nsw i32 %56, 1
  store i32 %inc49, i32* %trueSpan, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.37
  br label %if.end.69

if.else.51:                                       ; preds = %if.end.36
  %57 = load i32, i32* %span, align 4
  %conv52 = sitofp i32 %57 to double
  %58 = load double, double* %aspFactor, align 8
  %div53 = fdiv double %conv52, %58
  %conv54 = fptosi double %div53 to i32
  store i32 %conv54, i32* %trueSpan, align 4
  %59 = load i32, i32* %span, align 4
  %conv55 = sitofp i32 %59 to double
  %60 = load i32, i32* %trueSpan, align 4
  %conv56 = sitofp i32 %60 to double
  %61 = load double, double* %aspFactor, align 8
  %mul57 = fmul double %conv56, %61
  %sub58 = fsub double %conv55, %mul57
  %62 = load i32, i32* %trueSpan, align 4
  %add59 = add nsw i32 %62, 1
  %conv60 = sitofp i32 %add59 to double
  %63 = load double, double* %aspFactor, align 8
  %mul61 = fmul double %conv60, %63
  %64 = load i32, i32* %span, align 4
  %conv62 = sitofp i32 %64 to double
  %sub63 = fsub double %mul61, %conv62
  %cmp64 = fcmp ogt double %sub58, %sub63
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.else.51
  %65 = load i32, i32* %trueSpan, align 4
  %inc67 = add nsw i32 %65, 1
  store i32 %inc67, i32* %trueSpan, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.else.51
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.50
  %66 = load i32, i32* %trueSpan, align 4
  %67 = load i32, i32* @pinSpacing, align 4
  %div70 = sdiv i32 %66, %67
  store i32 %div70, i32* @nPinLocs, align 4
  %68 = load i32, i32* %trueSpan, align 4
  %69 = load i32, i32* @nPinLocs, align 4
  %70 = load i32, i32* @pinSpacing, align 4
  %mul71 = mul nsw i32 %69, %70
  %sub72 = sub nsw i32 %68, %mul71
  %71 = load i32, i32* @nPinLocs, align 4
  %add73 = add nsw i32 %71, 1
  %72 = load i32, i32* @pinSpacing, align 4
  %mul74 = mul nsw i32 %add73, %72
  %73 = load i32, i32* %trueSpan, align 4
  %sub75 = sub nsw i32 %mul74, %73
  %cmp76 = icmp sgt i32 %sub72, %sub75
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.69
  %74 = load i32, i32* @nPinLocs, align 4
  %inc79 = add nsw i32 %74, 1
  store i32 %inc79, i32* @nPinLocs, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.69
  %75 = load i32, i32* @nPinLocs, align 4
  %add81 = add nsw i32 %75, 1
  %conv82 = sext i32 %add81 to i64
  %mul83 = mul i64 %conv82, 16
  %call84 = call noalias i8* @malloc(i64 %mul83) #3
  %76 = bitcast i8* %call84 to %struct.flogbox*
  store %struct.flogbox* %76, %struct.flogbox** @lArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.99, %if.end.80
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* @nPinLocs, align 4
  %cmp86 = icmp sle i32 %77, %78
  br i1 %cmp86, label %for.body.88, label %for.end.101

for.body.88:                                      ; preds = %for.cond.85
  %79 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %79 to i64
  %80 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx90 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %80, i64 %idxprom89
  %placed = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx90, i32 0, i32 1
  store i32 0, i32* %placed, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %81 to i64
  %82 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx92 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %82, i64 %idxprom91
  %pin = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx92, i32 0, i32 0
  store i32 0, i32* %pin, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %83 to i64
  %84 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx94 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %84, i64 %idxprom93
  %finalx95 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx94, i32 0, i32 2
  store i32 0, i32* %finalx95, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %85 to i64
  %86 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx97 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %86, i64 %idxprom96
  %finaly98 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx97, i32 0, i32 3
  store i32 0, i32* %finaly98, align 4
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.88
  %87 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %87, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.85

for.end.101:                                      ; preds = %for.cond.85
  %88 = load i32, i32* @HorV, align 4
  %tobool102 = icmp ne i32 %88, 0
  br i1 %tobool102, label %if.then.103, label %if.else.160

if.then.103:                                      ; preds = %for.end.101
  %89 = load i32, i32* %site, align 4
  %90 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites104 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i32 0, i32 17
  %91 = load i32, i32* %numsites104, align 4
  %cmp105 = icmp eq i32 %89, %91
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.then.103
  store i32 1, i32* %nextS, align 4
  br label %if.end.110

if.else.108:                                      ; preds = %if.then.103
  %92 = load i32, i32* %site, align 4
  %add109 = add nsw i32 %92, 1
  store i32 %add109, i32* %nextS, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.107
  %93 = load i32, i32* %nextS, align 4
  %idxprom111 = sext i32 %93 to i64
  %94 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx112 = getelementptr inbounds %struct.locbox, %struct.locbox* %94, i64 %idxprom111
  %ypos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx112, i32 0, i32 1
  %95 = load i32, i32* %ypos, align 4
  %96 = load i32, i32* %site, align 4
  %idxprom113 = sext i32 %96 to i64
  %97 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx114 = getelementptr inbounds %struct.locbox, %struct.locbox* %97, i64 %idxprom113
  %ypos115 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx114, i32 0, i32 1
  %98 = load i32, i32* %ypos115, align 4
  %cmp116 = icmp sgt i32 %95, %98
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.end.110
  store i32 1, i32* %nextUp, align 4
  br label %if.end.120

if.else.119:                                      ; preds = %if.end.110
  store i32 0, i32* %nextUp, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.119, %if.then.118
  store i32 1, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.157, %if.end.120
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* @nPinLocs, align 4
  %cmp122 = icmp sle i32 %99, %100
  br i1 %cmp122, label %for.body.124, label %for.end.159

for.body.124:                                     ; preds = %for.cond.121
  %101 = load i32, i32* %site, align 4
  %idxprom125 = sext i32 %101 to i64
  %102 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx126 = getelementptr inbounds %struct.locbox, %struct.locbox* %102, i64 %idxprom125
  %xpos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx126, i32 0, i32 0
  %103 = load i32, i32* %xpos, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %104 to i64
  %105 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx128 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %105, i64 %idxprom127
  %finalx129 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx128, i32 0, i32 2
  store i32 %103, i32* %finalx129, align 4
  %106 = load i32, i32* %nextUp, align 4
  %cmp130 = icmp eq i32 %106, 0
  br i1 %cmp130, label %if.then.132, label %if.else.144

if.then.132:                                      ; preds = %for.body.124
  %107 = load i32, i32* %site, align 4
  %idxprom133 = sext i32 %107 to i64
  %108 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx134 = getelementptr inbounds %struct.locbox, %struct.locbox* %108, i64 %idxprom133
  %ypos135 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx134, i32 0, i32 1
  %109 = load i32, i32* %ypos135, align 4
  %110 = load i32, i32* %trueSpan, align 4
  %div136 = sdiv i32 %110, 2
  %sub137 = sub nsw i32 %109, %div136
  %111 = load i32, i32* %i, align 4
  %sub138 = sub nsw i32 %111, 1
  %112 = load i32, i32* @pinSpacing, align 4
  %mul139 = mul nsw i32 %sub138, %112
  %add140 = add nsw i32 %sub137, %mul139
  %113 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %113 to i64
  %114 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx142 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %114, i64 %idxprom141
  %finaly143 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx142, i32 0, i32 3
  store i32 %add140, i32* %finaly143, align 4
  br label %if.end.156

if.else.144:                                      ; preds = %for.body.124
  %115 = load i32, i32* %site, align 4
  %idxprom145 = sext i32 %115 to i64
  %116 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx146 = getelementptr inbounds %struct.locbox, %struct.locbox* %116, i64 %idxprom145
  %ypos147 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx146, i32 0, i32 1
  %117 = load i32, i32* %ypos147, align 4
  %118 = load i32, i32* %trueSpan, align 4
  %add148 = add nsw i32 %118, 1
  %div149 = sdiv i32 %add148, 2
  %sub150 = sub nsw i32 %117, %div149
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* @pinSpacing, align 4
  %mul151 = mul nsw i32 %119, %120
  %add152 = add nsw i32 %sub150, %mul151
  %121 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %121 to i64
  %122 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx154 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %122, i64 %idxprom153
  %finaly155 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx154, i32 0, i32 3
  store i32 %add152, i32* %finaly155, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.144, %if.then.132
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %123 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %123, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.121

for.end.159:                                      ; preds = %for.cond.121
  br label %if.end.219

if.else.160:                                      ; preds = %for.end.101
  %124 = load i32, i32* %site, align 4
  %125 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites161 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %125, i32 0, i32 17
  %126 = load i32, i32* %numsites161, align 4
  %cmp162 = icmp eq i32 %124, %126
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.else.160
  store i32 1, i32* %nextS, align 4
  br label %if.end.167

if.else.165:                                      ; preds = %if.else.160
  %127 = load i32, i32* %site, align 4
  %add166 = add nsw i32 %127, 1
  store i32 %add166, i32* %nextS, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.then.164
  %128 = load i32, i32* %nextS, align 4
  %idxprom168 = sext i32 %128 to i64
  %129 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx169 = getelementptr inbounds %struct.locbox, %struct.locbox* %129, i64 %idxprom168
  %xpos170 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx169, i32 0, i32 0
  %130 = load i32, i32* %xpos170, align 4
  %131 = load i32, i32* %site, align 4
  %idxprom171 = sext i32 %131 to i64
  %132 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx172 = getelementptr inbounds %struct.locbox, %struct.locbox* %132, i64 %idxprom171
  %xpos173 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx172, i32 0, i32 0
  %133 = load i32, i32* %xpos173, align 4
  %cmp174 = icmp sgt i32 %130, %133
  br i1 %cmp174, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.end.167
  store i32 1, i32* %nextUp, align 4
  br label %if.end.178

if.else.177:                                      ; preds = %if.end.167
  store i32 0, i32* %nextUp, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.177, %if.then.176
  store i32 1, i32* %i, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.216, %if.end.178
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* @nPinLocs, align 4
  %cmp180 = icmp sle i32 %134, %135
  br i1 %cmp180, label %for.body.182, label %for.end.218

for.body.182:                                     ; preds = %for.cond.179
  %136 = load i32, i32* %site, align 4
  %idxprom183 = sext i32 %136 to i64
  %137 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx184 = getelementptr inbounds %struct.locbox, %struct.locbox* %137, i64 %idxprom183
  %ypos185 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx184, i32 0, i32 1
  %138 = load i32, i32* %ypos185, align 4
  %139 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %139 to i64
  %140 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx187 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %140, i64 %idxprom186
  %finaly188 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx187, i32 0, i32 3
  store i32 %138, i32* %finaly188, align 4
  %141 = load i32, i32* %nextUp, align 4
  %cmp189 = icmp eq i32 %141, 0
  br i1 %cmp189, label %if.then.191, label %if.else.203

if.then.191:                                      ; preds = %for.body.182
  %142 = load i32, i32* %site, align 4
  %idxprom192 = sext i32 %142 to i64
  %143 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx193 = getelementptr inbounds %struct.locbox, %struct.locbox* %143, i64 %idxprom192
  %xpos194 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx193, i32 0, i32 0
  %144 = load i32, i32* %xpos194, align 4
  %145 = load i32, i32* %trueSpan, align 4
  %div195 = sdiv i32 %145, 2
  %sub196 = sub nsw i32 %144, %div195
  %146 = load i32, i32* %i, align 4
  %sub197 = sub nsw i32 %146, 1
  %147 = load i32, i32* @pinSpacing, align 4
  %mul198 = mul nsw i32 %sub197, %147
  %add199 = add nsw i32 %sub196, %mul198
  %148 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %148 to i64
  %149 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx201 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %149, i64 %idxprom200
  %finalx202 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx201, i32 0, i32 2
  store i32 %add199, i32* %finalx202, align 4
  br label %if.end.215

if.else.203:                                      ; preds = %for.body.182
  %150 = load i32, i32* %site, align 4
  %idxprom204 = sext i32 %150 to i64
  %151 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx205 = getelementptr inbounds %struct.locbox, %struct.locbox* %151, i64 %idxprom204
  %xpos206 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx205, i32 0, i32 0
  %152 = load i32, i32* %xpos206, align 4
  %153 = load i32, i32* %trueSpan, align 4
  %add207 = add nsw i32 %153, 1
  %div208 = sdiv i32 %add207, 2
  %sub209 = sub nsw i32 %152, %div208
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* @pinSpacing, align 4
  %mul210 = mul nsw i32 %154, %155
  %add211 = add nsw i32 %sub209, %mul210
  %156 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %156 to i64
  %157 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx213 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %157, i64 %idxprom212
  %finalx214 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx213, i32 0, i32 2
  store i32 %add211, i32* %finalx214, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.203, %if.then.191
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %158 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %158, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.179

for.end.218:                                      ; preds = %for.cond.179
  br label %if.end.219

if.end.219:                                       ; preds = %for.end.218, %for.end.159
  store i32 0, i32* %j, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.239, %if.end.219
  %159 = load i32, i32* %j, align 4
  %cmp221 = icmp sle i32 %159, 100
  br i1 %cmp221, label %for.body.223, label %for.end.241

for.body.223:                                     ; preds = %for.cond.220
  %160 = load i32, i32* %j, align 4
  %idxprom224 = sext i32 %160 to i64
  %arrayidx225 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 %idxprom224
  store i32 0, i32* %arrayidx225, align 4
  %161 = load i32, i32* %j, align 4
  %idxprom226 = sext i32 %161 to i64
  %arrayidx227 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 %idxprom226
  store i32 0, i32* %arrayidx227, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.236, %for.body.223
  %162 = load i32, i32* %i, align 4
  %cmp229 = icmp sle i32 %162, 10
  br i1 %cmp229, label %for.body.231, label %for.end.238

for.body.231:                                     ; preds = %for.cond.228
  %163 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %164 to i64
  %arrayidx234 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx234, i32 0, i64 %idxprom232
  store i32 0, i32* %arrayidx235, align 4
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.body.231
  %165 = load i32, i32* %i, align 4
  %inc237 = add nsw i32 %165, 1
  store i32 %inc237, i32* %i, align 4
  br label %for.cond.228

for.end.238:                                      ; preds = %for.cond.228
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.end.238
  %166 = load i32, i32* %j, align 4
  %inc240 = add nsw i32 %166, 1
  store i32 %inc240, i32* %j, align 4
  br label %for.cond.220

for.end.241:                                      ; preds = %for.cond.220
  store i32 0, i32* %j, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.248, %for.end.241
  %167 = load i32, i32* %j, align 4
  %cmp243 = icmp sle i32 %167, 200
  br i1 %cmp243, label %for.body.245, label %for.end.250

for.body.245:                                     ; preds = %for.cond.242
  %168 = load i32, i32* %j, align 4
  %idxprom246 = sext i32 %168 to i64
  %arrayidx247 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom246
  store i32 0, i32* %arrayidx247, align 4
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.245
  %169 = load i32, i32* %j, align 4
  %inc249 = add nsw i32 %169, 1
  store i32 %inc249, i32* %j, align 4
  br label %for.cond.242

for.end.250:                                      ; preds = %for.cond.242
  store i32 1, i32* %pin1, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.545, %for.end.250
  %170 = load i32, i32* %pin1, align 4
  %171 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms252 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %171, i32 0, i32 18
  %172 = load i32, i32* %numUnComTerms252, align 4
  %cmp253 = icmp sle i32 %170, %172
  br i1 %cmp253, label %for.body.255, label %for.end.547

for.body.255:                                     ; preds = %for.cond.251
  %173 = load i32, i32* %pin1, align 4
  %idxprom256 = sext i32 %173 to i64
  %174 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx257 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %174, i64 %idxprom256
  %site258 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx257, i32 0, i32 1
  %175 = load i32, i32* %site258, align 4
  %176 = load i32, i32* %site, align 4
  %cmp259 = icmp eq i32 %175, %176
  br i1 %cmp259, label %if.then.261, label %if.end.544

if.then.261:                                      ; preds = %for.body.255
  %177 = load i32, i32* %pin1, align 4
  %idxprom262 = sext i32 %177 to i64
  %178 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx263 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %178, i64 %idxprom262
  %sequence = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx263, i32 0, i32 7
  %179 = load i32, i32* %sequence, align 4
  %cmp264 = icmp eq i32 %179, 0
  br i1 %cmp264, label %if.then.266, label %if.else.420

if.then.266:                                      ; preds = %if.then.261
  %arrayidx267 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  %180 = load i32, i32* %arrayidx267, align 4
  %cmp268 = icmp eq i32 %180, 0
  br i1 %cmp268, label %if.then.270, label %if.else.390

if.then.270:                                      ; preds = %if.then.266
  %181 = load i32, i32* %pin1, align 4
  %sub271 = sub nsw i32 %181, 1
  %idxprom272 = sext i32 %sub271 to i64
  %182 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx273 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %182, i64 %idxprom272
  %site274 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx273, i32 0, i32 1
  %183 = load i32, i32* %site274, align 4
  %idxprom275 = sext i32 %183 to i64
  %184 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx276 = getelementptr inbounds %struct.locbox, %struct.locbox* %184, i64 %idxprom275
  %xpos277 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx276, i32 0, i32 0
  %185 = load i32, i32* %xpos277, align 4
  store i32 %185, i32* %xprev, align 4
  %186 = load i32, i32* %pin1, align 4
  %sub278 = sub nsw i32 %186, 1
  %idxprom279 = sext i32 %sub278 to i64
  %187 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx280 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %187, i64 %idxprom279
  %site281 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx280, i32 0, i32 1
  %188 = load i32, i32* %site281, align 4
  %idxprom282 = sext i32 %188 to i64
  %189 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx283 = getelementptr inbounds %struct.locbox, %struct.locbox* %189, i64 %idxprom282
  %ypos284 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx283, i32 0, i32 1
  %190 = load i32, i32* %ypos284, align 4
  store i32 %190, i32* %yprev, align 4
  %191 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx285 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %191, i64 1
  %finalx286 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx285, i32 0, i32 2
  %192 = load i32, i32* %finalx286, align 4
  %193 = load i32, i32* %xprev, align 4
  %sub287 = sub nsw i32 %192, %193
  %cmp288 = icmp sge i32 %sub287, 0
  br i1 %cmp288, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.270
  %194 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx290 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %194, i64 1
  %finalx291 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx290, i32 0, i32 2
  %195 = load i32, i32* %finalx291, align 4
  %196 = load i32, i32* %xprev, align 4
  %sub292 = sub nsw i32 %195, %196
  br label %cond.end

cond.false:                                       ; preds = %if.then.270
  %197 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx293 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %197, i64 1
  %finalx294 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx293, i32 0, i32 2
  %198 = load i32, i32* %finalx294, align 4
  %199 = load i32, i32* %xprev, align 4
  %sub295 = sub nsw i32 %198, %199
  %sub296 = sub nsw i32 0, %sub295
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub292, %cond.true ], [ %sub296, %cond.false ]
  %200 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx297 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %200, i64 1
  %finaly298 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx297, i32 0, i32 3
  %201 = load i32, i32* %finaly298, align 4
  %202 = load i32, i32* %yprev, align 4
  %sub299 = sub nsw i32 %201, %202
  %cmp300 = icmp sge i32 %sub299, 0
  br i1 %cmp300, label %cond.true.302, label %cond.false.306

cond.true.302:                                    ; preds = %cond.end
  %203 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx303 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %203, i64 1
  %finaly304 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx303, i32 0, i32 3
  %204 = load i32, i32* %finaly304, align 4
  %205 = load i32, i32* %yprev, align 4
  %sub305 = sub nsw i32 %204, %205
  br label %cond.end.311

cond.false.306:                                   ; preds = %cond.end
  %206 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx307 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %206, i64 1
  %finaly308 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx307, i32 0, i32 3
  %207 = load i32, i32* %finaly308, align 4
  %208 = load i32, i32* %yprev, align 4
  %sub309 = sub nsw i32 %207, %208
  %sub310 = sub nsw i32 0, %sub309
  br label %cond.end.311

cond.end.311:                                     ; preds = %cond.false.306, %cond.true.302
  %cond312 = phi i32 [ %sub305, %cond.true.302 ], [ %sub310, %cond.false.306 ]
  %add313 = add nsw i32 %cond, %cond312
  %209 = load i32, i32* @nPinLocs, align 4
  %idxprom314 = sext i32 %209 to i64
  %210 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx315 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %210, i64 %idxprom314
  %finalx316 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx315, i32 0, i32 2
  %211 = load i32, i32* %finalx316, align 4
  %212 = load i32, i32* %xprev, align 4
  %sub317 = sub nsw i32 %211, %212
  %cmp318 = icmp sge i32 %sub317, 0
  br i1 %cmp318, label %cond.true.320, label %cond.false.325

cond.true.320:                                    ; preds = %cond.end.311
  %213 = load i32, i32* @nPinLocs, align 4
  %idxprom321 = sext i32 %213 to i64
  %214 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx322 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %214, i64 %idxprom321
  %finalx323 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx322, i32 0, i32 2
  %215 = load i32, i32* %finalx323, align 4
  %216 = load i32, i32* %xprev, align 4
  %sub324 = sub nsw i32 %215, %216
  br label %cond.end.331

cond.false.325:                                   ; preds = %cond.end.311
  %217 = load i32, i32* @nPinLocs, align 4
  %idxprom326 = sext i32 %217 to i64
  %218 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx327 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %218, i64 %idxprom326
  %finalx328 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx327, i32 0, i32 2
  %219 = load i32, i32* %finalx328, align 4
  %220 = load i32, i32* %xprev, align 4
  %sub329 = sub nsw i32 %219, %220
  %sub330 = sub nsw i32 0, %sub329
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.325, %cond.true.320
  %cond332 = phi i32 [ %sub324, %cond.true.320 ], [ %sub330, %cond.false.325 ]
  %221 = load i32, i32* @nPinLocs, align 4
  %idxprom333 = sext i32 %221 to i64
  %222 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx334 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %222, i64 %idxprom333
  %finaly335 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx334, i32 0, i32 3
  %223 = load i32, i32* %finaly335, align 4
  %224 = load i32, i32* %yprev, align 4
  %sub336 = sub nsw i32 %223, %224
  %cmp337 = icmp sge i32 %sub336, 0
  br i1 %cmp337, label %cond.true.339, label %cond.false.344

cond.true.339:                                    ; preds = %cond.end.331
  %225 = load i32, i32* @nPinLocs, align 4
  %idxprom340 = sext i32 %225 to i64
  %226 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx341 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %226, i64 %idxprom340
  %finaly342 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx341, i32 0, i32 3
  %227 = load i32, i32* %finaly342, align 4
  %228 = load i32, i32* %yprev, align 4
  %sub343 = sub nsw i32 %227, %228
  br label %cond.end.350

cond.false.344:                                   ; preds = %cond.end.331
  %229 = load i32, i32* @nPinLocs, align 4
  %idxprom345 = sext i32 %229 to i64
  %230 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx346 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %230, i64 %idxprom345
  %finaly347 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx346, i32 0, i32 3
  %231 = load i32, i32* %finaly347, align 4
  %232 = load i32, i32* %yprev, align 4
  %sub348 = sub nsw i32 %231, %232
  %sub349 = sub nsw i32 0, %sub348
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.false.344, %cond.true.339
  %cond351 = phi i32 [ %sub343, %cond.true.339 ], [ %sub349, %cond.false.344 ]
  %add352 = add nsw i32 %cond332, %cond351
  %cmp353 = icmp slt i32 %add313, %add352
  br i1 %cmp353, label %if.then.355, label %if.else.359

if.then.355:                                      ; preds = %cond.end.350
  %arrayidx356 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  store i32 1, i32* %arrayidx356, align 4
  %arrayidx357 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 1
  store i32 1, i32* %arrayidx357, align 4
  %233 = load i32, i32* %pin1, align 4
  %arrayidx358 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 2
  store i32 %233, i32* %arrayidx358, align 4
  br label %if.end.363

if.else.359:                                      ; preds = %cond.end.350
  %arrayidx360 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  store i32 1, i32* %arrayidx360, align 4
  %234 = load i32, i32* @nPinLocs, align 4
  %arrayidx361 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 1
  store i32 %234, i32* %arrayidx361, align 4
  %235 = load i32, i32* %pin1, align 4
  %arrayidx362 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 2
  store i32 %235, i32* %arrayidx362, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.359, %if.then.355
  %236 = load i32, i32* %pin1, align 4
  %inc364 = add nsw i32 %236, 1
  store i32 %inc364, i32* %pin1, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.387, %if.end.363
  %237 = load i32, i32* %pin1, align 4
  %238 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms366 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %238, i32 0, i32 18
  %239 = load i32, i32* %numUnComTerms366, align 4
  %cmp367 = icmp sle i32 %237, %239
  br i1 %cmp367, label %for.body.369, label %for.end.389

for.body.369:                                     ; preds = %for.cond.365
  %240 = load i32, i32* %pin1, align 4
  %idxprom370 = sext i32 %240 to i64
  %241 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx371 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %241, i64 %idxprom370
  %sequence372 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx371, i32 0, i32 7
  %242 = load i32, i32* %sequence372, align 4
  %cmp373 = icmp ne i32 %242, 0
  br i1 %cmp373, label %if.then.380, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.369
  %243 = load i32, i32* %pin1, align 4
  %idxprom375 = sext i32 %243 to i64
  %244 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx376 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %244, i64 %idxprom375
  %site377 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx376, i32 0, i32 1
  %245 = load i32, i32* %site377, align 4
  %246 = load i32, i32* %site, align 4
  %cmp378 = icmp ne i32 %245, %246
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %lor.lhs.false, %for.body.369
  br label %for.end.389

if.end.381:                                       ; preds = %lor.lhs.false
  %247 = load i32, i32* %pin1, align 4
  %arrayidx382 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  %248 = load i32, i32* %arrayidx382, align 4
  %inc383 = add nsw i32 %248, 1
  store i32 %inc383, i32* %arrayidx382, align 4
  %add384 = add nsw i32 %inc383, 1
  %idxprom385 = sext i32 %add384 to i64
  %arrayidx386 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 %idxprom385
  store i32 %247, i32* %arrayidx386, align 4
  br label %for.inc.387

for.inc.387:                                      ; preds = %if.end.381
  %249 = load i32, i32* %pin1, align 4
  %inc388 = add nsw i32 %249, 1
  store i32 %inc388, i32* %pin1, align 4
  br label %for.cond.365

for.end.389:                                      ; preds = %if.then.380, %for.cond.365
  br label %if.end.419

if.else.390:                                      ; preds = %if.then.266
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call391 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %253 = load i32, i32* %site, align 4
  %call393 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %253)
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call394 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %257 = load i32, i32* %cell, align 4
  %call396 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %257)
  %258 = load i32, i32* %pin1, align 4
  %inc397 = add nsw i32 %258, 1
  store i32 %inc397, i32* %pin1, align 4
  br label %for.cond.398

for.cond.398:                                     ; preds = %for.inc.416, %if.else.390
  %259 = load i32, i32* %pin1, align 4
  %260 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms399 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %260, i32 0, i32 18
  %261 = load i32, i32* %numUnComTerms399, align 4
  %cmp400 = icmp sle i32 %259, %261
  br i1 %cmp400, label %for.body.402, label %for.end.418

for.body.402:                                     ; preds = %for.cond.398
  %262 = load i32, i32* %pin1, align 4
  %idxprom403 = sext i32 %262 to i64
  %263 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx404 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %263, i64 %idxprom403
  %sequence405 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx404, i32 0, i32 7
  %264 = load i32, i32* %sequence405, align 4
  %cmp406 = icmp ne i32 %264, 0
  br i1 %cmp406, label %if.then.414, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %for.body.402
  %265 = load i32, i32* %pin1, align 4
  %idxprom409 = sext i32 %265 to i64
  %266 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx410 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %266, i64 %idxprom409
  %site411 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx410, i32 0, i32 1
  %267 = load i32, i32* %site411, align 4
  %268 = load i32, i32* %site, align 4
  %cmp412 = icmp ne i32 %267, %268
  br i1 %cmp412, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %lor.lhs.false.408, %for.body.402
  br label %for.end.418

if.end.415:                                       ; preds = %lor.lhs.false.408
  br label %for.inc.416

for.inc.416:                                      ; preds = %if.end.415
  %269 = load i32, i32* %pin1, align 4
  %inc417 = add nsw i32 %269, 1
  store i32 %inc417, i32* %pin1, align 4
  br label %for.cond.398

for.end.418:                                      ; preds = %if.then.414, %for.cond.398
  br label %if.end.419

if.end.419:                                       ; preds = %for.end.418, %for.end.389
  %270 = load i32, i32* %pin1, align 4
  %dec = add nsw i32 %270, -1
  store i32 %dec, i32* %pin1, align 4
  br label %if.end.543

if.else.420:                                      ; preds = %if.then.261
  %271 = load i32, i32* %pin1, align 4
  %idxprom421 = sext i32 %271 to i64
  %272 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx422 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %272, i64 %idxprom421
  %sequence423 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx422, i32 0, i32 7
  %273 = load i32, i32* %sequence423, align 4
  %cmp424 = icmp sgt i32 %273, 1
  br i1 %cmp424, label %if.then.426, label %if.else.536

if.then.426:                                      ; preds = %if.else.420
  %arrayidx427 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx428 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx427, i32 0, i64 0
  %274 = load i32, i32* %arrayidx428, align 4
  %inc429 = add nsw i32 %274, 1
  store i32 %inc429, i32* %arrayidx428, align 4
  %idxprom430 = sext i32 %inc429 to i64
  %arrayidx431 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom430
  %arrayidx432 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx431, i32 0, i64 0
  store i32 1, i32* %arrayidx432, align 4
  %275 = load i32, i32* %pin1, align 4
  %arrayidx433 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx434 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx433, i32 0, i64 0
  %276 = load i32, i32* %arrayidx434, align 4
  %idxprom435 = sext i32 %276 to i64
  %arrayidx436 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom435
  %arrayidx437 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx436, i32 0, i64 2
  store i32 %275, i32* %arrayidx437, align 4
  %277 = load i32, i32* %pin1, align 4
  %inc438 = add nsw i32 %277, 1
  store i32 %inc438, i32* %pin1, align 4
  br label %for.cond.439

for.cond.439:                                     ; preds = %for.inc.532, %if.then.426
  %278 = load i32, i32* %pin1, align 4
  %279 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms440 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %279, i32 0, i32 18
  %280 = load i32, i32* %numUnComTerms440, align 4
  %cmp441 = icmp sle i32 %278, %280
  br i1 %cmp441, label %for.body.443, label %for.end.534

for.body.443:                                     ; preds = %for.cond.439
  %281 = load i32, i32* %pin1, align 4
  %idxprom444 = sext i32 %281 to i64
  %282 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx445 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %282, i64 %idxprom444
  %sequence446 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx445, i32 0, i32 7
  %283 = load i32, i32* %sequence446, align 4
  %cmp447 = icmp ne i32 %283, 0
  br i1 %cmp447, label %if.then.455, label %lor.lhs.false.449

lor.lhs.false.449:                                ; preds = %for.body.443
  %284 = load i32, i32* %pin1, align 4
  %idxprom450 = sext i32 %284 to i64
  %285 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx451 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %285, i64 %idxprom450
  %site452 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx451, i32 0, i32 1
  %286 = load i32, i32* %site452, align 4
  %287 = load i32, i32* %site, align 4
  %cmp453 = icmp ne i32 %286, %287
  br i1 %cmp453, label %if.then.455, label %if.end.518

if.then.455:                                      ; preds = %lor.lhs.false.449, %for.body.443
  %288 = load i32, i32* %pin1, align 4
  %idxprom456 = sext i32 %288 to i64
  %289 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx457 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %289, i64 %idxprom456
  %sequence458 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx457, i32 0, i32 7
  %290 = load i32, i32* %sequence458, align 4
  %cmp459 = icmp eq i32 %290, 0
  br i1 %cmp459, label %if.then.461, label %if.end.517

if.then.461:                                      ; preds = %if.then.455
  %arrayidx462 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx463 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx462, i32 0, i64 0
  %291 = load i32, i32* %arrayidx463, align 4
  %idxprom464 = sext i32 %291 to i64
  %arrayidx465 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom464
  %arrayidx466 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx465, i32 0, i64 0
  %292 = load i32, i32* %arrayidx466, align 4
  %add467 = add nsw i32 %292, 1
  store i32 %add467, i32* %i, align 4
  %arrayidx468 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %293 = load i32, i32* %arrayidx468, align 4
  %cmp469 = icmp eq i32 %293, 0
  br i1 %cmp469, label %if.then.471, label %if.else.493

if.then.471:                                      ; preds = %if.then.461
  br label %for.cond.472

for.cond.472:                                     ; preds = %for.inc.490, %if.then.471
  %294 = load i32, i32* %i, align 4
  %cmp473 = icmp sge i32 %294, 0
  br i1 %cmp473, label %for.body.475, label %for.end.492

for.body.475:                                     ; preds = %for.cond.472
  %295 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %295 to i64
  %arrayidx477 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx478 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx477, i32 0, i64 0
  %296 = load i32, i32* %arrayidx478, align 4
  %idxprom479 = sext i32 %296 to i64
  %arrayidx480 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom479
  %arrayidx481 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx480, i32 0, i64 %idxprom476
  %297 = load i32, i32* %arrayidx481, align 4
  %298 = load i32, i32* %i, align 4
  %idxprom482 = sext i32 %298 to i64
  %arrayidx483 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 %idxprom482
  store i32 %297, i32* %arrayidx483, align 4
  %299 = load i32, i32* %i, align 4
  %idxprom484 = sext i32 %299 to i64
  %arrayidx485 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx486 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx485, i32 0, i64 0
  %300 = load i32, i32* %arrayidx486, align 4
  %idxprom487 = sext i32 %300 to i64
  %arrayidx488 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom487
  %arrayidx489 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx488, i32 0, i64 %idxprom484
  store i32 0, i32* %arrayidx489, align 4
  br label %for.inc.490

for.inc.490:                                      ; preds = %for.body.475
  %301 = load i32, i32* %i, align 4
  %dec491 = add nsw i32 %301, -1
  store i32 %dec491, i32* %i, align 4
  br label %for.cond.472

for.end.492:                                      ; preds = %for.cond.472
  br label %if.end.513

if.else.493:                                      ; preds = %if.then.461
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call495 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %303, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %305 = load i32, i32* %site, align 4
  %call496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %304, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %305)
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call498 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %307, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %309 = load i32, i32* %cell, align 4
  %call499 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %308, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 %309)
  br label %for.cond.500

for.cond.500:                                     ; preds = %for.inc.510, %if.else.493
  %310 = load i32, i32* %i, align 4
  %cmp501 = icmp sge i32 %310, 0
  br i1 %cmp501, label %for.body.503, label %for.end.512

for.body.503:                                     ; preds = %for.cond.500
  %311 = load i32, i32* %i, align 4
  %idxprom504 = sext i32 %311 to i64
  %arrayidx505 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx506 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx505, i32 0, i64 0
  %312 = load i32, i32* %arrayidx506, align 4
  %idxprom507 = sext i32 %312 to i64
  %arrayidx508 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom507
  %arrayidx509 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx508, i32 0, i64 %idxprom504
  store i32 0, i32* %arrayidx509, align 4
  br label %for.inc.510

for.inc.510:                                      ; preds = %for.body.503
  %313 = load i32, i32* %i, align 4
  %dec511 = add nsw i32 %313, -1
  store i32 %dec511, i32* %i, align 4
  br label %for.cond.500

for.end.512:                                      ; preds = %for.cond.500
  br label %if.end.513

if.end.513:                                       ; preds = %for.end.512, %for.end.492
  %arrayidx514 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx515 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx514, i32 0, i64 0
  %314 = load i32, i32* %arrayidx515, align 4
  %dec516 = add nsw i32 %314, -1
  store i32 %dec516, i32* %arrayidx515, align 4
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.513, %if.then.455
  br label %for.end.534

if.end.518:                                       ; preds = %lor.lhs.false.449
  %315 = load i32, i32* %pin1, align 4
  %arrayidx519 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx520 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx519, i32 0, i64 0
  %316 = load i32, i32* %arrayidx520, align 4
  %idxprom521 = sext i32 %316 to i64
  %arrayidx522 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom521
  %arrayidx523 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx522, i32 0, i64 0
  %317 = load i32, i32* %arrayidx523, align 4
  %inc524 = add nsw i32 %317, 1
  store i32 %inc524, i32* %arrayidx523, align 4
  %add525 = add nsw i32 %inc524, 1
  %idxprom526 = sext i32 %add525 to i64
  %arrayidx527 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx528 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx527, i32 0, i64 0
  %318 = load i32, i32* %arrayidx528, align 4
  %idxprom529 = sext i32 %318 to i64
  %arrayidx530 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom529
  %arrayidx531 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx530, i32 0, i64 %idxprom526
  store i32 %315, i32* %arrayidx531, align 4
  br label %for.inc.532

for.inc.532:                                      ; preds = %if.end.518
  %319 = load i32, i32* %pin1, align 4
  %inc533 = add nsw i32 %319, 1
  store i32 %inc533, i32* %pin1, align 4
  br label %for.cond.439

for.end.534:                                      ; preds = %if.end.517, %for.cond.439
  %320 = load i32, i32* %pin1, align 4
  %dec535 = add nsw i32 %320, -1
  store i32 %dec535, i32* %pin1, align 4
  br label %if.end.542

if.else.536:                                      ; preds = %if.else.420
  %321 = load i32, i32* %pin1, align 4
  %arrayidx537 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 0
  %322 = load i32, i32* %arrayidx537, align 4
  %inc538 = add nsw i32 %322, 1
  store i32 %inc538, i32* %arrayidx537, align 4
  %mul539 = mul nsw i32 2, %inc538
  %idxprom540 = sext i32 %mul539 to i64
  %arrayidx541 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom540
  store i32 %321, i32* %arrayidx541, align 4
  br label %if.end.542

if.end.542:                                       ; preds = %if.else.536, %for.end.534
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %if.end.419
  br label %if.end.544

if.end.544:                                       ; preds = %if.end.543, %for.body.255
  br label %for.inc.545

for.inc.545:                                      ; preds = %if.end.544
  %323 = load i32, i32* %pin1, align 4
  %inc546 = add nsw i32 %323, 1
  store i32 %inc546, i32* %pin1, align 4
  br label %for.cond.251

for.end.547:                                      ; preds = %for.cond.251
  %arrayidx548 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  %324 = load i32, i32* %arrayidx548, align 4
  store i32 %324, i32* %totalPin, align 4
  %325 = load i32, i32* %totalPin, align 4
  %326 = load i32, i32* @nPinLocs, align 4
  %cmp549 = icmp sgt i32 %325, %326
  br i1 %cmp549, label %if.then.551, label %if.end.555

if.then.551:                                      ; preds = %for.end.547
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %328 = load i32, i32* %site, align 4
  %call552 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %327, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i32 %328)
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %331 = load i32, i32* %cell, align 4
  %call554 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %331)
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.551, %for.end.547
  %arrayidx556 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  %332 = load i32, i32* %arrayidx556, align 4
  %cmp557 = icmp sgt i32 %332, 0
  br i1 %cmp557, label %land.lhs.true, label %if.end.616

land.lhs.true:                                    ; preds = %if.end.555
  %333 = load i32, i32* %totalPin, align 4
  %334 = load i32, i32* @nPinLocs, align 4
  %cmp559 = icmp sle i32 %333, %334
  br i1 %cmp559, label %if.then.561, label %if.end.616

if.then.561:                                      ; preds = %land.lhs.true
  %arrayidx562 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 1
  %335 = load i32, i32* %arrayidx562, align 4
  %cmp563 = icmp eq i32 %335, 1
  br i1 %cmp563, label %if.then.565, label %if.else.589

if.then.565:                                      ; preds = %if.then.561
  %arrayidx566 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 2
  %336 = load i32, i32* %arrayidx566, align 4
  %337 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx567 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %337, i64 1
  %pin568 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx567, i32 0, i32 0
  store i32 %336, i32* %pin568, align 4
  %338 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx569 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %338, i64 1
  %placed570 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx569, i32 0, i32 1
  store i32 1, i32* %placed570, align 4
  store i32 1, i32* %loc, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.571

for.cond.571:                                     ; preds = %for.inc.586, %if.then.565
  %339 = load i32, i32* %i, align 4
  %arrayidx572 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  %340 = load i32, i32* %arrayidx572, align 4
  %cmp573 = icmp sle i32 %339, %340
  br i1 %cmp573, label %for.body.575, label %for.end.588

for.body.575:                                     ; preds = %for.cond.571
  %341 = load i32, i32* %i, align 4
  %add576 = add nsw i32 %341, 1
  %idxprom577 = sext i32 %add576 to i64
  %arrayidx578 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 %idxprom577
  %342 = load i32, i32* %arrayidx578, align 4
  %343 = load i32, i32* %loc, align 4
  %inc579 = add nsw i32 %343, 1
  store i32 %inc579, i32* %loc, align 4
  %idxprom580 = sext i32 %inc579 to i64
  %344 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx581 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %344, i64 %idxprom580
  %pin582 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx581, i32 0, i32 0
  store i32 %342, i32* %pin582, align 4
  %345 = load i32, i32* %loc, align 4
  %idxprom583 = sext i32 %345 to i64
  %346 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx584 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %346, i64 %idxprom583
  %placed585 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx584, i32 0, i32 1
  store i32 1, i32* %placed585, align 4
  br label %for.inc.586

for.inc.586:                                      ; preds = %for.body.575
  %347 = load i32, i32* %i, align 4
  %inc587 = add nsw i32 %347, 1
  store i32 %inc587, i32* %i, align 4
  br label %for.cond.571

for.end.588:                                      ; preds = %for.cond.571
  br label %if.end.615

if.else.589:                                      ; preds = %if.then.561
  %arrayidx590 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 2
  %348 = load i32, i32* %arrayidx590, align 4
  %349 = load i32, i32* @nPinLocs, align 4
  %idxprom591 = sext i32 %349 to i64
  %350 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx592 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %350, i64 %idxprom591
  %pin593 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx592, i32 0, i32 0
  store i32 %348, i32* %pin593, align 4
  %351 = load i32, i32* @nPinLocs, align 4
  %idxprom594 = sext i32 %351 to i64
  %352 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx595 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %352, i64 %idxprom594
  %placed596 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx595, i32 0, i32 1
  store i32 1, i32* %placed596, align 4
  %353 = load i32, i32* @nPinLocs, align 4
  store i32 %353, i32* %loc, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.597

for.cond.597:                                     ; preds = %for.inc.612, %if.else.589
  %354 = load i32, i32* %i, align 4
  %arrayidx598 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 0
  %355 = load i32, i32* %arrayidx598, align 4
  %cmp599 = icmp sle i32 %354, %355
  br i1 %cmp599, label %for.body.601, label %for.end.614

for.body.601:                                     ; preds = %for.cond.597
  %356 = load i32, i32* %i, align 4
  %add602 = add nsw i32 %356, 1
  %idxprom603 = sext i32 %add602 to i64
  %arrayidx604 = getelementptr inbounds [101 x i32], [101 x i32]* %endSeqs, i32 0, i64 %idxprom603
  %357 = load i32, i32* %arrayidx604, align 4
  %358 = load i32, i32* %loc, align 4
  %dec605 = add nsw i32 %358, -1
  store i32 %dec605, i32* %loc, align 4
  %idxprom606 = sext i32 %dec605 to i64
  %359 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx607 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %359, i64 %idxprom606
  %pin608 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx607, i32 0, i32 0
  store i32 %357, i32* %pin608, align 4
  %360 = load i32, i32* %loc, align 4
  %idxprom609 = sext i32 %360 to i64
  %361 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx610 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %361, i64 %idxprom609
  %placed611 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx610, i32 0, i32 1
  store i32 1, i32* %placed611, align 4
  br label %for.inc.612

for.inc.612:                                      ; preds = %for.body.601
  %362 = load i32, i32* %i, align 4
  %inc613 = add nsw i32 %362, 1
  store i32 %inc613, i32* %i, align 4
  br label %for.cond.597

for.end.614:                                      ; preds = %for.cond.597
  br label %if.end.615

if.end.615:                                       ; preds = %for.end.614, %for.end.588
  br label %if.end.616

if.end.616:                                       ; preds = %if.end.615, %land.lhs.true, %if.end.555
  %arrayidx617 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %363 = load i32, i32* %arrayidx617, align 4
  %cmp618 = icmp sgt i32 %363, 0
  br i1 %cmp618, label %land.lhs.true.620, label %if.else.779

land.lhs.true.620:                                ; preds = %if.end.616
  %364 = load i32, i32* %totalPin, align 4
  %arrayidx621 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %365 = load i32, i32* %arrayidx621, align 4
  %add622 = add nsw i32 %364, %365
  %366 = load i32, i32* @nPinLocs, align 4
  %cmp623 = icmp sle i32 %add622, %366
  br i1 %cmp623, label %if.then.625, label %if.else.779

if.then.625:                                      ; preds = %land.lhs.true.620
  %arrayidx626 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %367 = load i32, i32* %arrayidx626, align 4
  %368 = load i32, i32* %totalPin, align 4
  %add627 = add nsw i32 %368, %367
  store i32 %add627, i32* %totalPin, align 4
  %arrayidx628 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %369 = load i32, i32* %arrayidx628, align 4
  %add629 = add nsw i32 %369, 1
  %idxprom630 = sext i32 %add629 to i64
  %arrayidx631 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 %idxprom630
  %370 = load i32, i32* %arrayidx631, align 4
  store i32 %370, i32* %lastPin, align 4
  %371 = load i32, i32* %lastPin, align 4
  %add632 = add nsw i32 %371, 1
  %idxprom633 = sext i32 %add632 to i64
  %372 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx634 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %372, i64 %idxprom633
  %site635 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx634, i32 0, i32 1
  %373 = load i32, i32* %site635, align 4
  %idxprom636 = sext i32 %373 to i64
  %374 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx637 = getelementptr inbounds %struct.locbox, %struct.locbox* %374, i64 %idxprom636
  %xpos638 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx637, i32 0, i32 0
  %375 = load i32, i32* %xpos638, align 4
  store i32 %375, i32* %xnext, align 4
  %376 = load i32, i32* %lastPin, align 4
  %add639 = add nsw i32 %376, 1
  %idxprom640 = sext i32 %add639 to i64
  %377 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx641 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %377, i64 %idxprom640
  %site642 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx641, i32 0, i32 1
  %378 = load i32, i32* %site642, align 4
  %idxprom643 = sext i32 %378 to i64
  %379 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx644 = getelementptr inbounds %struct.locbox, %struct.locbox* %379, i64 %idxprom643
  %ypos645 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx644, i32 0, i32 1
  %380 = load i32, i32* %ypos645, align 4
  store i32 %380, i32* %ynext, align 4
  %381 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx646 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %381, i64 1
  %finalx647 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx646, i32 0, i32 2
  %382 = load i32, i32* %finalx647, align 4
  %383 = load i32, i32* %xnext, align 4
  %sub648 = sub nsw i32 %382, %383
  %cmp649 = icmp sge i32 %sub648, 0
  br i1 %cmp649, label %cond.true.651, label %cond.false.655

cond.true.651:                                    ; preds = %if.then.625
  %384 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx652 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %384, i64 1
  %finalx653 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx652, i32 0, i32 2
  %385 = load i32, i32* %finalx653, align 4
  %386 = load i32, i32* %xnext, align 4
  %sub654 = sub nsw i32 %385, %386
  br label %cond.end.660

cond.false.655:                                   ; preds = %if.then.625
  %387 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx656 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %387, i64 1
  %finalx657 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx656, i32 0, i32 2
  %388 = load i32, i32* %finalx657, align 4
  %389 = load i32, i32* %xnext, align 4
  %sub658 = sub nsw i32 %388, %389
  %sub659 = sub nsw i32 0, %sub658
  br label %cond.end.660

cond.end.660:                                     ; preds = %cond.false.655, %cond.true.651
  %cond661 = phi i32 [ %sub654, %cond.true.651 ], [ %sub659, %cond.false.655 ]
  %390 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx662 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %390, i64 1
  %finaly663 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx662, i32 0, i32 3
  %391 = load i32, i32* %finaly663, align 4
  %392 = load i32, i32* %ynext, align 4
  %sub664 = sub nsw i32 %391, %392
  %cmp665 = icmp sge i32 %sub664, 0
  br i1 %cmp665, label %cond.true.667, label %cond.false.671

cond.true.667:                                    ; preds = %cond.end.660
  %393 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx668 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %393, i64 1
  %finaly669 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx668, i32 0, i32 3
  %394 = load i32, i32* %finaly669, align 4
  %395 = load i32, i32* %ynext, align 4
  %sub670 = sub nsw i32 %394, %395
  br label %cond.end.676

cond.false.671:                                   ; preds = %cond.end.660
  %396 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx672 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %396, i64 1
  %finaly673 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx672, i32 0, i32 3
  %397 = load i32, i32* %finaly673, align 4
  %398 = load i32, i32* %ynext, align 4
  %sub674 = sub nsw i32 %397, %398
  %sub675 = sub nsw i32 0, %sub674
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.false.671, %cond.true.667
  %cond677 = phi i32 [ %sub670, %cond.true.667 ], [ %sub675, %cond.false.671 ]
  %add678 = add nsw i32 %cond661, %cond677
  %399 = load i32, i32* @nPinLocs, align 4
  %idxprom679 = sext i32 %399 to i64
  %400 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx680 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %400, i64 %idxprom679
  %finalx681 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx680, i32 0, i32 2
  %401 = load i32, i32* %finalx681, align 4
  %402 = load i32, i32* %xnext, align 4
  %sub682 = sub nsw i32 %401, %402
  %cmp683 = icmp sge i32 %sub682, 0
  br i1 %cmp683, label %cond.true.685, label %cond.false.690

cond.true.685:                                    ; preds = %cond.end.676
  %403 = load i32, i32* @nPinLocs, align 4
  %idxprom686 = sext i32 %403 to i64
  %404 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx687 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %404, i64 %idxprom686
  %finalx688 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx687, i32 0, i32 2
  %405 = load i32, i32* %finalx688, align 4
  %406 = load i32, i32* %xnext, align 4
  %sub689 = sub nsw i32 %405, %406
  br label %cond.end.696

cond.false.690:                                   ; preds = %cond.end.676
  %407 = load i32, i32* @nPinLocs, align 4
  %idxprom691 = sext i32 %407 to i64
  %408 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx692 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %408, i64 %idxprom691
  %finalx693 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx692, i32 0, i32 2
  %409 = load i32, i32* %finalx693, align 4
  %410 = load i32, i32* %xnext, align 4
  %sub694 = sub nsw i32 %409, %410
  %sub695 = sub nsw i32 0, %sub694
  br label %cond.end.696

cond.end.696:                                     ; preds = %cond.false.690, %cond.true.685
  %cond697 = phi i32 [ %sub689, %cond.true.685 ], [ %sub695, %cond.false.690 ]
  %411 = load i32, i32* @nPinLocs, align 4
  %idxprom698 = sext i32 %411 to i64
  %412 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx699 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %412, i64 %idxprom698
  %finaly700 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx699, i32 0, i32 3
  %413 = load i32, i32* %finaly700, align 4
  %414 = load i32, i32* %ynext, align 4
  %sub701 = sub nsw i32 %413, %414
  %cmp702 = icmp sge i32 %sub701, 0
  br i1 %cmp702, label %cond.true.704, label %cond.false.709

cond.true.704:                                    ; preds = %cond.end.696
  %415 = load i32, i32* @nPinLocs, align 4
  %idxprom705 = sext i32 %415 to i64
  %416 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx706 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %416, i64 %idxprom705
  %finaly707 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx706, i32 0, i32 3
  %417 = load i32, i32* %finaly707, align 4
  %418 = load i32, i32* %ynext, align 4
  %sub708 = sub nsw i32 %417, %418
  br label %cond.end.715

cond.false.709:                                   ; preds = %cond.end.696
  %419 = load i32, i32* @nPinLocs, align 4
  %idxprom710 = sext i32 %419 to i64
  %420 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx711 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %420, i64 %idxprom710
  %finaly712 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx711, i32 0, i32 3
  %421 = load i32, i32* %finaly712, align 4
  %422 = load i32, i32* %ynext, align 4
  %sub713 = sub nsw i32 %421, %422
  %sub714 = sub nsw i32 0, %sub713
  br label %cond.end.715

cond.end.715:                                     ; preds = %cond.false.709, %cond.true.704
  %cond716 = phi i32 [ %sub708, %cond.true.704 ], [ %sub714, %cond.false.709 ]
  %add717 = add nsw i32 %cond697, %cond716
  %cmp718 = icmp slt i32 %add678, %add717
  br i1 %cmp718, label %if.then.720, label %if.else.748

if.then.720:                                      ; preds = %cond.end.715
  %arrayidx721 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %423 = load i32, i32* %arrayidx721, align 4
  %add722 = add nsw i32 %423, 1
  %idxprom723 = sext i32 %add722 to i64
  %arrayidx724 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 %idxprom723
  %424 = load i32, i32* %arrayidx724, align 4
  %425 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx725 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %425, i64 1
  %pin726 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx725, i32 0, i32 0
  store i32 %424, i32* %pin726, align 4
  %426 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx727 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %426, i64 1
  %placed728 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx727, i32 0, i32 1
  store i32 1, i32* %placed728, align 4
  store i32 1, i32* %loc, align 4
  %arrayidx729 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %427 = load i32, i32* %arrayidx729, align 4
  %sub730 = sub nsw i32 %427, 1
  store i32 %sub730, i32* %i, align 4
  br label %for.cond.731

for.cond.731:                                     ; preds = %for.inc.745, %if.then.720
  %428 = load i32, i32* %i, align 4
  %cmp732 = icmp sge i32 %428, 1
  br i1 %cmp732, label %for.body.734, label %for.end.747

for.body.734:                                     ; preds = %for.cond.731
  %429 = load i32, i32* %i, align 4
  %add735 = add nsw i32 %429, 1
  %idxprom736 = sext i32 %add735 to i64
  %arrayidx737 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 %idxprom736
  %430 = load i32, i32* %arrayidx737, align 4
  %431 = load i32, i32* %loc, align 4
  %inc738 = add nsw i32 %431, 1
  store i32 %inc738, i32* %loc, align 4
  %idxprom739 = sext i32 %inc738 to i64
  %432 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx740 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %432, i64 %idxprom739
  %pin741 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx740, i32 0, i32 0
  store i32 %430, i32* %pin741, align 4
  %433 = load i32, i32* %loc, align 4
  %idxprom742 = sext i32 %433 to i64
  %434 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx743 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %434, i64 %idxprom742
  %placed744 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx743, i32 0, i32 1
  store i32 1, i32* %placed744, align 4
  br label %for.inc.745

for.inc.745:                                      ; preds = %for.body.734
  %435 = load i32, i32* %i, align 4
  %dec746 = add nsw i32 %435, -1
  store i32 %dec746, i32* %i, align 4
  br label %for.cond.731

for.end.747:                                      ; preds = %for.cond.731
  br label %if.end.778

if.else.748:                                      ; preds = %cond.end.715
  %arrayidx749 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %436 = load i32, i32* %arrayidx749, align 4
  %add750 = add nsw i32 %436, 1
  %idxprom751 = sext i32 %add750 to i64
  %arrayidx752 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 %idxprom751
  %437 = load i32, i32* %arrayidx752, align 4
  %438 = load i32, i32* @nPinLocs, align 4
  %idxprom753 = sext i32 %438 to i64
  %439 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx754 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %439, i64 %idxprom753
  %pin755 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx754, i32 0, i32 0
  store i32 %437, i32* %pin755, align 4
  %440 = load i32, i32* @nPinLocs, align 4
  %idxprom756 = sext i32 %440 to i64
  %441 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx757 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %441, i64 %idxprom756
  %placed758 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx757, i32 0, i32 1
  store i32 1, i32* %placed758, align 4
  %442 = load i32, i32* @nPinLocs, align 4
  store i32 %442, i32* %loc, align 4
  %arrayidx759 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %443 = load i32, i32* %arrayidx759, align 4
  %sub760 = sub nsw i32 %443, 1
  store i32 %sub760, i32* %i, align 4
  br label %for.cond.761

for.cond.761:                                     ; preds = %for.inc.775, %if.else.748
  %444 = load i32, i32* %i, align 4
  %cmp762 = icmp sge i32 %444, 1
  br i1 %cmp762, label %for.body.764, label %for.end.777

for.body.764:                                     ; preds = %for.cond.761
  %445 = load i32, i32* %i, align 4
  %add765 = add nsw i32 %445, 1
  %idxprom766 = sext i32 %add765 to i64
  %arrayidx767 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 %idxprom766
  %446 = load i32, i32* %arrayidx767, align 4
  %447 = load i32, i32* %loc, align 4
  %dec768 = add nsw i32 %447, -1
  store i32 %dec768, i32* %loc, align 4
  %idxprom769 = sext i32 %dec768 to i64
  %448 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx770 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %448, i64 %idxprom769
  %pin771 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx770, i32 0, i32 0
  store i32 %446, i32* %pin771, align 4
  %449 = load i32, i32* %loc, align 4
  %idxprom772 = sext i32 %449 to i64
  %450 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx773 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %450, i64 %idxprom772
  %placed774 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx773, i32 0, i32 1
  store i32 1, i32* %placed774, align 4
  br label %for.inc.775

for.inc.775:                                      ; preds = %for.body.764
  %451 = load i32, i32* %i, align 4
  %dec776 = add nsw i32 %451, -1
  store i32 %dec776, i32* %i, align 4
  br label %for.cond.761

for.end.777:                                      ; preds = %for.cond.761
  br label %if.end.778

if.end.778:                                       ; preds = %for.end.777, %for.end.747
  br label %if.end.789

if.else.779:                                      ; preds = %land.lhs.true.620, %if.end.616
  %452 = load i32, i32* %totalPin, align 4
  %arrayidx780 = getelementptr inbounds [101 x i32], [101 x i32]* %begSeqs, i32 0, i64 0
  %453 = load i32, i32* %arrayidx780, align 4
  %add781 = add nsw i32 %452, %453
  %454 = load i32, i32* @nPinLocs, align 4
  %cmp782 = icmp sgt i32 %add781, %454
  br i1 %cmp782, label %if.then.784, label %if.end.788

if.then.784:                                      ; preds = %if.else.779
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %456 = load i32, i32* %site, align 4
  %call785 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i32 %456)
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call786 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %457, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %459 = load i32, i32* %cell, align 4
  %call787 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %458, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %459)
  br label %if.end.788

if.end.788:                                       ; preds = %if.then.784, %if.else.779
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %if.end.778
  store i32 1, i32* %i, align 4
  br label %for.cond.790

for.cond.790:                                     ; preds = %for.inc.896, %if.end.789
  %460 = load i32, i32* %i, align 4
  %arrayidx791 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx792 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx791, i32 0, i64 0
  %461 = load i32, i32* %arrayidx792, align 4
  %cmp793 = icmp sle i32 %460, %461
  br i1 %cmp793, label %for.body.795, label %for.end.898

for.body.795:                                     ; preds = %for.cond.790
  %462 = load i32, i32* %totalPin, align 4
  %463 = load i32, i32* %i, align 4
  %idxprom796 = sext i32 %463 to i64
  %arrayidx797 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom796
  %arrayidx798 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx797, i32 0, i64 0
  %464 = load i32, i32* %arrayidx798, align 4
  %add799 = add nsw i32 %462, %464
  %465 = load i32, i32* @nPinLocs, align 4
  %cmp800 = icmp sgt i32 %add799, %465
  br i1 %cmp800, label %if.then.802, label %if.else.806

if.then.802:                                      ; preds = %for.body.795
  %466 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call803 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %466, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0))
  %467 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %468 = load i32, i32* %site, align 4
  %call804 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %467, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 %468)
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %470 = load i32, i32* %cell, align 4
  %call805 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %469, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %470)
  br label %for.inc.896

if.else.806:                                      ; preds = %for.body.795
  %471 = load i32, i32* %i, align 4
  %idxprom807 = sext i32 %471 to i64
  %arrayidx808 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom807
  %arrayidx809 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx808, i32 0, i64 0
  %472 = load i32, i32* %arrayidx809, align 4
  %473 = load i32, i32* %totalPin, align 4
  %add810 = add nsw i32 %473, %472
  store i32 %add810, i32* %totalPin, align 4
  br label %if.end.811

if.end.811:                                       ; preds = %if.else.806
  store i32 0, i32* %sum, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.812

for.cond.812:                                     ; preds = %for.inc.853, %if.end.811
  %474 = load i32, i32* %j, align 4
  %475 = load i32, i32* %i, align 4
  %idxprom813 = sext i32 %475 to i64
  %arrayidx814 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom813
  %arrayidx815 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx814, i32 0, i64 0
  %476 = load i32, i32* %arrayidx815, align 4
  %cmp816 = icmp sle i32 %474, %476
  br i1 %cmp816, label %for.body.818, label %for.end.855

for.body.818:                                     ; preds = %for.cond.812
  %477 = load i32, i32* %j, align 4
  %cmp819 = icmp eq i32 %477, 1
  br i1 %cmp819, label %if.then.821, label %if.else.829

if.then.821:                                      ; preds = %for.body.818
  %478 = load i32, i32* %j, align 4
  %add822 = add nsw i32 %478, 1
  %idxprom823 = sext i32 %add822 to i64
  %479 = load i32, i32* %i, align 4
  %idxprom824 = sext i32 %479 to i64
  %arrayidx825 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom824
  %arrayidx826 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx825, i32 0, i64 %idxprom823
  %480 = load i32, i32* %arrayidx826, align 4
  %call827 = call i32 @findLoc(i32 %480)
  store i32 %call827, i32* %firstLoc, align 4
  %481 = load i32, i32* %firstLoc, align 4
  %482 = load i32, i32* %sum, align 4
  %add828 = add nsw i32 %482, %481
  store i32 %add828, i32* %sum, align 4
  br label %if.end.852

if.else.829:                                      ; preds = %for.body.818
  %483 = load i32, i32* %j, align 4
  %484 = load i32, i32* %i, align 4
  %idxprom830 = sext i32 %484 to i64
  %arrayidx831 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom830
  %arrayidx832 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx831, i32 0, i64 0
  %485 = load i32, i32* %arrayidx832, align 4
  %cmp833 = icmp eq i32 %483, %485
  br i1 %cmp833, label %if.then.835, label %if.else.843

if.then.835:                                      ; preds = %if.else.829
  %486 = load i32, i32* %j, align 4
  %add836 = add nsw i32 %486, 1
  %idxprom837 = sext i32 %add836 to i64
  %487 = load i32, i32* %i, align 4
  %idxprom838 = sext i32 %487 to i64
  %arrayidx839 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom838
  %arrayidx840 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx839, i32 0, i64 %idxprom837
  %488 = load i32, i32* %arrayidx840, align 4
  %call841 = call i32 @findLoc(i32 %488)
  store i32 %call841, i32* %lastLoc, align 4
  %489 = load i32, i32* %lastLoc, align 4
  %490 = load i32, i32* %sum, align 4
  %add842 = add nsw i32 %490, %489
  store i32 %add842, i32* %sum, align 4
  br label %if.end.851

if.else.843:                                      ; preds = %if.else.829
  %491 = load i32, i32* %j, align 4
  %add844 = add nsw i32 %491, 1
  %idxprom845 = sext i32 %add844 to i64
  %492 = load i32, i32* %i, align 4
  %idxprom846 = sext i32 %492 to i64
  %arrayidx847 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom846
  %arrayidx848 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx847, i32 0, i64 %idxprom845
  %493 = load i32, i32* %arrayidx848, align 4
  %call849 = call i32 @findLoc(i32 %493)
  %494 = load i32, i32* %sum, align 4
  %add850 = add nsw i32 %494, %call849
  store i32 %add850, i32* %sum, align 4
  br label %if.end.851

if.end.851:                                       ; preds = %if.else.843, %if.then.835
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %if.then.821
  br label %for.inc.853

for.inc.853:                                      ; preds = %if.end.852
  %495 = load i32, i32* %j, align 4
  %inc854 = add nsw i32 %495, 1
  store i32 %inc854, i32* %j, align 4
  br label %for.cond.812

for.end.855:                                      ; preds = %for.cond.812
  %496 = load i32, i32* %sum, align 4
  %497 = load i32, i32* %i, align 4
  %idxprom856 = sext i32 %497 to i64
  %arrayidx857 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom856
  %arrayidx858 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx857, i32 0, i64 0
  %498 = load i32, i32* %arrayidx858, align 4
  %div859 = sdiv i32 %496, %498
  %499 = load i32, i32* %i, align 4
  %idxprom860 = sext i32 %499 to i64
  %arrayidx861 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom860
  %arrayidx862 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx861, i32 0, i64 0
  %500 = load i32, i32* %arrayidx862, align 4
  %div863 = sdiv i32 %500, 2
  %sub864 = sub nsw i32 %div859, %div863
  store i32 %sub864, i32* %val, align 4
  %501 = load i32, i32* %val, align 4
  %cmp865 = icmp slt i32 %501, 1
  br i1 %cmp865, label %if.then.867, label %if.else.868

if.then.867:                                      ; preds = %for.end.855
  store i32 1, i32* %val, align 4
  br label %if.end.883

if.else.868:                                      ; preds = %for.end.855
  %502 = load i32, i32* %val, align 4
  %503 = load i32, i32* @nPinLocs, align 4
  %504 = load i32, i32* %i, align 4
  %idxprom869 = sext i32 %504 to i64
  %arrayidx870 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom869
  %arrayidx871 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx870, i32 0, i64 0
  %505 = load i32, i32* %arrayidx871, align 4
  %sub872 = sub nsw i32 %503, %505
  %add873 = add nsw i32 %sub872, 1
  %cmp874 = icmp sgt i32 %502, %add873
  br i1 %cmp874, label %if.then.876, label %if.end.882

if.then.876:                                      ; preds = %if.else.868
  %506 = load i32, i32* @nPinLocs, align 4
  %507 = load i32, i32* %i, align 4
  %idxprom877 = sext i32 %507 to i64
  %arrayidx878 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom877
  %arrayidx879 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx878, i32 0, i64 0
  %508 = load i32, i32* %arrayidx879, align 4
  %sub880 = sub nsw i32 %506, %508
  %add881 = add nsw i32 %sub880, 1
  store i32 %add881, i32* %val, align 4
  br label %if.end.882

if.end.882:                                       ; preds = %if.then.876, %if.else.868
  br label %if.end.883

if.end.883:                                       ; preds = %if.end.882, %if.then.867
  %509 = load i32, i32* %firstLoc, align 4
  %510 = load i32, i32* %lastLoc, align 4
  %cmp884 = icmp sgt i32 %509, %510
  br i1 %cmp884, label %if.then.886, label %if.else.891

if.then.886:                                      ; preds = %if.end.883
  %511 = load i32, i32* %val, align 4
  %sub887 = sub nsw i32 0, %511
  %512 = load i32, i32* %i, align 4
  %idxprom888 = sext i32 %512 to i64
  %arrayidx889 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom888
  %arrayidx890 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx889, i32 0, i64 1
  store i32 %sub887, i32* %arrayidx890, align 4
  br label %if.end.895

if.else.891:                                      ; preds = %if.end.883
  %513 = load i32, i32* %val, align 4
  %514 = load i32, i32* %i, align 4
  %idxprom892 = sext i32 %514 to i64
  %arrayidx893 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom892
  %arrayidx894 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx893, i32 0, i64 1
  store i32 %513, i32* %arrayidx894, align 4
  br label %if.end.895

if.end.895:                                       ; preds = %if.else.891, %if.then.886
  br label %for.inc.896

for.inc.896:                                      ; preds = %if.end.895, %if.then.802
  %515 = load i32, i32* %i, align 4
  %inc897 = add nsw i32 %515, 1
  store i32 %inc897, i32* %i, align 4
  br label %for.cond.790

for.end.898:                                      ; preds = %for.cond.790
  %516 = load i32, i32* %totalPin, align 4
  %arrayidx899 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 0
  %517 = load i32, i32* %arrayidx899, align 4
  %add900 = add nsw i32 %516, %517
  %518 = load i32, i32* @nPinLocs, align 4
  %cmp901 = icmp sgt i32 %add900, %518
  br i1 %cmp901, label %if.then.903, label %if.else.913

if.then.903:                                      ; preds = %for.end.898
  %519 = load i32, i32* @nPinLocs, align 4
  %520 = load i32, i32* %totalPin, align 4
  %sub904 = sub nsw i32 %519, %520
  store i32 %sub904, i32* %isoNum, align 4
  %521 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call905 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %521, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0))
  %522 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %523 = load i32, i32* %site, align 4
  %call906 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %522, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %523)
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call907 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %524, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0))
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %526 = load i32, i32* %totalPin, align 4
  %arrayidx908 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 0
  %527 = load i32, i32* %arrayidx908, align 4
  %add909 = add nsw i32 %526, %527
  %528 = load i32, i32* @nPinLocs, align 4
  %sub910 = sub nsw i32 %add909, %528
  %call911 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %525, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 %sub910)
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %530 = load i32, i32* %cell, align 4
  %call912 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %529, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %530)
  br label %if.end.915

if.else.913:                                      ; preds = %for.end.898
  %arrayidx914 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 0
  %531 = load i32, i32* %arrayidx914, align 4
  store i32 %531, i32* %isoNum, align 4
  br label %if.end.915

if.end.915:                                       ; preds = %if.else.913, %if.then.903
  store i32 1, i32* %i, align 4
  br label %for.cond.916

for.cond.916:                                     ; preds = %for.inc.928, %if.end.915
  %532 = load i32, i32* %i, align 4
  %533 = load i32, i32* %isoNum, align 4
  %cmp917 = icmp sle i32 %532, %533
  br i1 %cmp917, label %for.body.919, label %for.end.930

for.body.919:                                     ; preds = %for.cond.916
  %534 = load i32, i32* %i, align 4
  %mul920 = mul nsw i32 2, %534
  %idxprom921 = sext i32 %mul920 to i64
  %arrayidx922 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom921
  %535 = load i32, i32* %arrayidx922, align 4
  %call923 = call i32 @findLoc(i32 %535)
  %536 = load i32, i32* %i, align 4
  %mul924 = mul nsw i32 2, %536
  %sub925 = sub nsw i32 %mul924, 1
  %idxprom926 = sext i32 %sub925 to i64
  %arrayidx927 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom926
  store i32 %call923, i32* %arrayidx927, align 4
  br label %for.inc.928

for.inc.928:                                      ; preds = %for.body.919
  %537 = load i32, i32* %i, align 4
  %inc929 = add nsw i32 %537, 1
  store i32 %inc929, i32* %i, align 4
  br label %for.cond.916

for.end.930:                                      ; preds = %for.cond.916
  store i32 0, i32* %loFill, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.931

for.cond.931:                                     ; preds = %for.inc.943, %for.end.930
  %538 = load i32, i32* %i, align 4
  %539 = load i32, i32* @nPinLocs, align 4
  %cmp932 = icmp sle i32 %538, %539
  br i1 %cmp932, label %for.body.934, label %for.end.945

for.body.934:                                     ; preds = %for.cond.931
  %540 = load i32, i32* %i, align 4
  %idxprom935 = sext i32 %540 to i64
  %541 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx936 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %541, i64 %idxprom935
  %placed937 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx936, i32 0, i32 1
  %542 = load i32, i32* %placed937, align 4
  %cmp938 = icmp eq i32 %542, 1
  br i1 %cmp938, label %if.then.940, label %if.else.941

if.then.940:                                      ; preds = %for.body.934
  %543 = load i32, i32* %i, align 4
  store i32 %543, i32* %loFill, align 4
  br label %if.end.942

if.else.941:                                      ; preds = %for.body.934
  br label %for.end.945

if.end.942:                                       ; preds = %if.then.940
  br label %for.inc.943

for.inc.943:                                      ; preds = %if.end.942
  %544 = load i32, i32* %i, align 4
  %inc944 = add nsw i32 %544, 1
  store i32 %inc944, i32* %i, align 4
  br label %for.cond.931

for.end.945:                                      ; preds = %if.else.941, %for.cond.931
  %545 = load i32, i32* @nPinLocs, align 4
  %add946 = add nsw i32 %545, 1
  store i32 %add946, i32* %hiFill, align 4
  %546 = load i32, i32* @nPinLocs, align 4
  store i32 %546, i32* %i, align 4
  br label %for.cond.947

for.cond.947:                                     ; preds = %for.inc.959, %for.end.945
  %547 = load i32, i32* %i, align 4
  %cmp948 = icmp sge i32 %547, 1
  br i1 %cmp948, label %for.body.950, label %for.end.961

for.body.950:                                     ; preds = %for.cond.947
  %548 = load i32, i32* %i, align 4
  %idxprom951 = sext i32 %548 to i64
  %549 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx952 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %549, i64 %idxprom951
  %placed953 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx952, i32 0, i32 1
  %550 = load i32, i32* %placed953, align 4
  %cmp954 = icmp eq i32 %550, 1
  br i1 %cmp954, label %if.then.956, label %if.else.957

if.then.956:                                      ; preds = %for.body.950
  %551 = load i32, i32* %i, align 4
  store i32 %551, i32* %hiFill, align 4
  br label %if.end.958

if.else.957:                                      ; preds = %for.body.950
  br label %for.end.961

if.end.958:                                       ; preds = %if.then.956
  br label %for.inc.959

for.inc.959:                                      ; preds = %if.end.958
  %552 = load i32, i32* %i, align 4
  %dec960 = add nsw i32 %552, -1
  store i32 %dec960, i32* %i, align 4
  br label %for.cond.947

for.end.961:                                      ; preds = %if.else.957, %for.cond.947
  store i32 1, i32* %hit, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.1154, %for.end.961
  %553 = load i32, i32* %hit, align 4
  %cmp962 = icmp eq i32 %553, 1
  br i1 %cmp962, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %hit, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.964

for.cond.964:                                     ; preds = %for.inc.1152, %while.body
  %554 = load i32, i32* %i, align 4
  %arrayidx965 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx966 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx965, i32 0, i64 0
  %555 = load i32, i32* %arrayidx966, align 4
  %cmp967 = icmp sle i32 %554, %555
  br i1 %cmp967, label %for.body.969, label %for.end.1154

for.body.969:                                     ; preds = %for.cond.964
  %556 = load i32, i32* %i, align 4
  %idxprom970 = sext i32 %556 to i64
  %arrayidx971 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom970
  %arrayidx972 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx971, i32 0, i64 1
  %557 = load i32, i32* %arrayidx972, align 4
  %cmp973 = icmp eq i32 %557, 0
  br i1 %cmp973, label %if.then.975, label %if.end.976

if.then.975:                                      ; preds = %for.body.969
  br label %for.inc.1152

if.end.976:                                       ; preds = %for.body.969
  %558 = load i32, i32* %i, align 4
  %idxprom977 = sext i32 %558 to i64
  %arrayidx978 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom977
  %arrayidx979 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx978, i32 0, i64 1
  %559 = load i32, i32* %arrayidx979, align 4
  %cmp980 = icmp sge i32 %559, 0
  br i1 %cmp980, label %cond.true.982, label %cond.false.986

cond.true.982:                                    ; preds = %if.end.976
  %560 = load i32, i32* %i, align 4
  %idxprom983 = sext i32 %560 to i64
  %arrayidx984 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom983
  %arrayidx985 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx984, i32 0, i64 1
  %561 = load i32, i32* %arrayidx985, align 4
  br label %cond.end.991

cond.false.986:                                   ; preds = %if.end.976
  %562 = load i32, i32* %i, align 4
  %idxprom987 = sext i32 %562 to i64
  %arrayidx988 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom987
  %arrayidx989 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx988, i32 0, i64 1
  %563 = load i32, i32* %arrayidx989, align 4
  %sub990 = sub nsw i32 0, %563
  br label %cond.end.991

cond.end.991:                                     ; preds = %cond.false.986, %cond.true.982
  %cond992 = phi i32 [ %561, %cond.true.982 ], [ %sub990, %cond.false.986 ]
  %564 = load i32, i32* %loFill, align 4
  %add993 = add nsw i32 %564, 1
  %cmp994 = icmp sle i32 %cond992, %add993
  br i1 %cmp994, label %if.then.996, label %if.else.1062

if.then.996:                                      ; preds = %cond.end.991
  %565 = load i32, i32* %i, align 4
  %idxprom997 = sext i32 %565 to i64
  %arrayidx998 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom997
  %arrayidx999 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx998, i32 0, i64 1
  %566 = load i32, i32* %arrayidx999, align 4
  %cmp1000 = icmp sgt i32 %566, 0
  br i1 %cmp1000, label %if.then.1002, label %if.else.1026

if.then.1002:                                     ; preds = %if.then.996
  store i32 1, i32* %j, align 4
  br label %for.cond.1003

for.cond.1003:                                    ; preds = %for.inc.1023, %if.then.1002
  %567 = load i32, i32* %j, align 4
  %568 = load i32, i32* %i, align 4
  %idxprom1004 = sext i32 %568 to i64
  %arrayidx1005 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1004
  %arrayidx1006 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1005, i32 0, i64 0
  %569 = load i32, i32* %arrayidx1006, align 4
  %cmp1007 = icmp sle i32 %567, %569
  br i1 %cmp1007, label %for.body.1009, label %for.end.1025

for.body.1009:                                    ; preds = %for.cond.1003
  %570 = load i32, i32* %j, align 4
  %add1010 = add nsw i32 %570, 1
  %idxprom1011 = sext i32 %add1010 to i64
  %571 = load i32, i32* %i, align 4
  %idxprom1012 = sext i32 %571 to i64
  %arrayidx1013 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1012
  %arrayidx1014 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1013, i32 0, i64 %idxprom1011
  %572 = load i32, i32* %arrayidx1014, align 4
  %573 = load i32, i32* %loFill, align 4
  %574 = load i32, i32* %j, align 4
  %add1015 = add nsw i32 %573, %574
  %idxprom1016 = sext i32 %add1015 to i64
  %575 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1017 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %575, i64 %idxprom1016
  %pin1018 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1017, i32 0, i32 0
  store i32 %572, i32* %pin1018, align 4
  %576 = load i32, i32* %loFill, align 4
  %577 = load i32, i32* %j, align 4
  %add1019 = add nsw i32 %576, %577
  %idxprom1020 = sext i32 %add1019 to i64
  %578 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1021 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %578, i64 %idxprom1020
  %placed1022 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1021, i32 0, i32 1
  store i32 1, i32* %placed1022, align 4
  br label %for.inc.1023

for.inc.1023:                                     ; preds = %for.body.1009
  %579 = load i32, i32* %j, align 4
  %inc1024 = add nsw i32 %579, 1
  store i32 %inc1024, i32* %j, align 4
  br label %for.cond.1003

for.end.1025:                                     ; preds = %for.cond.1003
  br label %if.end.1054

if.else.1026:                                     ; preds = %if.then.996
  store i32 1, i32* %j, align 4
  %580 = load i32, i32* %i, align 4
  %idxprom1027 = sext i32 %580 to i64
  %arrayidx1028 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1027
  %arrayidx1029 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1028, i32 0, i64 0
  %581 = load i32, i32* %arrayidx1029, align 4
  store i32 %581, i32* %k, align 4
  br label %for.cond.1030

for.cond.1030:                                    ; preds = %for.inc.1050, %if.else.1026
  %582 = load i32, i32* %j, align 4
  %583 = load i32, i32* %i, align 4
  %idxprom1031 = sext i32 %583 to i64
  %arrayidx1032 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1031
  %arrayidx1033 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1032, i32 0, i64 0
  %584 = load i32, i32* %arrayidx1033, align 4
  %cmp1034 = icmp sle i32 %582, %584
  br i1 %cmp1034, label %for.body.1036, label %for.end.1053

for.body.1036:                                    ; preds = %for.cond.1030
  %585 = load i32, i32* %k, align 4
  %add1037 = add nsw i32 %585, 1
  %idxprom1038 = sext i32 %add1037 to i64
  %586 = load i32, i32* %i, align 4
  %idxprom1039 = sext i32 %586 to i64
  %arrayidx1040 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1039
  %arrayidx1041 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1040, i32 0, i64 %idxprom1038
  %587 = load i32, i32* %arrayidx1041, align 4
  %588 = load i32, i32* %loFill, align 4
  %589 = load i32, i32* %j, align 4
  %add1042 = add nsw i32 %588, %589
  %idxprom1043 = sext i32 %add1042 to i64
  %590 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1044 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %590, i64 %idxprom1043
  %pin1045 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1044, i32 0, i32 0
  store i32 %587, i32* %pin1045, align 4
  %591 = load i32, i32* %loFill, align 4
  %592 = load i32, i32* %j, align 4
  %add1046 = add nsw i32 %591, %592
  %idxprom1047 = sext i32 %add1046 to i64
  %593 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1048 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %593, i64 %idxprom1047
  %placed1049 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1048, i32 0, i32 1
  store i32 1, i32* %placed1049, align 4
  br label %for.inc.1050

for.inc.1050:                                     ; preds = %for.body.1036
  %594 = load i32, i32* %j, align 4
  %inc1051 = add nsw i32 %594, 1
  store i32 %inc1051, i32* %j, align 4
  %595 = load i32, i32* %k, align 4
  %dec1052 = add nsw i32 %595, -1
  store i32 %dec1052, i32* %k, align 4
  br label %for.cond.1030

for.end.1053:                                     ; preds = %for.cond.1030
  br label %if.end.1054

if.end.1054:                                      ; preds = %for.end.1053, %for.end.1025
  %596 = load i32, i32* %i, align 4
  %idxprom1055 = sext i32 %596 to i64
  %arrayidx1056 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1055
  %arrayidx1057 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1056, i32 0, i64 0
  %597 = load i32, i32* %arrayidx1057, align 4
  %598 = load i32, i32* %loFill, align 4
  %add1058 = add nsw i32 %598, %597
  store i32 %add1058, i32* %loFill, align 4
  %599 = load i32, i32* %i, align 4
  %idxprom1059 = sext i32 %599 to i64
  %arrayidx1060 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1059
  %arrayidx1061 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1060, i32 0, i64 1
  store i32 0, i32* %arrayidx1061, align 4
  store i32 1, i32* %hit, align 4
  br label %if.end.1151

if.else.1062:                                     ; preds = %cond.end.991
  %600 = load i32, i32* %i, align 4
  %idxprom1063 = sext i32 %600 to i64
  %arrayidx1064 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1063
  %arrayidx1065 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1064, i32 0, i64 1
  %601 = load i32, i32* %arrayidx1065, align 4
  %cmp1066 = icmp sge i32 %601, 0
  br i1 %cmp1066, label %cond.true.1068, label %cond.false.1072

cond.true.1068:                                   ; preds = %if.else.1062
  %602 = load i32, i32* %i, align 4
  %idxprom1069 = sext i32 %602 to i64
  %arrayidx1070 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1069
  %arrayidx1071 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1070, i32 0, i64 1
  %603 = load i32, i32* %arrayidx1071, align 4
  br label %cond.end.1077

cond.false.1072:                                  ; preds = %if.else.1062
  %604 = load i32, i32* %i, align 4
  %idxprom1073 = sext i32 %604 to i64
  %arrayidx1074 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1073
  %arrayidx1075 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1074, i32 0, i64 1
  %605 = load i32, i32* %arrayidx1075, align 4
  %sub1076 = sub nsw i32 0, %605
  br label %cond.end.1077

cond.end.1077:                                    ; preds = %cond.false.1072, %cond.true.1068
  %cond1078 = phi i32 [ %603, %cond.true.1068 ], [ %sub1076, %cond.false.1072 ]
  %606 = load i32, i32* %i, align 4
  %idxprom1079 = sext i32 %606 to i64
  %arrayidx1080 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1079
  %arrayidx1081 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1080, i32 0, i64 0
  %607 = load i32, i32* %arrayidx1081, align 4
  %add1082 = add nsw i32 %cond1078, %607
  %608 = load i32, i32* %hiFill, align 4
  %cmp1083 = icmp sge i32 %add1082, %608
  br i1 %cmp1083, label %if.then.1085, label %if.end.1150

if.then.1085:                                     ; preds = %cond.end.1077
  %609 = load i32, i32* %i, align 4
  %idxprom1086 = sext i32 %609 to i64
  %arrayidx1087 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1086
  %arrayidx1088 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1087, i32 0, i64 1
  %610 = load i32, i32* %arrayidx1088, align 4
  %cmp1089 = icmp sgt i32 %610, 0
  br i1 %cmp1089, label %if.then.1091, label %if.else.1115

if.then.1091:                                     ; preds = %if.then.1085
  %611 = load i32, i32* %hiFill, align 4
  %612 = load i32, i32* %i, align 4
  %idxprom1092 = sext i32 %612 to i64
  %arrayidx1093 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1092
  %arrayidx1094 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1093, i32 0, i64 0
  %613 = load i32, i32* %arrayidx1094, align 4
  %sub1095 = sub nsw i32 %611, %613
  store i32 %sub1095, i32* %j, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.1096

for.cond.1096:                                    ; preds = %for.inc.1111, %if.then.1091
  %614 = load i32, i32* %j, align 4
  %615 = load i32, i32* %hiFill, align 4
  %cmp1097 = icmp slt i32 %614, %615
  br i1 %cmp1097, label %for.body.1099, label %for.end.1114

for.body.1099:                                    ; preds = %for.cond.1096
  %616 = load i32, i32* %k, align 4
  %add1100 = add nsw i32 %616, 1
  %idxprom1101 = sext i32 %add1100 to i64
  %617 = load i32, i32* %i, align 4
  %idxprom1102 = sext i32 %617 to i64
  %arrayidx1103 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1102
  %arrayidx1104 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1103, i32 0, i64 %idxprom1101
  %618 = load i32, i32* %arrayidx1104, align 4
  %619 = load i32, i32* %j, align 4
  %idxprom1105 = sext i32 %619 to i64
  %620 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1106 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %620, i64 %idxprom1105
  %pin1107 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1106, i32 0, i32 0
  store i32 %618, i32* %pin1107, align 4
  %621 = load i32, i32* %j, align 4
  %idxprom1108 = sext i32 %621 to i64
  %622 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1109 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %622, i64 %idxprom1108
  %placed1110 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1109, i32 0, i32 1
  store i32 1, i32* %placed1110, align 4
  br label %for.inc.1111

for.inc.1111:                                     ; preds = %for.body.1099
  %623 = load i32, i32* %j, align 4
  %inc1112 = add nsw i32 %623, 1
  store i32 %inc1112, i32* %j, align 4
  %624 = load i32, i32* %k, align 4
  %inc1113 = add nsw i32 %624, 1
  store i32 %inc1113, i32* %k, align 4
  br label %for.cond.1096

for.end.1114:                                     ; preds = %for.cond.1096
  br label %if.end.1142

if.else.1115:                                     ; preds = %if.then.1085
  %625 = load i32, i32* %hiFill, align 4
  %626 = load i32, i32* %i, align 4
  %idxprom1116 = sext i32 %626 to i64
  %arrayidx1117 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1116
  %arrayidx1118 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1117, i32 0, i64 0
  %627 = load i32, i32* %arrayidx1118, align 4
  %sub1119 = sub nsw i32 %625, %627
  store i32 %sub1119, i32* %j, align 4
  %628 = load i32, i32* %i, align 4
  %idxprom1120 = sext i32 %628 to i64
  %arrayidx1121 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1120
  %arrayidx1122 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1121, i32 0, i64 0
  %629 = load i32, i32* %arrayidx1122, align 4
  store i32 %629, i32* %k, align 4
  br label %for.cond.1123

for.cond.1123:                                    ; preds = %for.inc.1138, %if.else.1115
  %630 = load i32, i32* %j, align 4
  %631 = load i32, i32* %hiFill, align 4
  %cmp1124 = icmp slt i32 %630, %631
  br i1 %cmp1124, label %for.body.1126, label %for.end.1141

for.body.1126:                                    ; preds = %for.cond.1123
  %632 = load i32, i32* %k, align 4
  %add1127 = add nsw i32 %632, 1
  %idxprom1128 = sext i32 %add1127 to i64
  %633 = load i32, i32* %i, align 4
  %idxprom1129 = sext i32 %633 to i64
  %arrayidx1130 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1129
  %arrayidx1131 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1130, i32 0, i64 %idxprom1128
  %634 = load i32, i32* %arrayidx1131, align 4
  %635 = load i32, i32* %j, align 4
  %idxprom1132 = sext i32 %635 to i64
  %636 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1133 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %636, i64 %idxprom1132
  %pin1134 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1133, i32 0, i32 0
  store i32 %634, i32* %pin1134, align 4
  %637 = load i32, i32* %j, align 4
  %idxprom1135 = sext i32 %637 to i64
  %638 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1136 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %638, i64 %idxprom1135
  %placed1137 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1136, i32 0, i32 1
  store i32 1, i32* %placed1137, align 4
  br label %for.inc.1138

for.inc.1138:                                     ; preds = %for.body.1126
  %639 = load i32, i32* %j, align 4
  %inc1139 = add nsw i32 %639, 1
  store i32 %inc1139, i32* %j, align 4
  %640 = load i32, i32* %k, align 4
  %dec1140 = add nsw i32 %640, -1
  store i32 %dec1140, i32* %k, align 4
  br label %for.cond.1123

for.end.1141:                                     ; preds = %for.cond.1123
  br label %if.end.1142

if.end.1142:                                      ; preds = %for.end.1141, %for.end.1114
  %641 = load i32, i32* %i, align 4
  %idxprom1143 = sext i32 %641 to i64
  %arrayidx1144 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1143
  %arrayidx1145 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1144, i32 0, i64 0
  %642 = load i32, i32* %arrayidx1145, align 4
  %643 = load i32, i32* %hiFill, align 4
  %sub1146 = sub nsw i32 %643, %642
  store i32 %sub1146, i32* %hiFill, align 4
  %644 = load i32, i32* %i, align 4
  %idxprom1147 = sext i32 %644 to i64
  %arrayidx1148 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1147
  %arrayidx1149 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1148, i32 0, i64 1
  store i32 0, i32* %arrayidx1149, align 4
  store i32 1, i32* %hit, align 4
  br label %if.end.1150

if.end.1150:                                      ; preds = %if.end.1142, %cond.end.1077
  br label %if.end.1151

if.end.1151:                                      ; preds = %if.end.1150, %if.end.1054
  br label %for.inc.1152

for.inc.1152:                                     ; preds = %if.end.1151, %if.then.975
  %645 = load i32, i32* %i, align 4
  %inc1153 = add nsw i32 %645, 1
  store i32 %inc1153, i32* %i, align 4
  br label %for.cond.964

for.end.1154:                                     ; preds = %for.cond.964
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %totLeft, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.1155

for.cond.1155:                                    ; preds = %for.inc.1172, %while.end
  %646 = load i32, i32* %i, align 4
  %arrayidx1156 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx1157 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1156, i32 0, i64 0
  %647 = load i32, i32* %arrayidx1157, align 4
  %cmp1158 = icmp sle i32 %646, %647
  br i1 %cmp1158, label %for.body.1160, label %for.end.1174

for.body.1160:                                    ; preds = %for.cond.1155
  %648 = load i32, i32* %i, align 4
  %idxprom1161 = sext i32 %648 to i64
  %arrayidx1162 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1161
  %arrayidx1163 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1162, i32 0, i64 1
  %649 = load i32, i32* %arrayidx1163, align 4
  %cmp1164 = icmp eq i32 %649, 0
  br i1 %cmp1164, label %if.then.1166, label %if.end.1167

if.then.1166:                                     ; preds = %for.body.1160
  br label %for.inc.1172

if.end.1167:                                      ; preds = %for.body.1160
  %650 = load i32, i32* %i, align 4
  %idxprom1168 = sext i32 %650 to i64
  %arrayidx1169 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1168
  %arrayidx1170 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1169, i32 0, i64 0
  %651 = load i32, i32* %arrayidx1170, align 4
  %652 = load i32, i32* %totLeft, align 4
  %add1171 = add nsw i32 %652, %651
  store i32 %add1171, i32* %totLeft, align 4
  br label %for.inc.1172

for.inc.1172:                                     ; preds = %if.end.1167, %if.then.1166
  %653 = load i32, i32* %i, align 4
  %inc1173 = add nsw i32 %653, 1
  store i32 %inc1173, i32* %i, align 4
  br label %for.cond.1155

for.end.1174:                                     ; preds = %for.cond.1155
  br label %while.cond.1175

while.cond.1175:                                  ; preds = %if.end.1532, %for.end.1174
  %654 = load i32, i32* %totLeft, align 4
  %cmp1176 = icmp sgt i32 %654, 0
  br i1 %cmp1176, label %while.body.1178, label %while.end.1533

while.body.1178:                                  ; preds = %while.cond.1175
  store i32 0, i32* %first, align 4
  store i32 0, i32* %second, align 4
  %655 = load i32, i32* @nPinLocs, align 4
  %add1179 = add nsw i32 %655, 1
  store i32 %add1179, i32* %firstLoc, align 4
  %656 = load i32, i32* @nPinLocs, align 4
  %add1180 = add nsw i32 %656, 1
  store i32 %add1180, i32* %secLoc, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.1181

for.cond.1181:                                    ; preds = %for.inc.1271, %while.body.1178
  %657 = load i32, i32* %i, align 4
  %arrayidx1182 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 0
  %arrayidx1183 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1182, i32 0, i64 0
  %658 = load i32, i32* %arrayidx1183, align 4
  %cmp1184 = icmp sle i32 %657, %658
  br i1 %cmp1184, label %for.body.1186, label %for.end.1273

for.body.1186:                                    ; preds = %for.cond.1181
  %659 = load i32, i32* %i, align 4
  %idxprom1187 = sext i32 %659 to i64
  %arrayidx1188 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1187
  %arrayidx1189 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1188, i32 0, i64 1
  %660 = load i32, i32* %arrayidx1189, align 4
  %cmp1190 = icmp eq i32 %660, 0
  br i1 %cmp1190, label %if.then.1192, label %if.end.1193

if.then.1192:                                     ; preds = %for.body.1186
  br label %for.inc.1271

if.end.1193:                                      ; preds = %for.body.1186
  %661 = load i32, i32* %i, align 4
  %idxprom1194 = sext i32 %661 to i64
  %arrayidx1195 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1194
  %arrayidx1196 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1195, i32 0, i64 1
  %662 = load i32, i32* %arrayidx1196, align 4
  %cmp1197 = icmp sge i32 %662, 0
  br i1 %cmp1197, label %cond.true.1199, label %cond.false.1203

cond.true.1199:                                   ; preds = %if.end.1193
  %663 = load i32, i32* %i, align 4
  %idxprom1200 = sext i32 %663 to i64
  %arrayidx1201 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1200
  %arrayidx1202 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1201, i32 0, i64 1
  %664 = load i32, i32* %arrayidx1202, align 4
  br label %cond.end.1208

cond.false.1203:                                  ; preds = %if.end.1193
  %665 = load i32, i32* %i, align 4
  %idxprom1204 = sext i32 %665 to i64
  %arrayidx1205 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1204
  %arrayidx1206 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1205, i32 0, i64 1
  %666 = load i32, i32* %arrayidx1206, align 4
  %sub1207 = sub nsw i32 0, %666
  br label %cond.end.1208

cond.end.1208:                                    ; preds = %cond.false.1203, %cond.true.1199
  %cond1209 = phi i32 [ %664, %cond.true.1199 ], [ %sub1207, %cond.false.1203 ]
  %667 = load i32, i32* %firstLoc, align 4
  %cmp1210 = icmp slt i32 %cond1209, %667
  br i1 %cmp1210, label %if.then.1212, label %if.else.1233

if.then.1212:                                     ; preds = %cond.end.1208
  %668 = load i32, i32* %first, align 4
  %cmp1213 = icmp ne i32 %668, 0
  br i1 %cmp1213, label %if.then.1215, label %if.end.1216

if.then.1215:                                     ; preds = %if.then.1212
  %669 = load i32, i32* %first, align 4
  store i32 %669, i32* %second, align 4
  %670 = load i32, i32* %firstLoc, align 4
  store i32 %670, i32* %secLoc, align 4
  br label %if.end.1216

if.end.1216:                                      ; preds = %if.then.1215, %if.then.1212
  %671 = load i32, i32* %i, align 4
  %idxprom1217 = sext i32 %671 to i64
  %arrayidx1218 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1217
  %arrayidx1219 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1218, i32 0, i64 1
  %672 = load i32, i32* %arrayidx1219, align 4
  %cmp1220 = icmp sge i32 %672, 0
  br i1 %cmp1220, label %cond.true.1222, label %cond.false.1226

cond.true.1222:                                   ; preds = %if.end.1216
  %673 = load i32, i32* %i, align 4
  %idxprom1223 = sext i32 %673 to i64
  %arrayidx1224 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1223
  %arrayidx1225 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1224, i32 0, i64 1
  %674 = load i32, i32* %arrayidx1225, align 4
  br label %cond.end.1231

cond.false.1226:                                  ; preds = %if.end.1216
  %675 = load i32, i32* %i, align 4
  %idxprom1227 = sext i32 %675 to i64
  %arrayidx1228 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1227
  %arrayidx1229 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1228, i32 0, i64 1
  %676 = load i32, i32* %arrayidx1229, align 4
  %sub1230 = sub nsw i32 0, %676
  br label %cond.end.1231

cond.end.1231:                                    ; preds = %cond.false.1226, %cond.true.1222
  %cond1232 = phi i32 [ %674, %cond.true.1222 ], [ %sub1230, %cond.false.1226 ]
  store i32 %cond1232, i32* %firstLoc, align 4
  %677 = load i32, i32* %i, align 4
  store i32 %677, i32* %first, align 4
  br label %if.end.1270

if.else.1233:                                     ; preds = %cond.end.1208
  %678 = load i32, i32* %i, align 4
  %idxprom1234 = sext i32 %678 to i64
  %arrayidx1235 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1234
  %arrayidx1236 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1235, i32 0, i64 1
  %679 = load i32, i32* %arrayidx1236, align 4
  %cmp1237 = icmp sge i32 %679, 0
  br i1 %cmp1237, label %cond.true.1239, label %cond.false.1243

cond.true.1239:                                   ; preds = %if.else.1233
  %680 = load i32, i32* %i, align 4
  %idxprom1240 = sext i32 %680 to i64
  %arrayidx1241 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1240
  %arrayidx1242 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1241, i32 0, i64 1
  %681 = load i32, i32* %arrayidx1242, align 4
  br label %cond.end.1248

cond.false.1243:                                  ; preds = %if.else.1233
  %682 = load i32, i32* %i, align 4
  %idxprom1244 = sext i32 %682 to i64
  %arrayidx1245 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1244
  %arrayidx1246 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1245, i32 0, i64 1
  %683 = load i32, i32* %arrayidx1246, align 4
  %sub1247 = sub nsw i32 0, %683
  br label %cond.end.1248

cond.end.1248:                                    ; preds = %cond.false.1243, %cond.true.1239
  %cond1249 = phi i32 [ %681, %cond.true.1239 ], [ %sub1247, %cond.false.1243 ]
  %684 = load i32, i32* %secLoc, align 4
  %cmp1250 = icmp slt i32 %cond1249, %684
  br i1 %cmp1250, label %if.then.1252, label %if.end.1269

if.then.1252:                                     ; preds = %cond.end.1248
  %685 = load i32, i32* %i, align 4
  %idxprom1253 = sext i32 %685 to i64
  %arrayidx1254 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1253
  %arrayidx1255 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1254, i32 0, i64 1
  %686 = load i32, i32* %arrayidx1255, align 4
  %cmp1256 = icmp sge i32 %686, 0
  br i1 %cmp1256, label %cond.true.1258, label %cond.false.1262

cond.true.1258:                                   ; preds = %if.then.1252
  %687 = load i32, i32* %i, align 4
  %idxprom1259 = sext i32 %687 to i64
  %arrayidx1260 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1259
  %arrayidx1261 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1260, i32 0, i64 1
  %688 = load i32, i32* %arrayidx1261, align 4
  br label %cond.end.1267

cond.false.1262:                                  ; preds = %if.then.1252
  %689 = load i32, i32* %i, align 4
  %idxprom1263 = sext i32 %689 to i64
  %arrayidx1264 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1263
  %arrayidx1265 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1264, i32 0, i64 1
  %690 = load i32, i32* %arrayidx1265, align 4
  %sub1266 = sub nsw i32 0, %690
  br label %cond.end.1267

cond.end.1267:                                    ; preds = %cond.false.1262, %cond.true.1258
  %cond1268 = phi i32 [ %688, %cond.true.1258 ], [ %sub1266, %cond.false.1262 ]
  store i32 %cond1268, i32* %secLoc, align 4
  %691 = load i32, i32* %i, align 4
  store i32 %691, i32* %second, align 4
  br label %if.end.1269

if.end.1269:                                      ; preds = %cond.end.1267, %cond.end.1248
  br label %if.end.1270

if.end.1270:                                      ; preds = %if.end.1269, %cond.end.1231
  br label %for.inc.1271

for.inc.1271:                                     ; preds = %if.end.1270, %if.then.1192
  %692 = load i32, i32* %i, align 4
  %inc1272 = add nsw i32 %692, 1
  store i32 %inc1272, i32* %i, align 4
  br label %for.cond.1181

for.end.1273:                                     ; preds = %for.cond.1181
  br label %while.cond.1274

while.cond.1274:                                  ; preds = %while.body.1278, %for.end.1273
  %693 = load i32, i32* %firstLoc, align 4
  %694 = load i32, i32* %totLeft, align 4
  %add1275 = add nsw i32 %693, %694
  %695 = load i32, i32* %hiFill, align 4
  %cmp1276 = icmp sgt i32 %add1275, %695
  br i1 %cmp1276, label %while.body.1278, label %while.end.1280

while.body.1278:                                  ; preds = %while.cond.1274
  %696 = load i32, i32* %firstLoc, align 4
  %dec1279 = add nsw i32 %696, -1
  store i32 %dec1279, i32* %firstLoc, align 4
  br label %while.cond.1274

while.end.1280:                                   ; preds = %while.cond.1274
  %697 = load i32, i32* %secLoc, align 4
  %698 = load i32, i32* %firstLoc, align 4
  %699 = load i32, i32* %first, align 4
  %idxprom1281 = sext i32 %699 to i64
  %arrayidx1282 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1281
  %arrayidx1283 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1282, i32 0, i64 0
  %700 = load i32, i32* %arrayidx1283, align 4
  %add1284 = add nsw i32 %698, %700
  %sub1285 = sub nsw i32 %add1284, 1
  %cmp1286 = icmp slt i32 %697, %sub1285
  br i1 %cmp1286, label %if.then.1288, label %if.else.1457

if.then.1288:                                     ; preds = %while.end.1280
  %701 = load i32, i32* %firstLoc, align 4
  %702 = load i32, i32* %first, align 4
  %idxprom1289 = sext i32 %702 to i64
  %arrayidx1290 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1289
  %arrayidx1291 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1290, i32 0, i64 0
  %703 = load i32, i32* %arrayidx1291, align 4
  %add1292 = add nsw i32 %701, %703
  %sub1293 = sub nsw i32 %add1292, 1
  %704 = load i32, i32* %secLoc, align 4
  %sub1294 = sub nsw i32 %sub1293, %704
  store i32 %sub1294, i32* %overlapping, align 4
  br label %while.cond.1295

while.cond.1295:                                  ; preds = %if.end.1312, %if.then.1288
  %705 = load i32, i32* %firstLoc, align 4
  %706 = load i32, i32* %first, align 4
  %idxprom1296 = sext i32 %706 to i64
  %arrayidx1297 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1296
  %arrayidx1298 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1297, i32 0, i64 0
  %707 = load i32, i32* %arrayidx1298, align 4
  %add1299 = add nsw i32 %705, %707
  %sub1300 = sub nsw i32 %add1299, 1
  %708 = load i32, i32* %secLoc, align 4
  %sub1301 = sub nsw i32 %sub1300, %708
  %709 = load i32, i32* %overlapping, align 4
  %div1302 = sdiv i32 %709, 2
  %cmp1303 = icmp sgt i32 %sub1301, %div1302
  br i1 %cmp1303, label %while.body.1305, label %while.end.1313

while.body.1305:                                  ; preds = %while.cond.1295
  %710 = load i32, i32* %firstLoc, align 4
  %sub1306 = sub nsw i32 %710, 1
  %711 = load i32, i32* %loFill, align 4
  %cmp1307 = icmp sgt i32 %sub1306, %711
  br i1 %cmp1307, label %if.then.1309, label %if.else.1311

if.then.1309:                                     ; preds = %while.body.1305
  %712 = load i32, i32* %firstLoc, align 4
  %dec1310 = add nsw i32 %712, -1
  store i32 %dec1310, i32* %firstLoc, align 4
  br label %if.end.1312

if.else.1311:                                     ; preds = %while.body.1305
  br label %while.end.1313

if.end.1312:                                      ; preds = %if.then.1309
  br label %while.cond.1295

while.end.1313:                                   ; preds = %if.else.1311, %while.cond.1295
  %713 = load i32, i32* %first, align 4
  %idxprom1314 = sext i32 %713 to i64
  %arrayidx1315 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1314
  %arrayidx1316 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1315, i32 0, i64 1
  %714 = load i32, i32* %arrayidx1316, align 4
  %cmp1317 = icmp sgt i32 %714, 0
  br i1 %cmp1317, label %if.then.1319, label %if.else.1345

if.then.1319:                                     ; preds = %while.end.1313
  store i32 1, i32* %j, align 4
  br label %for.cond.1320

for.cond.1320:                                    ; preds = %for.inc.1342, %if.then.1319
  %715 = load i32, i32* %j, align 4
  %716 = load i32, i32* %first, align 4
  %idxprom1321 = sext i32 %716 to i64
  %arrayidx1322 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1321
  %arrayidx1323 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1322, i32 0, i64 0
  %717 = load i32, i32* %arrayidx1323, align 4
  %cmp1324 = icmp sle i32 %715, %717
  br i1 %cmp1324, label %for.body.1326, label %for.end.1344

for.body.1326:                                    ; preds = %for.cond.1320
  %718 = load i32, i32* %j, align 4
  %add1327 = add nsw i32 %718, 1
  %idxprom1328 = sext i32 %add1327 to i64
  %719 = load i32, i32* %first, align 4
  %idxprom1329 = sext i32 %719 to i64
  %arrayidx1330 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1329
  %arrayidx1331 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1330, i32 0, i64 %idxprom1328
  %720 = load i32, i32* %arrayidx1331, align 4
  %721 = load i32, i32* %firstLoc, align 4
  %sub1332 = sub nsw i32 %721, 1
  %722 = load i32, i32* %j, align 4
  %add1333 = add nsw i32 %sub1332, %722
  %idxprom1334 = sext i32 %add1333 to i64
  %723 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1335 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %723, i64 %idxprom1334
  %pin1336 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1335, i32 0, i32 0
  store i32 %720, i32* %pin1336, align 4
  %724 = load i32, i32* %firstLoc, align 4
  %sub1337 = sub nsw i32 %724, 1
  %725 = load i32, i32* %j, align 4
  %add1338 = add nsw i32 %sub1337, %725
  %idxprom1339 = sext i32 %add1338 to i64
  %726 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1340 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %726, i64 %idxprom1339
  %placed1341 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1340, i32 0, i32 1
  store i32 1, i32* %placed1341, align 4
  br label %for.inc.1342

for.inc.1342:                                     ; preds = %for.body.1326
  %727 = load i32, i32* %j, align 4
  %inc1343 = add nsw i32 %727, 1
  store i32 %inc1343, i32* %j, align 4
  br label %for.cond.1320

for.end.1344:                                     ; preds = %for.cond.1320
  br label %if.end.1375

if.else.1345:                                     ; preds = %while.end.1313
  store i32 1, i32* %j, align 4
  %728 = load i32, i32* %first, align 4
  %idxprom1346 = sext i32 %728 to i64
  %arrayidx1347 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1346
  %arrayidx1348 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1347, i32 0, i64 0
  %729 = load i32, i32* %arrayidx1348, align 4
  store i32 %729, i32* %k, align 4
  br label %for.cond.1349

for.cond.1349:                                    ; preds = %for.inc.1371, %if.else.1345
  %730 = load i32, i32* %j, align 4
  %731 = load i32, i32* %first, align 4
  %idxprom1350 = sext i32 %731 to i64
  %arrayidx1351 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1350
  %arrayidx1352 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1351, i32 0, i64 0
  %732 = load i32, i32* %arrayidx1352, align 4
  %cmp1353 = icmp sle i32 %730, %732
  br i1 %cmp1353, label %for.body.1355, label %for.end.1374

for.body.1355:                                    ; preds = %for.cond.1349
  %733 = load i32, i32* %k, align 4
  %add1356 = add nsw i32 %733, 1
  %idxprom1357 = sext i32 %add1356 to i64
  %734 = load i32, i32* %first, align 4
  %idxprom1358 = sext i32 %734 to i64
  %arrayidx1359 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1358
  %arrayidx1360 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1359, i32 0, i64 %idxprom1357
  %735 = load i32, i32* %arrayidx1360, align 4
  %736 = load i32, i32* %firstLoc, align 4
  %sub1361 = sub nsw i32 %736, 1
  %737 = load i32, i32* %j, align 4
  %add1362 = add nsw i32 %sub1361, %737
  %idxprom1363 = sext i32 %add1362 to i64
  %738 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1364 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %738, i64 %idxprom1363
  %pin1365 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1364, i32 0, i32 0
  store i32 %735, i32* %pin1365, align 4
  %739 = load i32, i32* %firstLoc, align 4
  %sub1366 = sub nsw i32 %739, 1
  %740 = load i32, i32* %j, align 4
  %add1367 = add nsw i32 %sub1366, %740
  %idxprom1368 = sext i32 %add1367 to i64
  %741 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1369 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %741, i64 %idxprom1368
  %placed1370 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1369, i32 0, i32 1
  store i32 1, i32* %placed1370, align 4
  br label %for.inc.1371

for.inc.1371:                                     ; preds = %for.body.1355
  %742 = load i32, i32* %j, align 4
  %inc1372 = add nsw i32 %742, 1
  store i32 %inc1372, i32* %j, align 4
  %743 = load i32, i32* %k, align 4
  %dec1373 = add nsw i32 %743, -1
  store i32 %dec1373, i32* %k, align 4
  br label %for.cond.1349

for.end.1374:                                     ; preds = %for.cond.1349
  br label %if.end.1375

if.end.1375:                                      ; preds = %for.end.1374, %for.end.1344
  %744 = load i32, i32* %firstLoc, align 4
  %745 = load i32, i32* %first, align 4
  %idxprom1376 = sext i32 %745 to i64
  %arrayidx1377 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1376
  %arrayidx1378 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1377, i32 0, i64 0
  %746 = load i32, i32* %arrayidx1378, align 4
  %add1379 = add nsw i32 %744, %746
  %sub1380 = sub nsw i32 %add1379, 1
  store i32 %sub1380, i32* %loFill, align 4
  %747 = load i32, i32* %first, align 4
  %idxprom1381 = sext i32 %747 to i64
  %arrayidx1382 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1381
  %arrayidx1383 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1382, i32 0, i64 1
  store i32 0, i32* %arrayidx1383, align 4
  %748 = load i32, i32* %first, align 4
  %idxprom1384 = sext i32 %748 to i64
  %arrayidx1385 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1384
  %arrayidx1386 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1385, i32 0, i64 0
  %749 = load i32, i32* %arrayidx1386, align 4
  %750 = load i32, i32* %totLeft, align 4
  %sub1387 = sub nsw i32 %750, %749
  store i32 %sub1387, i32* %totLeft, align 4
  %751 = load i32, i32* %second, align 4
  %idxprom1388 = sext i32 %751 to i64
  %arrayidx1389 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1388
  %arrayidx1390 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1389, i32 0, i64 1
  %752 = load i32, i32* %arrayidx1390, align 4
  %cmp1391 = icmp sgt i32 %752, 0
  br i1 %cmp1391, label %if.then.1393, label %if.else.1417

if.then.1393:                                     ; preds = %if.end.1375
  store i32 1, i32* %j, align 4
  br label %for.cond.1394

for.cond.1394:                                    ; preds = %for.inc.1414, %if.then.1393
  %753 = load i32, i32* %j, align 4
  %754 = load i32, i32* %second, align 4
  %idxprom1395 = sext i32 %754 to i64
  %arrayidx1396 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1395
  %arrayidx1397 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1396, i32 0, i64 0
  %755 = load i32, i32* %arrayidx1397, align 4
  %cmp1398 = icmp sle i32 %753, %755
  br i1 %cmp1398, label %for.body.1400, label %for.end.1416

for.body.1400:                                    ; preds = %for.cond.1394
  %756 = load i32, i32* %j, align 4
  %add1401 = add nsw i32 %756, 1
  %idxprom1402 = sext i32 %add1401 to i64
  %757 = load i32, i32* %second, align 4
  %idxprom1403 = sext i32 %757 to i64
  %arrayidx1404 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1403
  %arrayidx1405 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1404, i32 0, i64 %idxprom1402
  %758 = load i32, i32* %arrayidx1405, align 4
  %759 = load i32, i32* %loFill, align 4
  %760 = load i32, i32* %j, align 4
  %add1406 = add nsw i32 %759, %760
  %idxprom1407 = sext i32 %add1406 to i64
  %761 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1408 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %761, i64 %idxprom1407
  %pin1409 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1408, i32 0, i32 0
  store i32 %758, i32* %pin1409, align 4
  %762 = load i32, i32* %loFill, align 4
  %763 = load i32, i32* %j, align 4
  %add1410 = add nsw i32 %762, %763
  %idxprom1411 = sext i32 %add1410 to i64
  %764 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1412 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %764, i64 %idxprom1411
  %placed1413 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1412, i32 0, i32 1
  store i32 1, i32* %placed1413, align 4
  br label %for.inc.1414

for.inc.1414:                                     ; preds = %for.body.1400
  %765 = load i32, i32* %j, align 4
  %inc1415 = add nsw i32 %765, 1
  store i32 %inc1415, i32* %j, align 4
  br label %for.cond.1394

for.end.1416:                                     ; preds = %for.cond.1394
  br label %if.end.1445

if.else.1417:                                     ; preds = %if.end.1375
  store i32 1, i32* %j, align 4
  %766 = load i32, i32* %second, align 4
  %idxprom1418 = sext i32 %766 to i64
  %arrayidx1419 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1418
  %arrayidx1420 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1419, i32 0, i64 0
  %767 = load i32, i32* %arrayidx1420, align 4
  store i32 %767, i32* %k, align 4
  br label %for.cond.1421

for.cond.1421:                                    ; preds = %for.inc.1441, %if.else.1417
  %768 = load i32, i32* %j, align 4
  %769 = load i32, i32* %second, align 4
  %idxprom1422 = sext i32 %769 to i64
  %arrayidx1423 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1422
  %arrayidx1424 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1423, i32 0, i64 0
  %770 = load i32, i32* %arrayidx1424, align 4
  %cmp1425 = icmp sle i32 %768, %770
  br i1 %cmp1425, label %for.body.1427, label %for.end.1444

for.body.1427:                                    ; preds = %for.cond.1421
  %771 = load i32, i32* %k, align 4
  %add1428 = add nsw i32 %771, 1
  %idxprom1429 = sext i32 %add1428 to i64
  %772 = load i32, i32* %second, align 4
  %idxprom1430 = sext i32 %772 to i64
  %arrayidx1431 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1430
  %arrayidx1432 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1431, i32 0, i64 %idxprom1429
  %773 = load i32, i32* %arrayidx1432, align 4
  %774 = load i32, i32* %loFill, align 4
  %775 = load i32, i32* %j, align 4
  %add1433 = add nsw i32 %774, %775
  %idxprom1434 = sext i32 %add1433 to i64
  %776 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1435 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %776, i64 %idxprom1434
  %pin1436 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1435, i32 0, i32 0
  store i32 %773, i32* %pin1436, align 4
  %777 = load i32, i32* %loFill, align 4
  %778 = load i32, i32* %j, align 4
  %add1437 = add nsw i32 %777, %778
  %idxprom1438 = sext i32 %add1437 to i64
  %779 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1439 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %779, i64 %idxprom1438
  %placed1440 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1439, i32 0, i32 1
  store i32 1, i32* %placed1440, align 4
  br label %for.inc.1441

for.inc.1441:                                     ; preds = %for.body.1427
  %780 = load i32, i32* %j, align 4
  %inc1442 = add nsw i32 %780, 1
  store i32 %inc1442, i32* %j, align 4
  %781 = load i32, i32* %k, align 4
  %dec1443 = add nsw i32 %781, -1
  store i32 %dec1443, i32* %k, align 4
  br label %for.cond.1421

for.end.1444:                                     ; preds = %for.cond.1421
  br label %if.end.1445

if.end.1445:                                      ; preds = %for.end.1444, %for.end.1416
  %782 = load i32, i32* %loFill, align 4
  %783 = load i32, i32* %second, align 4
  %idxprom1446 = sext i32 %783 to i64
  %arrayidx1447 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1446
  %arrayidx1448 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1447, i32 0, i64 0
  %784 = load i32, i32* %arrayidx1448, align 4
  %add1449 = add nsw i32 %782, %784
  store i32 %add1449, i32* %loFill, align 4
  %785 = load i32, i32* %second, align 4
  %idxprom1450 = sext i32 %785 to i64
  %arrayidx1451 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1450
  %arrayidx1452 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1451, i32 0, i64 1
  store i32 0, i32* %arrayidx1452, align 4
  %786 = load i32, i32* %second, align 4
  %idxprom1453 = sext i32 %786 to i64
  %arrayidx1454 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1453
  %arrayidx1455 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1454, i32 0, i64 0
  %787 = load i32, i32* %arrayidx1455, align 4
  %788 = load i32, i32* %totLeft, align 4
  %sub1456 = sub nsw i32 %788, %787
  store i32 %sub1456, i32* %totLeft, align 4
  br label %if.end.1532

if.else.1457:                                     ; preds = %while.end.1280
  %789 = load i32, i32* %first, align 4
  %idxprom1458 = sext i32 %789 to i64
  %arrayidx1459 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1458
  %arrayidx1460 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1459, i32 0, i64 1
  %790 = load i32, i32* %arrayidx1460, align 4
  %cmp1461 = icmp sgt i32 %790, 0
  br i1 %cmp1461, label %if.then.1463, label %if.else.1489

if.then.1463:                                     ; preds = %if.else.1457
  store i32 1, i32* %j, align 4
  br label %for.cond.1464

for.cond.1464:                                    ; preds = %for.inc.1486, %if.then.1463
  %791 = load i32, i32* %j, align 4
  %792 = load i32, i32* %first, align 4
  %idxprom1465 = sext i32 %792 to i64
  %arrayidx1466 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1465
  %arrayidx1467 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1466, i32 0, i64 0
  %793 = load i32, i32* %arrayidx1467, align 4
  %cmp1468 = icmp sle i32 %791, %793
  br i1 %cmp1468, label %for.body.1470, label %for.end.1488

for.body.1470:                                    ; preds = %for.cond.1464
  %794 = load i32, i32* %j, align 4
  %add1471 = add nsw i32 %794, 1
  %idxprom1472 = sext i32 %add1471 to i64
  %795 = load i32, i32* %first, align 4
  %idxprom1473 = sext i32 %795 to i64
  %arrayidx1474 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1473
  %arrayidx1475 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1474, i32 0, i64 %idxprom1472
  %796 = load i32, i32* %arrayidx1475, align 4
  %797 = load i32, i32* %firstLoc, align 4
  %sub1476 = sub nsw i32 %797, 1
  %798 = load i32, i32* %j, align 4
  %add1477 = add nsw i32 %sub1476, %798
  %idxprom1478 = sext i32 %add1477 to i64
  %799 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1479 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %799, i64 %idxprom1478
  %pin1480 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1479, i32 0, i32 0
  store i32 %796, i32* %pin1480, align 4
  %800 = load i32, i32* %firstLoc, align 4
  %sub1481 = sub nsw i32 %800, 1
  %801 = load i32, i32* %j, align 4
  %add1482 = add nsw i32 %sub1481, %801
  %idxprom1483 = sext i32 %add1482 to i64
  %802 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1484 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %802, i64 %idxprom1483
  %placed1485 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1484, i32 0, i32 1
  store i32 1, i32* %placed1485, align 4
  br label %for.inc.1486

for.inc.1486:                                     ; preds = %for.body.1470
  %803 = load i32, i32* %j, align 4
  %inc1487 = add nsw i32 %803, 1
  store i32 %inc1487, i32* %j, align 4
  br label %for.cond.1464

for.end.1488:                                     ; preds = %for.cond.1464
  br label %if.end.1519

if.else.1489:                                     ; preds = %if.else.1457
  store i32 1, i32* %j, align 4
  %804 = load i32, i32* %first, align 4
  %idxprom1490 = sext i32 %804 to i64
  %arrayidx1491 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1490
  %arrayidx1492 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1491, i32 0, i64 0
  %805 = load i32, i32* %arrayidx1492, align 4
  store i32 %805, i32* %k, align 4
  br label %for.cond.1493

for.cond.1493:                                    ; preds = %for.inc.1515, %if.else.1489
  %806 = load i32, i32* %j, align 4
  %807 = load i32, i32* %first, align 4
  %idxprom1494 = sext i32 %807 to i64
  %arrayidx1495 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1494
  %arrayidx1496 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1495, i32 0, i64 0
  %808 = load i32, i32* %arrayidx1496, align 4
  %cmp1497 = icmp sle i32 %806, %808
  br i1 %cmp1497, label %for.body.1499, label %for.end.1518

for.body.1499:                                    ; preds = %for.cond.1493
  %809 = load i32, i32* %k, align 4
  %add1500 = add nsw i32 %809, 1
  %idxprom1501 = sext i32 %add1500 to i64
  %810 = load i32, i32* %first, align 4
  %idxprom1502 = sext i32 %810 to i64
  %arrayidx1503 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1502
  %arrayidx1504 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1503, i32 0, i64 %idxprom1501
  %811 = load i32, i32* %arrayidx1504, align 4
  %812 = load i32, i32* %firstLoc, align 4
  %sub1505 = sub nsw i32 %812, 1
  %813 = load i32, i32* %j, align 4
  %add1506 = add nsw i32 %sub1505, %813
  %idxprom1507 = sext i32 %add1506 to i64
  %814 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1508 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %814, i64 %idxprom1507
  %pin1509 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1508, i32 0, i32 0
  store i32 %811, i32* %pin1509, align 4
  %815 = load i32, i32* %firstLoc, align 4
  %sub1510 = sub nsw i32 %815, 1
  %816 = load i32, i32* %j, align 4
  %add1511 = add nsw i32 %sub1510, %816
  %idxprom1512 = sext i32 %add1511 to i64
  %817 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1513 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %817, i64 %idxprom1512
  %placed1514 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1513, i32 0, i32 1
  store i32 1, i32* %placed1514, align 4
  br label %for.inc.1515

for.inc.1515:                                     ; preds = %for.body.1499
  %818 = load i32, i32* %j, align 4
  %inc1516 = add nsw i32 %818, 1
  store i32 %inc1516, i32* %j, align 4
  %819 = load i32, i32* %k, align 4
  %dec1517 = add nsw i32 %819, -1
  store i32 %dec1517, i32* %k, align 4
  br label %for.cond.1493

for.end.1518:                                     ; preds = %for.cond.1493
  br label %if.end.1519

if.end.1519:                                      ; preds = %for.end.1518, %for.end.1488
  %820 = load i32, i32* %firstLoc, align 4
  %821 = load i32, i32* %first, align 4
  %idxprom1520 = sext i32 %821 to i64
  %arrayidx1521 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1520
  %arrayidx1522 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1521, i32 0, i64 0
  %822 = load i32, i32* %arrayidx1522, align 4
  %add1523 = add nsw i32 %820, %822
  %sub1524 = sub nsw i32 %add1523, 1
  store i32 %sub1524, i32* %loFill, align 4
  %823 = load i32, i32* %first, align 4
  %idxprom1525 = sext i32 %823 to i64
  %arrayidx1526 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1525
  %arrayidx1527 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1526, i32 0, i64 1
  store i32 0, i32* %arrayidx1527, align 4
  %824 = load i32, i32* %first, align 4
  %idxprom1528 = sext i32 %824 to i64
  %arrayidx1529 = getelementptr inbounds [11 x [101 x i32]], [11 x [101 x i32]]* %conSeqs, i32 0, i64 %idxprom1528
  %arrayidx1530 = getelementptr inbounds [101 x i32], [101 x i32]* %arrayidx1529, i32 0, i64 0
  %825 = load i32, i32* %arrayidx1530, align 4
  %826 = load i32, i32* %totLeft, align 4
  %sub1531 = sub nsw i32 %826, %825
  store i32 %sub1531, i32* %totLeft, align 4
  br label %if.end.1532

if.end.1532:                                      ; preds = %if.end.1519, %if.end.1445
  br label %while.cond.1175

while.end.1533:                                   ; preds = %while.cond.1175
  store i32 1, i32* %i, align 4
  br label %for.cond.1534

for.cond.1534:                                    ; preds = %for.inc.1570, %while.end.1533
  %827 = load i32, i32* %i, align 4
  %828 = load i32, i32* %isoNum, align 4
  %cmp1535 = icmp sle i32 %827, %828
  br i1 %cmp1535, label %for.body.1537, label %for.end.1572

for.body.1537:                                    ; preds = %for.cond.1534
  %829 = load i32, i32* %i, align 4
  %mul1538 = mul nsw i32 2, %829
  %sub1539 = sub nsw i32 %mul1538, 1
  %idxprom1540 = sext i32 %sub1539 to i64
  %arrayidx1541 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1540
  %830 = load i32, i32* %arrayidx1541, align 4
  %idxprom1542 = sext i32 %830 to i64
  %831 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1543 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %831, i64 %idxprom1542
  %placed1544 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1543, i32 0, i32 1
  %832 = load i32, i32* %placed1544, align 4
  %cmp1545 = icmp eq i32 %832, 0
  br i1 %cmp1545, label %if.then.1547, label %if.end.1569

if.then.1547:                                     ; preds = %for.body.1537
  %833 = load i32, i32* %i, align 4
  %mul1548 = mul nsw i32 2, %833
  %sub1549 = sub nsw i32 %mul1548, 1
  %idxprom1550 = sext i32 %sub1549 to i64
  %arrayidx1551 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1550
  %834 = load i32, i32* %arrayidx1551, align 4
  %idxprom1552 = sext i32 %834 to i64
  %835 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1553 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %835, i64 %idxprom1552
  %placed1554 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1553, i32 0, i32 1
  store i32 1, i32* %placed1554, align 4
  %836 = load i32, i32* %i, align 4
  %mul1555 = mul nsw i32 2, %836
  %idxprom1556 = sext i32 %mul1555 to i64
  %arrayidx1557 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1556
  %837 = load i32, i32* %arrayidx1557, align 4
  %838 = load i32, i32* %i, align 4
  %mul1558 = mul nsw i32 2, %838
  %sub1559 = sub nsw i32 %mul1558, 1
  %idxprom1560 = sext i32 %sub1559 to i64
  %arrayidx1561 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1560
  %839 = load i32, i32* %arrayidx1561, align 4
  %idxprom1562 = sext i32 %839 to i64
  %840 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1563 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %840, i64 %idxprom1562
  %pin1564 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1563, i32 0, i32 0
  store i32 %837, i32* %pin1564, align 4
  %841 = load i32, i32* %i, align 4
  %mul1565 = mul nsw i32 2, %841
  %sub1566 = sub nsw i32 %mul1565, 1
  %idxprom1567 = sext i32 %sub1566 to i64
  %arrayidx1568 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1567
  store i32 0, i32* %arrayidx1568, align 4
  br label %if.end.1569

if.end.1569:                                      ; preds = %if.then.1547, %for.body.1537
  br label %for.inc.1570

for.inc.1570:                                     ; preds = %if.end.1569
  %842 = load i32, i32* %i, align 4
  %inc1571 = add nsw i32 %842, 1
  store i32 %inc1571, i32* %i, align 4
  br label %for.cond.1534

for.end.1572:                                     ; preds = %for.cond.1534
  store i32 1, i32* %i, align 4
  br label %for.cond.1573

for.cond.1573:                                    ; preds = %for.inc.1648, %for.end.1572
  %843 = load i32, i32* %i, align 4
  %844 = load i32, i32* %isoNum, align 4
  %cmp1574 = icmp sle i32 %843, %844
  br i1 %cmp1574, label %for.body.1576, label %for.end.1650

for.body.1576:                                    ; preds = %for.cond.1573
  %845 = load i32, i32* %i, align 4
  %mul1577 = mul nsw i32 2, %845
  %sub1578 = sub nsw i32 %mul1577, 1
  %idxprom1579 = sext i32 %sub1578 to i64
  %arrayidx1580 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1579
  %846 = load i32, i32* %arrayidx1580, align 4
  store i32 %846, i32* %prefer, align 4
  %847 = load i32, i32* %prefer, align 4
  %cmp1581 = icmp eq i32 %847, 0
  br i1 %cmp1581, label %if.then.1583, label %if.end.1584

if.then.1583:                                     ; preds = %for.body.1576
  br label %for.inc.1648

if.end.1584:                                      ; preds = %for.body.1576
  store i32 1, i32* %k, align 4
  br label %for.cond.1585

for.cond.1585:                                    ; preds = %for.inc.1645, %if.end.1584
  %848 = load i32, i32* %k, align 4
  %849 = load i32, i32* @nPinLocs, align 4
  %cmp1586 = icmp slt i32 %848, %849
  br i1 %cmp1586, label %for.body.1588, label %for.end.1647

for.body.1588:                                    ; preds = %for.cond.1585
  %850 = load i32, i32* %prefer, align 4
  %851 = load i32, i32* %k, align 4
  %add1589 = add nsw i32 %850, %851
  %852 = load i32, i32* @nPinLocs, align 4
  %cmp1590 = icmp sle i32 %add1589, %852
  br i1 %cmp1590, label %if.then.1592, label %if.end.1616

if.then.1592:                                     ; preds = %for.body.1588
  %853 = load i32, i32* %prefer, align 4
  %854 = load i32, i32* %k, align 4
  %add1593 = add nsw i32 %853, %854
  %idxprom1594 = sext i32 %add1593 to i64
  %855 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1595 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %855, i64 %idxprom1594
  %placed1596 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1595, i32 0, i32 1
  %856 = load i32, i32* %placed1596, align 4
  %cmp1597 = icmp eq i32 %856, 0
  br i1 %cmp1597, label %if.then.1599, label %if.end.1615

if.then.1599:                                     ; preds = %if.then.1592
  %857 = load i32, i32* %prefer, align 4
  %858 = load i32, i32* %k, align 4
  %add1600 = add nsw i32 %857, %858
  %idxprom1601 = sext i32 %add1600 to i64
  %859 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1602 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %859, i64 %idxprom1601
  %placed1603 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1602, i32 0, i32 1
  store i32 1, i32* %placed1603, align 4
  %860 = load i32, i32* %i, align 4
  %mul1604 = mul nsw i32 2, %860
  %idxprom1605 = sext i32 %mul1604 to i64
  %arrayidx1606 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1605
  %861 = load i32, i32* %arrayidx1606, align 4
  %862 = load i32, i32* %prefer, align 4
  %863 = load i32, i32* %k, align 4
  %add1607 = add nsw i32 %862, %863
  %idxprom1608 = sext i32 %add1607 to i64
  %864 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1609 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %864, i64 %idxprom1608
  %pin1610 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1609, i32 0, i32 0
  store i32 %861, i32* %pin1610, align 4
  %865 = load i32, i32* %i, align 4
  %mul1611 = mul nsw i32 2, %865
  %sub1612 = sub nsw i32 %mul1611, 1
  %idxprom1613 = sext i32 %sub1612 to i64
  %arrayidx1614 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1613
  store i32 0, i32* %arrayidx1614, align 4
  br label %for.end.1647

if.end.1615:                                      ; preds = %if.then.1592
  br label %if.end.1616

if.end.1616:                                      ; preds = %if.end.1615, %for.body.1588
  %866 = load i32, i32* %prefer, align 4
  %867 = load i32, i32* %k, align 4
  %sub1617 = sub nsw i32 %866, %867
  %cmp1618 = icmp sge i32 %sub1617, 1
  br i1 %cmp1618, label %if.then.1620, label %if.end.1644

if.then.1620:                                     ; preds = %if.end.1616
  %868 = load i32, i32* %prefer, align 4
  %869 = load i32, i32* %k, align 4
  %sub1621 = sub nsw i32 %868, %869
  %idxprom1622 = sext i32 %sub1621 to i64
  %870 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1623 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %870, i64 %idxprom1622
  %placed1624 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1623, i32 0, i32 1
  %871 = load i32, i32* %placed1624, align 4
  %cmp1625 = icmp eq i32 %871, 0
  br i1 %cmp1625, label %if.then.1627, label %if.end.1643

if.then.1627:                                     ; preds = %if.then.1620
  %872 = load i32, i32* %prefer, align 4
  %873 = load i32, i32* %k, align 4
  %sub1628 = sub nsw i32 %872, %873
  %idxprom1629 = sext i32 %sub1628 to i64
  %874 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1630 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %874, i64 %idxprom1629
  %placed1631 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1630, i32 0, i32 1
  store i32 1, i32* %placed1631, align 4
  %875 = load i32, i32* %i, align 4
  %mul1632 = mul nsw i32 2, %875
  %idxprom1633 = sext i32 %mul1632 to i64
  %arrayidx1634 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1633
  %876 = load i32, i32* %arrayidx1634, align 4
  %877 = load i32, i32* %prefer, align 4
  %878 = load i32, i32* %k, align 4
  %sub1635 = sub nsw i32 %877, %878
  %idxprom1636 = sext i32 %sub1635 to i64
  %879 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1637 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %879, i64 %idxprom1636
  %pin1638 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1637, i32 0, i32 0
  store i32 %876, i32* %pin1638, align 4
  %880 = load i32, i32* %i, align 4
  %mul1639 = mul nsw i32 2, %880
  %sub1640 = sub nsw i32 %mul1639, 1
  %idxprom1641 = sext i32 %sub1640 to i64
  %arrayidx1642 = getelementptr inbounds [201 x i32], [201 x i32]* %isolated, i32 0, i64 %idxprom1641
  store i32 0, i32* %arrayidx1642, align 4
  br label %for.end.1647

if.end.1643:                                      ; preds = %if.then.1620
  br label %if.end.1644

if.end.1644:                                      ; preds = %if.end.1643, %if.end.1616
  br label %for.inc.1645

for.inc.1645:                                     ; preds = %if.end.1644
  %881 = load i32, i32* %k, align 4
  %inc1646 = add nsw i32 %881, 1
  store i32 %inc1646, i32* %k, align 4
  br label %for.cond.1585

for.end.1647:                                     ; preds = %if.then.1627, %if.then.1599, %for.cond.1585
  br label %for.inc.1648

for.inc.1648:                                     ; preds = %for.end.1647, %if.then.1583
  %882 = load i32, i32* %i, align 4
  %inc1649 = add nsw i32 %882, 1
  store i32 %inc1649, i32* %i, align 4
  br label %for.cond.1573

for.end.1650:                                     ; preds = %for.cond.1573
  store i32 1, i32* %i, align 4
  br label %for.cond.1651

for.cond.1651:                                    ; preds = %for.inc.1680, %for.end.1650
  %883 = load i32, i32* %i, align 4
  %884 = load i32, i32* @nPinLocs, align 4
  %cmp1652 = icmp sle i32 %883, %884
  br i1 %cmp1652, label %for.body.1654, label %for.end.1682

for.body.1654:                                    ; preds = %for.cond.1651
  %885 = load i32, i32* %i, align 4
  %idxprom1655 = sext i32 %885 to i64
  %886 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1656 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %886, i64 %idxprom1655
  %placed1657 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1656, i32 0, i32 1
  %887 = load i32, i32* %placed1657, align 4
  %cmp1658 = icmp eq i32 %887, 1
  br i1 %cmp1658, label %if.then.1660, label %if.end.1679

if.then.1660:                                     ; preds = %for.body.1654
  %888 = load i32, i32* %i, align 4
  %idxprom1661 = sext i32 %888 to i64
  %889 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1662 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %889, i64 %idxprom1661
  %finalx1663 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1662, i32 0, i32 2
  %890 = load i32, i32* %finalx1663, align 4
  %891 = load i32, i32* %i, align 4
  %idxprom1664 = sext i32 %891 to i64
  %892 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1665 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %892, i64 %idxprom1664
  %pin1666 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1665, i32 0, i32 0
  %893 = load i32, i32* %pin1666, align 4
  %idxprom1667 = sext i32 %893 to i64
  %894 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1668 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %894, i64 %idxprom1667
  %finalx1669 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1668, i32 0, i32 9
  store i32 %890, i32* %finalx1669, align 4
  %895 = load i32, i32* %i, align 4
  %idxprom1670 = sext i32 %895 to i64
  %896 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1671 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %896, i64 %idxprom1670
  %finaly1672 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1671, i32 0, i32 3
  %897 = load i32, i32* %finaly1672, align 4
  %898 = load i32, i32* %i, align 4
  %idxprom1673 = sext i32 %898 to i64
  %899 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx1674 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %899, i64 %idxprom1673
  %pin1675 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx1674, i32 0, i32 0
  %900 = load i32, i32* %pin1675, align 4
  %idxprom1676 = sext i32 %900 to i64
  %901 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1677 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %901, i64 %idxprom1676
  %finaly1678 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1677, i32 0, i32 10
  store i32 %897, i32* %finaly1678, align 4
  br label %if.end.1679

if.end.1679:                                      ; preds = %if.then.1660, %for.body.1654
  br label %for.inc.1680

for.inc.1680:                                     ; preds = %if.end.1679
  %902 = load i32, i32* %i, align 4
  %inc1681 = add nsw i32 %902, 1
  store i32 %inc1681, i32* %i, align 4
  br label %for.cond.1651

for.end.1682:                                     ; preds = %for.cond.1651
  %903 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %904 = bitcast %struct.flogbox* %903 to i8*
  call void @free(i8* %904) #3
  br label %for.inc.1683

for.inc.1683:                                     ; preds = %for.end.1682, %if.then.18
  %905 = load i32, i32* %site, align 4
  %inc1684 = add nsw i32 %905, 1
  store i32 %inc1684, i32* %site, align 4
  br label %for.cond.12

for.end.1685:                                     ; preds = %for.cond.12
  store i32 1, i32* %i, align 4
  br label %for.cond.1686

for.cond.1686:                                    ; preds = %for.inc.1722, %for.end.1685
  %906 = load i32, i32* %i, align 4
  %907 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms1687 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %907, i32 0, i32 18
  %908 = load i32, i32* %numUnComTerms1687, align 4
  %cmp1688 = icmp sle i32 %906, %908
  br i1 %cmp1688, label %for.body.1690, label %for.end.1724

for.body.1690:                                    ; preds = %for.cond.1686
  %909 = load i32, i32* %i, align 4
  %idxprom1691 = sext i32 %909 to i64
  %910 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1692 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %910, i64 %idxprom1691
  %finalx1693 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1692, i32 0, i32 9
  %911 = load i32, i32* %finalx1693, align 4
  %cmp1694 = icmp eq i32 %911, -100000000
  br i1 %cmp1694, label %land.lhs.true.1696, label %if.end.1721

land.lhs.true.1696:                               ; preds = %for.body.1690
  %912 = load i32, i32* %i, align 4
  %idxprom1697 = sext i32 %912 to i64
  %913 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1698 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %913, i64 %idxprom1697
  %finaly1699 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1698, i32 0, i32 10
  %914 = load i32, i32* %finaly1699, align 4
  %cmp1700 = icmp eq i32 %914, -100000000
  br i1 %cmp1700, label %if.then.1702, label %if.end.1721

if.then.1702:                                     ; preds = %land.lhs.true.1696
  %915 = load i32, i32* %i, align 4
  %idxprom1703 = sext i32 %915 to i64
  %916 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1704 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %916, i64 %idxprom1703
  %site1705 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1704, i32 0, i32 1
  %917 = load i32, i32* %site1705, align 4
  %idxprom1706 = sext i32 %917 to i64
  %918 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx1707 = getelementptr inbounds %struct.locbox, %struct.locbox* %918, i64 %idxprom1706
  %xpos1708 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1707, i32 0, i32 0
  %919 = load i32, i32* %xpos1708, align 4
  %920 = load i32, i32* %i, align 4
  %idxprom1709 = sext i32 %920 to i64
  %921 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1710 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %921, i64 %idxprom1709
  %finalx1711 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1710, i32 0, i32 9
  store i32 %919, i32* %finalx1711, align 4
  %922 = load i32, i32* %i, align 4
  %idxprom1712 = sext i32 %922 to i64
  %923 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1713 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %923, i64 %idxprom1712
  %site1714 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1713, i32 0, i32 1
  %924 = load i32, i32* %site1714, align 4
  %idxprom1715 = sext i32 %924 to i64
  %925 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx1716 = getelementptr inbounds %struct.locbox, %struct.locbox* %925, i64 %idxprom1715
  %ypos1717 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1716, i32 0, i32 1
  %926 = load i32, i32* %ypos1717, align 4
  %927 = load i32, i32* %i, align 4
  %idxprom1718 = sext i32 %927 to i64
  %928 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx1719 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %928, i64 %idxprom1718
  %finaly1720 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1719, i32 0, i32 10
  store i32 %926, i32* %finaly1720, align 4
  br label %if.end.1721

if.end.1721:                                      ; preds = %if.then.1702, %land.lhs.true.1696, %for.body.1690
  br label %for.inc.1722

for.inc.1722:                                     ; preds = %if.end.1721
  %929 = load i32, i32* %i, align 4
  %inc1723 = add nsw i32 %929, 1
  store i32 %inc1723, i32* %i, align 4
  br label %for.cond.1686

for.end.1724:                                     ; preds = %for.cond.1686
  br label %for.inc.1725

for.inc.1725:                                     ; preds = %for.end.1724, %if.then
  %930 = load i32, i32* %cell, align 4
  %inc1726 = add nsw i32 %930, 1
  store i32 %inc1726, i32* %cell, align 4
  br label %for.cond

for.end.1727:                                     ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @findLoc(i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
