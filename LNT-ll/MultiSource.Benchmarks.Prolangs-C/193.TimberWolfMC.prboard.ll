; ModuleID = './MultiSource.Benchmarks.Prolangs-C/193.TimberWolfMC.prboard.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.brd\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A\0A\0A\0ABOUNDING BOX OF CELL:%6d  is \00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"LEFT:%6d  BOTTOM:%6d  RIGHT:%6d  TOP:%6d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\0ATHESE ARE THE TILES COMPRISING THIS CELL\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"LEFT:%6d  BOTTOM:%6d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  RIGHT:%6d  TOP:%6d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"THESE ARE THE TERMINALS FOR THIS CELL\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"TERMINAL:%s   XPOS:%6d   YPOS:%6d\0A\0A\00", align 1
@pinnames = external global i8**, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"TERMINAL:%s   XPOS:%6d   YPOS:%6d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"ACTUALS           XPOS:%6d   YPOS:%6d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"   SITE:%6d\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @prboard() #0 {
entry:
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  %j = alloca i32, align 4
  %cell = alloca i32, align 4
  %site = alloca i32, align 4
  %terminal = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca [1024 x i8], align 16
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay3)
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %if.end
  %2 = load i32, i32* %cell, align 4
  %3 = load i32, i32* @numcells, align 4
  %4 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %3, %4
  %cmp5 = icmp sle i32 %2, %add
  br i1 %cmp5, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %6, i64 %idxprom
  %7 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %7, %struct.cellbox** %cellptr, align 8
  %8 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 5
  %9 = load i32, i32* %orient, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i32 0, i32 21
  %arrayidx7 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom6
  %11 = load %struct.tilebox*, %struct.tilebox** %arrayidx7, align 8
  store %struct.tilebox* %11, %struct.tilebox** %tileptr, align 8
  %12 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr8 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i32 0, i32 17
  %13 = load %struct.termbox*, %struct.termbox** %termptr8, align 8
  store %struct.termbox* %13, %struct.termbox** %termptr, align 8
  %14 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter9 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i32 0, i32 2
  %15 = load i32, i32* %xcenter9, align 4
  store i32 %15, i32* %xcenter, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 3
  %17 = load i32, i32* %ycenter10, align 4
  store i32 %17, i32* %ycenter, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %19 = load i32, i32* %cell, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %21 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %21, i32 0, i32 9
  %22 = load i32, i32* %left, align 4
  %23 = load i32, i32* %xcenter, align 4
  %add12 = add nsw i32 %22, %23
  %24 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 11
  %25 = load i32, i32* %bottom, align 4
  %26 = load i32, i32* %ycenter, align 4
  %add13 = add nsw i32 %25, %26
  %27 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 10
  %28 = load i32, i32* %right, align 4
  %29 = load i32, i32* %xcenter, align 4
  %add14 = add nsw i32 %28, %29
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 12
  %31 = load i32, i32* %top, align 4
  %32 = load i32, i32* %ycenter, align 4
  %add15 = add nsw i32 %31, %32
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %add12, i32 %add13, i32 %add14, i32 %add15)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0))
  %34 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 0
  %35 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %35, %struct.tilebox** %tileptr, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %36 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp19 = icmp ne %struct.tilebox* %36, null
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %38 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 9
  %39 = load i32, i32* %left21, align 4
  %40 = load i32, i32* %xcenter, align 4
  %add22 = add nsw i32 %39, %40
  %41 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %41, i32 0, i32 11
  %42 = load i32, i32* %bottom23, align 4
  %43 = load i32, i32* %ycenter, align 4
  %add24 = add nsw i32 %42, %43
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 %add22, i32 %add24)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %45 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right26 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %45, i32 0, i32 10
  %46 = load i32, i32* %right26, align 4
  %47 = load i32, i32* %xcenter, align 4
  %add27 = add nsw i32 %46, %47
  %48 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top28 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %48, i32 0, i32 12
  %49 = load i32, i32* %top28, align 4
  %50 = load i32, i32* %ycenter, align 4
  %add29 = add nsw i32 %49, %50
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %add27, i32 %add29)
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %51 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile31 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %51, i32 0, i32 0
  %52 = load %struct.tilebox*, %struct.tilebox** %nexttile31, align 8
  store %struct.tilebox* %52, %struct.tilebox** %tileptr, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0))
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.44, %for.end
  %54 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp34 = icmp ne %struct.termbox* %54, null
  br i1 %cmp34, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.33
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %56 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal36 = getelementptr inbounds %struct.termbox, %struct.termbox* %56, i32 0, i32 5
  %57 = load i32, i32* %terminal36, align 4
  %idxprom37 = sext i32 %57 to i64
  %58 = load i8**, i8*** @pinnames, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %58, i64 %idxprom37
  %59 = load i8*, i8** %arrayidx38, align 8
  %60 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos39 = getelementptr inbounds %struct.termbox, %struct.termbox* %60, i32 0, i32 1
  %61 = load i32, i32* %xpos39, align 4
  %62 = load i32, i32* %xcenter, align 4
  %add40 = add nsw i32 %61, %62
  %63 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos41 = getelementptr inbounds %struct.termbox, %struct.termbox* %63, i32 0, i32 2
  %64 = load i32, i32* %ypos41, align 4
  %65 = load i32, i32* %ycenter, align 4
  %add42 = add nsw i32 %64, %65
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %59, i32 %add40, i32 %add42)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.35
  %66 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %66, i32 0, i32 0
  %67 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %67, %struct.termbox** %termptr, align 8
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  %68 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %68, i32 0, i32 10
  %69 = load i32, i32* %softflag, align 4
  %cmp46 = icmp eq i32 %69, 1
  br i1 %cmp46, label %if.then.47, label %if.end.90

if.then.47:                                       ; preds = %for.end.45
  store i32 1, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.88, %if.then.47
  %70 = load i32, i32* %j, align 4
  %71 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %71, i32 0, i32 18
  %72 = load i32, i32* %numUnComTerms, align 4
  %cmp49 = icmp sle i32 %70, %72
  br i1 %cmp49, label %for.body.50, label %for.end.89

for.body.50:                                      ; preds = %for.cond.48
  %73 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %73 to i64
  %74 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %74, i32 0, i32 20
  %75 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx52 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %75, i64 %idxprom51
  %terminal53 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx52, i32 0, i32 0
  %76 = load i32, i32* %terminal53, align 4
  store i32 %76, i32* %terminal, align 4
  %77 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %77 to i64
  %78 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %78, i32 0, i32 20
  %79 = load %struct.uncombox*, %struct.uncombox** %unComTerms55, align 8
  %arrayidx56 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %79, i64 %idxprom54
  %site57 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx56, i32 0, i32 1
  %80 = load i32, i32* %site57, align 4
  store i32 %80, i32* %site, align 4
  %81 = load i32, i32* %site, align 4
  %idxprom58 = sext i32 %81 to i64
  %82 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient59 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %82, i32 0, i32 5
  %83 = load i32, i32* %orient59, align 4
  %idxprom60 = sext i32 %83 to i64
  %84 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 21
  %arrayidx62 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config61, i32 0, i64 %idxprom60
  %85 = load %struct.tilebox*, %struct.tilebox** %arrayidx62, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %85, i32 0, i32 18
  %86 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  %arrayidx63 = getelementptr inbounds %struct.locbox, %struct.locbox* %86, i64 %idxprom58
  %xpos64 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx63, i32 0, i32 0
  %87 = load i32, i32* %xpos64, align 4
  store i32 %87, i32* %xpos, align 4
  %88 = load i32, i32* %site, align 4
  %idxprom65 = sext i32 %88 to i64
  %89 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient66 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i32 0, i32 5
  %90 = load i32, i32* %orient66, align 4
  %idxprom67 = sext i32 %90 to i64
  %91 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %91, i32 0, i32 21
  %arrayidx69 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config68, i32 0, i64 %idxprom67
  %92 = load %struct.tilebox*, %struct.tilebox** %arrayidx69, align 8
  %siteLocArray70 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %92, i32 0, i32 18
  %93 = load %struct.locbox*, %struct.locbox** %siteLocArray70, align 8
  %arrayidx71 = getelementptr inbounds %struct.locbox, %struct.locbox* %93, i64 %idxprom65
  %ypos72 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx71, i32 0, i32 1
  %94 = load i32, i32* %ypos72, align 4
  store i32 %94, i32* %ypos, align 4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %96 = load i32, i32* %terminal, align 4
  %idxprom73 = sext i32 %96 to i64
  %97 = load i8**, i8*** @pinnames, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %97, i64 %idxprom73
  %98 = load i8*, i8** %arrayidx74, align 8
  %99 = load i32, i32* %xpos, align 4
  %100 = load i32, i32* %xcenter, align 4
  %add75 = add nsw i32 %99, %100
  %101 = load i32, i32* %ypos, align 4
  %102 = load i32, i32* %ycenter, align 4
  %add76 = add nsw i32 %101, %102
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i8* %98, i32 %add75, i32 %add76)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %104 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %104 to i64
  %105 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %105, i32 0, i32 20
  %106 = load %struct.uncombox*, %struct.uncombox** %unComTerms79, align 8
  %arrayidx80 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %106, i64 %idxprom78
  %finalx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx80, i32 0, i32 9
  %107 = load i32, i32* %finalx, align 4
  %108 = load i32, i32* %xcenter, align 4
  %add81 = add nsw i32 %107, %108
  %109 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %109 to i64
  %110 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %110, i32 0, i32 20
  %111 = load %struct.uncombox*, %struct.uncombox** %unComTerms83, align 8
  %arrayidx84 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %111, i64 %idxprom82
  %finaly = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx84, i32 0, i32 10
  %112 = load i32, i32* %finaly, align 4
  %113 = load i32, i32* %ycenter, align 4
  %add85 = add nsw i32 %112, %113
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i32 %add81, i32 %add85)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %115 = load i32, i32* %site, align 4
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %115)
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.50
  %116 = load i32, i32* %j, align 4
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.48

for.end.89:                                       ; preds = %for.cond.48
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %for.end.45
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %117 = load i32, i32* %cell, align 4
  %inc92 = add nsw i32 %117, 1
  store i32 %inc92, i32* %cell, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call94 = call i32 @fclose(%struct._IO_FILE* %118)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
