; ModuleID = './MultiSource.Benchmarks.Prolangs-C/182.TimberWolfMC.savewolf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.sav\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %lf\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" %d %d %d %d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@termarray = external global %struct.termnets**, align 8

; Function Attrs: nounwind uwtable
define void @savewolf() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca [1024 x i8], align 16
  %cell = alloca i32, align 4
  %terminal = alloca i32, align 4
  %cellptr = alloca %struct.cellbox*, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #3
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %1 = load i32, i32* %cell, align 4
  %2 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %idxprom
  %5 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %5, %struct.cellbox** %cellptr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %7 = load i32, i32* %cell, align 4
  %8 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 5
  %9 = load i32, i32* %orient, align 4
  %10 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i32 0, i32 2
  %11 = load i32, i32* %xcenter, align 4
  %12 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 3
  %13 = load i32, i32* %ycenter, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %7, i32 %9, i32 %11, i32 %13)
  store i32 1, i32* %terminal, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %terminal, align 4
  %15 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %15, i32 0, i32 18
  %16 = load i32, i32* %numUnComTerms, align 4
  %cmp5 = icmp sle i32 %14, %16
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %18 = load i32, i32* %terminal, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 20
  %20 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx8 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %20, i64 %idxprom7
  %site = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx8, i32 0, i32 1
  %21 = load i32, i32* %site, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %21)
  %22 = load i32, i32* %terminal, align 4
  %23 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numUnComTerms10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 18
  %24 = load i32, i32* %numUnComTerms10, align 4
  %cmp11 = icmp eq i32 %22, %24
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %26 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %aspect = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 13
  %27 = load double, double* %aspect, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), double %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %terminal, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %terminal, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %29 = load i32, i32* %cell, align 4
  %inc14 = add nsw i32 %29, 1
  store i32 %inc14, i32* %cell, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %30)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @TW_oldinput(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %cell = alloca i32, align 4
  %orient = alloca i32, align 4
  %tm = alloca i32, align 4
  %site = alloca i32, align 4
  %terminal = alloca i32, align 4
  %height = alloca i32, align 4
  %length = alloca i32, align 4
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %oleft = alloca i32, align 4
  %oright = alloca i32, align 4
  %obottom = alloca i32, align 4
  %otop = alloca i32, align 4
  %Hdiv2 = alloca i32, align 4
  %Wdiv2 = alloca i32, align 4
  %aorient = alloca i32, align 4
  %aspect = alloca double, align 8
  %aspFactor = alloca double, align 8
  %val = alloca double, align 8
  %tilenum = alloca i32, align 4
  %termnum = alloca i32, align 4
  %ptr = alloca %struct.cellbox*, align 8
  %SLptr = alloca %struct.locbox*, align 8
  %siteptr = alloca %struct.locbox*, align 8
  %siteptr0 = alloca %struct.locbox*, align 8
  %atileptr = alloca %struct.tilebox*, align 8
  %tileptr1 = alloca %struct.tilebox*, align 8
  %tptr = alloca %struct.tilebox*, align 8
  %tptr0 = alloca %struct.tilebox*, align 8
  %term = alloca %struct.termbox*, align 8
  %atermptr = alloca %struct.termbox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %tmptr0 = alloca %struct.termbox*, align 8
  %tmptr1 = alloca %struct.termbox*, align 8
  %teptr = alloca %struct.termnets*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.1051, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32* %cell, i32* %orient, i32* %xcenter, i32* %ycenter)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %2, i64 %idxprom
  %3 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %3, %struct.cellbox** %ptr, align 8
  %4 = load i32, i32* %orient, align 4
  %5 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient1 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 5
  store i32 %4, i32* %orient1, align 4
  %6 = load i32, i32* %xcenter, align 4
  %7 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter2 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 2
  store i32 %6, i32* %xcenter2, align 4
  %8 = load i32, i32* %ycenter, align 4
  %9 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter3 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 3
  store i32 %8, i32* %ycenter3, align 4
  %10 = load i32, i32* %orient, align 4
  store i32 %10, i32* %aorient, align 4
  store i32 1, i32* %terminal, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %while.body
  %11 = load i32, i32* %terminal, align 4
  %12 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 18
  %13 = load i32, i32* %numUnComTerms, align 4
  %cmp4 = icmp sle i32 %11, %13
  br i1 %cmp4, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %terminal, align 4
  %cmp5 = icmp eq i32 %14, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 17
  %17 = load i32, i32* %numsites, align 4
  %cmp7 = icmp sle i32 %15, %17
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 19
  %20 = load %struct.contentbox*, %struct.contentbox** %siteContent, align 8
  %arrayidx10 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %idxprom9
  %contents = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %contents, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %site)
  %23 = load i32, i32* %site, align 4
  %24 = load i32, i32* %terminal, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 20
  %26 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx13 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %26, i64 %idxprom12
  %site14 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx13, i32 0, i32 1
  store i32 %23, i32* %site14, align 4
  %27 = load i32, i32* %site, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent16 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 19
  %29 = load %struct.contentbox*, %struct.contentbox** %siteContent16, align 8
  %arrayidx17 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %29, i64 %idxprom15
  %contents18 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx17, i32 0, i32 0
  %30 = load i32, i32* %contents18, align 4
  %inc19 = add nsw i32 %30, 1
  store i32 %inc19, i32* %contents18, align 4
  %31 = load i32, i32* %terminal, align 4
  %32 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms20 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 18
  %33 = load i32, i32* %numUnComTerms20, align 4
  %cmp21 = icmp eq i32 %31, %33
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), double* %aspect)
  %35 = load double, double* %aspect, align 8
  %36 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspect24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 13
  store double %35, double* %aspect24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %37 = load i32, i32* %terminal, align 4
  %inc27 = add nsw i32 %37, 1
  store i32 %inc27, i32* %terminal, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %38 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 10
  %39 = load i32, i32* %softflag, align 4
  %cmp29 = icmp eq i32 %39, 1
  br i1 %cmp29, label %land.lhs.true, label %if.end.991

land.lhs.true:                                    ; preds = %for.end.28
  %40 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspUB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 15
  %41 = load double, double* %aspUB, align 8
  %42 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspLB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 16
  %43 = load double, double* %aspLB, align 8
  %add = fadd double 1.000000e-02, %43
  %cmp30 = fcmp ogt double %41, %add
  br i1 %cmp30, label %if.then.31, label %if.end.991

if.then.31:                                       ; preds = %land.lhs.true
  %44 = load i32, i32* %aorient, align 4
  %idxprom32 = sext i32 %44 to i64
  %45 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %45, i32 0, i32 21
  %arrayidx33 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom32
  %46 = load %struct.tilebox*, %struct.tilebox** %arrayidx33, align 8
  store %struct.tilebox* %46, %struct.tilebox** %atileptr, align 8
  %47 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %termptr34 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 17
  %48 = load %struct.termbox*, %struct.termbox** %termptr34, align 8
  store %struct.termbox* %48, %struct.termbox** %atermptr, align 8
  %49 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %oleft35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i32 0, i32 13
  %50 = load i32, i32* %oleft35, align 4
  store i32 %50, i32* %oleft, align 4
  %51 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %oright36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %51, i32 0, i32 14
  %52 = load i32, i32* %oright36, align 4
  store i32 %52, i32* %oright, align 4
  %53 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %obottom37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %53, i32 0, i32 15
  %54 = load i32, i32* %obottom37, align 4
  store i32 %54, i32* %obottom, align 4
  %55 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %otop38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %55, i32 0, i32 16
  %56 = load i32, i32* %otop38, align 4
  store i32 %56, i32* %otop, align 4
  %57 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %57, i32 0, i32 18
  %58 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  store %struct.locbox* %58, %struct.locbox** %SLptr, align 8
  %59 = load i32, i32* %aorient, align 4
  %cmp39 = icmp sle i32 %59, 3
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.31
  %60 = load double, double* %aspect, align 8
  %61 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspectO = getelementptr inbounds %struct.cellbox, %struct.cellbox* %61, i32 0, i32 14
  %62 = load double, double* %aspectO, align 8
  %div = fdiv double %60, %62
  %call41 = call double @sqrt(double %div) #3
  store double %call41, double* %aspFactor, align 8
  br label %if.end.45

if.else:                                          ; preds = %if.then.31
  %63 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspectO42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i32 0, i32 14
  %64 = load double, double* %aspectO42, align 8
  %65 = load double, double* %aspect, align 8
  %div43 = fdiv double %64, %65
  %call44 = call double @sqrt(double %div43) #3
  store double %call44, double* %aspFactor, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.40
  %66 = load i32, i32* %otop, align 4
  %67 = load i32, i32* %obottom, align 4
  %sub = sub nsw i32 %66, %67
  %conv = sitofp i32 %sub to double
  %68 = load double, double* %aspFactor, align 8
  %mul = fmul double %conv, %68
  store double %mul, double* %val, align 8
  %69 = load double, double* %val, align 8
  %70 = load double, double* %val, align 8
  %conv46 = fptosi double %70 to i32
  %conv47 = sitofp i32 %conv46 to double
  %sub48 = fsub double %69, %conv47
  %cmp49 = fcmp oge double %sub48, 5.000000e-01
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %71 = load double, double* %val, align 8
  %conv51 = fptosi double %71 to i32
  %add52 = add nsw i32 %conv51, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.45
  %72 = load double, double* %val, align 8
  %conv53 = fptosi double %72 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add52, %cond.true ], [ %conv53, %cond.false ]
  %div54 = sdiv i32 %cond, 2
  store i32 %div54, i32* %Hdiv2, align 4
  %73 = load i32, i32* %oright, align 4
  %74 = load i32, i32* %oleft, align 4
  %sub55 = sub nsw i32 %73, %74
  %conv56 = sitofp i32 %sub55 to double
  %75 = load double, double* %aspFactor, align 8
  %div57 = fdiv double %conv56, %75
  store double %div57, double* %val, align 8
  %76 = load double, double* %val, align 8
  %77 = load double, double* %val, align 8
  %conv58 = fptosi double %77 to i32
  %conv59 = sitofp i32 %conv58 to double
  %sub60 = fsub double %76, %conv59
  %cmp61 = fcmp oge double %sub60, 5.000000e-01
  br i1 %cmp61, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %cond.end
  %78 = load double, double* %val, align 8
  %conv64 = fptosi double %78 to i32
  %add65 = add nsw i32 %conv64, 1
  br label %cond.end.68

cond.false.66:                                    ; preds = %cond.end
  %79 = load double, double* %val, align 8
  %conv67 = fptosi double %79 to i32
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.66, %cond.true.63
  %cond69 = phi i32 [ %add65, %cond.true.63 ], [ %conv67, %cond.false.66 ]
  %div70 = sdiv i32 %cond69, 2
  store i32 %div70, i32* %Wdiv2, align 4
  %80 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  store %struct.tilebox* %80, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.143, %cond.end.68
  %81 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp72 = icmp ne %struct.tilebox* %81, null
  br i1 %cmp72, label %for.body.74, label %for.end.144

for.body.74:                                      ; preds = %for.cond.71
  %82 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oleft75 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %82, i32 0, i32 13
  %83 = load i32, i32* %oleft75, align 4
  %84 = load i32, i32* %oleft, align 4
  %sub76 = sub nsw i32 %83, %84
  %conv77 = sitofp i32 %sub76 to double
  %85 = load double, double* %aspFactor, align 8
  %div78 = fdiv double %conv77, %85
  store double %div78, double* %val, align 8
  %86 = load double, double* %val, align 8
  %87 = load double, double* %val, align 8
  %conv79 = fptosi double %87 to i32
  %conv80 = sitofp i32 %conv79 to double
  %sub81 = fsub double %86, %conv80
  %cmp82 = fcmp oge double %sub81, 5.000000e-01
  br i1 %cmp82, label %cond.true.84, label %cond.false.87

cond.true.84:                                     ; preds = %for.body.74
  %88 = load double, double* %val, align 8
  %conv85 = fptosi double %88 to i32
  %add86 = add nsw i32 %conv85, 1
  br label %cond.end.89

cond.false.87:                                    ; preds = %for.body.74
  %89 = load double, double* %val, align 8
  %conv88 = fptosi double %89 to i32
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.87, %cond.true.84
  %cond90 = phi i32 [ %add86, %cond.true.84 ], [ %conv88, %cond.false.87 ]
  %90 = load i32, i32* %Wdiv2, align 4
  %sub91 = sub nsw i32 %cond90, %90
  %91 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %91, i32 0, i32 9
  store i32 %sub91, i32* %left, align 4
  %92 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oright92 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %92, i32 0, i32 14
  %93 = load i32, i32* %oright92, align 4
  %94 = load i32, i32* %oleft, align 4
  %sub93 = sub nsw i32 %93, %94
  %conv94 = sitofp i32 %sub93 to double
  %95 = load double, double* %aspFactor, align 8
  %div95 = fdiv double %conv94, %95
  store double %div95, double* %val, align 8
  %96 = load double, double* %val, align 8
  %97 = load double, double* %val, align 8
  %conv96 = fptosi double %97 to i32
  %conv97 = sitofp i32 %conv96 to double
  %sub98 = fsub double %96, %conv97
  %cmp99 = fcmp oge double %sub98, 5.000000e-01
  br i1 %cmp99, label %cond.true.101, label %cond.false.104

cond.true.101:                                    ; preds = %cond.end.89
  %98 = load double, double* %val, align 8
  %conv102 = fptosi double %98 to i32
  %add103 = add nsw i32 %conv102, 1
  br label %cond.end.106

cond.false.104:                                   ; preds = %cond.end.89
  %99 = load double, double* %val, align 8
  %conv105 = fptosi double %99 to i32
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.101
  %cond107 = phi i32 [ %add103, %cond.true.101 ], [ %conv105, %cond.false.104 ]
  %100 = load i32, i32* %Wdiv2, align 4
  %sub108 = sub nsw i32 %cond107, %100
  %101 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 10
  store i32 %sub108, i32* %right, align 4
  %102 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %obottom109 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %102, i32 0, i32 15
  %103 = load i32, i32* %obottom109, align 4
  %104 = load i32, i32* %obottom, align 4
  %sub110 = sub nsw i32 %103, %104
  %conv111 = sitofp i32 %sub110 to double
  %105 = load double, double* %aspFactor, align 8
  %mul112 = fmul double %conv111, %105
  store double %mul112, double* %val, align 8
  %106 = load double, double* %val, align 8
  %107 = load double, double* %val, align 8
  %conv113 = fptosi double %107 to i32
  %conv114 = sitofp i32 %conv113 to double
  %sub115 = fsub double %106, %conv114
  %cmp116 = fcmp oge double %sub115, 5.000000e-01
  br i1 %cmp116, label %cond.true.118, label %cond.false.121

cond.true.118:                                    ; preds = %cond.end.106
  %108 = load double, double* %val, align 8
  %conv119 = fptosi double %108 to i32
  %add120 = add nsw i32 %conv119, 1
  br label %cond.end.123

cond.false.121:                                   ; preds = %cond.end.106
  %109 = load double, double* %val, align 8
  %conv122 = fptosi double %109 to i32
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.121, %cond.true.118
  %cond124 = phi i32 [ %add120, %cond.true.118 ], [ %conv122, %cond.false.121 ]
  %110 = load i32, i32* %Hdiv2, align 4
  %sub125 = sub nsw i32 %cond124, %110
  %111 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %111, i32 0, i32 11
  store i32 %sub125, i32* %bottom, align 4
  %112 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %otop126 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %112, i32 0, i32 16
  %113 = load i32, i32* %otop126, align 4
  %114 = load i32, i32* %obottom, align 4
  %sub127 = sub nsw i32 %113, %114
  %conv128 = sitofp i32 %sub127 to double
  %115 = load double, double* %aspFactor, align 8
  %mul129 = fmul double %conv128, %115
  store double %mul129, double* %val, align 8
  %116 = load double, double* %val, align 8
  %117 = load double, double* %val, align 8
  %conv130 = fptosi double %117 to i32
  %conv131 = sitofp i32 %conv130 to double
  %sub132 = fsub double %116, %conv131
  %cmp133 = fcmp oge double %sub132, 5.000000e-01
  br i1 %cmp133, label %cond.true.135, label %cond.false.138

cond.true.135:                                    ; preds = %cond.end.123
  %118 = load double, double* %val, align 8
  %conv136 = fptosi double %118 to i32
  %add137 = add nsw i32 %conv136, 1
  br label %cond.end.140

cond.false.138:                                   ; preds = %cond.end.123
  %119 = load double, double* %val, align 8
  %conv139 = fptosi double %119 to i32
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.138, %cond.true.135
  %cond141 = phi i32 [ %add137, %cond.true.135 ], [ %conv139, %cond.false.138 ]
  %120 = load i32, i32* %Hdiv2, align 4
  %sub142 = sub nsw i32 %cond141, %120
  %121 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %121, i32 0, i32 12
  store i32 %sub142, i32* %top, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %cond.end.140
  %122 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %122, i32 0, i32 0
  %123 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %123, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.71

for.end.144:                                      ; preds = %for.cond.71
  %124 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  store %struct.termbox* %124, %struct.termbox** %termptr, align 8
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.183, %for.end.144
  %125 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp146 = icmp ne %struct.termbox* %125, null
  br i1 %cmp146, label %for.body.148, label %for.end.184

for.body.148:                                     ; preds = %for.cond.145
  %126 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %oxpos = getelementptr inbounds %struct.termbox, %struct.termbox* %126, i32 0, i32 3
  %127 = load i32, i32* %oxpos, align 4
  %128 = load i32, i32* %oleft, align 4
  %sub149 = sub nsw i32 %127, %128
  %conv150 = sitofp i32 %sub149 to double
  %129 = load double, double* %aspFactor, align 8
  %div151 = fdiv double %conv150, %129
  store double %div151, double* %val, align 8
  %130 = load double, double* %val, align 8
  %131 = load double, double* %val, align 8
  %conv152 = fptosi double %131 to i32
  %conv153 = sitofp i32 %conv152 to double
  %sub154 = fsub double %130, %conv153
  %cmp155 = fcmp oge double %sub154, 5.000000e-01
  br i1 %cmp155, label %cond.true.157, label %cond.false.160

cond.true.157:                                    ; preds = %for.body.148
  %132 = load double, double* %val, align 8
  %conv158 = fptosi double %132 to i32
  %add159 = add nsw i32 %conv158, 1
  br label %cond.end.162

cond.false.160:                                   ; preds = %for.body.148
  %133 = load double, double* %val, align 8
  %conv161 = fptosi double %133 to i32
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.160, %cond.true.157
  %cond163 = phi i32 [ %add159, %cond.true.157 ], [ %conv161, %cond.false.160 ]
  %134 = load i32, i32* %Wdiv2, align 4
  %sub164 = sub nsw i32 %cond163, %134
  %135 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos165 = getelementptr inbounds %struct.termbox, %struct.termbox* %135, i32 0, i32 1
  store i32 %sub164, i32* %xpos165, align 4
  %136 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %oypos = getelementptr inbounds %struct.termbox, %struct.termbox* %136, i32 0, i32 4
  %137 = load i32, i32* %oypos, align 4
  %138 = load i32, i32* %obottom, align 4
  %sub166 = sub nsw i32 %137, %138
  %conv167 = sitofp i32 %sub166 to double
  %139 = load double, double* %aspFactor, align 8
  %mul168 = fmul double %conv167, %139
  store double %mul168, double* %val, align 8
  %140 = load double, double* %val, align 8
  %141 = load double, double* %val, align 8
  %conv169 = fptosi double %141 to i32
  %conv170 = sitofp i32 %conv169 to double
  %sub171 = fsub double %140, %conv170
  %cmp172 = fcmp oge double %sub171, 5.000000e-01
  br i1 %cmp172, label %cond.true.174, label %cond.false.177

cond.true.174:                                    ; preds = %cond.end.162
  %142 = load double, double* %val, align 8
  %conv175 = fptosi double %142 to i32
  %add176 = add nsw i32 %conv175, 1
  br label %cond.end.179

cond.false.177:                                   ; preds = %cond.end.162
  %143 = load double, double* %val, align 8
  %conv178 = fptosi double %143 to i32
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.177, %cond.true.174
  %cond180 = phi i32 [ %add176, %cond.true.174 ], [ %conv178, %cond.false.177 ]
  %144 = load i32, i32* %Hdiv2, align 4
  %sub181 = sub nsw i32 %cond180, %144
  %145 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos182 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i32 0, i32 2
  store i32 %sub181, i32* %ypos182, align 4
  br label %for.inc.183

for.inc.183:                                      ; preds = %cond.end.179
  %146 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %146, i32 0, i32 0
  %147 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %147, %struct.termbox** %termptr, align 8
  br label %for.cond.145

for.end.184:                                      ; preds = %for.cond.145
  store i32 1, i32* %site, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.234, %for.end.184
  %148 = load i32, i32* %site, align 4
  %149 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites186 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %149, i32 0, i32 17
  %150 = load i32, i32* %numsites186, align 4
  %cmp187 = icmp sle i32 %148, %150
  br i1 %cmp187, label %for.body.189, label %for.end.236

for.body.189:                                     ; preds = %for.cond.185
  %151 = load i32, i32* %site, align 4
  %idxprom190 = sext i32 %151 to i64
  %152 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx191 = getelementptr inbounds %struct.locbox, %struct.locbox* %152, i64 %idxprom190
  %oxpos192 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx191, i32 0, i32 2
  %153 = load i32, i32* %oxpos192, align 4
  %154 = load i32, i32* %oleft, align 4
  %sub193 = sub nsw i32 %153, %154
  %conv194 = sitofp i32 %sub193 to double
  %155 = load double, double* %aspFactor, align 8
  %div195 = fdiv double %conv194, %155
  store double %div195, double* %val, align 8
  %156 = load double, double* %val, align 8
  %157 = load double, double* %val, align 8
  %conv196 = fptosi double %157 to i32
  %conv197 = sitofp i32 %conv196 to double
  %sub198 = fsub double %156, %conv197
  %cmp199 = fcmp oge double %sub198, 5.000000e-01
  br i1 %cmp199, label %cond.true.201, label %cond.false.204

cond.true.201:                                    ; preds = %for.body.189
  %158 = load double, double* %val, align 8
  %conv202 = fptosi double %158 to i32
  %add203 = add nsw i32 %conv202, 1
  br label %cond.end.206

cond.false.204:                                   ; preds = %for.body.189
  %159 = load double, double* %val, align 8
  %conv205 = fptosi double %159 to i32
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.204, %cond.true.201
  %cond207 = phi i32 [ %add203, %cond.true.201 ], [ %conv205, %cond.false.204 ]
  %160 = load i32, i32* %Wdiv2, align 4
  %sub208 = sub nsw i32 %cond207, %160
  %161 = load i32, i32* %site, align 4
  %idxprom209 = sext i32 %161 to i64
  %162 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx210 = getelementptr inbounds %struct.locbox, %struct.locbox* %162, i64 %idxprom209
  %xpos211 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx210, i32 0, i32 0
  store i32 %sub208, i32* %xpos211, align 4
  %163 = load i32, i32* %site, align 4
  %idxprom212 = sext i32 %163 to i64
  %164 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx213 = getelementptr inbounds %struct.locbox, %struct.locbox* %164, i64 %idxprom212
  %oypos214 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx213, i32 0, i32 3
  %165 = load i32, i32* %oypos214, align 4
  %166 = load i32, i32* %obottom, align 4
  %sub215 = sub nsw i32 %165, %166
  %conv216 = sitofp i32 %sub215 to double
  %167 = load double, double* %aspFactor, align 8
  %mul217 = fmul double %conv216, %167
  store double %mul217, double* %val, align 8
  %168 = load double, double* %val, align 8
  %169 = load double, double* %val, align 8
  %conv218 = fptosi double %169 to i32
  %conv219 = sitofp i32 %conv218 to double
  %sub220 = fsub double %168, %conv219
  %cmp221 = fcmp oge double %sub220, 5.000000e-01
  br i1 %cmp221, label %cond.true.223, label %cond.false.226

cond.true.223:                                    ; preds = %cond.end.206
  %170 = load double, double* %val, align 8
  %conv224 = fptosi double %170 to i32
  %add225 = add nsw i32 %conv224, 1
  br label %cond.end.228

cond.false.226:                                   ; preds = %cond.end.206
  %171 = load double, double* %val, align 8
  %conv227 = fptosi double %171 to i32
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.226, %cond.true.223
  %cond229 = phi i32 [ %add225, %cond.true.223 ], [ %conv227, %cond.false.226 ]
  %172 = load i32, i32* %Hdiv2, align 4
  %sub230 = sub nsw i32 %cond229, %172
  %173 = load i32, i32* %site, align 4
  %idxprom231 = sext i32 %173 to i64
  %174 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx232 = getelementptr inbounds %struct.locbox, %struct.locbox* %174, i64 %idxprom231
  %ypos233 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx232, i32 0, i32 1
  store i32 %sub230, i32* %ypos233, align 4
  br label %for.inc.234

for.inc.234:                                      ; preds = %cond.end.228
  %175 = load i32, i32* %site, align 4
  %inc235 = add nsw i32 %175, 1
  store i32 %inc235, i32* %site, align 4
  br label %for.cond.185

for.end.236:                                      ; preds = %for.cond.185
  %176 = load i32, i32* %aorient, align 4
  %cmp237 = icmp ne i32 %176, 0
  br i1 %cmp237, label %if.then.239, label %if.end.590

if.then.239:                                      ; preds = %for.end.236
  %177 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %top240 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %177, i32 0, i32 12
  %178 = load i32, i32* %top240, align 4
  %179 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %bottom241 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %179, i32 0, i32 11
  %180 = load i32, i32* %bottom241, align 4
  %sub242 = sub nsw i32 %178, %180
  store i32 %sub242, i32* %height, align 4
  %181 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %right243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 10
  %182 = load i32, i32* %right243, align 4
  %183 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %left244 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %183, i32 0, i32 9
  %184 = load i32, i32* %left244, align 4
  %sub245 = sub nsw i32 %182, %184
  store i32 %sub245, i32* %length, align 4
  %185 = load i32, i32* %aorient, align 4
  switch i32 %185, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.246
    i32 3, label %sw.bb.247
    i32 4, label %sw.bb.248
    i32 5, label %sw.bb.249
    i32 6, label %sw.bb.250
    i32 7, label %sw.bb.251
  ]

sw.bb:                                            ; preds = %if.then.239
  store i32 1, i32* %orient, align 4
  br label %sw.epilog

sw.bb.246:                                        ; preds = %if.then.239
  store i32 2, i32* %orient, align 4
  br label %sw.epilog

sw.bb.247:                                        ; preds = %if.then.239
  store i32 3, i32* %orient, align 4
  br label %sw.epilog

sw.bb.248:                                        ; preds = %if.then.239
  store i32 4, i32* %orient, align 4
  br label %sw.epilog

sw.bb.249:                                        ; preds = %if.then.239
  store i32 5, i32* %orient, align 4
  br label %sw.epilog

sw.bb.250:                                        ; preds = %if.then.239
  store i32 7, i32* %orient, align 4
  br label %sw.epilog

sw.bb.251:                                        ; preds = %if.then.239
  store i32 6, i32* %orient, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.239, %sw.bb.251, %sw.bb.250, %sw.bb.249, %sw.bb.248, %sw.bb.247, %sw.bb.246, %sw.bb
  %186 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config252 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i32 0, i32 21
  %arrayidx253 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config252, i32 0, i64 0
  %187 = load %struct.tilebox*, %struct.tilebox** %arrayidx253, align 8
  store %struct.tilebox* %187, %struct.tilebox** %tptr0, align 8
  %188 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  store %struct.tilebox* %188, %struct.tilebox** %tptr, align 8
  %189 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left254 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %189, i32 0, i32 9
  %190 = load i32, i32* %left254, align 4
  %191 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left255 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %191, i32 0, i32 9
  store i32 %190, i32* %left255, align 4
  %192 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right256 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %192, i32 0, i32 10
  %193 = load i32, i32* %right256, align 4
  %194 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right257 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %194, i32 0, i32 10
  store i32 %193, i32* %right257, align 4
  %195 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom258 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %195, i32 0, i32 11
  %196 = load i32, i32* %bottom258, align 4
  %197 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom259 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %197, i32 0, i32 11
  store i32 %196, i32* %bottom259, align 4
  %198 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top260 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %198, i32 0, i32 12
  %199 = load i32, i32* %top260, align 4
  %200 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top261 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %200, i32 0, i32 12
  store i32 %199, i32* %top261, align 4
  %201 = load i32, i32* %orient, align 4
  call void @move(i32 %201)
  %202 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left262 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 9
  %203 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom263 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 11
  %204 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right264 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %204, i32 0, i32 10
  %205 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top265 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %205, i32 0, i32 12
  call void @rect(i32* %left262, i32* %bottom263, i32* %right264, i32* %top265)
  %206 = load i32, i32* %height, align 4
  %rem = srem i32 %206, 2
  %cmp266 = icmp ne i32 %rem, 0
  br i1 %cmp266, label %land.lhs.true.268, label %lor.lhs.false.273

land.lhs.true.268:                                ; preds = %sw.epilog
  %207 = load i32, i32* %orient, align 4
  %cmp269 = icmp eq i32 %207, 4
  br i1 %cmp269, label %if.then.283, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.268
  %208 = load i32, i32* %orient, align 4
  %cmp271 = icmp eq i32 %208, 6
  br i1 %cmp271, label %if.then.283, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %lor.lhs.false, %sw.epilog
  %209 = load i32, i32* %length, align 4
  %rem274 = srem i32 %209, 2
  %cmp275 = icmp ne i32 %rem274, 0
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.288

land.lhs.true.277:                                ; preds = %lor.lhs.false.273
  %210 = load i32, i32* %orient, align 4
  %cmp278 = icmp eq i32 %210, 2
  br i1 %cmp278, label %if.then.283, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %land.lhs.true.277
  %211 = load i32, i32* %orient, align 4
  %cmp281 = icmp eq i32 %211, 3
  br i1 %cmp281, label %if.then.283, label %if.end.288

if.then.283:                                      ; preds = %lor.lhs.false.280, %land.lhs.true.277, %lor.lhs.false, %land.lhs.true.268
  %212 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left284 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %212, i32 0, i32 9
  %213 = load i32, i32* %left284, align 4
  %inc285 = add nsw i32 %213, 1
  store i32 %inc285, i32* %left284, align 4
  %214 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right286 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %214, i32 0, i32 10
  %215 = load i32, i32* %right286, align 4
  %inc287 = add nsw i32 %215, 1
  store i32 %inc287, i32* %right286, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.283, %lor.lhs.false.280, %lor.lhs.false.273
  %216 = load i32, i32* %height, align 4
  %rem289 = srem i32 %216, 2
  %cmp290 = icmp ne i32 %rem289, 0
  br i1 %cmp290, label %land.lhs.true.292, label %lor.lhs.false.298

land.lhs.true.292:                                ; preds = %if.end.288
  %217 = load i32, i32* %orient, align 4
  %cmp293 = icmp eq i32 %217, 1
  br i1 %cmp293, label %if.then.308, label %lor.lhs.false.295

lor.lhs.false.295:                                ; preds = %land.lhs.true.292
  %218 = load i32, i32* %orient, align 4
  %cmp296 = icmp eq i32 %218, 3
  br i1 %cmp296, label %if.then.308, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %lor.lhs.false.295, %if.end.288
  %219 = load i32, i32* %length, align 4
  %rem299 = srem i32 %219, 2
  %cmp300 = icmp ne i32 %rem299, 0
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.313

land.lhs.true.302:                                ; preds = %lor.lhs.false.298
  %220 = load i32, i32* %orient, align 4
  %cmp303 = icmp eq i32 %220, 4
  br i1 %cmp303, label %if.then.308, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %land.lhs.true.302
  %221 = load i32, i32* %orient, align 4
  %cmp306 = icmp eq i32 %221, 7
  br i1 %cmp306, label %if.then.308, label %if.end.313

if.then.308:                                      ; preds = %lor.lhs.false.305, %land.lhs.true.302, %lor.lhs.false.295, %land.lhs.true.292
  %222 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom309 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %222, i32 0, i32 11
  %223 = load i32, i32* %bottom309, align 4
  %inc310 = add nsw i32 %223, 1
  store i32 %inc310, i32* %bottom309, align 4
  %224 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top311 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %224, i32 0, i32 12
  %225 = load i32, i32* %top311, align 4
  %inc312 = add nsw i32 %225, 1
  store i32 %inc312, i32* %top311, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.308, %lor.lhs.false.305, %lor.lhs.false.298
  store i32 1, i32* %tilenum, align 4
  br label %for.cond.314

for.cond.314:                                     ; preds = %for.inc.382, %if.end.313
  %226 = load i32, i32* %tilenum, align 4
  %227 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %227, i32 0, i32 6
  %228 = load i32, i32* %numtiles, align 4
  %cmp315 = icmp sle i32 %226, %228
  br i1 %cmp315, label %for.body.317, label %for.end.384

for.body.317:                                     ; preds = %for.cond.314
  %229 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile318 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i32 0, i32 0
  %230 = load %struct.tilebox*, %struct.tilebox** %nexttile318, align 8
  store %struct.tilebox* %230, %struct.tilebox** %tptr0, align 8
  %231 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile319 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %231, i32 0, i32 0
  %232 = load %struct.tilebox*, %struct.tilebox** %nexttile319, align 8
  store %struct.tilebox* %232, %struct.tilebox** %tptr, align 8
  %233 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left320 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %233, i32 0, i32 9
  %234 = load i32, i32* %left320, align 4
  %235 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left321 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %235, i32 0, i32 9
  store i32 %234, i32* %left321, align 4
  %236 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right322 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %236, i32 0, i32 10
  %237 = load i32, i32* %right322, align 4
  %238 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right323 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %238, i32 0, i32 10
  store i32 %237, i32* %right323, align 4
  %239 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom324 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %239, i32 0, i32 11
  %240 = load i32, i32* %bottom324, align 4
  %241 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom325 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %241, i32 0, i32 11
  store i32 %240, i32* %bottom325, align 4
  %242 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top326 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %242, i32 0, i32 12
  %243 = load i32, i32* %top326, align 4
  %244 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top327 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %244, i32 0, i32 12
  store i32 %243, i32* %top327, align 4
  %245 = load i32, i32* %orient, align 4
  call void @move(i32 %245)
  %246 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left328 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %246, i32 0, i32 9
  %247 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom329 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i32 0, i32 11
  %248 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right330 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %248, i32 0, i32 10
  %249 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top331 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %249, i32 0, i32 12
  call void @rect(i32* %left328, i32* %bottom329, i32* %right330, i32* %top331)
  %250 = load i32, i32* %height, align 4
  %rem332 = srem i32 %250, 2
  %cmp333 = icmp ne i32 %rem332, 0
  br i1 %cmp333, label %land.lhs.true.335, label %lor.lhs.false.341

land.lhs.true.335:                                ; preds = %for.body.317
  %251 = load i32, i32* %orient, align 4
  %cmp336 = icmp eq i32 %251, 4
  br i1 %cmp336, label %if.then.351, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %land.lhs.true.335
  %252 = load i32, i32* %orient, align 4
  %cmp339 = icmp eq i32 %252, 6
  br i1 %cmp339, label %if.then.351, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %lor.lhs.false.338, %for.body.317
  %253 = load i32, i32* %length, align 4
  %rem342 = srem i32 %253, 2
  %cmp343 = icmp ne i32 %rem342, 0
  br i1 %cmp343, label %land.lhs.true.345, label %if.end.356

land.lhs.true.345:                                ; preds = %lor.lhs.false.341
  %254 = load i32, i32* %orient, align 4
  %cmp346 = icmp eq i32 %254, 2
  br i1 %cmp346, label %if.then.351, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %land.lhs.true.345
  %255 = load i32, i32* %orient, align 4
  %cmp349 = icmp eq i32 %255, 3
  br i1 %cmp349, label %if.then.351, label %if.end.356

if.then.351:                                      ; preds = %lor.lhs.false.348, %land.lhs.true.345, %lor.lhs.false.338, %land.lhs.true.335
  %256 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left352 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %256, i32 0, i32 9
  %257 = load i32, i32* %left352, align 4
  %inc353 = add nsw i32 %257, 1
  store i32 %inc353, i32* %left352, align 4
  %258 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right354 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %258, i32 0, i32 10
  %259 = load i32, i32* %right354, align 4
  %inc355 = add nsw i32 %259, 1
  store i32 %inc355, i32* %right354, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.351, %lor.lhs.false.348, %lor.lhs.false.341
  %260 = load i32, i32* %height, align 4
  %rem357 = srem i32 %260, 2
  %cmp358 = icmp ne i32 %rem357, 0
  br i1 %cmp358, label %land.lhs.true.360, label %lor.lhs.false.366

land.lhs.true.360:                                ; preds = %if.end.356
  %261 = load i32, i32* %orient, align 4
  %cmp361 = icmp eq i32 %261, 1
  br i1 %cmp361, label %if.then.376, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %land.lhs.true.360
  %262 = load i32, i32* %orient, align 4
  %cmp364 = icmp eq i32 %262, 3
  br i1 %cmp364, label %if.then.376, label %lor.lhs.false.366

lor.lhs.false.366:                                ; preds = %lor.lhs.false.363, %if.end.356
  %263 = load i32, i32* %length, align 4
  %rem367 = srem i32 %263, 2
  %cmp368 = icmp ne i32 %rem367, 0
  br i1 %cmp368, label %land.lhs.true.370, label %if.end.381

land.lhs.true.370:                                ; preds = %lor.lhs.false.366
  %264 = load i32, i32* %orient, align 4
  %cmp371 = icmp eq i32 %264, 4
  br i1 %cmp371, label %if.then.376, label %lor.lhs.false.373

lor.lhs.false.373:                                ; preds = %land.lhs.true.370
  %265 = load i32, i32* %orient, align 4
  %cmp374 = icmp eq i32 %265, 7
  br i1 %cmp374, label %if.then.376, label %if.end.381

if.then.376:                                      ; preds = %lor.lhs.false.373, %land.lhs.true.370, %lor.lhs.false.363, %land.lhs.true.360
  %266 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom377 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %266, i32 0, i32 11
  %267 = load i32, i32* %bottom377, align 4
  %inc378 = add nsw i32 %267, 1
  store i32 %inc378, i32* %bottom377, align 4
  %268 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top379 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %268, i32 0, i32 12
  %269 = load i32, i32* %top379, align 4
  %inc380 = add nsw i32 %269, 1
  store i32 %inc380, i32* %top379, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.376, %lor.lhs.false.373, %lor.lhs.false.366
  br label %for.inc.382

for.inc.382:                                      ; preds = %if.end.381
  %270 = load i32, i32* %tilenum, align 4
  %inc383 = add nsw i32 %270, 1
  store i32 %inc383, i32* %tilenum, align 4
  br label %for.cond.314

for.end.384:                                      ; preds = %for.cond.314
  %271 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i32 0, i32 8
  %272 = load i32, i32* %numterms, align 4
  %cmp385 = icmp ne i32 %272, 0
  br i1 %cmp385, label %if.then.387, label %if.end.505

if.then.387:                                      ; preds = %for.end.384
  %273 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config388 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %273, i32 0, i32 21
  %arrayidx389 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config388, i32 0, i64 0
  %274 = load %struct.tilebox*, %struct.tilebox** %arrayidx389, align 8
  %termptr390 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %274, i32 0, i32 17
  %275 = load %struct.termbox*, %struct.termbox** %termptr390, align 8
  store %struct.termbox* %275, %struct.termbox** %tmptr0, align 8
  %276 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  store %struct.termbox* %276, %struct.termbox** %tmptr1, align 8
  %277 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos391 = getelementptr inbounds %struct.termbox, %struct.termbox* %277, i32 0, i32 1
  %278 = load i32, i32* %xpos391, align 4
  %279 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos392 = getelementptr inbounds %struct.termbox, %struct.termbox* %279, i32 0, i32 1
  store i32 %278, i32* %xpos392, align 4
  %280 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos393 = getelementptr inbounds %struct.termbox, %struct.termbox* %280, i32 0, i32 2
  %281 = load i32, i32* %ypos393, align 4
  %282 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos394 = getelementptr inbounds %struct.termbox, %struct.termbox* %282, i32 0, i32 2
  store i32 %281, i32* %ypos394, align 4
  %283 = load i32, i32* %orient, align 4
  call void @move(i32 %283)
  %284 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos395 = getelementptr inbounds %struct.termbox, %struct.termbox* %284, i32 0, i32 1
  %285 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos396 = getelementptr inbounds %struct.termbox, %struct.termbox* %285, i32 0, i32 2
  call void @point(i32* %xpos395, i32* %ypos396)
  %286 = load i32, i32* %height, align 4
  %rem397 = srem i32 %286, 2
  %cmp398 = icmp ne i32 %rem397, 0
  br i1 %cmp398, label %land.lhs.true.400, label %lor.lhs.false.406

land.lhs.true.400:                                ; preds = %if.then.387
  %287 = load i32, i32* %orient, align 4
  %cmp401 = icmp eq i32 %287, 4
  br i1 %cmp401, label %if.then.416, label %lor.lhs.false.403

lor.lhs.false.403:                                ; preds = %land.lhs.true.400
  %288 = load i32, i32* %orient, align 4
  %cmp404 = icmp eq i32 %288, 6
  br i1 %cmp404, label %if.then.416, label %lor.lhs.false.406

lor.lhs.false.406:                                ; preds = %lor.lhs.false.403, %if.then.387
  %289 = load i32, i32* %length, align 4
  %rem407 = srem i32 %289, 2
  %cmp408 = icmp ne i32 %rem407, 0
  br i1 %cmp408, label %land.lhs.true.410, label %if.end.419

land.lhs.true.410:                                ; preds = %lor.lhs.false.406
  %290 = load i32, i32* %orient, align 4
  %cmp411 = icmp eq i32 %290, 2
  br i1 %cmp411, label %if.then.416, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %land.lhs.true.410
  %291 = load i32, i32* %orient, align 4
  %cmp414 = icmp eq i32 %291, 3
  br i1 %cmp414, label %if.then.416, label %if.end.419

if.then.416:                                      ; preds = %lor.lhs.false.413, %land.lhs.true.410, %lor.lhs.false.403, %land.lhs.true.400
  %292 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos417 = getelementptr inbounds %struct.termbox, %struct.termbox* %292, i32 0, i32 1
  %293 = load i32, i32* %xpos417, align 4
  %inc418 = add nsw i32 %293, 1
  store i32 %inc418, i32* %xpos417, align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.416, %lor.lhs.false.413, %lor.lhs.false.406
  %294 = load i32, i32* %height, align 4
  %rem420 = srem i32 %294, 2
  %cmp421 = icmp ne i32 %rem420, 0
  br i1 %cmp421, label %land.lhs.true.423, label %lor.lhs.false.429

land.lhs.true.423:                                ; preds = %if.end.419
  %295 = load i32, i32* %orient, align 4
  %cmp424 = icmp eq i32 %295, 1
  br i1 %cmp424, label %if.then.439, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %land.lhs.true.423
  %296 = load i32, i32* %orient, align 4
  %cmp427 = icmp eq i32 %296, 3
  br i1 %cmp427, label %if.then.439, label %lor.lhs.false.429

lor.lhs.false.429:                                ; preds = %lor.lhs.false.426, %if.end.419
  %297 = load i32, i32* %length, align 4
  %rem430 = srem i32 %297, 2
  %cmp431 = icmp ne i32 %rem430, 0
  br i1 %cmp431, label %land.lhs.true.433, label %if.end.442

land.lhs.true.433:                                ; preds = %lor.lhs.false.429
  %298 = load i32, i32* %orient, align 4
  %cmp434 = icmp eq i32 %298, 4
  br i1 %cmp434, label %if.then.439, label %lor.lhs.false.436

lor.lhs.false.436:                                ; preds = %land.lhs.true.433
  %299 = load i32, i32* %orient, align 4
  %cmp437 = icmp eq i32 %299, 7
  br i1 %cmp437, label %if.then.439, label %if.end.442

if.then.439:                                      ; preds = %lor.lhs.false.436, %land.lhs.true.433, %lor.lhs.false.426, %land.lhs.true.423
  %300 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos440 = getelementptr inbounds %struct.termbox, %struct.termbox* %300, i32 0, i32 2
  %301 = load i32, i32* %ypos440, align 4
  %inc441 = add nsw i32 %301, 1
  store i32 %inc441, i32* %ypos440, align 4
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.439, %lor.lhs.false.436, %lor.lhs.false.429
  store i32 2, i32* %termnum, align 4
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.502, %if.end.442
  %302 = load i32, i32* %termnum, align 4
  %303 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms444 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %303, i32 0, i32 8
  %304 = load i32, i32* %numterms444, align 4
  %cmp445 = icmp sle i32 %302, %304
  br i1 %cmp445, label %for.body.447, label %for.end.504

for.body.447:                                     ; preds = %for.cond.443
  %305 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm448 = getelementptr inbounds %struct.termbox, %struct.termbox* %305, i32 0, i32 0
  %306 = load %struct.termbox*, %struct.termbox** %nextterm448, align 8
  store %struct.termbox* %306, %struct.termbox** %tmptr0, align 8
  %307 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %nextterm449 = getelementptr inbounds %struct.termbox, %struct.termbox* %307, i32 0, i32 0
  %308 = load %struct.termbox*, %struct.termbox** %nextterm449, align 8
  store %struct.termbox* %308, %struct.termbox** %tmptr1, align 8
  %309 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos450 = getelementptr inbounds %struct.termbox, %struct.termbox* %309, i32 0, i32 1
  %310 = load i32, i32* %xpos450, align 4
  %311 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos451 = getelementptr inbounds %struct.termbox, %struct.termbox* %311, i32 0, i32 1
  store i32 %310, i32* %xpos451, align 4
  %312 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos452 = getelementptr inbounds %struct.termbox, %struct.termbox* %312, i32 0, i32 2
  %313 = load i32, i32* %ypos452, align 4
  %314 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos453 = getelementptr inbounds %struct.termbox, %struct.termbox* %314, i32 0, i32 2
  store i32 %313, i32* %ypos453, align 4
  %315 = load i32, i32* %orient, align 4
  call void @move(i32 %315)
  %316 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos454 = getelementptr inbounds %struct.termbox, %struct.termbox* %316, i32 0, i32 1
  %317 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos455 = getelementptr inbounds %struct.termbox, %struct.termbox* %317, i32 0, i32 2
  call void @point(i32* %xpos454, i32* %ypos455)
  %318 = load i32, i32* %height, align 4
  %rem456 = srem i32 %318, 2
  %cmp457 = icmp ne i32 %rem456, 0
  br i1 %cmp457, label %land.lhs.true.459, label %lor.lhs.false.465

land.lhs.true.459:                                ; preds = %for.body.447
  %319 = load i32, i32* %orient, align 4
  %cmp460 = icmp eq i32 %319, 4
  br i1 %cmp460, label %if.then.475, label %lor.lhs.false.462

lor.lhs.false.462:                                ; preds = %land.lhs.true.459
  %320 = load i32, i32* %orient, align 4
  %cmp463 = icmp eq i32 %320, 6
  br i1 %cmp463, label %if.then.475, label %lor.lhs.false.465

lor.lhs.false.465:                                ; preds = %lor.lhs.false.462, %for.body.447
  %321 = load i32, i32* %length, align 4
  %rem466 = srem i32 %321, 2
  %cmp467 = icmp ne i32 %rem466, 0
  br i1 %cmp467, label %land.lhs.true.469, label %if.end.478

land.lhs.true.469:                                ; preds = %lor.lhs.false.465
  %322 = load i32, i32* %orient, align 4
  %cmp470 = icmp eq i32 %322, 2
  br i1 %cmp470, label %if.then.475, label %lor.lhs.false.472

lor.lhs.false.472:                                ; preds = %land.lhs.true.469
  %323 = load i32, i32* %orient, align 4
  %cmp473 = icmp eq i32 %323, 3
  br i1 %cmp473, label %if.then.475, label %if.end.478

if.then.475:                                      ; preds = %lor.lhs.false.472, %land.lhs.true.469, %lor.lhs.false.462, %land.lhs.true.459
  %324 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos476 = getelementptr inbounds %struct.termbox, %struct.termbox* %324, i32 0, i32 1
  %325 = load i32, i32* %xpos476, align 4
  %inc477 = add nsw i32 %325, 1
  store i32 %inc477, i32* %xpos476, align 4
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.475, %lor.lhs.false.472, %lor.lhs.false.465
  %326 = load i32, i32* %height, align 4
  %rem479 = srem i32 %326, 2
  %cmp480 = icmp ne i32 %rem479, 0
  br i1 %cmp480, label %land.lhs.true.482, label %lor.lhs.false.488

land.lhs.true.482:                                ; preds = %if.end.478
  %327 = load i32, i32* %orient, align 4
  %cmp483 = icmp eq i32 %327, 1
  br i1 %cmp483, label %if.then.498, label %lor.lhs.false.485

lor.lhs.false.485:                                ; preds = %land.lhs.true.482
  %328 = load i32, i32* %orient, align 4
  %cmp486 = icmp eq i32 %328, 3
  br i1 %cmp486, label %if.then.498, label %lor.lhs.false.488

lor.lhs.false.488:                                ; preds = %lor.lhs.false.485, %if.end.478
  %329 = load i32, i32* %length, align 4
  %rem489 = srem i32 %329, 2
  %cmp490 = icmp ne i32 %rem489, 0
  br i1 %cmp490, label %land.lhs.true.492, label %if.end.501

land.lhs.true.492:                                ; preds = %lor.lhs.false.488
  %330 = load i32, i32* %orient, align 4
  %cmp493 = icmp eq i32 %330, 4
  br i1 %cmp493, label %if.then.498, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %land.lhs.true.492
  %331 = load i32, i32* %orient, align 4
  %cmp496 = icmp eq i32 %331, 7
  br i1 %cmp496, label %if.then.498, label %if.end.501

if.then.498:                                      ; preds = %lor.lhs.false.495, %land.lhs.true.492, %lor.lhs.false.485, %land.lhs.true.482
  %332 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos499 = getelementptr inbounds %struct.termbox, %struct.termbox* %332, i32 0, i32 2
  %333 = load i32, i32* %ypos499, align 4
  %inc500 = add nsw i32 %333, 1
  store i32 %inc500, i32* %ypos499, align 4
  br label %if.end.501

if.end.501:                                       ; preds = %if.then.498, %lor.lhs.false.495, %lor.lhs.false.488
  br label %for.inc.502

for.inc.502:                                      ; preds = %if.end.501
  %334 = load i32, i32* %termnum, align 4
  %inc503 = add nsw i32 %334, 1
  store i32 %inc503, i32* %termnum, align 4
  br label %for.cond.443

for.end.504:                                      ; preds = %for.cond.443
  br label %if.end.505

if.end.505:                                       ; preds = %for.end.504, %for.end.384
  %335 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites506 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %335, i32 0, i32 17
  %336 = load i32, i32* %numsites506, align 4
  %cmp507 = icmp ne i32 %336, 0
  br i1 %cmp507, label %if.then.509, label %if.end.589

if.then.509:                                      ; preds = %if.end.505
  %337 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config510 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %337, i32 0, i32 21
  %arrayidx511 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config510, i32 0, i64 0
  %338 = load %struct.tilebox*, %struct.tilebox** %arrayidx511, align 8
  %siteLocArray512 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %338, i32 0, i32 18
  %339 = load %struct.locbox*, %struct.locbox** %siteLocArray512, align 8
  store %struct.locbox* %339, %struct.locbox** %siteptr0, align 8
  %340 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  store %struct.locbox* %340, %struct.locbox** %siteptr, align 8
  store i32 1, i32* %site, align 4
  br label %for.cond.513

for.cond.513:                                     ; preds = %for.inc.586, %if.then.509
  %341 = load i32, i32* %site, align 4
  %342 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites514 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %342, i32 0, i32 17
  %343 = load i32, i32* %numsites514, align 4
  %cmp515 = icmp sle i32 %341, %343
  br i1 %cmp515, label %for.body.517, label %for.end.588

for.body.517:                                     ; preds = %for.cond.513
  %344 = load i32, i32* %site, align 4
  %idxprom518 = sext i32 %344 to i64
  %345 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx519 = getelementptr inbounds %struct.locbox, %struct.locbox* %345, i64 %idxprom518
  %xpos520 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx519, i32 0, i32 0
  %346 = load i32, i32* %xpos520, align 4
  %347 = load i32, i32* %site, align 4
  %idxprom521 = sext i32 %347 to i64
  %348 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx522 = getelementptr inbounds %struct.locbox, %struct.locbox* %348, i64 %idxprom521
  %xpos523 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx522, i32 0, i32 0
  store i32 %346, i32* %xpos523, align 4
  %349 = load i32, i32* %site, align 4
  %idxprom524 = sext i32 %349 to i64
  %350 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx525 = getelementptr inbounds %struct.locbox, %struct.locbox* %350, i64 %idxprom524
  %ypos526 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx525, i32 0, i32 1
  %351 = load i32, i32* %ypos526, align 4
  %352 = load i32, i32* %site, align 4
  %idxprom527 = sext i32 %352 to i64
  %353 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx528 = getelementptr inbounds %struct.locbox, %struct.locbox* %353, i64 %idxprom527
  %ypos529 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx528, i32 0, i32 1
  store i32 %351, i32* %ypos529, align 4
  %354 = load i32, i32* %orient, align 4
  call void @move(i32 %354)
  %355 = load i32, i32* %site, align 4
  %idxprom530 = sext i32 %355 to i64
  %356 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx531 = getelementptr inbounds %struct.locbox, %struct.locbox* %356, i64 %idxprom530
  %xpos532 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx531, i32 0, i32 0
  %357 = load i32, i32* %site, align 4
  %idxprom533 = sext i32 %357 to i64
  %358 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx534 = getelementptr inbounds %struct.locbox, %struct.locbox* %358, i64 %idxprom533
  %ypos535 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx534, i32 0, i32 1
  call void @point(i32* %xpos532, i32* %ypos535)
  %359 = load i32, i32* %height, align 4
  %rem536 = srem i32 %359, 2
  %cmp537 = icmp ne i32 %rem536, 0
  br i1 %cmp537, label %land.lhs.true.539, label %lor.lhs.false.545

land.lhs.true.539:                                ; preds = %for.body.517
  %360 = load i32, i32* %orient, align 4
  %cmp540 = icmp eq i32 %360, 4
  br i1 %cmp540, label %if.then.555, label %lor.lhs.false.542

lor.lhs.false.542:                                ; preds = %land.lhs.true.539
  %361 = load i32, i32* %orient, align 4
  %cmp543 = icmp eq i32 %361, 6
  br i1 %cmp543, label %if.then.555, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %lor.lhs.false.542, %for.body.517
  %362 = load i32, i32* %length, align 4
  %rem546 = srem i32 %362, 2
  %cmp547 = icmp ne i32 %rem546, 0
  br i1 %cmp547, label %land.lhs.true.549, label %if.end.560

land.lhs.true.549:                                ; preds = %lor.lhs.false.545
  %363 = load i32, i32* %orient, align 4
  %cmp550 = icmp eq i32 %363, 2
  br i1 %cmp550, label %if.then.555, label %lor.lhs.false.552

lor.lhs.false.552:                                ; preds = %land.lhs.true.549
  %364 = load i32, i32* %orient, align 4
  %cmp553 = icmp eq i32 %364, 3
  br i1 %cmp553, label %if.then.555, label %if.end.560

if.then.555:                                      ; preds = %lor.lhs.false.552, %land.lhs.true.549, %lor.lhs.false.542, %land.lhs.true.539
  %365 = load i32, i32* %site, align 4
  %idxprom556 = sext i32 %365 to i64
  %366 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx557 = getelementptr inbounds %struct.locbox, %struct.locbox* %366, i64 %idxprom556
  %xpos558 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx557, i32 0, i32 0
  %367 = load i32, i32* %xpos558, align 4
  %inc559 = add nsw i32 %367, 1
  store i32 %inc559, i32* %xpos558, align 4
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.555, %lor.lhs.false.552, %lor.lhs.false.545
  %368 = load i32, i32* %height, align 4
  %rem561 = srem i32 %368, 2
  %cmp562 = icmp ne i32 %rem561, 0
  br i1 %cmp562, label %land.lhs.true.564, label %lor.lhs.false.570

land.lhs.true.564:                                ; preds = %if.end.560
  %369 = load i32, i32* %orient, align 4
  %cmp565 = icmp eq i32 %369, 1
  br i1 %cmp565, label %if.then.580, label %lor.lhs.false.567

lor.lhs.false.567:                                ; preds = %land.lhs.true.564
  %370 = load i32, i32* %orient, align 4
  %cmp568 = icmp eq i32 %370, 3
  br i1 %cmp568, label %if.then.580, label %lor.lhs.false.570

lor.lhs.false.570:                                ; preds = %lor.lhs.false.567, %if.end.560
  %371 = load i32, i32* %length, align 4
  %rem571 = srem i32 %371, 2
  %cmp572 = icmp ne i32 %rem571, 0
  br i1 %cmp572, label %land.lhs.true.574, label %if.end.585

land.lhs.true.574:                                ; preds = %lor.lhs.false.570
  %372 = load i32, i32* %orient, align 4
  %cmp575 = icmp eq i32 %372, 4
  br i1 %cmp575, label %if.then.580, label %lor.lhs.false.577

lor.lhs.false.577:                                ; preds = %land.lhs.true.574
  %373 = load i32, i32* %orient, align 4
  %cmp578 = icmp eq i32 %373, 7
  br i1 %cmp578, label %if.then.580, label %if.end.585

if.then.580:                                      ; preds = %lor.lhs.false.577, %land.lhs.true.574, %lor.lhs.false.567, %land.lhs.true.564
  %374 = load i32, i32* %site, align 4
  %idxprom581 = sext i32 %374 to i64
  %375 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx582 = getelementptr inbounds %struct.locbox, %struct.locbox* %375, i64 %idxprom581
  %ypos583 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx582, i32 0, i32 1
  %376 = load i32, i32* %ypos583, align 4
  %inc584 = add nsw i32 %376, 1
  store i32 %inc584, i32* %ypos583, align 4
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.580, %lor.lhs.false.577, %lor.lhs.false.570
  br label %for.inc.586

for.inc.586:                                      ; preds = %if.end.585
  %377 = load i32, i32* %site, align 4
  %inc587 = add nsw i32 %377, 1
  store i32 %inc587, i32* %site, align 4
  br label %for.cond.513

for.end.588:                                      ; preds = %for.cond.513
  br label %if.end.589

if.end.589:                                       ; preds = %for.end.588, %if.end.505
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %for.end.236
  %378 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config591 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %378, i32 0, i32 21
  %arrayidx592 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config591, i32 0, i64 0
  %379 = load %struct.tilebox*, %struct.tilebox** %arrayidx592, align 8
  %top593 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %379, i32 0, i32 12
  %380 = load i32, i32* %top593, align 4
  %381 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config594 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %381, i32 0, i32 21
  %arrayidx595 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config594, i32 0, i64 0
  %382 = load %struct.tilebox*, %struct.tilebox** %arrayidx595, align 8
  %bottom596 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %382, i32 0, i32 11
  %383 = load i32, i32* %bottom596, align 4
  %sub597 = sub nsw i32 %380, %383
  store i32 %sub597, i32* %height, align 4
  %384 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config598 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %384, i32 0, i32 21
  %arrayidx599 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config598, i32 0, i64 0
  %385 = load %struct.tilebox*, %struct.tilebox** %arrayidx599, align 8
  %right600 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %385, i32 0, i32 10
  %386 = load i32, i32* %right600, align 4
  %387 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config601 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %387, i32 0, i32 21
  %arrayidx602 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config601, i32 0, i64 0
  %388 = load %struct.tilebox*, %struct.tilebox** %arrayidx602, align 8
  %left603 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %388, i32 0, i32 9
  %389 = load i32, i32* %left603, align 4
  %sub604 = sub nsw i32 %386, %389
  store i32 %sub604, i32* %length, align 4
  store i32 1, i32* %orient, align 4
  br label %for.cond.605

for.cond.605:                                     ; preds = %for.inc.752, %if.end.590
  %390 = load i32, i32* %orient, align 4
  %cmp606 = icmp sle i32 %390, 7
  br i1 %cmp606, label %for.body.608, label %for.end.754

for.body.608:                                     ; preds = %for.cond.605
  %391 = load i32, i32* %orient, align 4
  %392 = load i32, i32* %aorient, align 4
  %cmp609 = icmp eq i32 %391, %392
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %for.body.608
  br label %for.inc.752

if.end.612:                                       ; preds = %for.body.608
  %393 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config613 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %393, i32 0, i32 21
  %arrayidx614 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config613, i32 0, i64 0
  %394 = load %struct.tilebox*, %struct.tilebox** %arrayidx614, align 8
  store %struct.tilebox* %394, %struct.tilebox** %tptr0, align 8
  %395 = load i32, i32* %orient, align 4
  %idxprom615 = sext i32 %395 to i64
  %396 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config616 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %396, i32 0, i32 21
  %arrayidx617 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config616, i32 0, i64 %idxprom615
  %397 = load %struct.tilebox*, %struct.tilebox** %arrayidx617, align 8
  store %struct.tilebox* %397, %struct.tilebox** %tptr, align 8
  %398 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left618 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %398, i32 0, i32 9
  %399 = load i32, i32* %left618, align 4
  %400 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left619 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %400, i32 0, i32 9
  store i32 %399, i32* %left619, align 4
  %401 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right620 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %401, i32 0, i32 10
  %402 = load i32, i32* %right620, align 4
  %403 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right621 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %403, i32 0, i32 10
  store i32 %402, i32* %right621, align 4
  %404 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom622 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %404, i32 0, i32 11
  %405 = load i32, i32* %bottom622, align 4
  %406 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom623 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %406, i32 0, i32 11
  store i32 %405, i32* %bottom623, align 4
  %407 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top624 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %407, i32 0, i32 12
  %408 = load i32, i32* %top624, align 4
  %409 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top625 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %409, i32 0, i32 12
  store i32 %408, i32* %top625, align 4
  %410 = load i32, i32* %orient, align 4
  call void @move(i32 %410)
  %411 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left626 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %411, i32 0, i32 9
  %412 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom627 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %412, i32 0, i32 11
  %413 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right628 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %413, i32 0, i32 10
  %414 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top629 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %414, i32 0, i32 12
  call void @rect(i32* %left626, i32* %bottom627, i32* %right628, i32* %top629)
  %415 = load i32, i32* %height, align 4
  %rem630 = srem i32 %415, 2
  %cmp631 = icmp ne i32 %rem630, 0
  br i1 %cmp631, label %land.lhs.true.633, label %lor.lhs.false.639

land.lhs.true.633:                                ; preds = %if.end.612
  %416 = load i32, i32* %orient, align 4
  %cmp634 = icmp eq i32 %416, 4
  br i1 %cmp634, label %if.then.649, label %lor.lhs.false.636

lor.lhs.false.636:                                ; preds = %land.lhs.true.633
  %417 = load i32, i32* %orient, align 4
  %cmp637 = icmp eq i32 %417, 6
  br i1 %cmp637, label %if.then.649, label %lor.lhs.false.639

lor.lhs.false.639:                                ; preds = %lor.lhs.false.636, %if.end.612
  %418 = load i32, i32* %length, align 4
  %rem640 = srem i32 %418, 2
  %cmp641 = icmp ne i32 %rem640, 0
  br i1 %cmp641, label %land.lhs.true.643, label %if.end.654

land.lhs.true.643:                                ; preds = %lor.lhs.false.639
  %419 = load i32, i32* %orient, align 4
  %cmp644 = icmp eq i32 %419, 2
  br i1 %cmp644, label %if.then.649, label %lor.lhs.false.646

lor.lhs.false.646:                                ; preds = %land.lhs.true.643
  %420 = load i32, i32* %orient, align 4
  %cmp647 = icmp eq i32 %420, 3
  br i1 %cmp647, label %if.then.649, label %if.end.654

if.then.649:                                      ; preds = %lor.lhs.false.646, %land.lhs.true.643, %lor.lhs.false.636, %land.lhs.true.633
  %421 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left650 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %421, i32 0, i32 9
  %422 = load i32, i32* %left650, align 4
  %inc651 = add nsw i32 %422, 1
  store i32 %inc651, i32* %left650, align 4
  %423 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right652 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %423, i32 0, i32 10
  %424 = load i32, i32* %right652, align 4
  %inc653 = add nsw i32 %424, 1
  store i32 %inc653, i32* %right652, align 4
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.649, %lor.lhs.false.646, %lor.lhs.false.639
  %425 = load i32, i32* %height, align 4
  %rem655 = srem i32 %425, 2
  %cmp656 = icmp ne i32 %rem655, 0
  br i1 %cmp656, label %land.lhs.true.658, label %lor.lhs.false.664

land.lhs.true.658:                                ; preds = %if.end.654
  %426 = load i32, i32* %orient, align 4
  %cmp659 = icmp eq i32 %426, 1
  br i1 %cmp659, label %if.then.674, label %lor.lhs.false.661

lor.lhs.false.661:                                ; preds = %land.lhs.true.658
  %427 = load i32, i32* %orient, align 4
  %cmp662 = icmp eq i32 %427, 3
  br i1 %cmp662, label %if.then.674, label %lor.lhs.false.664

lor.lhs.false.664:                                ; preds = %lor.lhs.false.661, %if.end.654
  %428 = load i32, i32* %length, align 4
  %rem665 = srem i32 %428, 2
  %cmp666 = icmp ne i32 %rem665, 0
  br i1 %cmp666, label %land.lhs.true.668, label %if.end.679

land.lhs.true.668:                                ; preds = %lor.lhs.false.664
  %429 = load i32, i32* %orient, align 4
  %cmp669 = icmp eq i32 %429, 4
  br i1 %cmp669, label %if.then.674, label %lor.lhs.false.671

lor.lhs.false.671:                                ; preds = %land.lhs.true.668
  %430 = load i32, i32* %orient, align 4
  %cmp672 = icmp eq i32 %430, 7
  br i1 %cmp672, label %if.then.674, label %if.end.679

if.then.674:                                      ; preds = %lor.lhs.false.671, %land.lhs.true.668, %lor.lhs.false.661, %land.lhs.true.658
  %431 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom675 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %431, i32 0, i32 11
  %432 = load i32, i32* %bottom675, align 4
  %inc676 = add nsw i32 %432, 1
  store i32 %inc676, i32* %bottom675, align 4
  %433 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top677 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %433, i32 0, i32 12
  %434 = load i32, i32* %top677, align 4
  %inc678 = add nsw i32 %434, 1
  store i32 %inc678, i32* %top677, align 4
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.674, %lor.lhs.false.671, %lor.lhs.false.664
  store i32 1, i32* %tilenum, align 4
  br label %for.cond.680

for.cond.680:                                     ; preds = %for.inc.749, %if.end.679
  %435 = load i32, i32* %tilenum, align 4
  %436 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles681 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %436, i32 0, i32 6
  %437 = load i32, i32* %numtiles681, align 4
  %cmp682 = icmp sle i32 %435, %437
  br i1 %cmp682, label %for.body.684, label %for.end.751

for.body.684:                                     ; preds = %for.cond.680
  %438 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile685 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %438, i32 0, i32 0
  %439 = load %struct.tilebox*, %struct.tilebox** %nexttile685, align 8
  store %struct.tilebox* %439, %struct.tilebox** %tptr0, align 8
  %440 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile686 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %440, i32 0, i32 0
  %441 = load %struct.tilebox*, %struct.tilebox** %nexttile686, align 8
  store %struct.tilebox* %441, %struct.tilebox** %tptr, align 8
  %442 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left687 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %442, i32 0, i32 9
  %443 = load i32, i32* %left687, align 4
  %444 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left688 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %444, i32 0, i32 9
  store i32 %443, i32* %left688, align 4
  %445 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right689 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %445, i32 0, i32 10
  %446 = load i32, i32* %right689, align 4
  %447 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right690 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %447, i32 0, i32 10
  store i32 %446, i32* %right690, align 4
  %448 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom691 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %448, i32 0, i32 11
  %449 = load i32, i32* %bottom691, align 4
  %450 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom692 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %450, i32 0, i32 11
  store i32 %449, i32* %bottom692, align 4
  %451 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top693 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %451, i32 0, i32 12
  %452 = load i32, i32* %top693, align 4
  %453 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top694 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %453, i32 0, i32 12
  store i32 %452, i32* %top694, align 4
  %454 = load i32, i32* %orient, align 4
  call void @move(i32 %454)
  %455 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left695 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %455, i32 0, i32 9
  %456 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom696 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %456, i32 0, i32 11
  %457 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right697 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %457, i32 0, i32 10
  %458 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top698 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %458, i32 0, i32 12
  call void @rect(i32* %left695, i32* %bottom696, i32* %right697, i32* %top698)
  %459 = load i32, i32* %height, align 4
  %rem699 = srem i32 %459, 2
  %cmp700 = icmp ne i32 %rem699, 0
  br i1 %cmp700, label %land.lhs.true.702, label %lor.lhs.false.708

land.lhs.true.702:                                ; preds = %for.body.684
  %460 = load i32, i32* %orient, align 4
  %cmp703 = icmp eq i32 %460, 4
  br i1 %cmp703, label %if.then.718, label %lor.lhs.false.705

lor.lhs.false.705:                                ; preds = %land.lhs.true.702
  %461 = load i32, i32* %orient, align 4
  %cmp706 = icmp eq i32 %461, 6
  br i1 %cmp706, label %if.then.718, label %lor.lhs.false.708

lor.lhs.false.708:                                ; preds = %lor.lhs.false.705, %for.body.684
  %462 = load i32, i32* %length, align 4
  %rem709 = srem i32 %462, 2
  %cmp710 = icmp ne i32 %rem709, 0
  br i1 %cmp710, label %land.lhs.true.712, label %if.end.723

land.lhs.true.712:                                ; preds = %lor.lhs.false.708
  %463 = load i32, i32* %orient, align 4
  %cmp713 = icmp eq i32 %463, 2
  br i1 %cmp713, label %if.then.718, label %lor.lhs.false.715

lor.lhs.false.715:                                ; preds = %land.lhs.true.712
  %464 = load i32, i32* %orient, align 4
  %cmp716 = icmp eq i32 %464, 3
  br i1 %cmp716, label %if.then.718, label %if.end.723

if.then.718:                                      ; preds = %lor.lhs.false.715, %land.lhs.true.712, %lor.lhs.false.705, %land.lhs.true.702
  %465 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left719 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %465, i32 0, i32 9
  %466 = load i32, i32* %left719, align 4
  %inc720 = add nsw i32 %466, 1
  store i32 %inc720, i32* %left719, align 4
  %467 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right721 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %467, i32 0, i32 10
  %468 = load i32, i32* %right721, align 4
  %inc722 = add nsw i32 %468, 1
  store i32 %inc722, i32* %right721, align 4
  br label %if.end.723

if.end.723:                                       ; preds = %if.then.718, %lor.lhs.false.715, %lor.lhs.false.708
  %469 = load i32, i32* %height, align 4
  %rem724 = srem i32 %469, 2
  %cmp725 = icmp ne i32 %rem724, 0
  br i1 %cmp725, label %land.lhs.true.727, label %lor.lhs.false.733

land.lhs.true.727:                                ; preds = %if.end.723
  %470 = load i32, i32* %orient, align 4
  %cmp728 = icmp eq i32 %470, 1
  br i1 %cmp728, label %if.then.743, label %lor.lhs.false.730

lor.lhs.false.730:                                ; preds = %land.lhs.true.727
  %471 = load i32, i32* %orient, align 4
  %cmp731 = icmp eq i32 %471, 3
  br i1 %cmp731, label %if.then.743, label %lor.lhs.false.733

lor.lhs.false.733:                                ; preds = %lor.lhs.false.730, %if.end.723
  %472 = load i32, i32* %length, align 4
  %rem734 = srem i32 %472, 2
  %cmp735 = icmp ne i32 %rem734, 0
  br i1 %cmp735, label %land.lhs.true.737, label %if.end.748

land.lhs.true.737:                                ; preds = %lor.lhs.false.733
  %473 = load i32, i32* %orient, align 4
  %cmp738 = icmp eq i32 %473, 4
  br i1 %cmp738, label %if.then.743, label %lor.lhs.false.740

lor.lhs.false.740:                                ; preds = %land.lhs.true.737
  %474 = load i32, i32* %orient, align 4
  %cmp741 = icmp eq i32 %474, 7
  br i1 %cmp741, label %if.then.743, label %if.end.748

if.then.743:                                      ; preds = %lor.lhs.false.740, %land.lhs.true.737, %lor.lhs.false.730, %land.lhs.true.727
  %475 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom744 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %475, i32 0, i32 11
  %476 = load i32, i32* %bottom744, align 4
  %inc745 = add nsw i32 %476, 1
  store i32 %inc745, i32* %bottom744, align 4
  %477 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top746 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %477, i32 0, i32 12
  %478 = load i32, i32* %top746, align 4
  %inc747 = add nsw i32 %478, 1
  store i32 %inc747, i32* %top746, align 4
  br label %if.end.748

if.end.748:                                       ; preds = %if.then.743, %lor.lhs.false.740, %lor.lhs.false.733
  br label %for.inc.749

for.inc.749:                                      ; preds = %if.end.748
  %479 = load i32, i32* %tilenum, align 4
  %inc750 = add nsw i32 %479, 1
  store i32 %inc750, i32* %tilenum, align 4
  br label %for.cond.680

for.end.751:                                      ; preds = %for.cond.680
  br label %for.inc.752

for.inc.752:                                      ; preds = %for.end.751, %if.then.611
  %480 = load i32, i32* %orient, align 4
  %inc753 = add nsw i32 %480, 1
  store i32 %inc753, i32* %orient, align 4
  br label %for.cond.605

for.end.754:                                      ; preds = %for.cond.605
  %481 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms755 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %481, i32 0, i32 8
  %482 = load i32, i32* %numterms755, align 4
  %cmp756 = icmp ne i32 %482, 0
  br i1 %cmp756, label %if.then.758, label %if.end.891

if.then.758:                                      ; preds = %for.end.754
  store i32 1, i32* %orient, align 4
  br label %for.cond.759

for.cond.759:                                     ; preds = %for.inc.888, %if.then.758
  %483 = load i32, i32* %orient, align 4
  %cmp760 = icmp sle i32 %483, 7
  br i1 %cmp760, label %for.body.762, label %for.end.890

for.body.762:                                     ; preds = %for.cond.759
  %484 = load i32, i32* %orient, align 4
  %485 = load i32, i32* %aorient, align 4
  %cmp763 = icmp eq i32 %484, %485
  br i1 %cmp763, label %if.then.765, label %if.end.766

if.then.765:                                      ; preds = %for.body.762
  br label %for.inc.888

if.end.766:                                       ; preds = %for.body.762
  %486 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config767 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %486, i32 0, i32 21
  %arrayidx768 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config767, i32 0, i64 0
  %487 = load %struct.tilebox*, %struct.tilebox** %arrayidx768, align 8
  %termptr769 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %487, i32 0, i32 17
  %488 = load %struct.termbox*, %struct.termbox** %termptr769, align 8
  store %struct.termbox* %488, %struct.termbox** %tmptr0, align 8
  %489 = load i32, i32* %orient, align 4
  %idxprom770 = sext i32 %489 to i64
  %490 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config771 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %490, i32 0, i32 21
  %arrayidx772 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config771, i32 0, i64 %idxprom770
  %491 = load %struct.tilebox*, %struct.tilebox** %arrayidx772, align 8
  %termptr773 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %491, i32 0, i32 17
  %492 = load %struct.termbox*, %struct.termbox** %termptr773, align 8
  store %struct.termbox* %492, %struct.termbox** %tmptr1, align 8
  %493 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos774 = getelementptr inbounds %struct.termbox, %struct.termbox* %493, i32 0, i32 1
  %494 = load i32, i32* %xpos774, align 4
  %495 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos775 = getelementptr inbounds %struct.termbox, %struct.termbox* %495, i32 0, i32 1
  store i32 %494, i32* %xpos775, align 4
  %496 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos776 = getelementptr inbounds %struct.termbox, %struct.termbox* %496, i32 0, i32 2
  %497 = load i32, i32* %ypos776, align 4
  %498 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos777 = getelementptr inbounds %struct.termbox, %struct.termbox* %498, i32 0, i32 2
  store i32 %497, i32* %ypos777, align 4
  %499 = load i32, i32* %orient, align 4
  call void @move(i32 %499)
  %500 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos778 = getelementptr inbounds %struct.termbox, %struct.termbox* %500, i32 0, i32 1
  %501 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos779 = getelementptr inbounds %struct.termbox, %struct.termbox* %501, i32 0, i32 2
  call void @point(i32* %xpos778, i32* %ypos779)
  %502 = load i32, i32* %height, align 4
  %rem780 = srem i32 %502, 2
  %cmp781 = icmp ne i32 %rem780, 0
  br i1 %cmp781, label %land.lhs.true.783, label %lor.lhs.false.789

land.lhs.true.783:                                ; preds = %if.end.766
  %503 = load i32, i32* %orient, align 4
  %cmp784 = icmp eq i32 %503, 4
  br i1 %cmp784, label %if.then.799, label %lor.lhs.false.786

lor.lhs.false.786:                                ; preds = %land.lhs.true.783
  %504 = load i32, i32* %orient, align 4
  %cmp787 = icmp eq i32 %504, 6
  br i1 %cmp787, label %if.then.799, label %lor.lhs.false.789

lor.lhs.false.789:                                ; preds = %lor.lhs.false.786, %if.end.766
  %505 = load i32, i32* %length, align 4
  %rem790 = srem i32 %505, 2
  %cmp791 = icmp ne i32 %rem790, 0
  br i1 %cmp791, label %land.lhs.true.793, label %if.end.802

land.lhs.true.793:                                ; preds = %lor.lhs.false.789
  %506 = load i32, i32* %orient, align 4
  %cmp794 = icmp eq i32 %506, 2
  br i1 %cmp794, label %if.then.799, label %lor.lhs.false.796

lor.lhs.false.796:                                ; preds = %land.lhs.true.793
  %507 = load i32, i32* %orient, align 4
  %cmp797 = icmp eq i32 %507, 3
  br i1 %cmp797, label %if.then.799, label %if.end.802

if.then.799:                                      ; preds = %lor.lhs.false.796, %land.lhs.true.793, %lor.lhs.false.786, %land.lhs.true.783
  %508 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos800 = getelementptr inbounds %struct.termbox, %struct.termbox* %508, i32 0, i32 1
  %509 = load i32, i32* %xpos800, align 4
  %inc801 = add nsw i32 %509, 1
  store i32 %inc801, i32* %xpos800, align 4
  br label %if.end.802

if.end.802:                                       ; preds = %if.then.799, %lor.lhs.false.796, %lor.lhs.false.789
  %510 = load i32, i32* %height, align 4
  %rem803 = srem i32 %510, 2
  %cmp804 = icmp ne i32 %rem803, 0
  br i1 %cmp804, label %land.lhs.true.806, label %lor.lhs.false.812

land.lhs.true.806:                                ; preds = %if.end.802
  %511 = load i32, i32* %orient, align 4
  %cmp807 = icmp eq i32 %511, 1
  br i1 %cmp807, label %if.then.822, label %lor.lhs.false.809

lor.lhs.false.809:                                ; preds = %land.lhs.true.806
  %512 = load i32, i32* %orient, align 4
  %cmp810 = icmp eq i32 %512, 3
  br i1 %cmp810, label %if.then.822, label %lor.lhs.false.812

lor.lhs.false.812:                                ; preds = %lor.lhs.false.809, %if.end.802
  %513 = load i32, i32* %length, align 4
  %rem813 = srem i32 %513, 2
  %cmp814 = icmp ne i32 %rem813, 0
  br i1 %cmp814, label %land.lhs.true.816, label %if.end.825

land.lhs.true.816:                                ; preds = %lor.lhs.false.812
  %514 = load i32, i32* %orient, align 4
  %cmp817 = icmp eq i32 %514, 4
  br i1 %cmp817, label %if.then.822, label %lor.lhs.false.819

lor.lhs.false.819:                                ; preds = %land.lhs.true.816
  %515 = load i32, i32* %orient, align 4
  %cmp820 = icmp eq i32 %515, 7
  br i1 %cmp820, label %if.then.822, label %if.end.825

if.then.822:                                      ; preds = %lor.lhs.false.819, %land.lhs.true.816, %lor.lhs.false.809, %land.lhs.true.806
  %516 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos823 = getelementptr inbounds %struct.termbox, %struct.termbox* %516, i32 0, i32 2
  %517 = load i32, i32* %ypos823, align 4
  %inc824 = add nsw i32 %517, 1
  store i32 %inc824, i32* %ypos823, align 4
  br label %if.end.825

if.end.825:                                       ; preds = %if.then.822, %lor.lhs.false.819, %lor.lhs.false.812
  store i32 2, i32* %termnum, align 4
  br label %for.cond.826

for.cond.826:                                     ; preds = %for.inc.885, %if.end.825
  %518 = load i32, i32* %termnum, align 4
  %519 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms827 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %519, i32 0, i32 8
  %520 = load i32, i32* %numterms827, align 4
  %cmp828 = icmp sle i32 %518, %520
  br i1 %cmp828, label %for.body.830, label %for.end.887

for.body.830:                                     ; preds = %for.cond.826
  %521 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm831 = getelementptr inbounds %struct.termbox, %struct.termbox* %521, i32 0, i32 0
  %522 = load %struct.termbox*, %struct.termbox** %nextterm831, align 8
  store %struct.termbox* %522, %struct.termbox** %tmptr0, align 8
  %523 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %nextterm832 = getelementptr inbounds %struct.termbox, %struct.termbox* %523, i32 0, i32 0
  %524 = load %struct.termbox*, %struct.termbox** %nextterm832, align 8
  store %struct.termbox* %524, %struct.termbox** %tmptr1, align 8
  %525 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos833 = getelementptr inbounds %struct.termbox, %struct.termbox* %525, i32 0, i32 1
  %526 = load i32, i32* %xpos833, align 4
  %527 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos834 = getelementptr inbounds %struct.termbox, %struct.termbox* %527, i32 0, i32 1
  store i32 %526, i32* %xpos834, align 4
  %528 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos835 = getelementptr inbounds %struct.termbox, %struct.termbox* %528, i32 0, i32 2
  %529 = load i32, i32* %ypos835, align 4
  %530 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos836 = getelementptr inbounds %struct.termbox, %struct.termbox* %530, i32 0, i32 2
  store i32 %529, i32* %ypos836, align 4
  %531 = load i32, i32* %orient, align 4
  call void @move(i32 %531)
  %532 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos837 = getelementptr inbounds %struct.termbox, %struct.termbox* %532, i32 0, i32 1
  %533 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos838 = getelementptr inbounds %struct.termbox, %struct.termbox* %533, i32 0, i32 2
  call void @point(i32* %xpos837, i32* %ypos838)
  %534 = load i32, i32* %height, align 4
  %rem839 = srem i32 %534, 2
  %cmp840 = icmp ne i32 %rem839, 0
  br i1 %cmp840, label %land.lhs.true.842, label %lor.lhs.false.848

land.lhs.true.842:                                ; preds = %for.body.830
  %535 = load i32, i32* %orient, align 4
  %cmp843 = icmp eq i32 %535, 4
  br i1 %cmp843, label %if.then.858, label %lor.lhs.false.845

lor.lhs.false.845:                                ; preds = %land.lhs.true.842
  %536 = load i32, i32* %orient, align 4
  %cmp846 = icmp eq i32 %536, 6
  br i1 %cmp846, label %if.then.858, label %lor.lhs.false.848

lor.lhs.false.848:                                ; preds = %lor.lhs.false.845, %for.body.830
  %537 = load i32, i32* %length, align 4
  %rem849 = srem i32 %537, 2
  %cmp850 = icmp ne i32 %rem849, 0
  br i1 %cmp850, label %land.lhs.true.852, label %if.end.861

land.lhs.true.852:                                ; preds = %lor.lhs.false.848
  %538 = load i32, i32* %orient, align 4
  %cmp853 = icmp eq i32 %538, 2
  br i1 %cmp853, label %if.then.858, label %lor.lhs.false.855

lor.lhs.false.855:                                ; preds = %land.lhs.true.852
  %539 = load i32, i32* %orient, align 4
  %cmp856 = icmp eq i32 %539, 3
  br i1 %cmp856, label %if.then.858, label %if.end.861

if.then.858:                                      ; preds = %lor.lhs.false.855, %land.lhs.true.852, %lor.lhs.false.845, %land.lhs.true.842
  %540 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos859 = getelementptr inbounds %struct.termbox, %struct.termbox* %540, i32 0, i32 1
  %541 = load i32, i32* %xpos859, align 4
  %inc860 = add nsw i32 %541, 1
  store i32 %inc860, i32* %xpos859, align 4
  br label %if.end.861

if.end.861:                                       ; preds = %if.then.858, %lor.lhs.false.855, %lor.lhs.false.848
  %542 = load i32, i32* %height, align 4
  %rem862 = srem i32 %542, 2
  %cmp863 = icmp ne i32 %rem862, 0
  br i1 %cmp863, label %land.lhs.true.865, label %lor.lhs.false.871

land.lhs.true.865:                                ; preds = %if.end.861
  %543 = load i32, i32* %orient, align 4
  %cmp866 = icmp eq i32 %543, 1
  br i1 %cmp866, label %if.then.881, label %lor.lhs.false.868

lor.lhs.false.868:                                ; preds = %land.lhs.true.865
  %544 = load i32, i32* %orient, align 4
  %cmp869 = icmp eq i32 %544, 3
  br i1 %cmp869, label %if.then.881, label %lor.lhs.false.871

lor.lhs.false.871:                                ; preds = %lor.lhs.false.868, %if.end.861
  %545 = load i32, i32* %length, align 4
  %rem872 = srem i32 %545, 2
  %cmp873 = icmp ne i32 %rem872, 0
  br i1 %cmp873, label %land.lhs.true.875, label %if.end.884

land.lhs.true.875:                                ; preds = %lor.lhs.false.871
  %546 = load i32, i32* %orient, align 4
  %cmp876 = icmp eq i32 %546, 4
  br i1 %cmp876, label %if.then.881, label %lor.lhs.false.878

lor.lhs.false.878:                                ; preds = %land.lhs.true.875
  %547 = load i32, i32* %orient, align 4
  %cmp879 = icmp eq i32 %547, 7
  br i1 %cmp879, label %if.then.881, label %if.end.884

if.then.881:                                      ; preds = %lor.lhs.false.878, %land.lhs.true.875, %lor.lhs.false.868, %land.lhs.true.865
  %548 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos882 = getelementptr inbounds %struct.termbox, %struct.termbox* %548, i32 0, i32 2
  %549 = load i32, i32* %ypos882, align 4
  %inc883 = add nsw i32 %549, 1
  store i32 %inc883, i32* %ypos882, align 4
  br label %if.end.884

if.end.884:                                       ; preds = %if.then.881, %lor.lhs.false.878, %lor.lhs.false.871
  br label %for.inc.885

for.inc.885:                                      ; preds = %if.end.884
  %550 = load i32, i32* %termnum, align 4
  %inc886 = add nsw i32 %550, 1
  store i32 %inc886, i32* %termnum, align 4
  br label %for.cond.826

for.end.887:                                      ; preds = %for.cond.826
  br label %for.inc.888

for.inc.888:                                      ; preds = %for.end.887, %if.then.765
  %551 = load i32, i32* %orient, align 4
  %inc889 = add nsw i32 %551, 1
  store i32 %inc889, i32* %orient, align 4
  br label %for.cond.759

for.end.890:                                      ; preds = %for.cond.759
  br label %if.end.891

if.end.891:                                       ; preds = %for.end.890, %for.end.754
  %552 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites892 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %552, i32 0, i32 17
  %553 = load i32, i32* %numsites892, align 4
  %cmp893 = icmp ne i32 %553, 0
  br i1 %cmp893, label %if.then.895, label %if.end.990

if.then.895:                                      ; preds = %if.end.891
  %554 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config896 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %554, i32 0, i32 21
  %arrayidx897 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config896, i32 0, i64 0
  %555 = load %struct.tilebox*, %struct.tilebox** %arrayidx897, align 8
  %siteLocArray898 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %555, i32 0, i32 18
  %556 = load %struct.locbox*, %struct.locbox** %siteLocArray898, align 8
  store %struct.locbox* %556, %struct.locbox** %siteptr0, align 8
  store i32 1, i32* %orient, align 4
  br label %for.cond.899

for.cond.899:                                     ; preds = %for.inc.987, %if.then.895
  %557 = load i32, i32* %orient, align 4
  %cmp900 = icmp sle i32 %557, 7
  br i1 %cmp900, label %for.body.902, label %for.end.989

for.body.902:                                     ; preds = %for.cond.899
  %558 = load i32, i32* %orient, align 4
  %559 = load i32, i32* %aorient, align 4
  %cmp903 = icmp eq i32 %558, %559
  br i1 %cmp903, label %if.then.905, label %if.end.906

if.then.905:                                      ; preds = %for.body.902
  br label %for.inc.987

if.end.906:                                       ; preds = %for.body.902
  %560 = load i32, i32* %orient, align 4
  %idxprom907 = sext i32 %560 to i64
  %561 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config908 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %561, i32 0, i32 21
  %arrayidx909 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config908, i32 0, i64 %idxprom907
  %562 = load %struct.tilebox*, %struct.tilebox** %arrayidx909, align 8
  %siteLocArray910 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %562, i32 0, i32 18
  %563 = load %struct.locbox*, %struct.locbox** %siteLocArray910, align 8
  store %struct.locbox* %563, %struct.locbox** %siteptr, align 8
  store i32 1, i32* %site, align 4
  br label %for.cond.911

for.cond.911:                                     ; preds = %for.inc.984, %if.end.906
  %564 = load i32, i32* %site, align 4
  %565 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites912 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %565, i32 0, i32 17
  %566 = load i32, i32* %numsites912, align 4
  %cmp913 = icmp sle i32 %564, %566
  br i1 %cmp913, label %for.body.915, label %for.end.986

for.body.915:                                     ; preds = %for.cond.911
  %567 = load i32, i32* %site, align 4
  %idxprom916 = sext i32 %567 to i64
  %568 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx917 = getelementptr inbounds %struct.locbox, %struct.locbox* %568, i64 %idxprom916
  %xpos918 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx917, i32 0, i32 0
  %569 = load i32, i32* %xpos918, align 4
  %570 = load i32, i32* %site, align 4
  %idxprom919 = sext i32 %570 to i64
  %571 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx920 = getelementptr inbounds %struct.locbox, %struct.locbox* %571, i64 %idxprom919
  %xpos921 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx920, i32 0, i32 0
  store i32 %569, i32* %xpos921, align 4
  %572 = load i32, i32* %site, align 4
  %idxprom922 = sext i32 %572 to i64
  %573 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx923 = getelementptr inbounds %struct.locbox, %struct.locbox* %573, i64 %idxprom922
  %ypos924 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx923, i32 0, i32 1
  %574 = load i32, i32* %ypos924, align 4
  %575 = load i32, i32* %site, align 4
  %idxprom925 = sext i32 %575 to i64
  %576 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx926 = getelementptr inbounds %struct.locbox, %struct.locbox* %576, i64 %idxprom925
  %ypos927 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx926, i32 0, i32 1
  store i32 %574, i32* %ypos927, align 4
  %577 = load i32, i32* %orient, align 4
  call void @move(i32 %577)
  %578 = load i32, i32* %site, align 4
  %idxprom928 = sext i32 %578 to i64
  %579 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx929 = getelementptr inbounds %struct.locbox, %struct.locbox* %579, i64 %idxprom928
  %xpos930 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx929, i32 0, i32 0
  %580 = load i32, i32* %site, align 4
  %idxprom931 = sext i32 %580 to i64
  %581 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx932 = getelementptr inbounds %struct.locbox, %struct.locbox* %581, i64 %idxprom931
  %ypos933 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx932, i32 0, i32 1
  call void @point(i32* %xpos930, i32* %ypos933)
  %582 = load i32, i32* %height, align 4
  %rem934 = srem i32 %582, 2
  %cmp935 = icmp ne i32 %rem934, 0
  br i1 %cmp935, label %land.lhs.true.937, label %lor.lhs.false.943

land.lhs.true.937:                                ; preds = %for.body.915
  %583 = load i32, i32* %orient, align 4
  %cmp938 = icmp eq i32 %583, 4
  br i1 %cmp938, label %if.then.953, label %lor.lhs.false.940

lor.lhs.false.940:                                ; preds = %land.lhs.true.937
  %584 = load i32, i32* %orient, align 4
  %cmp941 = icmp eq i32 %584, 6
  br i1 %cmp941, label %if.then.953, label %lor.lhs.false.943

lor.lhs.false.943:                                ; preds = %lor.lhs.false.940, %for.body.915
  %585 = load i32, i32* %length, align 4
  %rem944 = srem i32 %585, 2
  %cmp945 = icmp ne i32 %rem944, 0
  br i1 %cmp945, label %land.lhs.true.947, label %if.end.958

land.lhs.true.947:                                ; preds = %lor.lhs.false.943
  %586 = load i32, i32* %orient, align 4
  %cmp948 = icmp eq i32 %586, 2
  br i1 %cmp948, label %if.then.953, label %lor.lhs.false.950

lor.lhs.false.950:                                ; preds = %land.lhs.true.947
  %587 = load i32, i32* %orient, align 4
  %cmp951 = icmp eq i32 %587, 3
  br i1 %cmp951, label %if.then.953, label %if.end.958

if.then.953:                                      ; preds = %lor.lhs.false.950, %land.lhs.true.947, %lor.lhs.false.940, %land.lhs.true.937
  %588 = load i32, i32* %site, align 4
  %idxprom954 = sext i32 %588 to i64
  %589 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx955 = getelementptr inbounds %struct.locbox, %struct.locbox* %589, i64 %idxprom954
  %xpos956 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx955, i32 0, i32 0
  %590 = load i32, i32* %xpos956, align 4
  %inc957 = add nsw i32 %590, 1
  store i32 %inc957, i32* %xpos956, align 4
  br label %if.end.958

if.end.958:                                       ; preds = %if.then.953, %lor.lhs.false.950, %lor.lhs.false.943
  %591 = load i32, i32* %height, align 4
  %rem959 = srem i32 %591, 2
  %cmp960 = icmp ne i32 %rem959, 0
  br i1 %cmp960, label %land.lhs.true.962, label %lor.lhs.false.968

land.lhs.true.962:                                ; preds = %if.end.958
  %592 = load i32, i32* %orient, align 4
  %cmp963 = icmp eq i32 %592, 1
  br i1 %cmp963, label %if.then.978, label %lor.lhs.false.965

lor.lhs.false.965:                                ; preds = %land.lhs.true.962
  %593 = load i32, i32* %orient, align 4
  %cmp966 = icmp eq i32 %593, 3
  br i1 %cmp966, label %if.then.978, label %lor.lhs.false.968

lor.lhs.false.968:                                ; preds = %lor.lhs.false.965, %if.end.958
  %594 = load i32, i32* %length, align 4
  %rem969 = srem i32 %594, 2
  %cmp970 = icmp ne i32 %rem969, 0
  br i1 %cmp970, label %land.lhs.true.972, label %if.end.983

land.lhs.true.972:                                ; preds = %lor.lhs.false.968
  %595 = load i32, i32* %orient, align 4
  %cmp973 = icmp eq i32 %595, 4
  br i1 %cmp973, label %if.then.978, label %lor.lhs.false.975

lor.lhs.false.975:                                ; preds = %land.lhs.true.972
  %596 = load i32, i32* %orient, align 4
  %cmp976 = icmp eq i32 %596, 7
  br i1 %cmp976, label %if.then.978, label %if.end.983

if.then.978:                                      ; preds = %lor.lhs.false.975, %land.lhs.true.972, %lor.lhs.false.965, %land.lhs.true.962
  %597 = load i32, i32* %site, align 4
  %idxprom979 = sext i32 %597 to i64
  %598 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx980 = getelementptr inbounds %struct.locbox, %struct.locbox* %598, i64 %idxprom979
  %ypos981 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx980, i32 0, i32 1
  %599 = load i32, i32* %ypos981, align 4
  %inc982 = add nsw i32 %599, 1
  store i32 %inc982, i32* %ypos981, align 4
  br label %if.end.983

if.end.983:                                       ; preds = %if.then.978, %lor.lhs.false.975, %lor.lhs.false.968
  br label %for.inc.984

for.inc.984:                                      ; preds = %if.end.983
  %600 = load i32, i32* %site, align 4
  %inc985 = add nsw i32 %600, 1
  store i32 %inc985, i32* %site, align 4
  br label %for.cond.911

for.end.986:                                      ; preds = %for.cond.911
  br label %for.inc.987

for.inc.987:                                      ; preds = %for.end.986, %if.then.905
  %601 = load i32, i32* %orient, align 4
  %inc988 = add nsw i32 %601, 1
  store i32 %inc988, i32* %orient, align 4
  br label %for.cond.899

for.end.989:                                      ; preds = %for.cond.899
  br label %if.end.990

if.end.990:                                       ; preds = %for.end.989, %if.end.891
  br label %if.end.991

if.end.991:                                       ; preds = %if.end.990, %land.lhs.true, %for.end.28
  %602 = load i32, i32* %aorient, align 4
  %idxprom992 = sext i32 %602 to i64
  %603 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config993 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %603, i32 0, i32 21
  %arrayidx994 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config993, i32 0, i64 %idxprom992
  %604 = load %struct.tilebox*, %struct.tilebox** %arrayidx994, align 8
  %termptr995 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %604, i32 0, i32 17
  %605 = load %struct.termbox*, %struct.termbox** %termptr995, align 8
  store %struct.termbox* %605, %struct.termbox** %term, align 8
  br label %for.cond.996

for.cond.996:                                     ; preds = %for.inc.1011, %if.end.991
  %606 = load %struct.termbox*, %struct.termbox** %term, align 8
  %cmp997 = icmp ne %struct.termbox* %606, null
  br i1 %cmp997, label %for.body.999, label %for.end.1013

for.body.999:                                     ; preds = %for.cond.996
  %607 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos1000 = getelementptr inbounds %struct.termbox, %struct.termbox* %607, i32 0, i32 1
  %608 = load i32, i32* %xpos1000, align 4
  store i32 %608, i32* %xpos, align 4
  %609 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos1001 = getelementptr inbounds %struct.termbox, %struct.termbox* %609, i32 0, i32 2
  %610 = load i32, i32* %ypos1001, align 4
  store i32 %610, i32* %ypos, align 4
  %611 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal1002 = getelementptr inbounds %struct.termbox, %struct.termbox* %611, i32 0, i32 5
  %612 = load i32, i32* %terminal1002, align 4
  %idxprom1003 = sext i32 %612 to i64
  %613 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx1004 = getelementptr inbounds %struct.termnets*, %struct.termnets** %613, i64 %idxprom1003
  %614 = load %struct.termnets*, %struct.termnets** %arrayidx1004, align 8
  store %struct.termnets* %614, %struct.termnets** %teptr, align 8
  %615 = load i32, i32* %xpos, align 4
  %616 = load i32, i32* %xcenter, align 4
  %add1005 = add nsw i32 %615, %616
  %617 = load %struct.termnets*, %struct.termnets** %teptr, align 8
  %termptr1006 = getelementptr inbounds %struct.termnets, %struct.termnets* %617, i32 0, i32 1
  %618 = load %struct.netbox*, %struct.netbox** %termptr1006, align 8
  %xpos1007 = getelementptr inbounds %struct.netbox, %struct.netbox* %618, i32 0, i32 1
  store i32 %add1005, i32* %xpos1007, align 4
  %619 = load i32, i32* %ypos, align 4
  %620 = load i32, i32* %ycenter, align 4
  %add1008 = add nsw i32 %619, %620
  %621 = load %struct.termnets*, %struct.termnets** %teptr, align 8
  %termptr1009 = getelementptr inbounds %struct.termnets, %struct.termnets* %621, i32 0, i32 1
  %622 = load %struct.netbox*, %struct.netbox** %termptr1009, align 8
  %ypos1010 = getelementptr inbounds %struct.netbox, %struct.netbox* %622, i32 0, i32 2
  store i32 %add1008, i32* %ypos1010, align 4
  br label %for.inc.1011

for.inc.1011:                                     ; preds = %for.body.999
  %623 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm1012 = getelementptr inbounds %struct.termbox, %struct.termbox* %623, i32 0, i32 0
  %624 = load %struct.termbox*, %struct.termbox** %nextterm1012, align 8
  store %struct.termbox* %624, %struct.termbox** %term, align 8
  br label %for.cond.996

for.end.1013:                                     ; preds = %for.cond.996
  store i32 1, i32* %tm, align 4
  br label %for.cond.1014

for.cond.1014:                                    ; preds = %for.inc.1049, %for.end.1013
  %625 = load i32, i32* %tm, align 4
  %626 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms1015 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %626, i32 0, i32 18
  %627 = load i32, i32* %numUnComTerms1015, align 4
  %cmp1016 = icmp sle i32 %625, %627
  br i1 %cmp1016, label %for.body.1018, label %for.end.1051

for.body.1018:                                    ; preds = %for.cond.1014
  %628 = load i32, i32* %tm, align 4
  %idxprom1019 = sext i32 %628 to i64
  %629 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1020 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %629, i32 0, i32 20
  %630 = load %struct.uncombox*, %struct.uncombox** %unComTerms1020, align 8
  %arrayidx1021 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %630, i64 %idxprom1019
  %terminal1022 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1021, i32 0, i32 0
  %631 = load i32, i32* %terminal1022, align 4
  store i32 %631, i32* %terminal, align 4
  %632 = load i32, i32* %tm, align 4
  %idxprom1023 = sext i32 %632 to i64
  %633 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1024 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %633, i32 0, i32 20
  %634 = load %struct.uncombox*, %struct.uncombox** %unComTerms1024, align 8
  %arrayidx1025 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %634, i64 %idxprom1023
  %site1026 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1025, i32 0, i32 1
  %635 = load i32, i32* %site1026, align 4
  store i32 %635, i32* %site, align 4
  %636 = load i32, i32* %site, align 4
  %idxprom1027 = sext i32 %636 to i64
  %637 = load i32, i32* %aorient, align 4
  %idxprom1028 = sext i32 %637 to i64
  %638 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1029 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %638, i32 0, i32 21
  %arrayidx1030 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1029, i32 0, i64 %idxprom1028
  %639 = load %struct.tilebox*, %struct.tilebox** %arrayidx1030, align 8
  %siteLocArray1031 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %639, i32 0, i32 18
  %640 = load %struct.locbox*, %struct.locbox** %siteLocArray1031, align 8
  %arrayidx1032 = getelementptr inbounds %struct.locbox, %struct.locbox* %640, i64 %idxprom1027
  %xpos1033 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1032, i32 0, i32 0
  %641 = load i32, i32* %xpos1033, align 4
  store i32 %641, i32* %x, align 4
  %642 = load i32, i32* %site, align 4
  %idxprom1034 = sext i32 %642 to i64
  %643 = load i32, i32* %aorient, align 4
  %idxprom1035 = sext i32 %643 to i64
  %644 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1036 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %644, i32 0, i32 21
  %arrayidx1037 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1036, i32 0, i64 %idxprom1035
  %645 = load %struct.tilebox*, %struct.tilebox** %arrayidx1037, align 8
  %siteLocArray1038 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %645, i32 0, i32 18
  %646 = load %struct.locbox*, %struct.locbox** %siteLocArray1038, align 8
  %arrayidx1039 = getelementptr inbounds %struct.locbox, %struct.locbox* %646, i64 %idxprom1034
  %ypos1040 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1039, i32 0, i32 1
  %647 = load i32, i32* %ypos1040, align 4
  store i32 %647, i32* %y, align 4
  %648 = load i32, i32* %terminal, align 4
  %idxprom1041 = sext i32 %648 to i64
  %649 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx1042 = getelementptr inbounds %struct.termnets*, %struct.termnets** %649, i64 %idxprom1041
  %650 = load %struct.termnets*, %struct.termnets** %arrayidx1042, align 8
  store %struct.termnets* %650, %struct.termnets** %teptr, align 8
  %651 = load i32, i32* %x, align 4
  %652 = load i32, i32* %xcenter, align 4
  %add1043 = add nsw i32 %651, %652
  %653 = load %struct.termnets*, %struct.termnets** %teptr, align 8
  %termptr1044 = getelementptr inbounds %struct.termnets, %struct.termnets* %653, i32 0, i32 1
  %654 = load %struct.netbox*, %struct.netbox** %termptr1044, align 8
  %xpos1045 = getelementptr inbounds %struct.netbox, %struct.netbox* %654, i32 0, i32 1
  store i32 %add1043, i32* %xpos1045, align 4
  %655 = load i32, i32* %y, align 4
  %656 = load i32, i32* %ycenter, align 4
  %add1046 = add nsw i32 %655, %656
  %657 = load %struct.termnets*, %struct.termnets** %teptr, align 8
  %termptr1047 = getelementptr inbounds %struct.termnets, %struct.termnets* %657, i32 0, i32 1
  %658 = load %struct.netbox*, %struct.netbox** %termptr1047, align 8
  %ypos1048 = getelementptr inbounds %struct.netbox, %struct.netbox* %658, i32 0, i32 2
  store i32 %add1046, i32* %ypos1048, align 4
  br label %for.inc.1049

for.inc.1049:                                     ; preds = %for.body.1018
  %659 = load i32, i32* %tm, align 4
  %inc1050 = add nsw i32 %659, 1
  store i32 %inc1050, i32* %tm, align 4
  br label %for.cond.1014

for.end.1051:                                     ; preds = %for.cond.1014
  call void @loadbins(i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare void @move(i32) #2

declare void @rect(i32*, i32*, i32*, i32*) #2

declare void @point(i32*, i32*) #2

declare void @loadbins(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
