; ModuleID = './MultiSource.Benchmarks.Prolangs-C/160.TimberWolfMC.placepin.bc'
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
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"DEATH: Sequence was specified which\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c" required more capacity than given\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sides could hanlde. Problem cell:%d\0A\00", align 1
@randVar = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @placepin() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cell = alloca i32, align 4
  %k = alloca i32, align 4
  %firstsite = alloca i32, align 4
  %lastsite = alloca i32, align 4
  %numsites = alloca i32, align 4
  %sum = alloca i32, align 4
  %truth = alloca i32, align 4
  %amount = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %side = alloca i32, align 4
  %site = alloca i32, align 4
  %ptr = alloca %struct.cellbox*, align 8
  %SCptr = alloca %struct.contentbox*, align 8
  %UCptr = alloca %struct.uncombox*, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.313, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.315

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %ptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 10
  %6 = load i32, i32* %softflag, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites2 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 17
  %8 = load i32, i32* %numsites2, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.313

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 20
  %10 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %10, %struct.uncombox** %UCptr, align 8
  %11 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 19
  %12 = load %struct.contentbox*, %struct.contentbox** %siteContent, align 8
  store %struct.contentbox* %12, %struct.contentbox** %SCptr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.310, %if.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i32 0, i32 18
  %15 = load i32, i32* %numUnComTerms, align 4
  %cmp5 = icmp sle i32 %13, %15
  br i1 %cmp5, label %for.body.6, label %for.end.312

for.body.6:                                       ; preds = %for.cond.4
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx8 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %17, i64 %idxprom7
  %sequence = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx8, i32 0, i32 7
  %18 = load i32, i32* %sequence, align 4
  %cmp9 = icmp ne i32 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.309

if.then.10:                                       ; preds = %for.body.6
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx12 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %20, i64 %idxprom11
  %numranges = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx12, i32 0, i32 4
  %21 = load i32, i32* %numranges, align 4
  %cmp13 = icmp eq i32 %21, 1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %sum, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx16 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %23, i64 %idxprom15
  %range1 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx16, i32 0, i32 5
  %24 = load i32, i32* %range1, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 22
  %26 = load %struct.sidebox*, %struct.sidebox** %sideArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %26, i64 %idxprom17
  %firstSite = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx18, i32 0, i32 0
  %27 = load i32, i32* %firstSite, align 4
  store i32 %27, i32* %n, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then.14
  %28 = load i32, i32* %n, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx21 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %30, i64 %idxprom20
  %range122 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx21, i32 0, i32 5
  %31 = load i32, i32* %range122, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 22
  %33 = load %struct.sidebox*, %struct.sidebox** %sideArray24, align 8
  %arrayidx25 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %33, i64 %idxprom23
  %lastSite = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx25, i32 0, i32 1
  %34 = load i32, i32* %lastSite, align 4
  %cmp26 = icmp sle i32 %28, %34
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.19
  %35 = load i32, i32* %n, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx29 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %36, i64 %idxprom28
  %capacity = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx29, i32 0, i32 2
  %37 = load i32, i32* %capacity, align 4
  %38 = load i32, i32* %sum, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %39 = load i32, i32* %n, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %40 = load i32, i32* %sum, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx31 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %42, i64 %idxprom30
  %sequence32 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx31, i32 0, i32 7
  %43 = load i32, i32* %sequence32, align 4
  %cmp33 = icmp slt i32 %40, %43
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %for.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = load i32, i32* %cell, align 4
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %47)
  call void @exit(i32 0) #3
  unreachable

if.end.37:                                        ; preds = %for.end
  br label %if.end.139

if.else:                                          ; preds = %if.then.10
  %48 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx39 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %49, i64 %idxprom38
  %numranges40 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx39, i32 0, i32 4
  %50 = load i32, i32* %numranges40, align 4
  %cmp41 = icmp eq i32 %50, 2
  br i1 %cmp41, label %if.then.42, label %if.else.108

if.then.42:                                       ; preds = %if.else
  store i32 0, i32* %sum, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %51 to i64
  %52 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx44 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %52, i64 %idxprom43
  %range145 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx44, i32 0, i32 5
  %53 = load i32, i32* %range145, align 4
  %idxprom46 = sext i32 %53 to i64
  %54 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 22
  %55 = load %struct.sidebox*, %struct.sidebox** %sideArray47, align 8
  %arrayidx48 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %55, i64 %idxprom46
  %firstSite49 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx48, i32 0, i32 0
  %56 = load i32, i32* %firstSite49, align 4
  store i32 %56, i32* %n, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.64, %if.then.42
  %57 = load i32, i32* %n, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %58 to i64
  %59 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx52 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %59, i64 %idxprom51
  %range153 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx52, i32 0, i32 5
  %60 = load i32, i32* %range153, align 4
  %idxprom54 = sext i32 %60 to i64
  %61 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %61, i32 0, i32 22
  %62 = load %struct.sidebox*, %struct.sidebox** %sideArray55, align 8
  %arrayidx56 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %62, i64 %idxprom54
  %lastSite57 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx56, i32 0, i32 1
  %63 = load i32, i32* %lastSite57, align 4
  %cmp58 = icmp sle i32 %57, %63
  br i1 %cmp58, label %for.body.59, label %for.end.66

for.body.59:                                      ; preds = %for.cond.50
  %64 = load i32, i32* %n, align 4
  %idxprom60 = sext i32 %64 to i64
  %65 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx61 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %65, i64 %idxprom60
  %capacity62 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx61, i32 0, i32 2
  %66 = load i32, i32* %capacity62, align 4
  %67 = load i32, i32* %sum, align 4
  %add63 = add nsw i32 %67, %66
  store i32 %add63, i32* %sum, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.59
  %68 = load i32, i32* %n, align 4
  %inc65 = add nsw i32 %68, 1
  store i32 %inc65, i32* %n, align 4
  br label %for.cond.50

for.end.66:                                       ; preds = %for.cond.50
  %69 = load i32, i32* %sum, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %70 to i64
  %71 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx68 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %71, i64 %idxprom67
  %sequence69 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx68, i32 0, i32 7
  %72 = load i32, i32* %sequence69, align 4
  %cmp70 = icmp slt i32 %69, %72
  br i1 %cmp70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %for.end.66
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %76 = load i32, i32* %cell, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %76)
  call void @exit(i32 0) #3
  unreachable

if.end.75:                                        ; preds = %for.end.66
  store i32 0, i32* %sum, align 4
  %77 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %77 to i64
  %78 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx77 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %78, i64 %idxprom76
  %range2 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx77, i32 0, i32 6
  %79 = load i32, i32* %range2, align 4
  %idxprom78 = sext i32 %79 to i64
  %80 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %80, i32 0, i32 22
  %81 = load %struct.sidebox*, %struct.sidebox** %sideArray79, align 8
  %arrayidx80 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %81, i64 %idxprom78
  %firstSite81 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx80, i32 0, i32 0
  %82 = load i32, i32* %firstSite81, align 4
  store i32 %82, i32* %n, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.96, %if.end.75
  %83 = load i32, i32* %n, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %84 to i64
  %85 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx84 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %85, i64 %idxprom83
  %range285 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx84, i32 0, i32 6
  %86 = load i32, i32* %range285, align 4
  %idxprom86 = sext i32 %86 to i64
  %87 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray87 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %87, i32 0, i32 22
  %88 = load %struct.sidebox*, %struct.sidebox** %sideArray87, align 8
  %arrayidx88 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %88, i64 %idxprom86
  %lastSite89 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx88, i32 0, i32 1
  %89 = load i32, i32* %lastSite89, align 4
  %cmp90 = icmp sle i32 %83, %89
  br i1 %cmp90, label %for.body.91, label %for.end.98

for.body.91:                                      ; preds = %for.cond.82
  %90 = load i32, i32* %n, align 4
  %idxprom92 = sext i32 %90 to i64
  %91 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx93 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %91, i64 %idxprom92
  %capacity94 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx93, i32 0, i32 2
  %92 = load i32, i32* %capacity94, align 4
  %93 = load i32, i32* %sum, align 4
  %add95 = add nsw i32 %93, %92
  store i32 %add95, i32* %sum, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.91
  %94 = load i32, i32* %n, align 4
  %inc97 = add nsw i32 %94, 1
  store i32 %inc97, i32* %n, align 4
  br label %for.cond.82

for.end.98:                                       ; preds = %for.cond.82
  %95 = load i32, i32* %sum, align 4
  %96 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %96 to i64
  %97 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx100 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %97, i64 %idxprom99
  %sequence101 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx100, i32 0, i32 7
  %98 = load i32, i32* %sequence101, align 4
  %cmp102 = icmp slt i32 %95, %98
  br i1 %cmp102, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %for.end.98
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %102 = load i32, i32* %cell, align 4
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %102)
  call void @exit(i32 0) #3
  unreachable

if.end.107:                                       ; preds = %for.end.98
  br label %if.end.138

if.else.108:                                      ; preds = %if.else
  %103 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %103 to i64
  %104 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx110 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %104, i64 %idxprom109
  %numranges111 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx110, i32 0, i32 4
  %105 = load i32, i32* %numranges111, align 4
  %cmp112 = icmp sgt i32 %105, 2
  br i1 %cmp112, label %if.then.113, label %if.end.137

if.then.113:                                      ; preds = %if.else.108
  store i32 0, i32* %sum, align 4
  store i32 1, i32* %n, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.125, %if.then.113
  %106 = load i32, i32* %n, align 4
  %107 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsides = getelementptr inbounds %struct.cellbox, %struct.cellbox* %107, i32 0, i32 7
  %108 = load i32, i32* %numsides, align 4
  %idxprom115 = sext i32 %108 to i64
  %109 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray116 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 22
  %110 = load %struct.sidebox*, %struct.sidebox** %sideArray116, align 8
  %arrayidx117 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %110, i64 %idxprom115
  %lastSite118 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx117, i32 0, i32 1
  %111 = load i32, i32* %lastSite118, align 4
  %cmp119 = icmp sle i32 %106, %111
  br i1 %cmp119, label %for.body.120, label %for.end.127

for.body.120:                                     ; preds = %for.cond.114
  %112 = load i32, i32* %n, align 4
  %idxprom121 = sext i32 %112 to i64
  %113 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx122 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %113, i64 %idxprom121
  %capacity123 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx122, i32 0, i32 2
  %114 = load i32, i32* %capacity123, align 4
  %115 = load i32, i32* %sum, align 4
  %add124 = add nsw i32 %115, %114
  store i32 %add124, i32* %sum, align 4
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.120
  %116 = load i32, i32* %n, align 4
  %inc126 = add nsw i32 %116, 1
  store i32 %inc126, i32* %n, align 4
  br label %for.cond.114

for.end.127:                                      ; preds = %for.cond.114
  %117 = load i32, i32* %sum, align 4
  %118 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %118 to i64
  %119 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx129 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %119, i64 %idxprom128
  %sequence130 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx129, i32 0, i32 7
  %120 = load i32, i32* %sequence130, align 4
  %cmp131 = icmp slt i32 %117, %120
  br i1 %cmp131, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %for.end.127
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %124 = load i32, i32* %cell, align 4
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %124)
  call void @exit(i32 0) #3
  unreachable

if.end.136:                                       ; preds = %for.end.127
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.else.108
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.107
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.37
  %125 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %125 to i64
  %126 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx141 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %126, i64 %idxprom140
  %numranges142 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx141, i32 0, i32 4
  %127 = load i32, i32* %numranges142, align 4
  %cmp143 = icmp sgt i32 %127, 2
  br i1 %cmp143, label %if.then.144, label %if.else.159

if.then.144:                                      ; preds = %if.end.139
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.144
  %128 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %128 to i64
  %129 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx146 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %129, i64 %idxprom145
  %numranges147 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx146, i32 0, i32 4
  %130 = load i32, i32* %numranges147, align 4
  %conv = sitofp i32 %130 to double
  %131 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %131, 1103515245
  %add148 = add nsw i32 %mul, 12345
  store i32 %add148, i32* @randVar, align 4
  %and = and i32 %add148, 2147483647
  %conv149 = sitofp i32 %and to double
  %div = fdiv double %conv149, 0x41DFFFFFFFC00000
  %mul150 = fmul double %conv, %div
  %conv151 = fptosi double %mul150 to i32
  %add152 = add nsw i32 %conv151, 1
  store i32 %add152, i32* %side, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %132 = load i32, i32* %side, align 4
  %133 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %133 to i64
  %134 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx154 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %134, i64 %idxprom153
  %numranges155 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx154, i32 0, i32 4
  %135 = load i32, i32* %numranges155, align 4
  %add156 = add nsw i32 %135, 1
  %cmp157 = icmp eq i32 %132, %add156
  br i1 %cmp157, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.210

if.else.159:                                      ; preds = %if.end.139
  %136 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %136 to i64
  %137 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx161 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %137, i64 %idxprom160
  %numranges162 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx161, i32 0, i32 4
  %138 = load i32, i32* %numranges162, align 4
  %cmp163 = icmp eq i32 %138, 2
  br i1 %cmp163, label %if.then.165, label %if.else.198

if.then.165:                                      ; preds = %if.else.159
  br label %do.body.166

do.body.166:                                      ; preds = %do.cond.179, %if.then.165
  %139 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %139 to i64
  %140 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx168 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %140, i64 %idxprom167
  %numranges169 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx168, i32 0, i32 4
  %141 = load i32, i32* %numranges169, align 4
  %conv170 = sitofp i32 %141 to double
  %142 = load i32, i32* @randVar, align 4
  %mul171 = mul nsw i32 %142, 1103515245
  %add172 = add nsw i32 %mul171, 12345
  store i32 %add172, i32* @randVar, align 4
  %and173 = and i32 %add172, 2147483647
  %conv174 = sitofp i32 %and173 to double
  %div175 = fdiv double %conv174, 0x41DFFFFFFFC00000
  %mul176 = fmul double %conv170, %div175
  %conv177 = fptosi double %mul176 to i32
  %add178 = add nsw i32 %conv177, 1
  store i32 %add178, i32* %side, align 4
  br label %do.cond.179

do.cond.179:                                      ; preds = %do.body.166
  %143 = load i32, i32* %side, align 4
  %144 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %144 to i64
  %145 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx181 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %145, i64 %idxprom180
  %numranges182 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx181, i32 0, i32 4
  %146 = load i32, i32* %numranges182, align 4
  %add183 = add nsw i32 %146, 1
  %cmp184 = icmp eq i32 %143, %add183
  br i1 %cmp184, label %do.body.166, label %do.end.186

do.end.186:                                       ; preds = %do.cond.179
  %147 = load i32, i32* %side, align 4
  %cmp187 = icmp eq i32 %147, 1
  br i1 %cmp187, label %if.then.189, label %if.else.193

if.then.189:                                      ; preds = %do.end.186
  %148 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %148 to i64
  %149 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx191 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %149, i64 %idxprom190
  %range1192 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx191, i32 0, i32 5
  %150 = load i32, i32* %range1192, align 4
  store i32 %150, i32* %side, align 4
  br label %if.end.197

if.else.193:                                      ; preds = %do.end.186
  %151 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %151 to i64
  %152 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx195 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %152, i64 %idxprom194
  %range2196 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx195, i32 0, i32 6
  %153 = load i32, i32* %range2196, align 4
  store i32 %153, i32* %side, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.193, %if.then.189
  br label %if.end.209

if.else.198:                                      ; preds = %if.else.159
  %154 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %154 to i64
  %155 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx200 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %155, i64 %idxprom199
  %numranges201 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx200, i32 0, i32 4
  %156 = load i32, i32* %numranges201, align 4
  %cmp202 = icmp eq i32 %156, 1
  br i1 %cmp202, label %if.then.204, label %if.end.208

if.then.204:                                      ; preds = %if.else.198
  %157 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %157 to i64
  %158 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx206 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %158, i64 %idxprom205
  %range1207 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx206, i32 0, i32 5
  %159 = load i32, i32* %range1207, align 4
  store i32 %159, i32* %side, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.204, %if.else.198
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.197
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %do.end
  %160 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %160 to i64
  %161 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx212 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %161, i64 %idxprom211
  %numranges213 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx212, i32 0, i32 4
  %162 = load i32, i32* %numranges213, align 4
  %cmp214 = icmp eq i32 %162, 0
  br i1 %cmp214, label %if.then.216, label %if.else.220

if.then.216:                                      ; preds = %if.end.210
  %163 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %163 to i64
  %164 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx218 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %164, i64 %idxprom217
  %range1219 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx218, i32 0, i32 5
  %165 = load i32, i32* %range1219, align 4
  store i32 %165, i32* %firstsite, align 4
  %166 = load i32, i32* %firstsite, align 4
  store i32 %166, i32* %lastsite, align 4
  store i32 1, i32* %numsites, align 4
  br label %if.end.230

if.else.220:                                      ; preds = %if.end.210
  %167 = load i32, i32* %side, align 4
  %idxprom221 = sext i32 %167 to i64
  %168 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray222 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %168, i32 0, i32 22
  %169 = load %struct.sidebox*, %struct.sidebox** %sideArray222, align 8
  %arrayidx223 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %169, i64 %idxprom221
  %firstSite224 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx223, i32 0, i32 0
  %170 = load i32, i32* %firstSite224, align 4
  store i32 %170, i32* %firstsite, align 4
  %171 = load i32, i32* %side, align 4
  %idxprom225 = sext i32 %171 to i64
  %172 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray226 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %172, i32 0, i32 22
  %173 = load %struct.sidebox*, %struct.sidebox** %sideArray226, align 8
  %arrayidx227 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %173, i64 %idxprom225
  %lastSite228 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx227, i32 0, i32 1
  %174 = load i32, i32* %lastSite228, align 4
  store i32 %174, i32* %lastsite, align 4
  %175 = load i32, i32* %lastsite, align 4
  %176 = load i32, i32* %firstsite, align 4
  %sub = sub nsw i32 %175, %176
  %add229 = add nsw i32 %sub, 1
  store i32 %add229, i32* %numsites, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.220, %if.then.216
  br label %do.body.231

do.body.231:                                      ; preds = %do.cond.261, %if.end.230
  %177 = load i32, i32* %numsites, align 4
  %conv232 = sitofp i32 %177 to double
  %178 = load i32, i32* @randVar, align 4
  %mul233 = mul nsw i32 %178, 1103515245
  %add234 = add nsw i32 %mul233, 12345
  store i32 %add234, i32* @randVar, align 4
  %and235 = and i32 %add234, 2147483647
  %conv236 = sitofp i32 %and235 to double
  %div237 = fdiv double %conv236, 0x41DFFFFFFFC00000
  %mul238 = fmul double %conv232, %div237
  %conv239 = fptosi double %mul238 to i32
  store i32 %conv239, i32* %j, align 4
  store i32 0, i32* %sum, align 4
  store i32 1, i32* %truth, align 4
  %179 = load i32, i32* %firstsite, align 4
  %180 = load i32, i32* %j, align 4
  %add240 = add nsw i32 %179, %180
  store i32 %add240, i32* %k, align 4
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.258, %do.body.231
  %181 = load i32, i32* %k, align 4
  %182 = load i32, i32* %lastsite, align 4
  %cmp242 = icmp sgt i32 %181, %182
  br i1 %cmp242, label %if.then.244, label %if.else.245

if.then.244:                                      ; preds = %for.cond.241
  store i32 0, i32* %truth, align 4
  br label %for.end.260

if.else.245:                                      ; preds = %for.cond.241
  %183 = load i32, i32* %k, align 4
  %idxprom246 = sext i32 %183 to i64
  %184 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx247 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %184, i64 %idxprom246
  %capacity248 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx247, i32 0, i32 2
  %185 = load i32, i32* %capacity248, align 4
  %186 = load i32, i32* %sum, align 4
  %add249 = add nsw i32 %186, %185
  store i32 %add249, i32* %sum, align 4
  %187 = load i32, i32* %sum, align 4
  %188 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %188 to i64
  %189 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx251 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %189, i64 %idxprom250
  %sequence252 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx251, i32 0, i32 7
  %190 = load i32, i32* %sequence252, align 4
  %cmp253 = icmp sge i32 %187, %190
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.else.245
  br label %for.end.260

if.end.256:                                       ; preds = %if.else.245
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256
  br label %for.inc.258

for.inc.258:                                      ; preds = %if.end.257
  %191 = load i32, i32* %k, align 4
  %inc259 = add nsw i32 %191, 1
  store i32 %inc259, i32* %k, align 4
  br label %for.cond.241

for.end.260:                                      ; preds = %if.then.255, %if.then.244
  br label %do.cond.261

do.cond.261:                                      ; preds = %for.end.260
  %192 = load i32, i32* %truth, align 4
  %tobool = icmp ne i32 %192, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body.231, label %do.end.262

do.end.262:                                       ; preds = %do.cond.261
  store i32 0, i32* %sum, align 4
  %193 = load i32, i32* %i, align 4
  store i32 %193, i32* %l, align 4
  %194 = load i32, i32* %firstsite, align 4
  %195 = load i32, i32* %j, align 4
  %add263 = add nsw i32 %194, %195
  store i32 %add263, i32* %site, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.287, %do.end.262
  %196 = load i32, i32* %site, align 4
  %197 = load i32, i32* %k, align 4
  %cmp265 = icmp slt i32 %196, %197
  br i1 %cmp265, label %for.body.267, label %for.end.289

for.body.267:                                     ; preds = %for.cond.264
  %198 = load i32, i32* %site, align 4
  %idxprom268 = sext i32 %198 to i64
  %199 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx269 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %199, i64 %idxprom268
  %capacity270 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx269, i32 0, i32 2
  %200 = load i32, i32* %capacity270, align 4
  store i32 %200, i32* %amount, align 4
  %201 = load i32, i32* %amount, align 4
  %202 = load i32, i32* %sum, align 4
  %add271 = add nsw i32 %202, %201
  store i32 %add271, i32* %sum, align 4
  %203 = load i32, i32* %amount, align 4
  %204 = load i32, i32* %site, align 4
  %idxprom272 = sext i32 %204 to i64
  %205 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx273 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %205, i64 %idxprom272
  %contents = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx273, i32 0, i32 0
  %206 = load i32, i32* %contents, align 4
  %add274 = add nsw i32 %206, %203
  store i32 %add274, i32* %contents, align 4
  %207 = load i32, i32* %l, align 4
  store i32 %207, i32* %m, align 4
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.283, %for.body.267
  %208 = load i32, i32* %m, align 4
  %209 = load i32, i32* %l, align 4
  %210 = load i32, i32* %amount, align 4
  %add276 = add nsw i32 %209, %210
  %cmp277 = icmp slt i32 %208, %add276
  br i1 %cmp277, label %for.body.279, label %for.end.285

for.body.279:                                     ; preds = %for.cond.275
  %211 = load i32, i32* %site, align 4
  %212 = load i32, i32* %m, align 4
  %idxprom280 = sext i32 %212 to i64
  %213 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx281 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %213, i64 %idxprom280
  %site282 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx281, i32 0, i32 1
  store i32 %211, i32* %site282, align 4
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.body.279
  %214 = load i32, i32* %m, align 4
  %inc284 = add nsw i32 %214, 1
  store i32 %inc284, i32* %m, align 4
  br label %for.cond.275

for.end.285:                                      ; preds = %for.cond.275
  %215 = load i32, i32* %amount, align 4
  %216 = load i32, i32* %l, align 4
  %add286 = add nsw i32 %216, %215
  store i32 %add286, i32* %l, align 4
  br label %for.inc.287

for.inc.287:                                      ; preds = %for.end.285
  %217 = load i32, i32* %site, align 4
  %inc288 = add nsw i32 %217, 1
  store i32 %inc288, i32* %site, align 4
  br label %for.cond.264

for.end.289:                                      ; preds = %for.cond.264
  %218 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %218 to i64
  %219 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx291 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %219, i64 %idxprom290
  %sequence292 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx291, i32 0, i32 7
  %220 = load i32, i32* %sequence292, align 4
  %221 = load i32, i32* %sum, align 4
  %sub293 = sub nsw i32 %220, %221
  store i32 %sub293, i32* %amount, align 4
  %222 = load i32, i32* %amount, align 4
  %223 = load i32, i32* %k, align 4
  %idxprom294 = sext i32 %223 to i64
  %224 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx295 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %224, i64 %idxprom294
  %contents296 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx295, i32 0, i32 0
  %225 = load i32, i32* %contents296, align 4
  %add297 = add nsw i32 %225, %222
  store i32 %add297, i32* %contents296, align 4
  %226 = load i32, i32* %l, align 4
  store i32 %226, i32* %m, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.306, %for.end.289
  %227 = load i32, i32* %m, align 4
  %228 = load i32, i32* %l, align 4
  %229 = load i32, i32* %amount, align 4
  %add299 = add nsw i32 %228, %229
  %cmp300 = icmp slt i32 %227, %add299
  br i1 %cmp300, label %for.body.302, label %for.end.308

for.body.302:                                     ; preds = %for.cond.298
  %230 = load i32, i32* %k, align 4
  %231 = load i32, i32* %m, align 4
  %idxprom303 = sext i32 %231 to i64
  %232 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx304 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %232, i64 %idxprom303
  %site305 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx304, i32 0, i32 1
  store i32 %230, i32* %site305, align 4
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.body.302
  %233 = load i32, i32* %m, align 4
  %inc307 = add nsw i32 %233, 1
  store i32 %inc307, i32* %m, align 4
  br label %for.cond.298

for.end.308:                                      ; preds = %for.cond.298
  br label %if.end.309

if.end.309:                                       ; preds = %for.end.308, %for.body.6
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %234 = load i32, i32* %i, align 4
  %inc311 = add nsw i32 %234, 1
  store i32 %inc311, i32* %i, align 4
  br label %for.cond.4

for.end.312:                                      ; preds = %for.cond.4
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.end.312, %if.then
  %235 = load i32, i32* %cell, align 4
  %inc314 = add nsw i32 %235, 1
  store i32 %inc314, i32* %cell, align 4
  br label %for.cond

for.end.315:                                      ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
