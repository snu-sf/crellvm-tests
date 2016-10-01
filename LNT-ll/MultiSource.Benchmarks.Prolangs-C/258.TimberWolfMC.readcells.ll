; ModuleID = './MultiSource.Benchmarks.Prolangs-C/258.TimberWolfMC.readcells.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbox = type { i32, i32, i32, i32, i32 }
%struct.bustbox = type { i32, i32 }
%struct.psidebox = type { i32, double, i32, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@perim = common global i32 0, align 4
@kArray = common global %struct.kbox* null, align 8
@A = common global %struct.bustbox* null, align 8
@B = common global %struct.bustbox* null, align 8
@R = common global %struct.bustbox* null, align 8
@pSideArray = external global %struct.psidebox*, align 8
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@cellarray = external global %struct.cellbox**, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"padside\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"padside not specified properly for \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"pad: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@fixLRBT = external global i32*, align 8
@padspace = external global double*, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@pinnames = external global i8**, align 8
@netarray = external global %struct.dimbox**, align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"screwup in readcells: \00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"failed to properly count \00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"the no. of uncommitted pins\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"asplb\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"aspub\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"value of firstside out of range\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"firstside:%d  range:1 to %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"current cell is:%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"value of lastside out of range\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"lastside:%d  range:1 to %d\0A\00", align 1
@totPins = external global i32, align 4
@pinsPerLen = external global double, align 8

; Function Attrs: nounwind uwtable
define void @readcells(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cell = alloca i32, align 4
  %temp = alloca i32, align 4
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %hit = alloca i32, align 4
  %pad = alloca i32, align 4
  %groupflag = alloca i32, align 4
  %sequence = alloca i32, align 4
  %k = alloca i32, align 4
  %lastSite = alloca i32, align 4
  %numsites = alloca i32, align 4
  %unComTerms = alloca i32, align 4
  %first = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %prevsites = alloca i32, align 4
  %orient = alloca i32, align 4
  %norients = alloca i32, align 4
  %class = alloca i32, align 4
  %firstside = alloca i32, align 4
  %lastside = alloca i32, align 4
  %side = alloca i32, align 4
  %distant = alloca i32, align 4
  %ncorners = alloca i32, align 4
  %corner = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %minx = alloca i32, align 4
  %miny = alloca i32, align 4
  %maxx = alloca i32, align 4
  %maxy = alloca i32, align 4
  %xx1 = alloca i32, align 4
  %xx2 = alloca i32, align 4
  %yy1 = alloca i32, align 4
  %yy2 = alloca i32, align 4
  %cellnum = alloca i32, align 4
  %pinctr = alloca i32, align 4
  %netx = alloca i32, align 4
  %tot = alloca i32, align 4
  %totx = alloca i32, align 4
  %toty = alloca i32, align 4
  %aspub = alloca double, align 8
  %asplb = alloca double, align 8
  %space = alloca double, align 8
  %input = alloca [1024 x i8], align 16
  %ptr = alloca %struct.cellbox*, align 8
  %tile = alloca %struct.tilebox*, align 8
  %term = alloca %struct.termbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %saveptr = alloca %struct.netbox*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @parser(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @pass2(%struct._IO_FILE* %1)
  store i32 0, i32* %pinctr, align 4
  store i32 0, i32* @perim, align 4
  %call = call noalias i8* @malloc(i64 1020) #5
  %2 = bitcast i8* %call to %struct.kbox*
  store %struct.kbox* %2, %struct.kbox** @kArray, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %3, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx = getelementptr inbounds %struct.kbox, %struct.kbox* %5, i64 %idxprom
  %cap = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx, i32 0, i32 0
  store i32 0, i32* %cap, align 4
  %6 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.kbox, %struct.kbox* %7, i64 %idxprom1
  %HV = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx2, i32 0, i32 1
  store i32 0, i32* %HV, align 4
  %8 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx4 = getelementptr inbounds %struct.kbox, %struct.kbox* %9, i64 %idxprom3
  %sp = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx4, i32 0, i32 2
  store i32 0, i32* %sp, align 4
  %10 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.kbox, %struct.kbox* %11, i64 %idxprom5
  %x7 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx6, i32 0, i32 3
  store i32 0, i32* %x7, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx9 = getelementptr inbounds %struct.kbox, %struct.kbox* %13, i64 %idxprom8
  %y10 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx9, i32 0, i32 4
  store i32 0, i32* %y10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call noalias i8* @malloc(i64 248) #5
  %15 = bitcast i8* %call11 to %struct.bustbox*
  store %struct.bustbox* %15, %struct.bustbox** @A, align 8
  %call12 = call noalias i8* @malloc(i64 248) #5
  %16 = bitcast i8* %call12 to %struct.bustbox*
  store %struct.bustbox* %16, %struct.bustbox** @B, align 8
  %call13 = call noalias i8* @malloc(i64 40) #5
  %17 = bitcast i8* %call13 to %struct.bustbox*
  store %struct.bustbox* %17, %struct.bustbox** @R, align 8
  %call14 = call noalias i8* @malloc(i64 744) #5
  %18 = bitcast i8* %call14 to %struct.psidebox*
  store %struct.psidebox* %18, %struct.psidebox** @pSideArray, align 8
  store i32 0, i32* %cell, align 4
  store i32 0, i32* %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.1811, %for.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then, label %if.else.315

if.then:                                          ; preds = %while.body
  %20 = load i32, i32* %cell, align 4
  %cmp20 = icmp sgt i32 %20, 0
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %21 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  call void @watesides(%struct.cellbox* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  %22 = load i32, i32* %cell, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %cell, align 4
  %idxprom23 = sext i32 %inc22 to i64
  %23 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx24 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %23, i64 %idxprom23
  %24 = load %struct.cellbox*, %struct.cellbox** %arrayidx24, align 8
  store %struct.cellbox* %24, %struct.cellbox** %ptr, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay28)
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call31 = call i64 @strlen(i8* %arraydecay30) #6
  %add = add i64 %call31, 1
  %mul = mul i64 %add, 1
  %call32 = call noalias i8* @malloc(i64 %mul) #5
  %28 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %cname = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 0
  store i8* %call32, i8** %cname, align 8
  %29 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %cname33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i32 0, i32 0
  %30 = load i8*, i8** %cname33, align 8
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call35 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay34) #5
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.43, %if.end
  %31 = load i32, i32* %k, align 4
  %cmp37 = icmp sle i32 %31, 30
  br i1 %cmp37, label %for.body.38, label %for.end.45

for.body.38:                                      ; preds = %for.cond.36
  %32 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %idxprom39
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx40, i32 0, i32 0
  store i32 0, i32* %xc, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 %idxprom41
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx42, i32 0, i32 1
  store i32 0, i32* %yc, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.38
  %36 = load i32, i32* %k, align 4
  %inc44 = add nsw i32 %36, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond.36

for.end.45:                                       ; preds = %for.cond.36
  store i32 0, i32* %k, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.55, %for.end.45
  %37 = load i32, i32* %k, align 4
  %cmp47 = icmp sle i32 %37, 5
  br i1 %cmp47, label %for.body.48, label %for.end.57

for.body.48:                                      ; preds = %for.cond.46
  %38 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %38 to i64
  %39 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %39, i64 %idxprom49
  %xc51 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx50, i32 0, i32 0
  store i32 0, i32* %xc51, align 4
  %40 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %40 to i64
  %41 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx53 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 %idxprom52
  %yc54 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx53, i32 0, i32 1
  store i32 0, i32* %yc54, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.48
  %42 = load i32, i32* %k, align 4
  %inc56 = add nsw i32 %42, 1
  store i32 %inc56, i32* %k, align 4
  br label %for.cond.46

for.end.57:                                       ; preds = %for.cond.46
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay59)
  store i32 1, i32* %corner, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.76, %for.end.57
  %45 = load i32, i32* %corner, align 4
  %46 = load i32, i32* %ncorners, align 4
  %cmp62 = icmp sle i32 %45, %46
  br i1 %cmp62, label %for.body.63, label %for.end.78

for.body.63:                                      ; preds = %for.cond.61
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %48 = load i32, i32* %x, align 4
  %49 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %49, i64 0
  %xc66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx65, i32 0, i32 0
  %50 = load i32, i32* %xc66, align 4
  %inc67 = add nsw i32 %50, 1
  store i32 %inc67, i32* %xc66, align 4
  %idxprom68 = sext i32 %inc67 to i64
  %51 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx69 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %51, i64 %idxprom68
  %xc70 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx69, i32 0, i32 0
  store i32 %48, i32* %xc70, align 4
  %52 = load i32, i32* %y, align 4
  %53 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx71 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 0
  %xc72 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx71, i32 0, i32 0
  %54 = load i32, i32* %xc72, align 4
  %idxprom73 = sext i32 %54 to i64
  %55 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx74 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %55, i64 %idxprom73
  %yc75 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx74, i32 0, i32 1
  store i32 %52, i32* %yc75, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.63
  %56 = load i32, i32* %corner, align 4
  %inc77 = add nsw i32 %56, 1
  store i32 %inc77, i32* %corner, align 4
  br label %for.cond.61

for.end.78:                                       ; preds = %for.cond.61
  %57 = load i32, i32* %ncorners, align 4
  %58 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsides = getelementptr inbounds %struct.cellbox, %struct.cellbox* %58, i32 0, i32 7
  store i32 %57, i32* %numsides, align 4
  %call79 = call i32 @perimeter()
  %59 = load i32, i32* @perim, align 4
  %add80 = add nsw i32 %59, %call79
  store i32 %add80, i32* @perim, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.215, %for.end.78
  %60 = load i32, i32* %k, align 4
  %61 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx82 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %61, i64 0
  %xc83 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx82, i32 0, i32 0
  %62 = load i32, i32* %xc83, align 4
  %cmp84 = icmp sle i32 %60, %62
  br i1 %cmp84, label %for.body.85, label %for.end.217

for.body.85:                                      ; preds = %for.cond.81
  %63 = load i32, i32* %k, align 4
  %64 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx86 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %64, i64 0
  %xc87 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx86, i32 0, i32 0
  %65 = load i32, i32* %xc87, align 4
  %cmp88 = icmp slt i32 %63, %65
  br i1 %cmp88, label %if.then.89, label %if.else.174

if.then.89:                                       ; preds = %for.body.85
  %66 = load i32, i32* %k, align 4
  %rem = srem i32 %66, 2
  %cmp90 = icmp eq i32 %rem, 1
  br i1 %cmp90, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %if.then.89
  %67 = load i32, i32* %k, align 4
  %add92 = add nsw i32 %67, 1
  %idxprom93 = sext i32 %add92 to i64
  %68 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx94 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %68, i64 %idxprom93
  %yc95 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx94, i32 0, i32 1
  %69 = load i32, i32* %yc95, align 4
  %70 = load i32, i32* %k, align 4
  %idxprom96 = sext i32 %70 to i64
  %71 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx97 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %71, i64 %idxprom96
  %yc98 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx97, i32 0, i32 1
  %72 = load i32, i32* %yc98, align 4
  %sub = sub nsw i32 %69, %72
  %cmp99 = icmp sge i32 %sub, 0
  br i1 %cmp99, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.91
  %73 = load i32, i32* %k, align 4
  %add100 = add nsw i32 %73, 1
  %idxprom101 = sext i32 %add100 to i64
  %74 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx102 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %74, i64 %idxprom101
  %yc103 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx102, i32 0, i32 1
  %75 = load i32, i32* %yc103, align 4
  %76 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %76 to i64
  %77 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx105 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %77, i64 %idxprom104
  %yc106 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx105, i32 0, i32 1
  %78 = load i32, i32* %yc106, align 4
  %sub107 = sub nsw i32 %75, %78
  br label %cond.end

cond.false:                                       ; preds = %if.then.91
  %79 = load i32, i32* %k, align 4
  %add108 = add nsw i32 %79, 1
  %idxprom109 = sext i32 %add108 to i64
  %80 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx110 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %80, i64 %idxprom109
  %yc111 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx110, i32 0, i32 1
  %81 = load i32, i32* %yc111, align 4
  %82 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %82 to i64
  %83 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx113 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i64 %idxprom112
  %yc114 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx113, i32 0, i32 1
  %84 = load i32, i32* %yc114, align 4
  %sub115 = sub nsw i32 %81, %84
  %sub116 = sub nsw i32 0, %sub115
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub107, %cond.true ], [ %sub116, %cond.false ]
  %85 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %85 to i64
  %86 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx118 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %86, i64 %idxprom117
  %length = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx118, i32 0, i32 0
  store i32 %cond, i32* %length, align 4
  %87 = load i32, i32* %k, align 4
  %idxprom119 = sext i32 %87 to i64
  %88 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx120 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %88, i64 %idxprom119
  %vertical = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx120, i32 0, i32 2
  store i32 1, i32* %vertical, align 4
  %89 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %89 to i64
  %90 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx122 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %90, i64 %idxprom121
  %pincount = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx122, i32 0, i32 1
  store double 0.000000e+00, double* %pincount, align 8
  %91 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %91 to i64
  %92 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx124 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %92, i64 %idxprom123
  %xc125 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx124, i32 0, i32 0
  %93 = load i32, i32* %xc125, align 4
  %94 = load i32, i32* %k, align 4
  %idxprom126 = sext i32 %94 to i64
  %95 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx127 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %95, i64 %idxprom126
  %position = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx127, i32 0, i32 3
  store i32 %93, i32* %position, align 4
  br label %if.end.173

if.else:                                          ; preds = %if.then.89
  %96 = load i32, i32* %k, align 4
  %add128 = add nsw i32 %96, 1
  %idxprom129 = sext i32 %add128 to i64
  %97 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx130 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %97, i64 %idxprom129
  %xc131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx130, i32 0, i32 0
  %98 = load i32, i32* %xc131, align 4
  %99 = load i32, i32* %k, align 4
  %idxprom132 = sext i32 %99 to i64
  %100 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx133 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %100, i64 %idxprom132
  %xc134 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx133, i32 0, i32 0
  %101 = load i32, i32* %xc134, align 4
  %sub135 = sub nsw i32 %98, %101
  %cmp136 = icmp sge i32 %sub135, 0
  br i1 %cmp136, label %cond.true.137, label %cond.false.146

cond.true.137:                                    ; preds = %if.else
  %102 = load i32, i32* %k, align 4
  %add138 = add nsw i32 %102, 1
  %idxprom139 = sext i32 %add138 to i64
  %103 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx140 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %103, i64 %idxprom139
  %xc141 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx140, i32 0, i32 0
  %104 = load i32, i32* %xc141, align 4
  %105 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %105 to i64
  %106 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx143 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %106, i64 %idxprom142
  %xc144 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx143, i32 0, i32 0
  %107 = load i32, i32* %xc144, align 4
  %sub145 = sub nsw i32 %104, %107
  br label %cond.end.156

cond.false.146:                                   ; preds = %if.else
  %108 = load i32, i32* %k, align 4
  %add147 = add nsw i32 %108, 1
  %idxprom148 = sext i32 %add147 to i64
  %109 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx149 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %109, i64 %idxprom148
  %xc150 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx149, i32 0, i32 0
  %110 = load i32, i32* %xc150, align 4
  %111 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %111 to i64
  %112 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx152 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %112, i64 %idxprom151
  %xc153 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx152, i32 0, i32 0
  %113 = load i32, i32* %xc153, align 4
  %sub154 = sub nsw i32 %110, %113
  %sub155 = sub nsw i32 0, %sub154
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.146, %cond.true.137
  %cond157 = phi i32 [ %sub145, %cond.true.137 ], [ %sub155, %cond.false.146 ]
  %114 = load i32, i32* %k, align 4
  %idxprom158 = sext i32 %114 to i64
  %115 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx159 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %115, i64 %idxprom158
  %length160 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx159, i32 0, i32 0
  store i32 %cond157, i32* %length160, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom161 = sext i32 %116 to i64
  %117 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx162 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %117, i64 %idxprom161
  %vertical163 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx162, i32 0, i32 2
  store i32 0, i32* %vertical163, align 4
  %118 = load i32, i32* %k, align 4
  %idxprom164 = sext i32 %118 to i64
  %119 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx165 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %119, i64 %idxprom164
  %pincount166 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx165, i32 0, i32 1
  store double 0.000000e+00, double* %pincount166, align 8
  %120 = load i32, i32* %k, align 4
  %idxprom167 = sext i32 %120 to i64
  %121 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx168 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %121, i64 %idxprom167
  %yc169 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx168, i32 0, i32 1
  %122 = load i32, i32* %yc169, align 4
  %123 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %123 to i64
  %124 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx171 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %124, i64 %idxprom170
  %position172 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx171, i32 0, i32 3
  store i32 %122, i32* %position172, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %cond.end.156, %cond.end
  br label %if.end.214

if.else.174:                                      ; preds = %for.body.85
  %125 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx175 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %125, i64 1
  %xc176 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx175, i32 0, i32 0
  %126 = load i32, i32* %xc176, align 4
  %127 = load i32, i32* %k, align 4
  %idxprom177 = sext i32 %127 to i64
  %128 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx178 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %128, i64 %idxprom177
  %xc179 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx178, i32 0, i32 0
  %129 = load i32, i32* %xc179, align 4
  %sub180 = sub nsw i32 %126, %129
  %cmp181 = icmp sge i32 %sub180, 0
  br i1 %cmp181, label %cond.true.182, label %cond.false.189

cond.true.182:                                    ; preds = %if.else.174
  %130 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx183 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %130, i64 1
  %xc184 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx183, i32 0, i32 0
  %131 = load i32, i32* %xc184, align 4
  %132 = load i32, i32* %k, align 4
  %idxprom185 = sext i32 %132 to i64
  %133 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx186 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %133, i64 %idxprom185
  %xc187 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx186, i32 0, i32 0
  %134 = load i32, i32* %xc187, align 4
  %sub188 = sub nsw i32 %131, %134
  br label %cond.end.197

cond.false.189:                                   ; preds = %if.else.174
  %135 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx190 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %135, i64 1
  %xc191 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx190, i32 0, i32 0
  %136 = load i32, i32* %xc191, align 4
  %137 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %137 to i64
  %138 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx193 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %138, i64 %idxprom192
  %xc194 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx193, i32 0, i32 0
  %139 = load i32, i32* %xc194, align 4
  %sub195 = sub nsw i32 %136, %139
  %sub196 = sub nsw i32 0, %sub195
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.189, %cond.true.182
  %cond198 = phi i32 [ %sub188, %cond.true.182 ], [ %sub196, %cond.false.189 ]
  %140 = load i32, i32* %k, align 4
  %idxprom199 = sext i32 %140 to i64
  %141 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx200 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %141, i64 %idxprom199
  %length201 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx200, i32 0, i32 0
  store i32 %cond198, i32* %length201, align 4
  %142 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %142 to i64
  %143 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx203 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %143, i64 %idxprom202
  %vertical204 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx203, i32 0, i32 2
  store i32 0, i32* %vertical204, align 4
  %144 = load i32, i32* %k, align 4
  %idxprom205 = sext i32 %144 to i64
  %145 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx206 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %145, i64 %idxprom205
  %pincount207 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx206, i32 0, i32 1
  store double 0.000000e+00, double* %pincount207, align 8
  %146 = load i32, i32* %k, align 4
  %idxprom208 = sext i32 %146 to i64
  %147 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx209 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %147, i64 %idxprom208
  %yc210 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx209, i32 0, i32 1
  %148 = load i32, i32* %yc210, align 4
  %149 = load i32, i32* %k, align 4
  %idxprom211 = sext i32 %149 to i64
  %150 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx212 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %150, i64 %idxprom211
  %position213 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx212, i32 0, i32 3
  store i32 %148, i32* %position213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %cond.end.197, %if.end.173
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.214
  %151 = load i32, i32* %k, align 4
  %inc216 = add nsw i32 %151, 1
  store i32 %inc216, i32* %k, align 4
  br label %for.cond.81

for.end.217:                                      ; preds = %for.cond.81
  store i32 1, i32* %k, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.245, %for.end.217
  %152 = load i32, i32* %k, align 4
  %153 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx219 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %153, i64 0
  %xc220 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx219, i32 0, i32 0
  %154 = load i32, i32* %xc220, align 4
  %cmp221 = icmp sle i32 %152, %154
  br i1 %cmp221, label %for.body.222, label %for.end.247

for.body.222:                                     ; preds = %for.cond.218
  %155 = load i32, i32* %k, align 4
  %idxprom223 = sext i32 %155 to i64
  %156 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx224 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %156, i64 %idxprom223
  %xc225 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx224, i32 0, i32 0
  %157 = load i32, i32* %xc225, align 4
  store i32 %157, i32* %x, align 4
  %158 = load i32, i32* %k, align 4
  %idxprom226 = sext i32 %158 to i64
  %159 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx227 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %159, i64 %idxprom226
  %yc228 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx227, i32 0, i32 1
  %160 = load i32, i32* %yc228, align 4
  store i32 %160, i32* %y, align 4
  %161 = load i32, i32* %k, align 4
  %cmp229 = icmp eq i32 %161, 1
  br i1 %cmp229, label %if.then.230, label %if.else.231

if.then.230:                                      ; preds = %for.body.222
  %162 = load i32, i32* %x, align 4
  store i32 %162, i32* %minx, align 4
  %163 = load i32, i32* %y, align 4
  store i32 %163, i32* %miny, align 4
  %164 = load i32, i32* %x, align 4
  store i32 %164, i32* %maxx, align 4
  %165 = load i32, i32* %y, align 4
  store i32 %165, i32* %maxy, align 4
  br label %if.end.244

if.else.231:                                      ; preds = %for.body.222
  %166 = load i32, i32* %x, align 4
  %167 = load i32, i32* %minx, align 4
  %cmp232 = icmp slt i32 %166, %167
  br i1 %cmp232, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.else.231
  %168 = load i32, i32* %x, align 4
  store i32 %168, i32* %minx, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.else.231
  %169 = load i32, i32* %x, align 4
  %170 = load i32, i32* %maxx, align 4
  %cmp235 = icmp sgt i32 %169, %170
  br i1 %cmp235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.234
  %171 = load i32, i32* %x, align 4
  store i32 %171, i32* %maxx, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.end.234
  %172 = load i32, i32* %y, align 4
  %173 = load i32, i32* %miny, align 4
  %cmp238 = icmp slt i32 %172, %173
  br i1 %cmp238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.237
  %174 = load i32, i32* %y, align 4
  store i32 %174, i32* %miny, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.239, %if.end.237
  %175 = load i32, i32* %y, align 4
  %176 = load i32, i32* %maxy, align 4
  %cmp241 = icmp sgt i32 %175, %176
  br i1 %cmp241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.end.240
  %177 = load i32, i32* %y, align 4
  store i32 %177, i32* %maxy, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %if.end.240
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.230
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244
  %178 = load i32, i32* %k, align 4
  %inc246 = add nsw i32 %178, 1
  store i32 %inc246, i32* %k, align 4
  br label %for.cond.218

for.end.247:                                      ; preds = %for.cond.218
  %call248 = call noalias i8* @malloc(i64 104) #5
  %179 = bitcast i8* %call248 to %struct.tilebox*
  %180 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 21
  %arrayidx249 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  store %struct.tilebox* %179, %struct.tilebox** %arrayidx249, align 8
  store %struct.tilebox* %179, %struct.tilebox** %tile, align 8
  %181 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile, align 8
  %182 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %termptr = getelementptr inbounds %struct.tilebox, %struct.tilebox* %182, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr, align 8
  %183 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %183, i32 0, i32 18
  store %struct.locbox* null, %struct.locbox** %siteLocArray, align 8
  %184 = load i32, i32* %maxx, align 4
  %185 = load i32, i32* %minx, align 4
  %add250 = add nsw i32 %184, %185
  %div = sdiv i32 %add250, 2
  store i32 %div, i32* %xcenter, align 4
  %186 = load i32, i32* %maxy, align 4
  %187 = load i32, i32* %miny, align 4
  %add251 = add nsw i32 %186, %187
  %div252 = sdiv i32 %add251, 2
  store i32 %div252, i32* %ycenter, align 4
  %188 = load i32, i32* %minx, align 4
  %189 = load i32, i32* %xcenter, align 4
  %sub253 = sub nsw i32 %188, %189
  %190 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oleft = getelementptr inbounds %struct.tilebox, %struct.tilebox* %190, i32 0, i32 13
  store i32 %sub253, i32* %oleft, align 4
  %191 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %191, i32 0, i32 9
  store i32 %sub253, i32* %left, align 4
  %192 = load i32, i32* %maxx, align 4
  %193 = load i32, i32* %xcenter, align 4
  %sub254 = sub nsw i32 %192, %193
  %194 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oright = getelementptr inbounds %struct.tilebox, %struct.tilebox* %194, i32 0, i32 14
  store i32 %sub254, i32* %oright, align 4
  %195 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %195, i32 0, i32 10
  store i32 %sub254, i32* %right, align 4
  %196 = load i32, i32* %miny, align 4
  %197 = load i32, i32* %ycenter, align 4
  %sub255 = sub nsw i32 %196, %197
  %198 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %obottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %198, i32 0, i32 15
  store i32 %sub255, i32* %obottom, align 4
  %199 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %199, i32 0, i32 11
  store i32 %sub255, i32* %bottom, align 4
  %200 = load i32, i32* %maxy, align 4
  %201 = load i32, i32* %ycenter, align 4
  %sub256 = sub nsw i32 %200, %201
  %202 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %otop = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 16
  store i32 %sub256, i32* %otop, align 4
  %203 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 12
  store i32 %sub256, i32* %top, align 4
  %204 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %204, i32 0, i32 5
  store i32 0, i32* %lborder, align 4
  %205 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %205, i32 0, i32 6
  store i32 0, i32* %rborder, align 4
  %206 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %206, i32 0, i32 7
  store i32 0, i32* %bborder, align 4
  %207 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %207, i32 0, i32 8
  store i32 0, i32* %tborder, align 4
  %208 = load i32, i32* %xcenter, align 4
  %209 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter257 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %209, i32 0, i32 2
  store i32 %208, i32* %xcenter257, align 4
  %210 = load i32, i32* %ycenter, align 4
  %211 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter258 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %211, i32 0, i32 3
  store i32 %210, i32* %ycenter258, align 4
  %212 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %212, i32 0, i32 6
  store i32 0, i32* %numtiles, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.247
  %213 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles259 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %213, i32 0, i32 6
  %214 = load i32, i32* %numtiles259, align 4
  %inc260 = add nsw i32 %214, 1
  store i32 %inc260, i32* %numtiles259, align 4
  %call261 = call noalias i8* @malloc(i64 104) #5
  %215 = bitcast i8* %call261 to %struct.tilebox*
  %216 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile262 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %216, i32 0, i32 0
  store %struct.tilebox* %215, %struct.tilebox** %nexttile262, align 8
  store %struct.tilebox* %215, %struct.tilebox** %tile, align 8
  %217 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile263 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %217, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile263, align 8
  %218 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %termptr264 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %218, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr264, align 8
  %219 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %siteLocArray265 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %219, i32 0, i32 18
  store %struct.locbox* null, %struct.locbox** %siteLocArray265, align 8
  call void @buster()
  %220 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx266 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %220, i64 1
  %xc267 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx266, i32 0, i32 0
  %221 = load i32, i32* %xc267, align 4
  %222 = load i32, i32* %xcenter, align 4
  %sub268 = sub nsw i32 %221, %222
  %223 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oleft269 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %223, i32 0, i32 13
  store i32 %sub268, i32* %oleft269, align 4
  %224 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %left270 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %224, i32 0, i32 9
  store i32 %sub268, i32* %left270, align 4
  %225 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx271 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %225, i64 4
  %xc272 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx271, i32 0, i32 0
  %226 = load i32, i32* %xc272, align 4
  %227 = load i32, i32* %xcenter, align 4
  %sub273 = sub nsw i32 %226, %227
  %228 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oright274 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %228, i32 0, i32 14
  store i32 %sub273, i32* %oright274, align 4
  %229 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %right275 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i32 0, i32 10
  store i32 %sub273, i32* %right275, align 4
  %230 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx276 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %230, i64 1
  %yc277 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx276, i32 0, i32 1
  %231 = load i32, i32* %yc277, align 4
  %232 = load i32, i32* %ycenter, align 4
  %sub278 = sub nsw i32 %231, %232
  %233 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %obottom279 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %233, i32 0, i32 15
  store i32 %sub278, i32* %obottom279, align 4
  %234 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bottom280 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %234, i32 0, i32 11
  store i32 %sub278, i32* %bottom280, align 4
  %235 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx281 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %235, i64 2
  %yc282 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx281, i32 0, i32 1
  %236 = load i32, i32* %yc282, align 4
  %237 = load i32, i32* %ycenter, align 4
  %sub283 = sub nsw i32 %236, %237
  %238 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %otop284 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %238, i32 0, i32 16
  store i32 %sub283, i32* %otop284, align 4
  %239 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %top285 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %239, i32 0, i32 12
  store i32 %sub283, i32* %top285, align 4
  %240 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %lborder286 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %240, i32 0, i32 5
  store i32 0, i32* %lborder286, align 4
  %241 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %rborder287 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %241, i32 0, i32 6
  store i32 0, i32* %rborder287, align 4
  %242 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bborder288 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %242, i32 0, i32 7
  store i32 0, i32* %bborder288, align 4
  %243 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %tborder289 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %243, i32 0, i32 8
  store i32 0, i32* %tborder289, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %244 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx290 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %244, i64 0
  %xc291 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx290, i32 0, i32 0
  %245 = load i32, i32* %xc291, align 4
  %cmp292 = icmp sgt i32 %245, 0
  br i1 %cmp292, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay293 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call294 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay293)
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %248 = load i32, i32* %class, align 4
  %249 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %class296 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %249, i32 0, i32 1
  store i32 %248, i32* %class296, align 4
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay298)
  store i32 1, i32* %orient, align 4
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.312, %do.end
  %252 = load i32, i32* %orient, align 4
  %253 = load i32, i32* %norients, align 4
  %cmp301 = icmp sle i32 %252, %253
  br i1 %cmp301, label %for.body.302, label %for.end.314

for.body.302:                                     ; preds = %for.cond.300
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %temp)
  %255 = load i32, i32* %temp, align 4
  %idxprom304 = sext i32 %255 to i64
  %256 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList = getelementptr inbounds %struct.cellbox, %struct.cellbox* %256, i32 0, i32 4
  %arrayidx305 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList, i32 0, i64 %idxprom304
  store i32 1, i32* %arrayidx305, align 4
  %257 = load i32, i32* %orient, align 4
  %cmp306 = icmp eq i32 %257, 1
  br i1 %cmp306, label %if.then.307, label %if.end.311

if.then.307:                                      ; preds = %for.body.302
  %258 = load i32, i32* %temp, align 4
  %259 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient308 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %259, i32 0, i32 5
  store i32 %258, i32* %orient308, align 4
  %260 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList309 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %260, i32 0, i32 4
  %arrayidx310 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList309, i32 0, i64 8
  store i32 %258, i32* %arrayidx310, align 4
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.307, %for.body.302
  br label %for.inc.312

for.inc.312:                                      ; preds = %if.end.311
  %261 = load i32, i32* %orient, align 4
  %inc313 = add nsw i32 %261, 1
  store i32 %inc313, i32* %orient, align 4
  br label %for.cond.300

for.end.314:                                      ; preds = %for.cond.300
  br label %if.end.1811

if.else.315:                                      ; preds = %while.body
  %arraydecay316 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call317 = call i32 @strcmp(i8* %arraydecay316, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #6
  %cmp318 = icmp eq i32 %call317, 0
  br i1 %cmp318, label %if.then.319, label %if.else.482

if.then.319:                                      ; preds = %if.else.315
  %262 = load i32, i32* %pad, align 4
  %cmp320 = icmp eq i32 %262, 0
  br i1 %cmp320, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %if.then.319
  %263 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  call void @watesides(%struct.cellbox* %263)
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.321, %if.then.319
  %264 = load i32, i32* %cell, align 4
  %inc323 = add nsw i32 %264, 1
  store i32 %inc323, i32* %cell, align 4
  %idxprom324 = sext i32 %inc323 to i64
  %265 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx325 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %265, i64 %idxprom324
  %266 = load %struct.cellbox*, %struct.cellbox** %arrayidx325, align 8
  store %struct.cellbox* %266, %struct.cellbox** %ptr, align 8
  %267 = load i32, i32* %pad, align 4
  %inc326 = add nsw i32 %267, 1
  store i32 %inc326, i32* %pad, align 4
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay328 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call329 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay328)
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay330 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay330)
  %arraydecay332 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call333 = call i64 @strlen(i8* %arraydecay332) #6
  %add334 = add i64 %call333, 1
  %mul335 = mul i64 %add334, 1
  %call336 = call noalias i8* @malloc(i64 %mul335) #5
  %271 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %cname337 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i32 0, i32 0
  store i8* %call336, i8** %cname337, align 8
  %272 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %cname338 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %272, i32 0, i32 0
  %273 = load i8*, i8** %cname338, align 8
  %arraydecay339 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call340 = call i32 (i8*, i8*, ...) @sprintf(i8* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay339) #5
  store i32 0, i32* %k, align 4
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.350, %if.end.322
  %274 = load i32, i32* %k, align 4
  %cmp342 = icmp sle i32 %274, 30
  br i1 %cmp342, label %for.body.343, label %for.end.352

for.body.343:                                     ; preds = %for.cond.341
  %275 = load i32, i32* %k, align 4
  %idxprom344 = sext i32 %275 to i64
  %276 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx345 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %276, i64 %idxprom344
  %xc346 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx345, i32 0, i32 0
  store i32 0, i32* %xc346, align 4
  %277 = load i32, i32* %k, align 4
  %idxprom347 = sext i32 %277 to i64
  %278 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx348 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %278, i64 %idxprom347
  %yc349 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx348, i32 0, i32 1
  store i32 0, i32* %yc349, align 4
  br label %for.inc.350

for.inc.350:                                      ; preds = %for.body.343
  %279 = load i32, i32* %k, align 4
  %inc351 = add nsw i32 %279, 1
  store i32 %inc351, i32* %k, align 4
  br label %for.cond.341

for.end.352:                                      ; preds = %for.cond.341
  store i32 0, i32* %k, align 4
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.362, %for.end.352
  %280 = load i32, i32* %k, align 4
  %cmp354 = icmp sle i32 %280, 5
  br i1 %cmp354, label %for.body.355, label %for.end.364

for.body.355:                                     ; preds = %for.cond.353
  %281 = load i32, i32* %k, align 4
  %idxprom356 = sext i32 %281 to i64
  %282 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx357 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %282, i64 %idxprom356
  %xc358 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx357, i32 0, i32 0
  store i32 0, i32* %xc358, align 4
  %283 = load i32, i32* %k, align 4
  %idxprom359 = sext i32 %283 to i64
  %284 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx360 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %284, i64 %idxprom359
  %yc361 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx360, i32 0, i32 1
  store i32 0, i32* %yc361, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.355
  %285 = load i32, i32* %k, align 4
  %inc363 = add nsw i32 %285, 1
  store i32 %inc363, i32* %k, align 4
  br label %for.cond.353

for.end.364:                                      ; preds = %for.cond.353
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call365 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay366 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay366)
  store i32 1, i32* %corner, align 4
  br label %for.cond.368

for.cond.368:                                     ; preds = %for.inc.383, %for.end.364
  %288 = load i32, i32* %corner, align 4
  %289 = load i32, i32* %ncorners, align 4
  %cmp369 = icmp sle i32 %288, %289
  br i1 %cmp369, label %for.body.370, label %for.end.385

for.body.370:                                     ; preds = %for.cond.368
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call371 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %291 = load i32, i32* %x, align 4
  %292 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx372 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %292, i64 0
  %xc373 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx372, i32 0, i32 0
  %293 = load i32, i32* %xc373, align 4
  %inc374 = add nsw i32 %293, 1
  store i32 %inc374, i32* %xc373, align 4
  %idxprom375 = sext i32 %inc374 to i64
  %294 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx376 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %294, i64 %idxprom375
  %xc377 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx376, i32 0, i32 0
  store i32 %291, i32* %xc377, align 4
  %295 = load i32, i32* %y, align 4
  %296 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx378 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %296, i64 0
  %xc379 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx378, i32 0, i32 0
  %297 = load i32, i32* %xc379, align 4
  %idxprom380 = sext i32 %297 to i64
  %298 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx381 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %298, i64 %idxprom380
  %yc382 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx381, i32 0, i32 1
  store i32 %295, i32* %yc382, align 4
  br label %for.inc.383

for.inc.383:                                      ; preds = %for.body.370
  %299 = load i32, i32* %corner, align 4
  %inc384 = add nsw i32 %299, 1
  store i32 %inc384, i32* %corner, align 4
  br label %for.cond.368

for.end.385:                                      ; preds = %for.cond.368
  store i32 1, i32* %k, align 4
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.413, %for.end.385
  %300 = load i32, i32* %k, align 4
  %301 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx387 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %301, i64 0
  %xc388 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx387, i32 0, i32 0
  %302 = load i32, i32* %xc388, align 4
  %cmp389 = icmp sle i32 %300, %302
  br i1 %cmp389, label %for.body.390, label %for.end.415

for.body.390:                                     ; preds = %for.cond.386
  %303 = load i32, i32* %k, align 4
  %idxprom391 = sext i32 %303 to i64
  %304 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx392 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %304, i64 %idxprom391
  %xc393 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx392, i32 0, i32 0
  %305 = load i32, i32* %xc393, align 4
  store i32 %305, i32* %x, align 4
  %306 = load i32, i32* %k, align 4
  %idxprom394 = sext i32 %306 to i64
  %307 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx395 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %307, i64 %idxprom394
  %yc396 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx395, i32 0, i32 1
  %308 = load i32, i32* %yc396, align 4
  store i32 %308, i32* %y, align 4
  %309 = load i32, i32* %k, align 4
  %cmp397 = icmp eq i32 %309, 1
  br i1 %cmp397, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %for.body.390
  %310 = load i32, i32* %x, align 4
  store i32 %310, i32* %minx, align 4
  %311 = load i32, i32* %y, align 4
  store i32 %311, i32* %miny, align 4
  %312 = load i32, i32* %x, align 4
  store i32 %312, i32* %maxx, align 4
  %313 = load i32, i32* %y, align 4
  store i32 %313, i32* %maxy, align 4
  br label %if.end.412

if.else.399:                                      ; preds = %for.body.390
  %314 = load i32, i32* %x, align 4
  %315 = load i32, i32* %minx, align 4
  %cmp400 = icmp slt i32 %314, %315
  br i1 %cmp400, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %if.else.399
  %316 = load i32, i32* %x, align 4
  store i32 %316, i32* %minx, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.401, %if.else.399
  %317 = load i32, i32* %x, align 4
  %318 = load i32, i32* %maxx, align 4
  %cmp403 = icmp sgt i32 %317, %318
  br i1 %cmp403, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %if.end.402
  %319 = load i32, i32* %x, align 4
  store i32 %319, i32* %maxx, align 4
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.404, %if.end.402
  %320 = load i32, i32* %y, align 4
  %321 = load i32, i32* %miny, align 4
  %cmp406 = icmp slt i32 %320, %321
  br i1 %cmp406, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %if.end.405
  %322 = load i32, i32* %y, align 4
  store i32 %322, i32* %miny, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %if.end.405
  %323 = load i32, i32* %y, align 4
  %324 = load i32, i32* %maxy, align 4
  %cmp409 = icmp sgt i32 %323, %324
  br i1 %cmp409, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.end.408
  %325 = load i32, i32* %y, align 4
  store i32 %325, i32* %maxy, align 4
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.410, %if.end.408
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %if.then.398
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.412
  %326 = load i32, i32* %k, align 4
  %inc414 = add nsw i32 %326, 1
  store i32 %inc414, i32* %k, align 4
  br label %for.cond.386

for.end.415:                                      ; preds = %for.cond.386
  %call416 = call noalias i8* @malloc(i64 104) #5
  %327 = bitcast i8* %call416 to %struct.tilebox*
  %328 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config417 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %328, i32 0, i32 21
  %arrayidx418 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config417, i32 0, i64 0
  store %struct.tilebox* %327, %struct.tilebox** %arrayidx418, align 8
  store %struct.tilebox* %327, %struct.tilebox** %tile, align 8
  %329 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile419 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %329, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile419, align 8
  %330 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %termptr420 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %330, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr420, align 8
  %331 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %siteLocArray421 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %331, i32 0, i32 18
  store %struct.locbox* null, %struct.locbox** %siteLocArray421, align 8
  %332 = load i32, i32* %maxx, align 4
  %333 = load i32, i32* %minx, align 4
  %add422 = add nsw i32 %332, %333
  %div423 = sdiv i32 %add422, 2
  store i32 %div423, i32* %xcenter, align 4
  %334 = load i32, i32* %maxy, align 4
  %335 = load i32, i32* %miny, align 4
  %add424 = add nsw i32 %334, %335
  %div425 = sdiv i32 %add424, 2
  store i32 %div425, i32* %ycenter, align 4
  %336 = load i32, i32* %minx, align 4
  %337 = load i32, i32* %xcenter, align 4
  %sub426 = sub nsw i32 %336, %337
  %338 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oleft427 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %338, i32 0, i32 13
  store i32 %sub426, i32* %oleft427, align 4
  %339 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %left428 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %339, i32 0, i32 9
  store i32 %sub426, i32* %left428, align 4
  %340 = load i32, i32* %maxx, align 4
  %341 = load i32, i32* %xcenter, align 4
  %sub429 = sub nsw i32 %340, %341
  %342 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oright430 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %342, i32 0, i32 14
  store i32 %sub429, i32* %oright430, align 4
  %343 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %right431 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %343, i32 0, i32 10
  store i32 %sub429, i32* %right431, align 4
  %344 = load i32, i32* %miny, align 4
  %345 = load i32, i32* %ycenter, align 4
  %sub432 = sub nsw i32 %344, %345
  %346 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %obottom433 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i32 0, i32 15
  store i32 %sub432, i32* %obottom433, align 4
  %347 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bottom434 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %347, i32 0, i32 11
  store i32 %sub432, i32* %bottom434, align 4
  %348 = load i32, i32* %maxy, align 4
  %349 = load i32, i32* %ycenter, align 4
  %sub435 = sub nsw i32 %348, %349
  %350 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %otop436 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %350, i32 0, i32 16
  store i32 %sub435, i32* %otop436, align 4
  %351 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %top437 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %351, i32 0, i32 12
  store i32 %sub435, i32* %top437, align 4
  %352 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %lborder438 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %352, i32 0, i32 5
  store i32 0, i32* %lborder438, align 4
  %353 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %rborder439 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %353, i32 0, i32 6
  store i32 0, i32* %rborder439, align 4
  %354 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bborder440 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %354, i32 0, i32 7
  store i32 0, i32* %bborder440, align 4
  %355 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %tborder441 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %355, i32 0, i32 8
  store i32 0, i32* %tborder441, align 4
  %356 = load i32, i32* %xcenter, align 4
  %357 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter442 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %357, i32 0, i32 2
  store i32 %356, i32* %xcenter442, align 4
  %358 = load i32, i32* %ycenter, align 4
  %359 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter443 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %359, i32 0, i32 3
  store i32 %358, i32* %ycenter443, align 4
  %360 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles444 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %360, i32 0, i32 6
  store i32 0, i32* %numtiles444, align 4
  br label %do.body.445

do.body.445:                                      ; preds = %do.cond.477, %for.end.415
  %361 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles446 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %361, i32 0, i32 6
  %362 = load i32, i32* %numtiles446, align 4
  %inc447 = add nsw i32 %362, 1
  store i32 %inc447, i32* %numtiles446, align 4
  %call448 = call noalias i8* @malloc(i64 104) #5
  %363 = bitcast i8* %call448 to %struct.tilebox*
  %364 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile449 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %364, i32 0, i32 0
  store %struct.tilebox* %363, %struct.tilebox** %nexttile449, align 8
  store %struct.tilebox* %363, %struct.tilebox** %tile, align 8
  %365 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile450 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %365, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile450, align 8
  %366 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %termptr451 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %366, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr451, align 8
  %367 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %siteLocArray452 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %367, i32 0, i32 18
  store %struct.locbox* null, %struct.locbox** %siteLocArray452, align 8
  call void @buster()
  %368 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx453 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %368, i64 1
  %xc454 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx453, i32 0, i32 0
  %369 = load i32, i32* %xc454, align 4
  %370 = load i32, i32* %xcenter, align 4
  %sub455 = sub nsw i32 %369, %370
  %371 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oleft456 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %371, i32 0, i32 13
  store i32 %sub455, i32* %oleft456, align 4
  %372 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %left457 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %372, i32 0, i32 9
  store i32 %sub455, i32* %left457, align 4
  %373 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx458 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %373, i64 4
  %xc459 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx458, i32 0, i32 0
  %374 = load i32, i32* %xc459, align 4
  %375 = load i32, i32* %xcenter, align 4
  %sub460 = sub nsw i32 %374, %375
  %376 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oright461 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %376, i32 0, i32 14
  store i32 %sub460, i32* %oright461, align 4
  %377 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %right462 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %377, i32 0, i32 10
  store i32 %sub460, i32* %right462, align 4
  %378 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx463 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %378, i64 1
  %yc464 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx463, i32 0, i32 1
  %379 = load i32, i32* %yc464, align 4
  %380 = load i32, i32* %ycenter, align 4
  %sub465 = sub nsw i32 %379, %380
  %381 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %obottom466 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %381, i32 0, i32 15
  store i32 %sub465, i32* %obottom466, align 4
  %382 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bottom467 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %382, i32 0, i32 11
  store i32 %sub465, i32* %bottom467, align 4
  %383 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx468 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %383, i64 2
  %yc469 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx468, i32 0, i32 1
  %384 = load i32, i32* %yc469, align 4
  %385 = load i32, i32* %ycenter, align 4
  %sub470 = sub nsw i32 %384, %385
  %386 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %otop471 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %386, i32 0, i32 16
  store i32 %sub470, i32* %otop471, align 4
  %387 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %top472 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i32 0, i32 12
  store i32 %sub470, i32* %top472, align 4
  %388 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %lborder473 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %388, i32 0, i32 5
  store i32 0, i32* %lborder473, align 4
  %389 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %rborder474 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %389, i32 0, i32 6
  store i32 0, i32* %rborder474, align 4
  %390 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bborder475 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %390, i32 0, i32 7
  store i32 0, i32* %bborder475, align 4
  %391 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %tborder476 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %391, i32 0, i32 8
  store i32 0, i32* %tborder476, align 4
  br label %do.cond.477

do.cond.477:                                      ; preds = %do.body.445
  %392 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx478 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %392, i64 0
  %xc479 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx478, i32 0, i32 0
  %393 = load i32, i32* %xc479, align 4
  %cmp480 = icmp sgt i32 %393, 0
  br i1 %cmp480, label %do.body.445, label %do.end.481

do.end.481:                                       ; preds = %do.cond.477
  br label %if.end.1810

if.else.482:                                      ; preds = %if.else.315
  %arraydecay483 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call484 = call i32 @strcmp(i8* %arraydecay483, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #6
  %cmp485 = icmp eq i32 %call484, 0
  br i1 %cmp485, label %if.then.486, label %if.else.542

if.then.486:                                      ; preds = %if.else.482
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay487 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call488 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %394, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay487)
  %arraydecay489 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call490 = call i32 @strcmp(i8* %arraydecay489, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6
  %cmp491 = icmp eq i32 %call490, 0
  br i1 %cmp491, label %if.then.492, label %if.else.493

if.then.492:                                      ; preds = %if.then.486
  %395 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside = getelementptr inbounds %struct.cellbox, %struct.cellbox* %395, i32 0, i32 11
  store i32 1, i32* %padside, align 4
  br label %if.end.518

if.else.493:                                      ; preds = %if.then.486
  %arraydecay494 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call495 = call i32 @strcmp(i8* %arraydecay494, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #6
  %cmp496 = icmp eq i32 %call495, 0
  br i1 %cmp496, label %if.then.497, label %if.else.499

if.then.497:                                      ; preds = %if.else.493
  %396 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside498 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %396, i32 0, i32 11
  store i32 2, i32* %padside498, align 4
  br label %if.end.517

if.else.499:                                      ; preds = %if.else.493
  %arraydecay500 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call501 = call i32 @strcmp(i8* %arraydecay500, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %cmp502 = icmp eq i32 %call501, 0
  br i1 %cmp502, label %if.then.503, label %if.else.505

if.then.503:                                      ; preds = %if.else.499
  %397 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside504 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %397, i32 0, i32 11
  store i32 3, i32* %padside504, align 4
  br label %if.end.516

if.else.505:                                      ; preds = %if.else.499
  %arraydecay506 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call507 = call i32 @strcmp(i8* %arraydecay506, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  %cmp508 = icmp eq i32 %call507, 0
  br i1 %cmp508, label %if.then.509, label %if.else.511

if.then.509:                                      ; preds = %if.else.505
  %398 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside510 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %398, i32 0, i32 11
  store i32 4, i32* %padside510, align 4
  br label %if.end.515

if.else.511:                                      ; preds = %if.else.505
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call512 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %399, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0))
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %401 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %cname513 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %401, i32 0, i32 0
  %402 = load i8*, i8** %cname513, align 8
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %402)
  call void @exit(i32 0) #7
  unreachable

if.end.515:                                       ; preds = %if.then.509
  br label %if.end.516

if.end.516:                                       ; preds = %if.end.515, %if.then.503
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %if.then.497
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %if.then.492
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay519 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call520 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %403, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay519)
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call521 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %404, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %405 = load i32, i32* %class, align 4
  %406 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %class522 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %406, i32 0, i32 1
  store i32 %405, i32* %class522, align 4
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call523 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %407, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay524 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call525 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %408, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay524)
  store i32 1, i32* %orient, align 4
  br label %for.cond.526

for.cond.526:                                     ; preds = %for.inc.539, %if.end.518
  %409 = load i32, i32* %orient, align 4
  %410 = load i32, i32* %norients, align 4
  %cmp527 = icmp sle i32 %409, %410
  br i1 %cmp527, label %for.body.528, label %for.end.541

for.body.528:                                     ; preds = %for.cond.526
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call529 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %411, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %temp)
  %412 = load i32, i32* %temp, align 4
  %idxprom530 = sext i32 %412 to i64
  %413 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList531 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %413, i32 0, i32 4
  %arrayidx532 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList531, i32 0, i64 %idxprom530
  store i32 1, i32* %arrayidx532, align 4
  %414 = load i32, i32* %orient, align 4
  %cmp533 = icmp eq i32 %414, 1
  br i1 %cmp533, label %if.then.534, label %if.end.538

if.then.534:                                      ; preds = %for.body.528
  %415 = load i32, i32* %temp, align 4
  %416 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient535 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %416, i32 0, i32 5
  store i32 %415, i32* %orient535, align 4
  %417 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList536 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %417, i32 0, i32 4
  %arrayidx537 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList536, i32 0, i64 8
  store i32 %415, i32* %arrayidx537, align 4
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.534, %for.body.528
  br label %for.inc.539

for.inc.539:                                      ; preds = %if.end.538
  %418 = load i32, i32* %orient, align 4
  %inc540 = add nsw i32 %418, 1
  store i32 %inc540, i32* %orient, align 4
  br label %for.cond.526

for.end.541:                                      ; preds = %for.cond.526
  br label %if.end.1809

if.else.542:                                      ; preds = %if.else.482
  %arraydecay543 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call544 = call i32 @strcmp(i8* %arraydecay543, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)) #6
  %cmp545 = icmp eq i32 %call544, 0
  br i1 %cmp545, label %if.then.546, label %if.else.579

if.then.546:                                      ; preds = %if.else.542
  %419 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call547 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %419, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double* %space)
  %420 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside548 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %420, i32 0, i32 11
  %421 = load i32, i32* %padside548, align 4
  %cmp549 = icmp eq i32 %421, 1
  br i1 %cmp549, label %if.then.550, label %if.else.554

if.then.550:                                      ; preds = %if.then.546
  %422 = load i32*, i32** @fixLRBT, align 8
  %arrayidx551 = getelementptr inbounds i32, i32* %422, i64 0
  store i32 1, i32* %arrayidx551, align 4
  %423 = load double, double* %space, align 8
  %424 = load i32, i32* %pad, align 4
  %idxprom552 = sext i32 %424 to i64
  %425 = load double*, double** @padspace, align 8
  %arrayidx553 = getelementptr inbounds double, double* %425, i64 %idxprom552
  store double %423, double* %arrayidx553, align 8
  br label %if.end.578

if.else.554:                                      ; preds = %if.then.546
  %426 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside555 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i32 0, i32 11
  %427 = load i32, i32* %padside555, align 4
  %cmp556 = icmp eq i32 %427, 3
  br i1 %cmp556, label %if.then.557, label %if.else.561

if.then.557:                                      ; preds = %if.else.554
  %428 = load i32*, i32** @fixLRBT, align 8
  %arrayidx558 = getelementptr inbounds i32, i32* %428, i64 1
  store i32 1, i32* %arrayidx558, align 4
  %429 = load double, double* %space, align 8
  %430 = load i32, i32* %pad, align 4
  %idxprom559 = sext i32 %430 to i64
  %431 = load double*, double** @padspace, align 8
  %arrayidx560 = getelementptr inbounds double, double* %431, i64 %idxprom559
  store double %429, double* %arrayidx560, align 8
  br label %if.end.577

if.else.561:                                      ; preds = %if.else.554
  %432 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside562 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %432, i32 0, i32 11
  %433 = load i32, i32* %padside562, align 4
  %cmp563 = icmp eq i32 %433, 4
  br i1 %cmp563, label %if.then.564, label %if.else.568

if.then.564:                                      ; preds = %if.else.561
  %434 = load i32*, i32** @fixLRBT, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %434, i64 2
  store i32 1, i32* %arrayidx565, align 4
  %435 = load double, double* %space, align 8
  %436 = load i32, i32* %pad, align 4
  %idxprom566 = sext i32 %436 to i64
  %437 = load double*, double** @padspace, align 8
  %arrayidx567 = getelementptr inbounds double, double* %437, i64 %idxprom566
  store double %435, double* %arrayidx567, align 8
  br label %if.end.576

if.else.568:                                      ; preds = %if.else.561
  %438 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside569 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %438, i32 0, i32 11
  %439 = load i32, i32* %padside569, align 4
  %cmp570 = icmp eq i32 %439, 2
  br i1 %cmp570, label %if.then.571, label %if.end.575

if.then.571:                                      ; preds = %if.else.568
  %440 = load i32*, i32** @fixLRBT, align 8
  %arrayidx572 = getelementptr inbounds i32, i32* %440, i64 3
  store i32 1, i32* %arrayidx572, align 4
  %441 = load double, double* %space, align 8
  %442 = load i32, i32* %pad, align 4
  %idxprom573 = sext i32 %442 to i64
  %443 = load double*, double** @padspace, align 8
  %arrayidx574 = getelementptr inbounds double, double* %443, i64 %idxprom573
  store double %441, double* %arrayidx574, align 8
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.571, %if.else.568
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.then.564
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %if.then.557
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %if.then.550
  br label %if.end.1808

if.else.579:                                      ; preds = %if.else.542
  %arraydecay580 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call581 = call i32 @strcmp(i8* %arraydecay580, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #6
  %cmp582 = icmp eq i32 %call581, 0
  br i1 %cmp582, label %if.then.583, label %if.else.1127

if.then.583:                                      ; preds = %if.else.579
  %444 = load i32, i32* %cell, align 4
  %cmp584 = icmp sgt i32 %444, 0
  br i1 %cmp584, label %if.then.585, label %if.end.586

if.then.585:                                      ; preds = %if.then.583
  %445 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  call void @watesides(%struct.cellbox* %445)
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.585, %if.then.583
  %446 = load i32, i32* %cell, align 4
  %inc587 = add nsw i32 %446, 1
  store i32 %inc587, i32* %cell, align 4
  %idxprom588 = sext i32 %inc587 to i64
  %447 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx589 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %447, i64 %idxprom588
  %448 = load %struct.cellbox*, %struct.cellbox** %arrayidx589, align 8
  store %struct.cellbox* %448, %struct.cellbox** %ptr, align 8
  %449 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call590 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %449, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay591 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call592 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %450, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay591)
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay593 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call594 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %451, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay593)
  %arraydecay595 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call596 = call i64 @strlen(i8* %arraydecay595) #6
  %add597 = add i64 %call596, 1
  %mul598 = mul i64 %add597, 1
  %call599 = call noalias i8* @malloc(i64 %mul598) #5
  %452 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %cname600 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %452, i32 0, i32 0
  store i8* %call599, i8** %cname600, align 8
  %453 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %cname601 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %453, i32 0, i32 0
  %454 = load i8*, i8** %cname601, align 8
  %arraydecay602 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call603 = call i32 (i8*, i8*, ...) @sprintf(i8* %454, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay602) #5
  %455 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %455, i32 0, i32 10
  store i32 1, i32* %softflag, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.604

for.cond.604:                                     ; preds = %for.inc.619, %if.end.586
  %456 = load i32, i32* %k, align 4
  %cmp605 = icmp sle i32 %456, 30
  br i1 %cmp605, label %for.body.606, label %for.end.621

for.body.606:                                     ; preds = %for.cond.604
  %457 = load i32, i32* %k, align 4
  %idxprom607 = sext i32 %457 to i64
  %458 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx608 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %458, i64 %idxprom607
  %xc609 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx608, i32 0, i32 0
  store i32 0, i32* %xc609, align 4
  %459 = load i32, i32* %k, align 4
  %idxprom610 = sext i32 %459 to i64
  %460 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx611 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %460, i64 %idxprom610
  %yc612 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx611, i32 0, i32 1
  store i32 0, i32* %yc612, align 4
  %461 = load i32, i32* %k, align 4
  %idxprom613 = sext i32 %461 to i64
  %462 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx614 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %462, i64 %idxprom613
  %xc615 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx614, i32 0, i32 0
  store i32 0, i32* %xc615, align 4
  %463 = load i32, i32* %k, align 4
  %idxprom616 = sext i32 %463 to i64
  %464 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx617 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %464, i64 %idxprom616
  %yc618 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx617, i32 0, i32 1
  store i32 0, i32* %yc618, align 4
  br label %for.inc.619

for.inc.619:                                      ; preds = %for.body.606
  %465 = load i32, i32* %k, align 4
  %inc620 = add nsw i32 %465, 1
  store i32 %inc620, i32* %k, align 4
  br label %for.cond.604

for.end.621:                                      ; preds = %for.cond.604
  store i32 0, i32* %k, align 4
  br label %for.cond.622

for.cond.622:                                     ; preds = %for.inc.631, %for.end.621
  %466 = load i32, i32* %k, align 4
  %cmp623 = icmp sle i32 %466, 5
  br i1 %cmp623, label %for.body.624, label %for.end.633

for.body.624:                                     ; preds = %for.cond.622
  %467 = load i32, i32* %k, align 4
  %idxprom625 = sext i32 %467 to i64
  %468 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx626 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %468, i64 %idxprom625
  %xc627 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx626, i32 0, i32 0
  store i32 0, i32* %xc627, align 4
  %469 = load i32, i32* %k, align 4
  %idxprom628 = sext i32 %469 to i64
  %470 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx629 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %470, i64 %idxprom628
  %yc630 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx629, i32 0, i32 1
  store i32 0, i32* %yc630, align 4
  br label %for.inc.631

for.inc.631:                                      ; preds = %for.body.624
  %471 = load i32, i32* %k, align 4
  %inc632 = add nsw i32 %471, 1
  store i32 %inc632, i32* %k, align 4
  br label %for.cond.622

for.end.633:                                      ; preds = %for.cond.622
  %472 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call634 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %472, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %473 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay635 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call636 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %473, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay635)
  store i32 1, i32* %corner, align 4
  br label %for.cond.637

for.cond.637:                                     ; preds = %for.inc.663, %for.end.633
  %474 = load i32, i32* %corner, align 4
  %475 = load i32, i32* %ncorners, align 4
  %cmp638 = icmp sle i32 %474, %475
  br i1 %cmp638, label %for.body.639, label %for.end.665

for.body.639:                                     ; preds = %for.cond.637
  %476 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call640 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %476, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %477 = load i32, i32* %x, align 4
  %478 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx641 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %478, i64 0
  %xc642 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx641, i32 0, i32 0
  %479 = load i32, i32* %xc642, align 4
  %inc643 = add nsw i32 %479, 1
  store i32 %inc643, i32* %xc642, align 4
  %idxprom644 = sext i32 %inc643 to i64
  %480 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx645 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %480, i64 %idxprom644
  %xc646 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx645, i32 0, i32 0
  store i32 %477, i32* %xc646, align 4
  %481 = load i32, i32* %y, align 4
  %482 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx647 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %482, i64 0
  %xc648 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx647, i32 0, i32 0
  %483 = load i32, i32* %xc648, align 4
  %idxprom649 = sext i32 %483 to i64
  %484 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx650 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %484, i64 %idxprom649
  %yc651 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx650, i32 0, i32 1
  store i32 %481, i32* %yc651, align 4
  %485 = load i32, i32* %x, align 4
  %486 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx652 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %486, i64 0
  %xc653 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx652, i32 0, i32 0
  %487 = load i32, i32* %xc653, align 4
  %inc654 = add nsw i32 %487, 1
  store i32 %inc654, i32* %xc653, align 4
  %idxprom655 = sext i32 %inc654 to i64
  %488 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx656 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %488, i64 %idxprom655
  %xc657 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx656, i32 0, i32 0
  store i32 %485, i32* %xc657, align 4
  %489 = load i32, i32* %y, align 4
  %490 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx658 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %490, i64 0
  %xc659 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx658, i32 0, i32 0
  %491 = load i32, i32* %xc659, align 4
  %idxprom660 = sext i32 %491 to i64
  %492 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx661 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %492, i64 %idxprom660
  %yc662 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx661, i32 0, i32 1
  store i32 %489, i32* %yc662, align 4
  br label %for.inc.663

for.inc.663:                                      ; preds = %for.body.639
  %493 = load i32, i32* %corner, align 4
  %inc664 = add nsw i32 %493, 1
  store i32 %inc664, i32* %corner, align 4
  br label %for.cond.637

for.end.665:                                      ; preds = %for.cond.637
  %494 = load i32, i32* %ncorners, align 4
  %495 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsides666 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %495, i32 0, i32 7
  store i32 %494, i32* %numsides666, align 4
  %496 = load i32, i32* %ncorners, align 4
  %add667 = add nsw i32 %496, 1
  %conv = sext i32 %add667 to i64
  %mul668 = mul i64 %conv, 8
  %call669 = call noalias i8* @malloc(i64 %mul668) #5
  %497 = bitcast i8* %call669 to %struct.sidebox*
  %498 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray = getelementptr inbounds %struct.cellbox, %struct.cellbox* %498, i32 0, i32 22
  store %struct.sidebox* %497, %struct.sidebox** %sideArray, align 8
  %call670 = call i32 @perimeter()
  %499 = load i32, i32* @perim, align 4
  %add671 = add nsw i32 %499, %call670
  store i32 %add671, i32* @perim, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.672

for.cond.672:                                     ; preds = %for.inc.823, %for.end.665
  %500 = load i32, i32* %k, align 4
  %501 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx673 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %501, i64 0
  %xc674 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx673, i32 0, i32 0
  %502 = load i32, i32* %xc674, align 4
  %cmp675 = icmp sle i32 %500, %502
  br i1 %cmp675, label %for.body.677, label %for.end.825

for.body.677:                                     ; preds = %for.cond.672
  %503 = load i32, i32* %k, align 4
  %504 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx678 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %504, i64 0
  %xc679 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx678, i32 0, i32 0
  %505 = load i32, i32* %xc679, align 4
  %cmp680 = icmp slt i32 %503, %505
  br i1 %cmp680, label %if.then.682, label %if.else.781

if.then.682:                                      ; preds = %for.body.677
  %506 = load i32, i32* %k, align 4
  %rem683 = srem i32 %506, 2
  %cmp684 = icmp eq i32 %rem683, 1
  br i1 %cmp684, label %if.then.686, label %if.else.733

if.then.686:                                      ; preds = %if.then.682
  %507 = load i32, i32* %k, align 4
  %add687 = add nsw i32 %507, 1
  %idxprom688 = sext i32 %add687 to i64
  %508 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx689 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %508, i64 %idxprom688
  %yc690 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx689, i32 0, i32 1
  %509 = load i32, i32* %yc690, align 4
  %510 = load i32, i32* %k, align 4
  %idxprom691 = sext i32 %510 to i64
  %511 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx692 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %511, i64 %idxprom691
  %yc693 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx692, i32 0, i32 1
  %512 = load i32, i32* %yc693, align 4
  %sub694 = sub nsw i32 %509, %512
  %cmp695 = icmp sge i32 %sub694, 0
  br i1 %cmp695, label %cond.true.697, label %cond.false.706

cond.true.697:                                    ; preds = %if.then.686
  %513 = load i32, i32* %k, align 4
  %add698 = add nsw i32 %513, 1
  %idxprom699 = sext i32 %add698 to i64
  %514 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx700 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %514, i64 %idxprom699
  %yc701 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx700, i32 0, i32 1
  %515 = load i32, i32* %yc701, align 4
  %516 = load i32, i32* %k, align 4
  %idxprom702 = sext i32 %516 to i64
  %517 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx703 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %517, i64 %idxprom702
  %yc704 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx703, i32 0, i32 1
  %518 = load i32, i32* %yc704, align 4
  %sub705 = sub nsw i32 %515, %518
  br label %cond.end.716

cond.false.706:                                   ; preds = %if.then.686
  %519 = load i32, i32* %k, align 4
  %add707 = add nsw i32 %519, 1
  %idxprom708 = sext i32 %add707 to i64
  %520 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx709 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %520, i64 %idxprom708
  %yc710 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx709, i32 0, i32 1
  %521 = load i32, i32* %yc710, align 4
  %522 = load i32, i32* %k, align 4
  %idxprom711 = sext i32 %522 to i64
  %523 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx712 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %523, i64 %idxprom711
  %yc713 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx712, i32 0, i32 1
  %524 = load i32, i32* %yc713, align 4
  %sub714 = sub nsw i32 %521, %524
  %sub715 = sub nsw i32 0, %sub714
  br label %cond.end.716

cond.end.716:                                     ; preds = %cond.false.706, %cond.true.697
  %cond717 = phi i32 [ %sub705, %cond.true.697 ], [ %sub715, %cond.false.706 ]
  %525 = load i32, i32* %k, align 4
  %idxprom718 = sext i32 %525 to i64
  %526 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx719 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %526, i64 %idxprom718
  %length720 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx719, i32 0, i32 0
  store i32 %cond717, i32* %length720, align 4
  %527 = load i32, i32* %k, align 4
  %idxprom721 = sext i32 %527 to i64
  %528 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx722 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %528, i64 %idxprom721
  %vertical723 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx722, i32 0, i32 2
  store i32 1, i32* %vertical723, align 4
  %529 = load i32, i32* %k, align 4
  %idxprom724 = sext i32 %529 to i64
  %530 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx725 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %530, i64 %idxprom724
  %pincount726 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx725, i32 0, i32 1
  store double 0.000000e+00, double* %pincount726, align 8
  %531 = load i32, i32* %k, align 4
  %idxprom727 = sext i32 %531 to i64
  %532 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx728 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %532, i64 %idxprom727
  %xc729 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx728, i32 0, i32 0
  %533 = load i32, i32* %xc729, align 4
  %534 = load i32, i32* %k, align 4
  %idxprom730 = sext i32 %534 to i64
  %535 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx731 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %535, i64 %idxprom730
  %position732 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx731, i32 0, i32 3
  store i32 %533, i32* %position732, align 4
  br label %if.end.780

if.else.733:                                      ; preds = %if.then.682
  %536 = load i32, i32* %k, align 4
  %add734 = add nsw i32 %536, 1
  %idxprom735 = sext i32 %add734 to i64
  %537 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx736 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %537, i64 %idxprom735
  %xc737 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx736, i32 0, i32 0
  %538 = load i32, i32* %xc737, align 4
  %539 = load i32, i32* %k, align 4
  %idxprom738 = sext i32 %539 to i64
  %540 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx739 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %540, i64 %idxprom738
  %xc740 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx739, i32 0, i32 0
  %541 = load i32, i32* %xc740, align 4
  %sub741 = sub nsw i32 %538, %541
  %cmp742 = icmp sge i32 %sub741, 0
  br i1 %cmp742, label %cond.true.744, label %cond.false.753

cond.true.744:                                    ; preds = %if.else.733
  %542 = load i32, i32* %k, align 4
  %add745 = add nsw i32 %542, 1
  %idxprom746 = sext i32 %add745 to i64
  %543 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx747 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %543, i64 %idxprom746
  %xc748 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx747, i32 0, i32 0
  %544 = load i32, i32* %xc748, align 4
  %545 = load i32, i32* %k, align 4
  %idxprom749 = sext i32 %545 to i64
  %546 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx750 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %546, i64 %idxprom749
  %xc751 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx750, i32 0, i32 0
  %547 = load i32, i32* %xc751, align 4
  %sub752 = sub nsw i32 %544, %547
  br label %cond.end.763

cond.false.753:                                   ; preds = %if.else.733
  %548 = load i32, i32* %k, align 4
  %add754 = add nsw i32 %548, 1
  %idxprom755 = sext i32 %add754 to i64
  %549 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx756 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %549, i64 %idxprom755
  %xc757 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx756, i32 0, i32 0
  %550 = load i32, i32* %xc757, align 4
  %551 = load i32, i32* %k, align 4
  %idxprom758 = sext i32 %551 to i64
  %552 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx759 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %552, i64 %idxprom758
  %xc760 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx759, i32 0, i32 0
  %553 = load i32, i32* %xc760, align 4
  %sub761 = sub nsw i32 %550, %553
  %sub762 = sub nsw i32 0, %sub761
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.false.753, %cond.true.744
  %cond764 = phi i32 [ %sub752, %cond.true.744 ], [ %sub762, %cond.false.753 ]
  %554 = load i32, i32* %k, align 4
  %idxprom765 = sext i32 %554 to i64
  %555 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx766 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %555, i64 %idxprom765
  %length767 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx766, i32 0, i32 0
  store i32 %cond764, i32* %length767, align 4
  %556 = load i32, i32* %k, align 4
  %idxprom768 = sext i32 %556 to i64
  %557 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx769 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %557, i64 %idxprom768
  %vertical770 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx769, i32 0, i32 2
  store i32 0, i32* %vertical770, align 4
  %558 = load i32, i32* %k, align 4
  %idxprom771 = sext i32 %558 to i64
  %559 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx772 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %559, i64 %idxprom771
  %pincount773 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx772, i32 0, i32 1
  store double 0.000000e+00, double* %pincount773, align 8
  %560 = load i32, i32* %k, align 4
  %idxprom774 = sext i32 %560 to i64
  %561 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx775 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %561, i64 %idxprom774
  %yc776 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx775, i32 0, i32 1
  %562 = load i32, i32* %yc776, align 4
  %563 = load i32, i32* %k, align 4
  %idxprom777 = sext i32 %563 to i64
  %564 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx778 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %564, i64 %idxprom777
  %position779 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx778, i32 0, i32 3
  store i32 %562, i32* %position779, align 4
  br label %if.end.780

if.end.780:                                       ; preds = %cond.end.763, %cond.end.716
  br label %if.end.822

if.else.781:                                      ; preds = %for.body.677
  %565 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx782 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %565, i64 1
  %xc783 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx782, i32 0, i32 0
  %566 = load i32, i32* %xc783, align 4
  %567 = load i32, i32* %k, align 4
  %idxprom784 = sext i32 %567 to i64
  %568 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx785 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %568, i64 %idxprom784
  %xc786 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx785, i32 0, i32 0
  %569 = load i32, i32* %xc786, align 4
  %sub787 = sub nsw i32 %566, %569
  %cmp788 = icmp sge i32 %sub787, 0
  br i1 %cmp788, label %cond.true.790, label %cond.false.797

cond.true.790:                                    ; preds = %if.else.781
  %570 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx791 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %570, i64 1
  %xc792 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx791, i32 0, i32 0
  %571 = load i32, i32* %xc792, align 4
  %572 = load i32, i32* %k, align 4
  %idxprom793 = sext i32 %572 to i64
  %573 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx794 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %573, i64 %idxprom793
  %xc795 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx794, i32 0, i32 0
  %574 = load i32, i32* %xc795, align 4
  %sub796 = sub nsw i32 %571, %574
  br label %cond.end.805

cond.false.797:                                   ; preds = %if.else.781
  %575 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx798 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %575, i64 1
  %xc799 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx798, i32 0, i32 0
  %576 = load i32, i32* %xc799, align 4
  %577 = load i32, i32* %k, align 4
  %idxprom800 = sext i32 %577 to i64
  %578 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx801 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %578, i64 %idxprom800
  %xc802 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx801, i32 0, i32 0
  %579 = load i32, i32* %xc802, align 4
  %sub803 = sub nsw i32 %576, %579
  %sub804 = sub nsw i32 0, %sub803
  br label %cond.end.805

cond.end.805:                                     ; preds = %cond.false.797, %cond.true.790
  %cond806 = phi i32 [ %sub796, %cond.true.790 ], [ %sub804, %cond.false.797 ]
  %580 = load i32, i32* %k, align 4
  %idxprom807 = sext i32 %580 to i64
  %581 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx808 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %581, i64 %idxprom807
  %length809 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx808, i32 0, i32 0
  store i32 %cond806, i32* %length809, align 4
  %582 = load i32, i32* %k, align 4
  %idxprom810 = sext i32 %582 to i64
  %583 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx811 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %583, i64 %idxprom810
  %vertical812 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx811, i32 0, i32 2
  store i32 0, i32* %vertical812, align 4
  %584 = load i32, i32* %k, align 4
  %idxprom813 = sext i32 %584 to i64
  %585 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx814 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %585, i64 %idxprom813
  %pincount815 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx814, i32 0, i32 1
  store double 0.000000e+00, double* %pincount815, align 8
  %586 = load i32, i32* %k, align 4
  %idxprom816 = sext i32 %586 to i64
  %587 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx817 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %587, i64 %idxprom816
  %yc818 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx817, i32 0, i32 1
  %588 = load i32, i32* %yc818, align 4
  %589 = load i32, i32* %k, align 4
  %idxprom819 = sext i32 %589 to i64
  %590 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx820 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %590, i64 %idxprom819
  %position821 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx820, i32 0, i32 3
  store i32 %588, i32* %position821, align 4
  br label %if.end.822

if.end.822:                                       ; preds = %cond.end.805, %if.end.780
  br label %for.inc.823

for.inc.823:                                      ; preds = %if.end.822
  %591 = load i32, i32* %k, align 4
  %inc824 = add nsw i32 %591, 1
  store i32 %inc824, i32* %k, align 4
  br label %for.cond.672

for.end.825:                                      ; preds = %for.cond.672
  store i32 1, i32* %k, align 4
  br label %for.cond.826

for.cond.826:                                     ; preds = %for.inc.859, %for.end.825
  %592 = load i32, i32* %k, align 4
  %593 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx827 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %593, i64 0
  %xc828 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx827, i32 0, i32 0
  %594 = load i32, i32* %xc828, align 4
  %cmp829 = icmp sle i32 %592, %594
  br i1 %cmp829, label %for.body.831, label %for.end.861

for.body.831:                                     ; preds = %for.cond.826
  %595 = load i32, i32* %k, align 4
  %idxprom832 = sext i32 %595 to i64
  %596 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx833 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %596, i64 %idxprom832
  %xc834 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx833, i32 0, i32 0
  %597 = load i32, i32* %xc834, align 4
  store i32 %597, i32* %x, align 4
  %598 = load i32, i32* %k, align 4
  %idxprom835 = sext i32 %598 to i64
  %599 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx836 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %599, i64 %idxprom835
  %yc837 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx836, i32 0, i32 1
  %600 = load i32, i32* %yc837, align 4
  store i32 %600, i32* %y, align 4
  %601 = load i32, i32* %k, align 4
  %cmp838 = icmp eq i32 %601, 1
  br i1 %cmp838, label %if.then.840, label %if.else.841

if.then.840:                                      ; preds = %for.body.831
  %602 = load i32, i32* %x, align 4
  store i32 %602, i32* %minx, align 4
  %603 = load i32, i32* %y, align 4
  store i32 %603, i32* %miny, align 4
  %604 = load i32, i32* %x, align 4
  store i32 %604, i32* %maxx, align 4
  %605 = load i32, i32* %y, align 4
  store i32 %605, i32* %maxy, align 4
  br label %if.end.858

if.else.841:                                      ; preds = %for.body.831
  %606 = load i32, i32* %x, align 4
  %607 = load i32, i32* %minx, align 4
  %cmp842 = icmp slt i32 %606, %607
  br i1 %cmp842, label %if.then.844, label %if.end.845

if.then.844:                                      ; preds = %if.else.841
  %608 = load i32, i32* %x, align 4
  store i32 %608, i32* %minx, align 4
  br label %if.end.845

if.end.845:                                       ; preds = %if.then.844, %if.else.841
  %609 = load i32, i32* %x, align 4
  %610 = load i32, i32* %maxx, align 4
  %cmp846 = icmp sgt i32 %609, %610
  br i1 %cmp846, label %if.then.848, label %if.end.849

if.then.848:                                      ; preds = %if.end.845
  %611 = load i32, i32* %x, align 4
  store i32 %611, i32* %maxx, align 4
  br label %if.end.849

if.end.849:                                       ; preds = %if.then.848, %if.end.845
  %612 = load i32, i32* %y, align 4
  %613 = load i32, i32* %miny, align 4
  %cmp850 = icmp slt i32 %612, %613
  br i1 %cmp850, label %if.then.852, label %if.end.853

if.then.852:                                      ; preds = %if.end.849
  %614 = load i32, i32* %y, align 4
  store i32 %614, i32* %miny, align 4
  br label %if.end.853

if.end.853:                                       ; preds = %if.then.852, %if.end.849
  %615 = load i32, i32* %y, align 4
  %616 = load i32, i32* %maxy, align 4
  %cmp854 = icmp sgt i32 %615, %616
  br i1 %cmp854, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %if.end.853
  %617 = load i32, i32* %y, align 4
  store i32 %617, i32* %maxy, align 4
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.856, %if.end.853
  br label %if.end.858

if.end.858:                                       ; preds = %if.end.857, %if.then.840
  br label %for.inc.859

for.inc.859:                                      ; preds = %if.end.858
  %618 = load i32, i32* %k, align 4
  %inc860 = add nsw i32 %618, 1
  store i32 %inc860, i32* %k, align 4
  br label %for.cond.826

for.end.861:                                      ; preds = %for.cond.826
  %619 = load i32, i32* %maxy, align 4
  %620 = load i32, i32* %miny, align 4
  %sub862 = sub nsw i32 %619, %620
  %conv863 = sitofp i32 %sub862 to double
  %621 = load i32, i32* %maxx, align 4
  %622 = load i32, i32* %minx, align 4
  %sub864 = sub nsw i32 %621, %622
  %conv865 = sitofp i32 %sub864 to double
  %div866 = fdiv double %conv863, %conv865
  %623 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspect = getelementptr inbounds %struct.cellbox, %struct.cellbox* %623, i32 0, i32 13
  store double %div866, double* %aspect, align 8
  %624 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspect867 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %624, i32 0, i32 13
  %625 = load double, double* %aspect867, align 8
  %626 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspectO = getelementptr inbounds %struct.cellbox, %struct.cellbox* %626, i32 0, i32 14
  store double %625, double* %aspectO, align 8
  %call868 = call noalias i8* @malloc(i64 104) #5
  %627 = bitcast i8* %call868 to %struct.tilebox*
  %628 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config869 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %628, i32 0, i32 21
  %arrayidx870 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config869, i32 0, i64 0
  store %struct.tilebox* %627, %struct.tilebox** %arrayidx870, align 8
  store %struct.tilebox* %627, %struct.tilebox** %tile, align 8
  %629 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile871 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %629, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile871, align 8
  %630 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %termptr872 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %630, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr872, align 8
  %631 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %siteLocArray873 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %631, i32 0, i32 18
  store %struct.locbox* null, %struct.locbox** %siteLocArray873, align 8
  %632 = load i32, i32* %maxx, align 4
  %633 = load i32, i32* %minx, align 4
  %add874 = add nsw i32 %632, %633
  %div875 = sdiv i32 %add874, 2
  store i32 %div875, i32* %xcenter, align 4
  %634 = load i32, i32* %maxy, align 4
  %635 = load i32, i32* %miny, align 4
  %add876 = add nsw i32 %634, %635
  %div877 = sdiv i32 %add876, 2
  store i32 %div877, i32* %ycenter, align 4
  %636 = load i32, i32* %minx, align 4
  %637 = load i32, i32* %xcenter, align 4
  %sub878 = sub nsw i32 %636, %637
  %638 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oleft879 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %638, i32 0, i32 13
  store i32 %sub878, i32* %oleft879, align 4
  %639 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %left880 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %639, i32 0, i32 9
  store i32 %sub878, i32* %left880, align 4
  %640 = load i32, i32* %maxx, align 4
  %641 = load i32, i32* %xcenter, align 4
  %sub881 = sub nsw i32 %640, %641
  %642 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oright882 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %642, i32 0, i32 14
  store i32 %sub881, i32* %oright882, align 4
  %643 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %right883 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %643, i32 0, i32 10
  store i32 %sub881, i32* %right883, align 4
  %644 = load i32, i32* %miny, align 4
  %645 = load i32, i32* %ycenter, align 4
  %sub884 = sub nsw i32 %644, %645
  %646 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %obottom885 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %646, i32 0, i32 15
  store i32 %sub884, i32* %obottom885, align 4
  %647 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bottom886 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %647, i32 0, i32 11
  store i32 %sub884, i32* %bottom886, align 4
  %648 = load i32, i32* %maxy, align 4
  %649 = load i32, i32* %ycenter, align 4
  %sub887 = sub nsw i32 %648, %649
  %650 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %otop888 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %650, i32 0, i32 16
  store i32 %sub887, i32* %otop888, align 4
  %651 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %top889 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %651, i32 0, i32 12
  store i32 %sub887, i32* %top889, align 4
  %652 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %lborder890 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %652, i32 0, i32 5
  store i32 0, i32* %lborder890, align 4
  %653 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %rborder891 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %653, i32 0, i32 6
  store i32 0, i32* %rborder891, align 4
  %654 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bborder892 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %654, i32 0, i32 7
  store i32 0, i32* %bborder892, align 4
  %655 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %tborder893 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %655, i32 0, i32 8
  store i32 0, i32* %tborder893, align 4
  %656 = load i32, i32* %xcenter, align 4
  %657 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter894 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %657, i32 0, i32 2
  store i32 %656, i32* %xcenter894, align 4
  %658 = load i32, i32* %ycenter, align 4
  %659 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter895 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %659, i32 0, i32 3
  store i32 %658, i32* %ycenter895, align 4
  %660 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles896 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %660, i32 0, i32 6
  store i32 0, i32* %numtiles896, align 4
  br label %do.body.897

do.body.897:                                      ; preds = %do.cond.929, %for.end.861
  %661 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles898 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %661, i32 0, i32 6
  %662 = load i32, i32* %numtiles898, align 4
  %inc899 = add nsw i32 %662, 1
  store i32 %inc899, i32* %numtiles898, align 4
  %call900 = call noalias i8* @malloc(i64 104) #5
  %663 = bitcast i8* %call900 to %struct.tilebox*
  %664 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile901 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %664, i32 0, i32 0
  store %struct.tilebox* %663, %struct.tilebox** %nexttile901, align 8
  store %struct.tilebox* %663, %struct.tilebox** %tile, align 8
  %665 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %nexttile902 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %665, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile902, align 8
  %666 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %termptr903 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %666, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr903, align 8
  %667 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %siteLocArray904 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %667, i32 0, i32 18
  store %struct.locbox* null, %struct.locbox** %siteLocArray904, align 8
  call void @buster()
  %668 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx905 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %668, i64 1
  %xc906 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx905, i32 0, i32 0
  %669 = load i32, i32* %xc906, align 4
  %670 = load i32, i32* %xcenter, align 4
  %sub907 = sub nsw i32 %669, %670
  %671 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oleft908 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %671, i32 0, i32 13
  store i32 %sub907, i32* %oleft908, align 4
  %672 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %left909 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %672, i32 0, i32 9
  store i32 %sub907, i32* %left909, align 4
  %673 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx910 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %673, i64 4
  %xc911 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx910, i32 0, i32 0
  %674 = load i32, i32* %xc911, align 4
  %675 = load i32, i32* %xcenter, align 4
  %sub912 = sub nsw i32 %674, %675
  %676 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %oright913 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %676, i32 0, i32 14
  store i32 %sub912, i32* %oright913, align 4
  %677 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %right914 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %677, i32 0, i32 10
  store i32 %sub912, i32* %right914, align 4
  %678 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx915 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %678, i64 1
  %yc916 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx915, i32 0, i32 1
  %679 = load i32, i32* %yc916, align 4
  %680 = load i32, i32* %ycenter, align 4
  %sub917 = sub nsw i32 %679, %680
  %681 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %obottom918 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %681, i32 0, i32 15
  store i32 %sub917, i32* %obottom918, align 4
  %682 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bottom919 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %682, i32 0, i32 11
  store i32 %sub917, i32* %bottom919, align 4
  %683 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx920 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %683, i64 2
  %yc921 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx920, i32 0, i32 1
  %684 = load i32, i32* %yc921, align 4
  %685 = load i32, i32* %ycenter, align 4
  %sub922 = sub nsw i32 %684, %685
  %686 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %otop923 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %686, i32 0, i32 16
  store i32 %sub922, i32* %otop923, align 4
  %687 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %top924 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %687, i32 0, i32 12
  store i32 %sub922, i32* %top924, align 4
  %688 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %lborder925 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %688, i32 0, i32 5
  store i32 0, i32* %lborder925, align 4
  %689 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %rborder926 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %689, i32 0, i32 6
  store i32 0, i32* %rborder926, align 4
  %690 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %bborder927 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %690, i32 0, i32 7
  store i32 0, i32* %bborder927, align 4
  %691 = load %struct.tilebox*, %struct.tilebox** %tile, align 8
  %tborder928 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %691, i32 0, i32 8
  store i32 0, i32* %tborder928, align 4
  br label %do.cond.929

do.cond.929:                                      ; preds = %do.body.897
  %692 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx930 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %692, i64 0
  %xc931 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx930, i32 0, i32 0
  %693 = load i32, i32* %xc931, align 4
  %cmp932 = icmp sgt i32 %693, 0
  br i1 %cmp932, label %do.body.897, label %do.end.934

do.end.934:                                       ; preds = %do.cond.929
  store i32 0, i32* %numsites, align 4
  %694 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %694, i32 0, i32 18
  %695 = load i32, i32* %numUnComTerms, align 4
  %cmp935 = icmp ne i32 %695, 0
  br i1 %cmp935, label %if.then.937, label %if.end.995

if.then.937:                                      ; preds = %do.end.934
  store i32 0, i32* %lastSite, align 4
  %696 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms938 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %696, i32 0, i32 18
  %697 = load i32, i32* %numUnComTerms938, align 4
  %add939 = add nsw i32 %697, 1
  %conv940 = sext i32 %add939 to i64
  %mul941 = mul i64 %conv940, 44
  %call942 = call noalias i8* @malloc(i64 %mul941) #5
  %698 = bitcast i8* %call942 to %struct.uncombox*
  %699 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms943 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %699, i32 0, i32 20
  store %struct.uncombox* %698, %struct.uncombox** %unComTerms943, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.944

for.cond.944:                                     ; preds = %for.inc.992, %if.then.937
  %700 = load i32, i32* %k, align 4
  %701 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx945 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %701, i64 0
  %xc946 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx945, i32 0, i32 0
  %702 = load i32, i32* %xc946, align 4
  %cmp947 = icmp sle i32 %700, %702
  br i1 %cmp947, label %for.body.949, label %for.end.994

for.body.949:                                     ; preds = %for.cond.944
  %703 = load i32, i32* %k, align 4
  %idxprom950 = sext i32 %703 to i64
  %704 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx951 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %704, i64 %idxprom950
  %xc952 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx951, i32 0, i32 0
  %705 = load i32, i32* %xc952, align 4
  store i32 %705, i32* %xx1, align 4
  %706 = load i32, i32* %k, align 4
  %idxprom953 = sext i32 %706 to i64
  %707 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx954 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %707, i64 %idxprom953
  %yc955 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx954, i32 0, i32 1
  %708 = load i32, i32* %yc955, align 4
  store i32 %708, i32* %yy1, align 4
  %709 = load i32, i32* %k, align 4
  %710 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx956 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %710, i64 0
  %xc957 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx956, i32 0, i32 0
  %711 = load i32, i32* %xc957, align 4
  %cmp958 = icmp eq i32 %709, %711
  br i1 %cmp958, label %if.then.960, label %if.else.965

if.then.960:                                      ; preds = %for.body.949
  %712 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx961 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %712, i64 1
  %xc962 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx961, i32 0, i32 0
  %713 = load i32, i32* %xc962, align 4
  store i32 %713, i32* %xx2, align 4
  %714 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx963 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %714, i64 1
  %yc964 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx963, i32 0, i32 1
  %715 = load i32, i32* %yc964, align 4
  store i32 %715, i32* %yy2, align 4
  br label %if.end.974

if.else.965:                                      ; preds = %for.body.949
  %716 = load i32, i32* %k, align 4
  %add966 = add nsw i32 %716, 1
  %idxprom967 = sext i32 %add966 to i64
  %717 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx968 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %717, i64 %idxprom967
  %xc969 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx968, i32 0, i32 0
  %718 = load i32, i32* %xc969, align 4
  store i32 %718, i32* %xx2, align 4
  %719 = load i32, i32* %k, align 4
  %add970 = add nsw i32 %719, 1
  %idxprom971 = sext i32 %add970 to i64
  %720 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx972 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %720, i64 %idxprom971
  %yc973 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx972, i32 0, i32 1
  %721 = load i32, i32* %yc973, align 4
  store i32 %721, i32* %yy2, align 4
  br label %if.end.974

if.end.974:                                       ; preds = %if.else.965, %if.then.960
  %722 = load i32, i32* %yy1, align 4
  %723 = load i32, i32* %yy2, align 4
  %cmp975 = icmp eq i32 %722, %723
  br i1 %cmp975, label %if.then.977, label %if.else.980

if.then.977:                                      ; preds = %if.end.974
  %724 = load i32, i32* %cell, align 4
  %725 = load i32, i32* %xx1, align 4
  %726 = load i32, i32* %xx2, align 4
  %727 = load i32, i32* %yy1, align 4
  %call978 = call i32 @Hside(i32 %724, i32 %725, i32 %726, i32 %727, i32 0)
  %728 = load i32, i32* %numsites, align 4
  %add979 = add nsw i32 %728, %call978
  store i32 %add979, i32* %numsites, align 4
  br label %if.end.983

if.else.980:                                      ; preds = %if.end.974
  %729 = load i32, i32* %cell, align 4
  %730 = load i32, i32* %xx1, align 4
  %731 = load i32, i32* %yy1, align 4
  %732 = load i32, i32* %yy2, align 4
  %call981 = call i32 @Vside(i32 %729, i32 %730, i32 %731, i32 %732, i32 0)
  %733 = load i32, i32* %numsites, align 4
  %add982 = add nsw i32 %733, %call981
  store i32 %add982, i32* %numsites, align 4
  br label %if.end.983

if.end.983:                                       ; preds = %if.else.980, %if.then.977
  %734 = load i32, i32* %lastSite, align 4
  %add984 = add nsw i32 %734, 1
  %735 = load i32, i32* %k, align 4
  %idxprom985 = sext i32 %735 to i64
  %736 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray986 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %736, i32 0, i32 22
  %737 = load %struct.sidebox*, %struct.sidebox** %sideArray986, align 8
  %arrayidx987 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %737, i64 %idxprom985
  %firstSite = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx987, i32 0, i32 0
  store i32 %add984, i32* %firstSite, align 4
  %738 = load i32, i32* %numsites, align 4
  %739 = load i32, i32* %k, align 4
  %idxprom988 = sext i32 %739 to i64
  %740 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %sideArray989 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %740, i32 0, i32 22
  %741 = load %struct.sidebox*, %struct.sidebox** %sideArray989, align 8
  %arrayidx990 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %741, i64 %idxprom988
  %lastSite991 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx990, i32 0, i32 1
  store i32 %738, i32* %lastSite991, align 4
  %742 = load i32, i32* %numsites, align 4
  store i32 %742, i32* %lastSite, align 4
  br label %for.inc.992

for.inc.992:                                      ; preds = %if.end.983
  %743 = load i32, i32* %k, align 4
  %inc993 = add nsw i32 %743, 1
  store i32 %inc993, i32* %k, align 4
  br label %for.cond.944

for.end.994:                                      ; preds = %for.cond.944
  br label %if.end.995

if.end.995:                                       ; preds = %for.end.994, %do.end.934
  %744 = load i32, i32* %numsites, align 4
  %745 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites996 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %745, i32 0, i32 17
  store i32 %744, i32* %numsites996, align 4
  %746 = load i32, i32* %numsites, align 4
  %add997 = add nsw i32 %746, 1
  %conv998 = sext i32 %add997 to i64
  %mul999 = mul i64 %conv998, 20
  %call1000 = call noalias i8* @malloc(i64 %mul999) #5
  %747 = bitcast i8* %call1000 to %struct.contentbox*
  %748 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent = getelementptr inbounds %struct.cellbox, %struct.cellbox* %748, i32 0, i32 19
  store %struct.contentbox* %747, %struct.contentbox** %siteContent, align 8
  %749 = load i32, i32* %numsites, align 4
  %add1001 = add nsw i32 %749, 1
  %conv1002 = sext i32 %add1001 to i64
  %mul1003 = mul i64 %conv1002, 16
  %call1004 = call noalias i8* @malloc(i64 %mul1003) #5
  %750 = bitcast i8* %call1004 to %struct.locbox*
  %751 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1005 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %751, i32 0, i32 21
  %arrayidx1006 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1005, i32 0, i64 0
  %752 = load %struct.tilebox*, %struct.tilebox** %arrayidx1006, align 8
  %siteLocArray1007 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %752, i32 0, i32 18
  store %struct.locbox* %750, %struct.locbox** %siteLocArray1007, align 8
  %753 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms1008 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %753, i32 0, i32 18
  %754 = load i32, i32* %numUnComTerms1008, align 4
  %cmp1009 = icmp ne i32 %754, 0
  br i1 %cmp1009, label %if.then.1011, label %if.end.1126

if.then.1011:                                     ; preds = %if.end.995
  store i32 0, i32* %numsites, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.1012

for.cond.1012:                                    ; preds = %for.inc.1123, %if.then.1011
  %755 = load i32, i32* %k, align 4
  %756 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1013 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %756, i64 0
  %xc1014 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1013, i32 0, i32 0
  %757 = load i32, i32* %xc1014, align 4
  %cmp1015 = icmp sle i32 %755, %757
  br i1 %cmp1015, label %for.body.1017, label %for.end.1125

for.body.1017:                                    ; preds = %for.cond.1012
  %758 = load i32, i32* %k, align 4
  %idxprom1018 = sext i32 %758 to i64
  %759 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1019 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %759, i64 %idxprom1018
  %xc1020 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1019, i32 0, i32 0
  %760 = load i32, i32* %xc1020, align 4
  store i32 %760, i32* %xx1, align 4
  %761 = load i32, i32* %k, align 4
  %idxprom1021 = sext i32 %761 to i64
  %762 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1022 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %762, i64 %idxprom1021
  %yc1023 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1022, i32 0, i32 1
  %763 = load i32, i32* %yc1023, align 4
  store i32 %763, i32* %yy1, align 4
  %764 = load i32, i32* %k, align 4
  %765 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1024 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %765, i64 0
  %xc1025 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1024, i32 0, i32 0
  %766 = load i32, i32* %xc1025, align 4
  %cmp1026 = icmp eq i32 %764, %766
  br i1 %cmp1026, label %if.then.1028, label %if.else.1033

if.then.1028:                                     ; preds = %for.body.1017
  %767 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1029 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %767, i64 1
  %xc1030 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1029, i32 0, i32 0
  %768 = load i32, i32* %xc1030, align 4
  store i32 %768, i32* %xx2, align 4
  %769 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1031 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %769, i64 1
  %yc1032 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1031, i32 0, i32 1
  %770 = load i32, i32* %yc1032, align 4
  store i32 %770, i32* %yy2, align 4
  br label %if.end.1042

if.else.1033:                                     ; preds = %for.body.1017
  %771 = load i32, i32* %k, align 4
  %add1034 = add nsw i32 %771, 1
  %idxprom1035 = sext i32 %add1034 to i64
  %772 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1036 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %772, i64 %idxprom1035
  %xc1037 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1036, i32 0, i32 0
  %773 = load i32, i32* %xc1037, align 4
  store i32 %773, i32* %xx2, align 4
  %774 = load i32, i32* %k, align 4
  %add1038 = add nsw i32 %774, 1
  %idxprom1039 = sext i32 %add1038 to i64
  %775 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1040 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %775, i64 %idxprom1039
  %yc1041 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1040, i32 0, i32 1
  %776 = load i32, i32* %yc1041, align 4
  store i32 %776, i32* %yy2, align 4
  br label %if.end.1042

if.end.1042:                                      ; preds = %if.else.1033, %if.then.1028
  %777 = load i32, i32* %numsites, align 4
  store i32 %777, i32* %prevsites, align 4
  %778 = load i32, i32* %yy1, align 4
  %779 = load i32, i32* %yy2, align 4
  %cmp1043 = icmp eq i32 %778, %779
  br i1 %cmp1043, label %if.then.1045, label %if.else.1048

if.then.1045:                                     ; preds = %if.end.1042
  %780 = load i32, i32* %cell, align 4
  %781 = load i32, i32* %xx1, align 4
  %782 = load i32, i32* %xx2, align 4
  %783 = load i32, i32* %yy1, align 4
  %call1046 = call i32 @Hside(i32 %780, i32 %781, i32 %782, i32 %783, i32 1)
  %784 = load i32, i32* %numsites, align 4
  %add1047 = add nsw i32 %784, %call1046
  store i32 %add1047, i32* %numsites, align 4
  br label %if.end.1051

if.else.1048:                                     ; preds = %if.end.1042
  %785 = load i32, i32* %cell, align 4
  %786 = load i32, i32* %xx1, align 4
  %787 = load i32, i32* %yy1, align 4
  %788 = load i32, i32* %yy2, align 4
  %call1049 = call i32 @Vside(i32 %785, i32 %786, i32 %787, i32 %788, i32 1)
  %789 = load i32, i32* %numsites, align 4
  %add1050 = add nsw i32 %789, %call1049
  store i32 %add1050, i32* %numsites, align 4
  br label %if.end.1051

if.end.1051:                                      ; preds = %if.else.1048, %if.then.1045
  store i32 1, i32* %j, align 4
  %790 = load i32, i32* %prevsites, align 4
  %add1052 = add nsw i32 %790, 1
  store i32 %add1052, i32* %l, align 4
  br label %for.cond.1053

for.cond.1053:                                    ; preds = %for.inc.1119, %if.end.1051
  %791 = load i32, i32* %l, align 4
  %792 = load i32, i32* %numsites, align 4
  %cmp1054 = icmp sle i32 %791, %792
  br i1 %cmp1054, label %for.body.1056, label %for.end.1122

for.body.1056:                                    ; preds = %for.cond.1053
  %793 = load i32, i32* %j, align 4
  %idxprom1057 = sext i32 %793 to i64
  %794 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx1058 = getelementptr inbounds %struct.kbox, %struct.kbox* %794, i64 %idxprom1057
  %HV1059 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx1058, i32 0, i32 1
  %795 = load i32, i32* %HV1059, align 4
  %796 = load i32, i32* %l, align 4
  %idxprom1060 = sext i32 %796 to i64
  %797 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent1061 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %797, i32 0, i32 19
  %798 = load %struct.contentbox*, %struct.contentbox** %siteContent1061, align 8
  %arrayidx1062 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %798, i64 %idxprom1060
  %HorV = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx1062, i32 0, i32 3
  store i32 %795, i32* %HorV, align 4
  %799 = load i32, i32* %j, align 4
  %idxprom1063 = sext i32 %799 to i64
  %800 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx1064 = getelementptr inbounds %struct.kbox, %struct.kbox* %800, i64 %idxprom1063
  %sp1065 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx1064, i32 0, i32 2
  %801 = load i32, i32* %sp1065, align 4
  %802 = load i32, i32* %l, align 4
  %idxprom1066 = sext i32 %802 to i64
  %803 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent1067 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %803, i32 0, i32 19
  %804 = load %struct.contentbox*, %struct.contentbox** %siteContent1067, align 8
  %arrayidx1068 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %804, i64 %idxprom1066
  %span = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx1068, i32 0, i32 4
  store i32 %801, i32* %span, align 4
  %805 = load i32, i32* %j, align 4
  %idxprom1069 = sext i32 %805 to i64
  %806 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx1070 = getelementptr inbounds %struct.kbox, %struct.kbox* %806, i64 %idxprom1069
  %x1071 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx1070, i32 0, i32 3
  %807 = load i32, i32* %x1071, align 4
  %808 = load i32, i32* %xcenter, align 4
  %sub1072 = sub nsw i32 %807, %808
  %809 = load i32, i32* %l, align 4
  %idxprom1073 = sext i32 %809 to i64
  %810 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1074 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %810, i32 0, i32 21
  %arrayidx1075 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1074, i32 0, i64 0
  %811 = load %struct.tilebox*, %struct.tilebox** %arrayidx1075, align 8
  %siteLocArray1076 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %811, i32 0, i32 18
  %812 = load %struct.locbox*, %struct.locbox** %siteLocArray1076, align 8
  %arrayidx1077 = getelementptr inbounds %struct.locbox, %struct.locbox* %812, i64 %idxprom1073
  %xpos1078 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1077, i32 0, i32 0
  store i32 %sub1072, i32* %xpos1078, align 4
  %813 = load i32, i32* %j, align 4
  %idxprom1079 = sext i32 %813 to i64
  %814 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx1080 = getelementptr inbounds %struct.kbox, %struct.kbox* %814, i64 %idxprom1079
  %y1081 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx1080, i32 0, i32 4
  %815 = load i32, i32* %y1081, align 4
  %816 = load i32, i32* %ycenter, align 4
  %sub1082 = sub nsw i32 %815, %816
  %817 = load i32, i32* %l, align 4
  %idxprom1083 = sext i32 %817 to i64
  %818 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1084 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %818, i32 0, i32 21
  %arrayidx1085 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1084, i32 0, i64 0
  %819 = load %struct.tilebox*, %struct.tilebox** %arrayidx1085, align 8
  %siteLocArray1086 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %819, i32 0, i32 18
  %820 = load %struct.locbox*, %struct.locbox** %siteLocArray1086, align 8
  %arrayidx1087 = getelementptr inbounds %struct.locbox, %struct.locbox* %820, i64 %idxprom1083
  %ypos1088 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1087, i32 0, i32 1
  store i32 %sub1082, i32* %ypos1088, align 4
  %821 = load i32, i32* %j, align 4
  %idxprom1089 = sext i32 %821 to i64
  %822 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx1090 = getelementptr inbounds %struct.kbox, %struct.kbox* %822, i64 %idxprom1089
  %x1091 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx1090, i32 0, i32 3
  %823 = load i32, i32* %x1091, align 4
  %824 = load i32, i32* %xcenter, align 4
  %sub1092 = sub nsw i32 %823, %824
  %825 = load i32, i32* %l, align 4
  %idxprom1093 = sext i32 %825 to i64
  %826 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1094 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %826, i32 0, i32 21
  %arrayidx1095 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1094, i32 0, i64 0
  %827 = load %struct.tilebox*, %struct.tilebox** %arrayidx1095, align 8
  %siteLocArray1096 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %827, i32 0, i32 18
  %828 = load %struct.locbox*, %struct.locbox** %siteLocArray1096, align 8
  %arrayidx1097 = getelementptr inbounds %struct.locbox, %struct.locbox* %828, i64 %idxprom1093
  %oxpos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1097, i32 0, i32 2
  store i32 %sub1092, i32* %oxpos, align 4
  %829 = load i32, i32* %j, align 4
  %idxprom1098 = sext i32 %829 to i64
  %830 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx1099 = getelementptr inbounds %struct.kbox, %struct.kbox* %830, i64 %idxprom1098
  %y1100 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx1099, i32 0, i32 4
  %831 = load i32, i32* %y1100, align 4
  %832 = load i32, i32* %ycenter, align 4
  %sub1101 = sub nsw i32 %831, %832
  %833 = load i32, i32* %l, align 4
  %idxprom1102 = sext i32 %833 to i64
  %834 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1103 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %834, i32 0, i32 21
  %arrayidx1104 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1103, i32 0, i64 0
  %835 = load %struct.tilebox*, %struct.tilebox** %arrayidx1104, align 8
  %siteLocArray1105 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %835, i32 0, i32 18
  %836 = load %struct.locbox*, %struct.locbox** %siteLocArray1105, align 8
  %arrayidx1106 = getelementptr inbounds %struct.locbox, %struct.locbox* %836, i64 %idxprom1102
  %oypos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1106, i32 0, i32 3
  store i32 %sub1101, i32* %oypos, align 4
  %837 = load i32, i32* %l, align 4
  %idxprom1107 = sext i32 %837 to i64
  %838 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent1108 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %838, i32 0, i32 19
  %839 = load %struct.contentbox*, %struct.contentbox** %siteContent1108, align 8
  %arrayidx1109 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %839, i64 %idxprom1107
  %contents = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx1109, i32 0, i32 0
  store i32 0, i32* %contents, align 4
  %840 = load i32, i32* %l, align 4
  %idxprom1110 = sext i32 %840 to i64
  %841 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent1111 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %841, i32 0, i32 19
  %842 = load %struct.contentbox*, %struct.contentbox** %siteContent1111, align 8
  %arrayidx1112 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %842, i64 %idxprom1110
  %newContents = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx1112, i32 0, i32 1
  store i32 0, i32* %newContents, align 4
  %843 = load i32, i32* %j, align 4
  %idxprom1113 = sext i32 %843 to i64
  %844 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx1114 = getelementptr inbounds %struct.kbox, %struct.kbox* %844, i64 %idxprom1113
  %cap1115 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx1114, i32 0, i32 0
  %845 = load i32, i32* %cap1115, align 4
  %846 = load i32, i32* %l, align 4
  %idxprom1116 = sext i32 %846 to i64
  %847 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %siteContent1117 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %847, i32 0, i32 19
  %848 = load %struct.contentbox*, %struct.contentbox** %siteContent1117, align 8
  %arrayidx1118 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %848, i64 %idxprom1116
  %capacity = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx1118, i32 0, i32 2
  store i32 %845, i32* %capacity, align 4
  br label %for.inc.1119

for.inc.1119:                                     ; preds = %for.body.1056
  %849 = load i32, i32* %l, align 4
  %inc1120 = add nsw i32 %849, 1
  store i32 %inc1120, i32* %l, align 4
  %850 = load i32, i32* %j, align 4
  %inc1121 = add nsw i32 %850, 1
  store i32 %inc1121, i32* %j, align 4
  br label %for.cond.1053

for.end.1122:                                     ; preds = %for.cond.1053
  br label %for.inc.1123

for.inc.1123:                                     ; preds = %for.end.1122
  %851 = load i32, i32* %k, align 4
  %inc1124 = add nsw i32 %851, 1
  store i32 %inc1124, i32* %k, align 4
  br label %for.cond.1012

for.end.1125:                                     ; preds = %for.cond.1012
  br label %if.end.1126

if.end.1126:                                      ; preds = %for.end.1125, %if.end.995
  store i32 0, i32* %unComTerms, align 4
  br label %if.end.1807

if.else.1127:                                     ; preds = %if.else.579
  %arraydecay1128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1129 = call i32 @strcmp(i8* %arraydecay1128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #6
  %cmp1130 = icmp eq i32 %call1129, 0
  br i1 %cmp1130, label %if.then.1132, label %if.else.1517

if.then.1132:                                     ; preds = %if.else.1127
  %852 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1134 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %852, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1133)
  %853 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1136 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %853, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1135)
  %arraydecay1137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1138 = call i64 @strlen(i8* %arraydecay1137) #6
  %add1139 = add i64 %call1138, 1
  %mul1140 = mul i64 %add1139, 1
  %call1141 = call noalias i8* @malloc(i64 %mul1140) #5
  %854 = load i32, i32* %pinctr, align 4
  %inc1142 = add nsw i32 %854, 1
  store i32 %inc1142, i32* %pinctr, align 4
  %idxprom1143 = sext i32 %inc1142 to i64
  %855 = load i8**, i8*** @pinnames, align 8
  %arrayidx1144 = getelementptr inbounds i8*, i8** %855, i64 %idxprom1143
  store i8* %call1141, i8** %arrayidx1144, align 8
  %856 = load i32, i32* %pinctr, align 4
  %idxprom1145 = sext i32 %856 to i64
  %857 = load i8**, i8*** @pinnames, align 8
  %arrayidx1146 = getelementptr inbounds i8*, i8** %857, i64 %idxprom1145
  %858 = load i8*, i8** %arrayidx1146, align 8
  %arraydecay1147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1148 = call i32 (i8*, i8*, ...) @sprintf(i8* %858, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay1147) #5
  %859 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1150 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %859, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1149)
  %860 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1152 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %860, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1151)
  %arraydecay1153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1154 = call i32 @hashfind(i8* %arraydecay1153)
  store i32 %call1154, i32* %netx, align 4
  %861 = load i32, i32* %netx, align 4
  %idxprom1155 = sext i32 %861 to i64
  %862 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1156 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %862, i64 %idxprom1155
  %863 = load %struct.dimbox*, %struct.dimbox** %arrayidx1156, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %863, i32 0, i32 13
  %864 = load i8*, i8** %nname, align 8
  %cmp1157 = icmp eq i8* %864, null
  br i1 %cmp1157, label %if.then.1159, label %if.end.1173

if.then.1159:                                     ; preds = %if.then.1132
  %arraydecay1160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1161 = call i64 @strlen(i8* %arraydecay1160) #6
  %add1162 = add i64 %call1161, 1
  %mul1163 = mul i64 %add1162, 1
  %call1164 = call noalias i8* @malloc(i64 %mul1163) #5
  %865 = load i32, i32* %netx, align 4
  %idxprom1165 = sext i32 %865 to i64
  %866 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1166 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %866, i64 %idxprom1165
  %867 = load %struct.dimbox*, %struct.dimbox** %arrayidx1166, align 8
  %nname1167 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %867, i32 0, i32 13
  store i8* %call1164, i8** %nname1167, align 8
  %868 = load i32, i32* %netx, align 4
  %idxprom1168 = sext i32 %868 to i64
  %869 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1169 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %869, i64 %idxprom1168
  %870 = load %struct.dimbox*, %struct.dimbox** %arrayidx1169, align 8
  %nname1170 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %870, i32 0, i32 13
  %871 = load i8*, i8** %nname1170, align 8
  %arraydecay1171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1172 = call i32 (i8*, i8*, ...) @sprintf(i8* %871, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay1171) #5
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.then.1159, %if.then.1132
  %872 = load i32, i32* %netx, align 4
  %idxprom1174 = sext i32 %872 to i64
  %873 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1175 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %873, i64 %idxprom1174
  %874 = load %struct.dimbox*, %struct.dimbox** %arrayidx1175, align 8
  %netptr1176 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %874, i32 0, i32 0
  %875 = load %struct.netbox*, %struct.netbox** %netptr1176, align 8
  store %struct.netbox* %875, %struct.netbox** %saveptr, align 8
  %call1177 = call noalias i8* @malloc(i64 48) #5
  %876 = bitcast i8* %call1177 to %struct.netbox*
  %877 = load i32, i32* %netx, align 4
  %idxprom1178 = sext i32 %877 to i64
  %878 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1179 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %878, i64 %idxprom1178
  %879 = load %struct.dimbox*, %struct.dimbox** %arrayidx1179, align 8
  %netptr1180 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %879, i32 0, i32 0
  store %struct.netbox* %876, %struct.netbox** %netptr1180, align 8
  store %struct.netbox* %876, %struct.netbox** %netptr, align 8
  %880 = load %struct.netbox*, %struct.netbox** %saveptr, align 8
  %881 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %881, i32 0, i32 0
  store %struct.netbox* %880, %struct.netbox** %nextterm, align 8
  %882 = load i32, i32* %pinctr, align 4
  %883 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal = getelementptr inbounds %struct.netbox, %struct.netbox* %883, i32 0, i32 5
  store i32 %882, i32* %terminal, align 4
  %884 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos1181 = getelementptr inbounds %struct.netbox, %struct.netbox* %884, i32 0, i32 1
  store i32 0, i32* %xpos1181, align 4
  %885 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos1182 = getelementptr inbounds %struct.netbox, %struct.netbox* %885, i32 0, i32 2
  store i32 0, i32* %ypos1182, align 4
  %886 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %886, i32 0, i32 3
  store i32 0, i32* %newx, align 4
  %887 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %887, i32 0, i32 4
  store i32 0, i32* %newy, align 4
  %888 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag = getelementptr inbounds %struct.netbox, %struct.netbox* %888, i32 0, i32 6
  store i32 0, i32* %flag, align 4
  %889 = load i32, i32* %cell, align 4
  %890 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell1183 = getelementptr inbounds %struct.netbox, %struct.netbox* %890, i32 0, i32 7
  store i32 %889, i32* %cell1183, align 4
  %891 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip = getelementptr inbounds %struct.netbox, %struct.netbox* %891, i32 0, i32 9
  store i32 0, i32* %skip, align 4
  %892 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1184 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %892, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  %893 = load i32, i32* %pad, align 4
  %cmp1185 = icmp eq i32 %893, 0
  br i1 %cmp1185, label %if.then.1187, label %if.end.1189

if.then.1187:                                     ; preds = %if.end.1173
  %894 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %895 = load i32, i32* %xpos, align 4
  %896 = load i32, i32* %ypos, align 4
  %call1188 = call i32 @findside(%struct.cellbox* %894, i32 %895, i32 %896)
  store i32 %call1188, i32* %side, align 4
  %897 = load i32, i32* %side, align 4
  call void @loadside(i32 %897, double 1.000000e+00)
  br label %if.end.1189

if.end.1189:                                      ; preds = %if.then.1187, %if.end.1173
  store i32 1, i32* %tot, align 4
  %898 = load i32, i32* %xpos, align 4
  store i32 %898, i32* %totx, align 4
  %899 = load i32, i32* %ypos, align 4
  store i32 %899, i32* %toty, align 4
  %900 = load i32, i32* %xcenter, align 4
  %901 = load i32, i32* %xpos, align 4
  %sub1190 = sub nsw i32 %901, %900
  store i32 %sub1190, i32* %xpos, align 4
  %902 = load i32, i32* %ycenter, align 4
  %903 = load i32, i32* %ypos, align 4
  %sub1191 = sub nsw i32 %903, %902
  store i32 %sub1191, i32* %ypos, align 4
  store i32 0, i32* %hit, align 4
  %904 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag1192 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %904, i32 0, i32 10
  %905 = load i32, i32* %softflag1192, align 4
  %cmp1193 = icmp eq i32 %905, 1
  br i1 %cmp1193, label %if.then.1195, label %if.end.1493

if.then.1195:                                     ; preds = %if.end.1189
  store i32 1, i32* %m, align 4
  br label %for.cond.1196

for.cond.1196:                                    ; preds = %for.inc.1490, %if.then.1195
  %906 = load i32, i32* %m, align 4
  %907 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1197 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %907, i32 0, i32 17
  %908 = load i32, i32* %numsites1197, align 4
  %cmp1198 = icmp sle i32 %906, %908
  br i1 %cmp1198, label %for.body.1200, label %for.end.1492

for.body.1200:                                    ; preds = %for.cond.1196
  %909 = load i32, i32* %m, align 4
  %idxprom1201 = sext i32 %909 to i64
  %910 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1202 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %910, i32 0, i32 21
  %arrayidx1203 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1202, i32 0, i64 0
  %911 = load %struct.tilebox*, %struct.tilebox** %arrayidx1203, align 8
  %siteLocArray1204 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %911, i32 0, i32 18
  %912 = load %struct.locbox*, %struct.locbox** %siteLocArray1204, align 8
  %arrayidx1205 = getelementptr inbounds %struct.locbox, %struct.locbox* %912, i64 %idxprom1201
  %xpos1206 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1205, i32 0, i32 0
  %913 = load i32, i32* %xpos1206, align 4
  %914 = load i32, i32* %xpos, align 4
  %cmp1207 = icmp eq i32 %913, %914
  br i1 %cmp1207, label %if.then.1209, label %if.else.1343

if.then.1209:                                     ; preds = %for.body.1200
  store i32 1, i32* %hit, align 4
  %915 = load i32, i32* %m, align 4
  %idxprom1210 = sext i32 %915 to i64
  %916 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1211 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %916, i32 0, i32 21
  %arrayidx1212 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1211, i32 0, i64 0
  %917 = load %struct.tilebox*, %struct.tilebox** %arrayidx1212, align 8
  %siteLocArray1213 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %917, i32 0, i32 18
  %918 = load %struct.locbox*, %struct.locbox** %siteLocArray1213, align 8
  %arrayidx1214 = getelementptr inbounds %struct.locbox, %struct.locbox* %918, i64 %idxprom1210
  %ypos1215 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1214, i32 0, i32 1
  %919 = load i32, i32* %ypos1215, align 4
  %920 = load i32, i32* %ypos, align 4
  %sub1216 = sub nsw i32 %919, %920
  %cmp1217 = icmp sge i32 %sub1216, 0
  br i1 %cmp1217, label %cond.true.1219, label %cond.false.1227

cond.true.1219:                                   ; preds = %if.then.1209
  %921 = load i32, i32* %m, align 4
  %idxprom1220 = sext i32 %921 to i64
  %922 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1221 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %922, i32 0, i32 21
  %arrayidx1222 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1221, i32 0, i64 0
  %923 = load %struct.tilebox*, %struct.tilebox** %arrayidx1222, align 8
  %siteLocArray1223 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %923, i32 0, i32 18
  %924 = load %struct.locbox*, %struct.locbox** %siteLocArray1223, align 8
  %arrayidx1224 = getelementptr inbounds %struct.locbox, %struct.locbox* %924, i64 %idxprom1220
  %ypos1225 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1224, i32 0, i32 1
  %925 = load i32, i32* %ypos1225, align 4
  %926 = load i32, i32* %ypos, align 4
  %sub1226 = sub nsw i32 %925, %926
  br label %cond.end.1236

cond.false.1227:                                  ; preds = %if.then.1209
  %927 = load i32, i32* %m, align 4
  %idxprom1228 = sext i32 %927 to i64
  %928 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1229 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %928, i32 0, i32 21
  %arrayidx1230 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1229, i32 0, i64 0
  %929 = load %struct.tilebox*, %struct.tilebox** %arrayidx1230, align 8
  %siteLocArray1231 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %929, i32 0, i32 18
  %930 = load %struct.locbox*, %struct.locbox** %siteLocArray1231, align 8
  %arrayidx1232 = getelementptr inbounds %struct.locbox, %struct.locbox* %930, i64 %idxprom1228
  %ypos1233 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1232, i32 0, i32 1
  %931 = load i32, i32* %ypos1233, align 4
  %932 = load i32, i32* %ypos, align 4
  %sub1234 = sub nsw i32 %931, %932
  %sub1235 = sub nsw i32 0, %sub1234
  br label %cond.end.1236

cond.end.1236:                                    ; preds = %cond.false.1227, %cond.true.1219
  %cond1237 = phi i32 [ %sub1226, %cond.true.1219 ], [ %sub1235, %cond.false.1227 ]
  store i32 %cond1237, i32* %distant, align 4
  %933 = load i32, i32* %m, align 4
  %inc1238 = add nsw i32 %933, 1
  store i32 %inc1238, i32* %m, align 4
  br label %for.cond.1239

for.cond.1239:                                    ; preds = %for.inc.1316, %cond.end.1236
  %934 = load i32, i32* %m, align 4
  %935 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1240 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %935, i32 0, i32 17
  %936 = load i32, i32* %numsites1240, align 4
  %cmp1241 = icmp sle i32 %934, %936
  br i1 %cmp1241, label %for.body.1243, label %for.end.1318

for.body.1243:                                    ; preds = %for.cond.1239
  %937 = load i32, i32* %m, align 4
  %idxprom1244 = sext i32 %937 to i64
  %938 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1245 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %938, i32 0, i32 21
  %arrayidx1246 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1245, i32 0, i64 0
  %939 = load %struct.tilebox*, %struct.tilebox** %arrayidx1246, align 8
  %siteLocArray1247 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %939, i32 0, i32 18
  %940 = load %struct.locbox*, %struct.locbox** %siteLocArray1247, align 8
  %arrayidx1248 = getelementptr inbounds %struct.locbox, %struct.locbox* %940, i64 %idxprom1244
  %xpos1249 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1248, i32 0, i32 0
  %941 = load i32, i32* %xpos1249, align 4
  %942 = load i32, i32* %xpos, align 4
  %cmp1250 = icmp eq i32 %941, %942
  br i1 %cmp1250, label %if.then.1252, label %if.else.1314

if.then.1252:                                     ; preds = %for.body.1243
  %943 = load i32, i32* %m, align 4
  %idxprom1253 = sext i32 %943 to i64
  %944 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1254 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %944, i32 0, i32 21
  %arrayidx1255 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1254, i32 0, i64 0
  %945 = load %struct.tilebox*, %struct.tilebox** %arrayidx1255, align 8
  %siteLocArray1256 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %945, i32 0, i32 18
  %946 = load %struct.locbox*, %struct.locbox** %siteLocArray1256, align 8
  %arrayidx1257 = getelementptr inbounds %struct.locbox, %struct.locbox* %946, i64 %idxprom1253
  %ypos1258 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1257, i32 0, i32 1
  %947 = load i32, i32* %ypos1258, align 4
  %948 = load i32, i32* %ypos, align 4
  %sub1259 = sub nsw i32 %947, %948
  %cmp1260 = icmp sge i32 %sub1259, 0
  br i1 %cmp1260, label %cond.true.1262, label %cond.false.1270

cond.true.1262:                                   ; preds = %if.then.1252
  %949 = load i32, i32* %m, align 4
  %idxprom1263 = sext i32 %949 to i64
  %950 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1264 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %950, i32 0, i32 21
  %arrayidx1265 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1264, i32 0, i64 0
  %951 = load %struct.tilebox*, %struct.tilebox** %arrayidx1265, align 8
  %siteLocArray1266 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %951, i32 0, i32 18
  %952 = load %struct.locbox*, %struct.locbox** %siteLocArray1266, align 8
  %arrayidx1267 = getelementptr inbounds %struct.locbox, %struct.locbox* %952, i64 %idxprom1263
  %ypos1268 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1267, i32 0, i32 1
  %953 = load i32, i32* %ypos1268, align 4
  %954 = load i32, i32* %ypos, align 4
  %sub1269 = sub nsw i32 %953, %954
  br label %cond.end.1279

cond.false.1270:                                  ; preds = %if.then.1252
  %955 = load i32, i32* %m, align 4
  %idxprom1271 = sext i32 %955 to i64
  %956 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1272 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %956, i32 0, i32 21
  %arrayidx1273 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1272, i32 0, i64 0
  %957 = load %struct.tilebox*, %struct.tilebox** %arrayidx1273, align 8
  %siteLocArray1274 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %957, i32 0, i32 18
  %958 = load %struct.locbox*, %struct.locbox** %siteLocArray1274, align 8
  %arrayidx1275 = getelementptr inbounds %struct.locbox, %struct.locbox* %958, i64 %idxprom1271
  %ypos1276 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1275, i32 0, i32 1
  %959 = load i32, i32* %ypos1276, align 4
  %960 = load i32, i32* %ypos, align 4
  %sub1277 = sub nsw i32 %959, %960
  %sub1278 = sub nsw i32 0, %sub1277
  br label %cond.end.1279

cond.end.1279:                                    ; preds = %cond.false.1270, %cond.true.1262
  %cond1280 = phi i32 [ %sub1269, %cond.true.1262 ], [ %sub1278, %cond.false.1270 ]
  %961 = load i32, i32* %distant, align 4
  %cmp1281 = icmp slt i32 %cond1280, %961
  br i1 %cmp1281, label %if.then.1283, label %if.else.1312

if.then.1283:                                     ; preds = %cond.end.1279
  %962 = load i32, i32* %m, align 4
  %idxprom1284 = sext i32 %962 to i64
  %963 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1285 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %963, i32 0, i32 21
  %arrayidx1286 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1285, i32 0, i64 0
  %964 = load %struct.tilebox*, %struct.tilebox** %arrayidx1286, align 8
  %siteLocArray1287 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %964, i32 0, i32 18
  %965 = load %struct.locbox*, %struct.locbox** %siteLocArray1287, align 8
  %arrayidx1288 = getelementptr inbounds %struct.locbox, %struct.locbox* %965, i64 %idxprom1284
  %ypos1289 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1288, i32 0, i32 1
  %966 = load i32, i32* %ypos1289, align 4
  %967 = load i32, i32* %ypos, align 4
  %sub1290 = sub nsw i32 %966, %967
  %cmp1291 = icmp sge i32 %sub1290, 0
  br i1 %cmp1291, label %cond.true.1293, label %cond.false.1301

cond.true.1293:                                   ; preds = %if.then.1283
  %968 = load i32, i32* %m, align 4
  %idxprom1294 = sext i32 %968 to i64
  %969 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1295 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %969, i32 0, i32 21
  %arrayidx1296 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1295, i32 0, i64 0
  %970 = load %struct.tilebox*, %struct.tilebox** %arrayidx1296, align 8
  %siteLocArray1297 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %970, i32 0, i32 18
  %971 = load %struct.locbox*, %struct.locbox** %siteLocArray1297, align 8
  %arrayidx1298 = getelementptr inbounds %struct.locbox, %struct.locbox* %971, i64 %idxprom1294
  %ypos1299 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1298, i32 0, i32 1
  %972 = load i32, i32* %ypos1299, align 4
  %973 = load i32, i32* %ypos, align 4
  %sub1300 = sub nsw i32 %972, %973
  br label %cond.end.1310

cond.false.1301:                                  ; preds = %if.then.1283
  %974 = load i32, i32* %m, align 4
  %idxprom1302 = sext i32 %974 to i64
  %975 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1303 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %975, i32 0, i32 21
  %arrayidx1304 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1303, i32 0, i64 0
  %976 = load %struct.tilebox*, %struct.tilebox** %arrayidx1304, align 8
  %siteLocArray1305 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %976, i32 0, i32 18
  %977 = load %struct.locbox*, %struct.locbox** %siteLocArray1305, align 8
  %arrayidx1306 = getelementptr inbounds %struct.locbox, %struct.locbox* %977, i64 %idxprom1302
  %ypos1307 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1306, i32 0, i32 1
  %978 = load i32, i32* %ypos1307, align 4
  %979 = load i32, i32* %ypos, align 4
  %sub1308 = sub nsw i32 %978, %979
  %sub1309 = sub nsw i32 0, %sub1308
  br label %cond.end.1310

cond.end.1310:                                    ; preds = %cond.false.1301, %cond.true.1293
  %cond1311 = phi i32 [ %sub1300, %cond.true.1293 ], [ %sub1309, %cond.false.1301 ]
  store i32 %cond1311, i32* %distant, align 4
  br label %if.end.1313

if.else.1312:                                     ; preds = %cond.end.1279
  br label %for.end.1318

if.end.1313:                                      ; preds = %cond.end.1310
  br label %if.end.1315

if.else.1314:                                     ; preds = %for.body.1243
  br label %for.end.1318

if.end.1315:                                      ; preds = %if.end.1313
  br label %for.inc.1316

for.inc.1316:                                     ; preds = %if.end.1315
  %980 = load i32, i32* %m, align 4
  %inc1317 = add nsw i32 %980, 1
  store i32 %inc1317, i32* %m, align 4
  br label %for.cond.1239

for.end.1318:                                     ; preds = %if.else.1314, %if.else.1312, %for.cond.1239
  %981 = load i32, i32* %unComTerms, align 4
  %inc1319 = add nsw i32 %981, 1
  store i32 %inc1319, i32* %unComTerms, align 4
  %982 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms1320 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %982, i32 0, i32 18
  %983 = load i32, i32* %numUnComTerms1320, align 4
  %cmp1321 = icmp sgt i32 %inc1319, %983
  br i1 %cmp1321, label %if.then.1323, label %if.end.1327

if.then.1323:                                     ; preds = %for.end.1318
  %984 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %984, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
  %985 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %985, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0))
  %986 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %986, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

if.end.1327:                                      ; preds = %for.end.1318
  %987 = load i32, i32* %unComTerms, align 4
  %idxprom1328 = sext i32 %987 to i64
  %988 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1329 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %988, i32 0, i32 20
  %989 = load %struct.uncombox*, %struct.uncombox** %unComTerms1329, align 8
  %arrayidx1330 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %989, i64 %idxprom1328
  %sequence1331 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1330, i32 0, i32 7
  store i32 1, i32* %sequence1331, align 4
  %990 = load i32, i32* %pinctr, align 4
  %991 = load i32, i32* %unComTerms, align 4
  %idxprom1332 = sext i32 %991 to i64
  %992 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1333 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %992, i32 0, i32 20
  %993 = load %struct.uncombox*, %struct.uncombox** %unComTerms1333, align 8
  %arrayidx1334 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %993, i64 %idxprom1332
  %terminal1335 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1334, i32 0, i32 0
  store i32 %990, i32* %terminal1335, align 4
  %994 = load i32, i32* %unComTerms, align 4
  %idxprom1336 = sext i32 %994 to i64
  %995 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1337 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %995, i32 0, i32 20
  %996 = load %struct.uncombox*, %struct.uncombox** %unComTerms1337, align 8
  %arrayidx1338 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %996, i64 %idxprom1336
  %numranges = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1338, i32 0, i32 4
  store i32 0, i32* %numranges, align 4
  %997 = load i32, i32* %m, align 4
  %sub1339 = sub nsw i32 %997, 1
  %998 = load i32, i32* %unComTerms, align 4
  %idxprom1340 = sext i32 %998 to i64
  %999 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1341 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %999, i32 0, i32 20
  %1000 = load %struct.uncombox*, %struct.uncombox** %unComTerms1341, align 8
  %arrayidx1342 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1000, i64 %idxprom1340
  %range1 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1342, i32 0, i32 5
  store i32 %sub1339, i32* %range1, align 4
  br label %for.end.1492

if.else.1343:                                     ; preds = %for.body.1200
  %1001 = load i32, i32* %m, align 4
  %idxprom1344 = sext i32 %1001 to i64
  %1002 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1345 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1002, i32 0, i32 21
  %arrayidx1346 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1345, i32 0, i64 0
  %1003 = load %struct.tilebox*, %struct.tilebox** %arrayidx1346, align 8
  %siteLocArray1347 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1003, i32 0, i32 18
  %1004 = load %struct.locbox*, %struct.locbox** %siteLocArray1347, align 8
  %arrayidx1348 = getelementptr inbounds %struct.locbox, %struct.locbox* %1004, i64 %idxprom1344
  %ypos1349 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1348, i32 0, i32 1
  %1005 = load i32, i32* %ypos1349, align 4
  %1006 = load i32, i32* %ypos, align 4
  %cmp1350 = icmp eq i32 %1005, %1006
  br i1 %cmp1350, label %if.then.1352, label %if.end.1488

if.then.1352:                                     ; preds = %if.else.1343
  store i32 1, i32* %hit, align 4
  %1007 = load i32, i32* %m, align 4
  %idxprom1353 = sext i32 %1007 to i64
  %1008 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1354 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1008, i32 0, i32 21
  %arrayidx1355 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1354, i32 0, i64 0
  %1009 = load %struct.tilebox*, %struct.tilebox** %arrayidx1355, align 8
  %siteLocArray1356 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1009, i32 0, i32 18
  %1010 = load %struct.locbox*, %struct.locbox** %siteLocArray1356, align 8
  %arrayidx1357 = getelementptr inbounds %struct.locbox, %struct.locbox* %1010, i64 %idxprom1353
  %xpos1358 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1357, i32 0, i32 0
  %1011 = load i32, i32* %xpos1358, align 4
  %1012 = load i32, i32* %xpos, align 4
  %sub1359 = sub nsw i32 %1011, %1012
  %cmp1360 = icmp sge i32 %sub1359, 0
  br i1 %cmp1360, label %cond.true.1362, label %cond.false.1370

cond.true.1362:                                   ; preds = %if.then.1352
  %1013 = load i32, i32* %m, align 4
  %idxprom1363 = sext i32 %1013 to i64
  %1014 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1364 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1014, i32 0, i32 21
  %arrayidx1365 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1364, i32 0, i64 0
  %1015 = load %struct.tilebox*, %struct.tilebox** %arrayidx1365, align 8
  %siteLocArray1366 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1015, i32 0, i32 18
  %1016 = load %struct.locbox*, %struct.locbox** %siteLocArray1366, align 8
  %arrayidx1367 = getelementptr inbounds %struct.locbox, %struct.locbox* %1016, i64 %idxprom1363
  %xpos1368 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1367, i32 0, i32 0
  %1017 = load i32, i32* %xpos1368, align 4
  %1018 = load i32, i32* %xpos, align 4
  %sub1369 = sub nsw i32 %1017, %1018
  br label %cond.end.1379

cond.false.1370:                                  ; preds = %if.then.1352
  %1019 = load i32, i32* %m, align 4
  %idxprom1371 = sext i32 %1019 to i64
  %1020 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1372 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1020, i32 0, i32 21
  %arrayidx1373 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1372, i32 0, i64 0
  %1021 = load %struct.tilebox*, %struct.tilebox** %arrayidx1373, align 8
  %siteLocArray1374 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1021, i32 0, i32 18
  %1022 = load %struct.locbox*, %struct.locbox** %siteLocArray1374, align 8
  %arrayidx1375 = getelementptr inbounds %struct.locbox, %struct.locbox* %1022, i64 %idxprom1371
  %xpos1376 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1375, i32 0, i32 0
  %1023 = load i32, i32* %xpos1376, align 4
  %1024 = load i32, i32* %xpos, align 4
  %sub1377 = sub nsw i32 %1023, %1024
  %sub1378 = sub nsw i32 0, %sub1377
  br label %cond.end.1379

cond.end.1379:                                    ; preds = %cond.false.1370, %cond.true.1362
  %cond1380 = phi i32 [ %sub1369, %cond.true.1362 ], [ %sub1378, %cond.false.1370 ]
  store i32 %cond1380, i32* %distant, align 4
  %1025 = load i32, i32* %m, align 4
  %inc1381 = add nsw i32 %1025, 1
  store i32 %inc1381, i32* %m, align 4
  br label %for.cond.1382

for.cond.1382:                                    ; preds = %for.inc.1459, %cond.end.1379
  %1026 = load i32, i32* %m, align 4
  %1027 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1383 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1027, i32 0, i32 17
  %1028 = load i32, i32* %numsites1383, align 4
  %cmp1384 = icmp sle i32 %1026, %1028
  br i1 %cmp1384, label %for.body.1386, label %for.end.1461

for.body.1386:                                    ; preds = %for.cond.1382
  %1029 = load i32, i32* %m, align 4
  %idxprom1387 = sext i32 %1029 to i64
  %1030 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1388 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1030, i32 0, i32 21
  %arrayidx1389 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1388, i32 0, i64 0
  %1031 = load %struct.tilebox*, %struct.tilebox** %arrayidx1389, align 8
  %siteLocArray1390 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1031, i32 0, i32 18
  %1032 = load %struct.locbox*, %struct.locbox** %siteLocArray1390, align 8
  %arrayidx1391 = getelementptr inbounds %struct.locbox, %struct.locbox* %1032, i64 %idxprom1387
  %ypos1392 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1391, i32 0, i32 1
  %1033 = load i32, i32* %ypos1392, align 4
  %1034 = load i32, i32* %ypos, align 4
  %cmp1393 = icmp eq i32 %1033, %1034
  br i1 %cmp1393, label %if.then.1395, label %if.else.1457

if.then.1395:                                     ; preds = %for.body.1386
  %1035 = load i32, i32* %m, align 4
  %idxprom1396 = sext i32 %1035 to i64
  %1036 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1397 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1036, i32 0, i32 21
  %arrayidx1398 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1397, i32 0, i64 0
  %1037 = load %struct.tilebox*, %struct.tilebox** %arrayidx1398, align 8
  %siteLocArray1399 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1037, i32 0, i32 18
  %1038 = load %struct.locbox*, %struct.locbox** %siteLocArray1399, align 8
  %arrayidx1400 = getelementptr inbounds %struct.locbox, %struct.locbox* %1038, i64 %idxprom1396
  %xpos1401 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1400, i32 0, i32 0
  %1039 = load i32, i32* %xpos1401, align 4
  %1040 = load i32, i32* %xpos, align 4
  %sub1402 = sub nsw i32 %1039, %1040
  %cmp1403 = icmp sge i32 %sub1402, 0
  br i1 %cmp1403, label %cond.true.1405, label %cond.false.1413

cond.true.1405:                                   ; preds = %if.then.1395
  %1041 = load i32, i32* %m, align 4
  %idxprom1406 = sext i32 %1041 to i64
  %1042 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1407 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1042, i32 0, i32 21
  %arrayidx1408 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1407, i32 0, i64 0
  %1043 = load %struct.tilebox*, %struct.tilebox** %arrayidx1408, align 8
  %siteLocArray1409 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1043, i32 0, i32 18
  %1044 = load %struct.locbox*, %struct.locbox** %siteLocArray1409, align 8
  %arrayidx1410 = getelementptr inbounds %struct.locbox, %struct.locbox* %1044, i64 %idxprom1406
  %xpos1411 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1410, i32 0, i32 0
  %1045 = load i32, i32* %xpos1411, align 4
  %1046 = load i32, i32* %xpos, align 4
  %sub1412 = sub nsw i32 %1045, %1046
  br label %cond.end.1422

cond.false.1413:                                  ; preds = %if.then.1395
  %1047 = load i32, i32* %m, align 4
  %idxprom1414 = sext i32 %1047 to i64
  %1048 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1415 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1048, i32 0, i32 21
  %arrayidx1416 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1415, i32 0, i64 0
  %1049 = load %struct.tilebox*, %struct.tilebox** %arrayidx1416, align 8
  %siteLocArray1417 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1049, i32 0, i32 18
  %1050 = load %struct.locbox*, %struct.locbox** %siteLocArray1417, align 8
  %arrayidx1418 = getelementptr inbounds %struct.locbox, %struct.locbox* %1050, i64 %idxprom1414
  %xpos1419 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1418, i32 0, i32 0
  %1051 = load i32, i32* %xpos1419, align 4
  %1052 = load i32, i32* %xpos, align 4
  %sub1420 = sub nsw i32 %1051, %1052
  %sub1421 = sub nsw i32 0, %sub1420
  br label %cond.end.1422

cond.end.1422:                                    ; preds = %cond.false.1413, %cond.true.1405
  %cond1423 = phi i32 [ %sub1412, %cond.true.1405 ], [ %sub1421, %cond.false.1413 ]
  %1053 = load i32, i32* %distant, align 4
  %cmp1424 = icmp slt i32 %cond1423, %1053
  br i1 %cmp1424, label %if.then.1426, label %if.else.1455

if.then.1426:                                     ; preds = %cond.end.1422
  %1054 = load i32, i32* %m, align 4
  %idxprom1427 = sext i32 %1054 to i64
  %1055 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1428 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1055, i32 0, i32 21
  %arrayidx1429 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1428, i32 0, i64 0
  %1056 = load %struct.tilebox*, %struct.tilebox** %arrayidx1429, align 8
  %siteLocArray1430 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1056, i32 0, i32 18
  %1057 = load %struct.locbox*, %struct.locbox** %siteLocArray1430, align 8
  %arrayidx1431 = getelementptr inbounds %struct.locbox, %struct.locbox* %1057, i64 %idxprom1427
  %xpos1432 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1431, i32 0, i32 0
  %1058 = load i32, i32* %xpos1432, align 4
  %1059 = load i32, i32* %xpos, align 4
  %sub1433 = sub nsw i32 %1058, %1059
  %cmp1434 = icmp sge i32 %sub1433, 0
  br i1 %cmp1434, label %cond.true.1436, label %cond.false.1444

cond.true.1436:                                   ; preds = %if.then.1426
  %1060 = load i32, i32* %m, align 4
  %idxprom1437 = sext i32 %1060 to i64
  %1061 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1438 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1061, i32 0, i32 21
  %arrayidx1439 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1438, i32 0, i64 0
  %1062 = load %struct.tilebox*, %struct.tilebox** %arrayidx1439, align 8
  %siteLocArray1440 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1062, i32 0, i32 18
  %1063 = load %struct.locbox*, %struct.locbox** %siteLocArray1440, align 8
  %arrayidx1441 = getelementptr inbounds %struct.locbox, %struct.locbox* %1063, i64 %idxprom1437
  %xpos1442 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1441, i32 0, i32 0
  %1064 = load i32, i32* %xpos1442, align 4
  %1065 = load i32, i32* %xpos, align 4
  %sub1443 = sub nsw i32 %1064, %1065
  br label %cond.end.1453

cond.false.1444:                                  ; preds = %if.then.1426
  %1066 = load i32, i32* %m, align 4
  %idxprom1445 = sext i32 %1066 to i64
  %1067 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1446 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1067, i32 0, i32 21
  %arrayidx1447 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1446, i32 0, i64 0
  %1068 = load %struct.tilebox*, %struct.tilebox** %arrayidx1447, align 8
  %siteLocArray1448 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1068, i32 0, i32 18
  %1069 = load %struct.locbox*, %struct.locbox** %siteLocArray1448, align 8
  %arrayidx1449 = getelementptr inbounds %struct.locbox, %struct.locbox* %1069, i64 %idxprom1445
  %xpos1450 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1449, i32 0, i32 0
  %1070 = load i32, i32* %xpos1450, align 4
  %1071 = load i32, i32* %xpos, align 4
  %sub1451 = sub nsw i32 %1070, %1071
  %sub1452 = sub nsw i32 0, %sub1451
  br label %cond.end.1453

cond.end.1453:                                    ; preds = %cond.false.1444, %cond.true.1436
  %cond1454 = phi i32 [ %sub1443, %cond.true.1436 ], [ %sub1452, %cond.false.1444 ]
  store i32 %cond1454, i32* %distant, align 4
  br label %if.end.1456

if.else.1455:                                     ; preds = %cond.end.1422
  br label %for.end.1461

if.end.1456:                                      ; preds = %cond.end.1453
  br label %if.end.1458

if.else.1457:                                     ; preds = %for.body.1386
  br label %for.end.1461

if.end.1458:                                      ; preds = %if.end.1456
  br label %for.inc.1459

for.inc.1459:                                     ; preds = %if.end.1458
  %1072 = load i32, i32* %m, align 4
  %inc1460 = add nsw i32 %1072, 1
  store i32 %inc1460, i32* %m, align 4
  br label %for.cond.1382

for.end.1461:                                     ; preds = %if.else.1457, %if.else.1455, %for.cond.1382
  %1073 = load i32, i32* %unComTerms, align 4
  %inc1462 = add nsw i32 %1073, 1
  store i32 %inc1462, i32* %unComTerms, align 4
  %1074 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms1463 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1074, i32 0, i32 18
  %1075 = load i32, i32* %numUnComTerms1463, align 4
  %cmp1464 = icmp sgt i32 %inc1462, %1075
  br i1 %cmp1464, label %if.then.1466, label %if.end.1470

if.then.1466:                                     ; preds = %for.end.1461
  %1076 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1467 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1076, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
  %1077 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1468 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1077, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0))
  %1078 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1078, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

if.end.1470:                                      ; preds = %for.end.1461
  %1079 = load i32, i32* %unComTerms, align 4
  %idxprom1471 = sext i32 %1079 to i64
  %1080 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1472 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1080, i32 0, i32 20
  %1081 = load %struct.uncombox*, %struct.uncombox** %unComTerms1472, align 8
  %arrayidx1473 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1081, i64 %idxprom1471
  %sequence1474 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1473, i32 0, i32 7
  store i32 1, i32* %sequence1474, align 4
  %1082 = load i32, i32* %pinctr, align 4
  %1083 = load i32, i32* %unComTerms, align 4
  %idxprom1475 = sext i32 %1083 to i64
  %1084 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1476 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1084, i32 0, i32 20
  %1085 = load %struct.uncombox*, %struct.uncombox** %unComTerms1476, align 8
  %arrayidx1477 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1085, i64 %idxprom1475
  %terminal1478 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1477, i32 0, i32 0
  store i32 %1082, i32* %terminal1478, align 4
  %1086 = load i32, i32* %unComTerms, align 4
  %idxprom1479 = sext i32 %1086 to i64
  %1087 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1480 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1087, i32 0, i32 20
  %1088 = load %struct.uncombox*, %struct.uncombox** %unComTerms1480, align 8
  %arrayidx1481 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1088, i64 %idxprom1479
  %numranges1482 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1481, i32 0, i32 4
  store i32 0, i32* %numranges1482, align 4
  %1089 = load i32, i32* %m, align 4
  %sub1483 = sub nsw i32 %1089, 1
  %1090 = load i32, i32* %unComTerms, align 4
  %idxprom1484 = sext i32 %1090 to i64
  %1091 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1485 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1091, i32 0, i32 20
  %1092 = load %struct.uncombox*, %struct.uncombox** %unComTerms1485, align 8
  %arrayidx1486 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1092, i64 %idxprom1484
  %range11487 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1486, i32 0, i32 5
  store i32 %sub1483, i32* %range11487, align 4
  br label %for.end.1492

if.end.1488:                                      ; preds = %if.else.1343
  br label %if.end.1489

if.end.1489:                                      ; preds = %if.end.1488
  br label %for.inc.1490

for.inc.1490:                                     ; preds = %if.end.1489
  %1093 = load i32, i32* %m, align 4
  %inc1491 = add nsw i32 %1093, 1
  store i32 %inc1491, i32* %m, align 4
  br label %for.cond.1196

for.end.1492:                                     ; preds = %if.end.1470, %if.end.1327, %for.cond.1196
  br label %if.end.1493

if.end.1493:                                      ; preds = %for.end.1492, %if.end.1189
  %1094 = load i32, i32* %hit, align 4
  %cmp1494 = icmp eq i32 %1094, 0
  br i1 %cmp1494, label %if.then.1496, label %if.end.1516

if.then.1496:                                     ; preds = %if.end.1493
  %1095 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1095, i32 0, i32 8
  %1096 = load i32, i32* %numterms, align 4
  %inc1497 = add nsw i32 %1096, 1
  store i32 %inc1497, i32* %numterms, align 4
  %1097 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms1498 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1097, i32 0, i32 8
  %1098 = load i32, i32* %numterms1498, align 4
  %cmp1499 = icmp eq i32 %1098, 1
  br i1 %cmp1499, label %if.then.1501, label %if.else.1506

if.then.1501:                                     ; preds = %if.then.1496
  %call1502 = call noalias i8* @malloc(i64 32) #5
  %1099 = bitcast i8* %call1502 to %struct.termbox*
  %1100 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1503 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1100, i32 0, i32 21
  %arrayidx1504 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1503, i32 0, i64 0
  %1101 = load %struct.tilebox*, %struct.tilebox** %arrayidx1504, align 8
  %termptr1505 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1101, i32 0, i32 17
  store %struct.termbox* %1099, %struct.termbox** %termptr1505, align 8
  store %struct.termbox* %1099, %struct.termbox** %term, align 8
  br label %if.end.1509

if.else.1506:                                     ; preds = %if.then.1496
  %call1507 = call noalias i8* @malloc(i64 32) #5
  %1102 = bitcast i8* %call1507 to %struct.termbox*
  %1103 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm1508 = getelementptr inbounds %struct.termbox, %struct.termbox* %1103, i32 0, i32 0
  store %struct.termbox* %1102, %struct.termbox** %nextterm1508, align 8
  store %struct.termbox* %1102, %struct.termbox** %term, align 8
  br label %if.end.1509

if.end.1509:                                      ; preds = %if.else.1506, %if.then.1501
  %1104 = load i32, i32* %pinctr, align 4
  %1105 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal1510 = getelementptr inbounds %struct.termbox, %struct.termbox* %1105, i32 0, i32 5
  store i32 %1104, i32* %terminal1510, align 4
  %1106 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm1511 = getelementptr inbounds %struct.termbox, %struct.termbox* %1106, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm1511, align 8
  %1107 = load i32, i32* %xpos, align 4
  %1108 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos1512 = getelementptr inbounds %struct.termbox, %struct.termbox* %1108, i32 0, i32 1
  store i32 %1107, i32* %xpos1512, align 4
  %1109 = load i32, i32* %ypos, align 4
  %1110 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos1513 = getelementptr inbounds %struct.termbox, %struct.termbox* %1110, i32 0, i32 2
  store i32 %1109, i32* %ypos1513, align 4
  %1111 = load i32, i32* %xpos, align 4
  %1112 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oxpos1514 = getelementptr inbounds %struct.termbox, %struct.termbox* %1112, i32 0, i32 3
  store i32 %1111, i32* %oxpos1514, align 4
  %1113 = load i32, i32* %ypos, align 4
  %1114 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oypos1515 = getelementptr inbounds %struct.termbox, %struct.termbox* %1114, i32 0, i32 4
  store i32 %1113, i32* %oypos1515, align 4
  br label %if.end.1516

if.end.1516:                                      ; preds = %if.end.1509, %if.end.1493
  br label %if.end.1806

if.else.1517:                                     ; preds = %if.else.1127
  %arraydecay1518 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1519 = call i32 @strcmp(i8* %arraydecay1518, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #6
  %cmp1520 = icmp eq i32 %call1519, 0
  br i1 %cmp1520, label %if.then.1522, label %if.else.1548

if.then.1522:                                     ; preds = %if.else.1517
  %1115 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1523 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1524 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1523)
  %1116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1525 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1526 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1525)
  %1117 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1527 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  %1118 = load i32, i32* %pad, align 4
  %cmp1528 = icmp eq i32 %1118, 0
  br i1 %cmp1528, label %if.then.1530, label %if.end.1532

if.then.1530:                                     ; preds = %if.then.1522
  %1119 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %1120 = load i32, i32* %xpos, align 4
  %1121 = load i32, i32* %ypos, align 4
  %call1531 = call i32 @findside(%struct.cellbox* %1119, i32 %1120, i32 %1121)
  store i32 %call1531, i32* %side, align 4
  %1122 = load i32, i32* %side, align 4
  call void @loadside(i32 %1122, double 1.000000e+00)
  br label %if.end.1532

if.end.1532:                                      ; preds = %if.then.1530, %if.then.1522
  %1123 = load i32, i32* %tot, align 4
  %inc1533 = add nsw i32 %1123, 1
  store i32 %inc1533, i32* %tot, align 4
  %1124 = load i32, i32* %xpos, align 4
  %1125 = load i32, i32* %totx, align 4
  %add1534 = add nsw i32 %1125, %1124
  store i32 %add1534, i32* %totx, align 4
  %1126 = load i32, i32* %ypos, align 4
  %1127 = load i32, i32* %toty, align 4
  %add1535 = add nsw i32 %1127, %1126
  store i32 %add1535, i32* %toty, align 4
  %1128 = load i32, i32* %totx, align 4
  %1129 = load i32, i32* %tot, align 4
  %div1536 = sdiv i32 %1128, %1129
  %1130 = load i32, i32* %xcenter, align 4
  %sub1537 = sub nsw i32 %div1536, %1130
  %1131 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos1538 = getelementptr inbounds %struct.termbox, %struct.termbox* %1131, i32 0, i32 1
  store i32 %sub1537, i32* %xpos1538, align 4
  %1132 = load i32, i32* %toty, align 4
  %1133 = load i32, i32* %tot, align 4
  %div1539 = sdiv i32 %1132, %1133
  %1134 = load i32, i32* %ycenter, align 4
  %sub1540 = sub nsw i32 %div1539, %1134
  %1135 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos1541 = getelementptr inbounds %struct.termbox, %struct.termbox* %1135, i32 0, i32 2
  store i32 %sub1540, i32* %ypos1541, align 4
  %1136 = load i32, i32* %totx, align 4
  %1137 = load i32, i32* %tot, align 4
  %div1542 = sdiv i32 %1136, %1137
  %1138 = load i32, i32* %xcenter, align 4
  %sub1543 = sub nsw i32 %div1542, %1138
  %1139 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oxpos1544 = getelementptr inbounds %struct.termbox, %struct.termbox* %1139, i32 0, i32 3
  store i32 %sub1543, i32* %oxpos1544, align 4
  %1140 = load i32, i32* %toty, align 4
  %1141 = load i32, i32* %tot, align 4
  %div1545 = sdiv i32 %1140, %1141
  %1142 = load i32, i32* %ycenter, align 4
  %sub1546 = sub nsw i32 %div1545, %1142
  %1143 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oypos1547 = getelementptr inbounds %struct.termbox, %struct.termbox* %1143, i32 0, i32 4
  store i32 %sub1546, i32* %oypos1547, align 4
  br label %if.end.1805

if.else.1548:                                     ; preds = %if.else.1517
  %arraydecay1549 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1550 = call i32 @strcmp(i8* %arraydecay1549, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #6
  %cmp1551 = icmp eq i32 %call1550, 0
  br i1 %cmp1551, label %if.then.1553, label %if.else.1555

if.then.1553:                                     ; preds = %if.else.1548
  %1144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1554 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), double* %asplb)
  %1145 = load double, double* %asplb, align 8
  %1146 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspLB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1146, i32 0, i32 16
  store double %1145, double* %aspLB, align 8
  br label %if.end.1804

if.else.1555:                                     ; preds = %if.else.1548
  %arraydecay1556 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1557 = call i32 @strcmp(i8* %arraydecay1556, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #6
  %cmp1558 = icmp eq i32 %call1557, 0
  br i1 %cmp1558, label %if.then.1560, label %if.else.1587

if.then.1560:                                     ; preds = %if.else.1555
  %1147 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1561 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), double* %aspub)
  %1148 = load double, double* %aspub, align 8
  %1149 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspUB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1149, i32 0, i32 15
  store double %1148, double* %aspUB, align 8
  %1150 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1562 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1563 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1562)
  %1151 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1564 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %1152 = load i32, i32* %class, align 4
  %1153 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %class1565 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1153, i32 0, i32 1
  store i32 %1152, i32* %class1565, align 4
  %1154 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1566 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %1155 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1567 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1568 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1567)
  store i32 1, i32* %orient, align 4
  br label %for.cond.1569

for.cond.1569:                                    ; preds = %for.inc.1584, %if.then.1560
  %1156 = load i32, i32* %orient, align 4
  %1157 = load i32, i32* %norients, align 4
  %cmp1570 = icmp sle i32 %1156, %1157
  br i1 %cmp1570, label %for.body.1572, label %for.end.1586

for.body.1572:                                    ; preds = %for.cond.1569
  %1158 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1573 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %temp)
  %1159 = load i32, i32* %temp, align 4
  %idxprom1574 = sext i32 %1159 to i64
  %1160 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList1575 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1160, i32 0, i32 4
  %arrayidx1576 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList1575, i32 0, i64 %idxprom1574
  store i32 1, i32* %arrayidx1576, align 4
  %1161 = load i32, i32* %orient, align 4
  %cmp1577 = icmp eq i32 %1161, 1
  br i1 %cmp1577, label %if.then.1579, label %if.end.1583

if.then.1579:                                     ; preds = %for.body.1572
  %1162 = load i32, i32* %temp, align 4
  %1163 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient1580 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1163, i32 0, i32 5
  store i32 %1162, i32* %orient1580, align 4
  %1164 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList1581 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1164, i32 0, i32 4
  %arrayidx1582 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList1581, i32 0, i64 8
  store i32 %1162, i32* %arrayidx1582, align 4
  br label %if.end.1583

if.end.1583:                                      ; preds = %if.then.1579, %for.body.1572
  br label %for.inc.1584

for.inc.1584:                                     ; preds = %if.end.1583
  %1165 = load i32, i32* %orient, align 4
  %inc1585 = add nsw i32 %1165, 1
  store i32 %inc1585, i32* %orient, align 4
  br label %for.cond.1569

for.end.1586:                                     ; preds = %for.cond.1569
  br label %if.end.1803

if.else.1587:                                     ; preds = %if.else.1555
  %arraydecay1588 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1589 = call i32 @strcmp(i8* %arraydecay1588, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)) #6
  %cmp1590 = icmp eq i32 %call1589, 0
  br i1 %cmp1590, label %if.then.1596, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.1587
  %arraydecay1592 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1593 = call i32 @strcmp(i8* %arraydecay1592, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #6
  %cmp1594 = icmp eq i32 %call1593, 0
  br i1 %cmp1594, label %if.then.1596, label %if.end.1802

if.then.1596:                                     ; preds = %lor.lhs.false, %if.else.1587
  %1166 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numgroups = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1166, i32 0, i32 9
  %1167 = load i32, i32* %numgroups, align 4
  %inc1597 = add nsw i32 %1167, 1
  store i32 %inc1597, i32* %numgroups, align 4
  %arraydecay1598 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1599 = call i32 @strcmp(i8* %arraydecay1598, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #6
  %cmp1600 = icmp eq i32 %call1599, 0
  br i1 %cmp1600, label %if.then.1602, label %if.else.1603

if.then.1602:                                     ; preds = %if.then.1596
  store i32 1, i32* %groupflag, align 4
  br label %if.end.1604

if.else.1603:                                     ; preds = %if.then.1596
  store i32 0, i32* %groupflag, align 4
  br label %if.end.1604

if.end.1604:                                      ; preds = %if.else.1603, %if.then.1602
  %1168 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1605 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %sequence)
  store i32 1, i32* %i, align 4
  br label %for.cond.1606

for.cond.1606:                                    ; preds = %for.inc.1692, %if.end.1604
  %1169 = load i32, i32* %i, align 4
  %1170 = load i32, i32* %sequence, align 4
  %cmp1607 = icmp sle i32 %1169, %1170
  br i1 %cmp1607, label %for.body.1609, label %for.end.1694

for.body.1609:                                    ; preds = %for.cond.1606
  %1171 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1610 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1611 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1610)
  %1172 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1612 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1613 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1612)
  %1173 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1614 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1615 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1614)
  %arraydecay1616 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1617 = call i64 @strlen(i8* %arraydecay1616) #6
  %add1618 = add i64 %call1617, 1
  %mul1619 = mul i64 %add1618, 1
  %call1620 = call noalias i8* @malloc(i64 %mul1619) #5
  %1174 = load i32, i32* %pinctr, align 4
  %inc1621 = add nsw i32 %1174, 1
  store i32 %inc1621, i32* %pinctr, align 4
  %idxprom1622 = sext i32 %inc1621 to i64
  %1175 = load i8**, i8*** @pinnames, align 8
  %arrayidx1623 = getelementptr inbounds i8*, i8** %1175, i64 %idxprom1622
  store i8* %call1620, i8** %arrayidx1623, align 8
  %1176 = load i32, i32* %pinctr, align 4
  %idxprom1624 = sext i32 %1176 to i64
  %1177 = load i8**, i8*** @pinnames, align 8
  %arrayidx1625 = getelementptr inbounds i8*, i8** %1177, i64 %idxprom1624
  %1178 = load i8*, i8** %arrayidx1625, align 8
  %arraydecay1626 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1627 = call i32 (i8*, i8*, ...) @sprintf(i8* %1178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay1626) #5
  %1179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1628 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1629 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1628)
  %1180 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1630 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1631 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1630)
  %arraydecay1632 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1633 = call i32 @hashfind(i8* %arraydecay1632)
  store i32 %call1633, i32* %netx, align 4
  %1181 = load i32, i32* %netx, align 4
  %idxprom1634 = sext i32 %1181 to i64
  %1182 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1635 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %1182, i64 %idxprom1634
  %1183 = load %struct.dimbox*, %struct.dimbox** %arrayidx1635, align 8
  %nname1636 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %1183, i32 0, i32 13
  %1184 = load i8*, i8** %nname1636, align 8
  %cmp1637 = icmp eq i8* %1184, null
  br i1 %cmp1637, label %if.then.1639, label %if.end.1653

if.then.1639:                                     ; preds = %for.body.1609
  %arraydecay1640 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1641 = call i64 @strlen(i8* %arraydecay1640) #6
  %add1642 = add i64 %call1641, 1
  %mul1643 = mul i64 %add1642, 1
  %call1644 = call noalias i8* @malloc(i64 %mul1643) #5
  %1185 = load i32, i32* %netx, align 4
  %idxprom1645 = sext i32 %1185 to i64
  %1186 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1646 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %1186, i64 %idxprom1645
  %1187 = load %struct.dimbox*, %struct.dimbox** %arrayidx1646, align 8
  %nname1647 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %1187, i32 0, i32 13
  store i8* %call1644, i8** %nname1647, align 8
  %1188 = load i32, i32* %netx, align 4
  %idxprom1648 = sext i32 %1188 to i64
  %1189 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1649 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %1189, i64 %idxprom1648
  %1190 = load %struct.dimbox*, %struct.dimbox** %arrayidx1649, align 8
  %nname1650 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %1190, i32 0, i32 13
  %1191 = load i8*, i8** %nname1650, align 8
  %arraydecay1651 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1652 = call i32 (i8*, i8*, ...) @sprintf(i8* %1191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay1651) #5
  br label %if.end.1653

if.end.1653:                                      ; preds = %if.then.1639, %for.body.1609
  %1192 = load i32, i32* %netx, align 4
  %idxprom1654 = sext i32 %1192 to i64
  %1193 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1655 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %1193, i64 %idxprom1654
  %1194 = load %struct.dimbox*, %struct.dimbox** %arrayidx1655, align 8
  %netptr1656 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %1194, i32 0, i32 0
  %1195 = load %struct.netbox*, %struct.netbox** %netptr1656, align 8
  store %struct.netbox* %1195, %struct.netbox** %saveptr, align 8
  %call1657 = call noalias i8* @malloc(i64 48) #5
  %1196 = bitcast i8* %call1657 to %struct.netbox*
  %1197 = load i32, i32* %netx, align 4
  %idxprom1658 = sext i32 %1197 to i64
  %1198 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1659 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %1198, i64 %idxprom1658
  %1199 = load %struct.dimbox*, %struct.dimbox** %arrayidx1659, align 8
  %netptr1660 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %1199, i32 0, i32 0
  store %struct.netbox* %1196, %struct.netbox** %netptr1660, align 8
  store %struct.netbox* %1196, %struct.netbox** %netptr, align 8
  %1200 = load %struct.netbox*, %struct.netbox** %saveptr, align 8
  %1201 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm1661 = getelementptr inbounds %struct.netbox, %struct.netbox* %1201, i32 0, i32 0
  store %struct.netbox* %1200, %struct.netbox** %nextterm1661, align 8
  %1202 = load i32, i32* %pinctr, align 4
  %1203 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal1662 = getelementptr inbounds %struct.netbox, %struct.netbox* %1203, i32 0, i32 5
  store i32 %1202, i32* %terminal1662, align 4
  %1204 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos1663 = getelementptr inbounds %struct.netbox, %struct.netbox* %1204, i32 0, i32 1
  store i32 0, i32* %xpos1663, align 4
  %1205 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos1664 = getelementptr inbounds %struct.netbox, %struct.netbox* %1205, i32 0, i32 2
  store i32 0, i32* %ypos1664, align 4
  %1206 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx1665 = getelementptr inbounds %struct.netbox, %struct.netbox* %1206, i32 0, i32 3
  store i32 0, i32* %newx1665, align 4
  %1207 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy1666 = getelementptr inbounds %struct.netbox, %struct.netbox* %1207, i32 0, i32 4
  store i32 0, i32* %newy1666, align 4
  %1208 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag1667 = getelementptr inbounds %struct.netbox, %struct.netbox* %1208, i32 0, i32 6
  store i32 0, i32* %flag1667, align 4
  %1209 = load i32, i32* %cell, align 4
  %1210 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell1668 = getelementptr inbounds %struct.netbox, %struct.netbox* %1210, i32 0, i32 7
  store i32 %1209, i32* %cell1668, align 4
  %1211 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip1669 = getelementptr inbounds %struct.netbox, %struct.netbox* %1211, i32 0, i32 9
  store i32 0, i32* %skip1669, align 4
  %1212 = load i32, i32* %unComTerms, align 4
  %inc1670 = add nsw i32 %1212, 1
  store i32 %inc1670, i32* %unComTerms, align 4
  %1213 = load i32, i32* %i, align 4
  %cmp1671 = icmp eq i32 %1213, 1
  br i1 %cmp1671, label %if.then.1673, label %if.else.1678

if.then.1673:                                     ; preds = %if.end.1653
  %1214 = load i32, i32* %unComTerms, align 4
  store i32 %1214, i32* %first, align 4
  %1215 = load i32, i32* %sequence, align 4
  %1216 = load i32, i32* %first, align 4
  %idxprom1674 = sext i32 %1216 to i64
  %1217 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1675 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1217, i32 0, i32 20
  %1218 = load %struct.uncombox*, %struct.uncombox** %unComTerms1675, align 8
  %arrayidx1676 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1218, i64 %idxprom1674
  %sequence1677 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1676, i32 0, i32 7
  store i32 %1215, i32* %sequence1677, align 4
  br label %if.end.1683

if.else.1678:                                     ; preds = %if.end.1653
  %1219 = load i32, i32* %unComTerms, align 4
  %idxprom1679 = sext i32 %1219 to i64
  %1220 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1680 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1220, i32 0, i32 20
  %1221 = load %struct.uncombox*, %struct.uncombox** %unComTerms1680, align 8
  %arrayidx1681 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1221, i64 %idxprom1679
  %sequence1682 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1681, i32 0, i32 7
  store i32 0, i32* %sequence1682, align 4
  br label %if.end.1683

if.end.1683:                                      ; preds = %if.else.1678, %if.then.1673
  %1222 = load i32, i32* %pinctr, align 4
  %1223 = load i32, i32* %unComTerms, align 4
  %idxprom1684 = sext i32 %1223 to i64
  %1224 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1685 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1224, i32 0, i32 20
  %1225 = load %struct.uncombox*, %struct.uncombox** %unComTerms1685, align 8
  %arrayidx1686 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1225, i64 %idxprom1684
  %terminal1687 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1686, i32 0, i32 0
  store i32 %1222, i32* %terminal1687, align 4
  %1226 = load i32, i32* %groupflag, align 4
  %1227 = load i32, i32* %unComTerms, align 4
  %idxprom1688 = sext i32 %1227 to i64
  %1228 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1689 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1228, i32 0, i32 20
  %1229 = load %struct.uncombox*, %struct.uncombox** %unComTerms1689, align 8
  %arrayidx1690 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1229, i64 %idxprom1688
  %groupflag1691 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1690, i32 0, i32 8
  store i32 %1226, i32* %groupflag1691, align 4
  br label %for.inc.1692

for.inc.1692:                                     ; preds = %if.end.1683
  %1230 = load i32, i32* %i, align 4
  %inc1693 = add nsw i32 %1230, 1
  store i32 %inc1693, i32* %i, align 4
  br label %for.cond.1606

for.end.1694:                                     ; preds = %for.cond.1606
  %1231 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1695 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1696 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1695)
  %1232 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1697 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %firstside, i32* %lastside)
  %1233 = load i32, i32* %firstside, align 4
  %cmp1698 = icmp slt i32 %1233, 0
  br i1 %cmp1698, label %if.then.1705, label %lor.lhs.false.1700

lor.lhs.false.1700:                               ; preds = %for.end.1694
  %1234 = load i32, i32* %firstside, align 4
  %1235 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1701 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1235, i64 0
  %xc1702 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1701, i32 0, i32 0
  %1236 = load i32, i32* %xc1702, align 4
  %cmp1703 = icmp sgt i32 %1234, %1236
  br i1 %cmp1703, label %if.then.1705, label %if.end.1711

if.then.1705:                                     ; preds = %lor.lhs.false.1700, %for.end.1694
  %1237 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1706 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1237, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0))
  %1238 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %1239 = load i32, i32* %firstside, align 4
  %1240 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1707 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1240, i64 0
  %xc1708 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1707, i32 0, i32 0
  %1241 = load i32, i32* %xc1708, align 4
  %call1709 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), i32 %1239, i32 %1241)
  %1242 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %1243 = load i32, i32* %cell, align 4
  %call1710 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 %1243)
  call void @exit(i32 0) #7
  unreachable

if.end.1711:                                      ; preds = %lor.lhs.false.1700
  %1244 = load i32, i32* %lastside, align 4
  %cmp1712 = icmp slt i32 %1244, 0
  br i1 %cmp1712, label %if.then.1719, label %lor.lhs.false.1714

lor.lhs.false.1714:                               ; preds = %if.end.1711
  %1245 = load i32, i32* %lastside, align 4
  %1246 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1715 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1246, i64 0
  %xc1716 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1715, i32 0, i32 0
  %1247 = load i32, i32* %xc1716, align 4
  %cmp1717 = icmp sgt i32 %1245, %1247
  br i1 %cmp1717, label %if.then.1719, label %if.end.1725

if.then.1719:                                     ; preds = %lor.lhs.false.1714, %if.end.1711
  %1248 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call1720 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1248, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0))
  %1249 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %1250 = load i32, i32* %lastside, align 4
  %1251 = load %struct.bustbox*, %struct.bustbox** @B, align 8
  %arrayidx1721 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1251, i64 0
  %xc1722 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1721, i32 0, i32 0
  %1252 = load i32, i32* %xc1722, align 4
  %call1723 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i32 %1250, i32 %1252)
  %1253 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %1254 = load i32, i32* %cell, align 4
  %call1724 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1253, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 %1254)
  call void @exit(i32 0) #7
  unreachable

if.end.1725:                                      ; preds = %lor.lhs.false.1714
  %1255 = load i32, i32* %firstside, align 4
  %cmp1726 = icmp eq i32 %1255, 0
  br i1 %cmp1726, label %if.then.1728, label %if.else.1757

if.then.1728:                                     ; preds = %if.end.1725
  %1256 = load i32, i32* %first, align 4
  store i32 %1256, i32* %i, align 4
  br label %for.cond.1729

for.cond.1729:                                    ; preds = %for.inc.1742, %if.then.1728
  %1257 = load i32, i32* %i, align 4
  %1258 = load i32, i32* %unComTerms, align 4
  %cmp1730 = icmp sle i32 %1257, %1258
  br i1 %cmp1730, label %for.body.1732, label %for.end.1744

for.body.1732:                                    ; preds = %for.cond.1729
  %1259 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsides1733 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1259, i32 0, i32 7
  %1260 = load i32, i32* %numsides1733, align 4
  %1261 = load i32, i32* %i, align 4
  %idxprom1734 = sext i32 %1261 to i64
  %1262 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1735 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1262, i32 0, i32 20
  %1263 = load %struct.uncombox*, %struct.uncombox** %unComTerms1735, align 8
  %arrayidx1736 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1263, i64 %idxprom1734
  %numranges1737 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1736, i32 0, i32 4
  store i32 %1260, i32* %numranges1737, align 4
  %1264 = load i32, i32* %i, align 4
  %idxprom1738 = sext i32 %1264 to i64
  %1265 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1739 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1265, i32 0, i32 20
  %1266 = load %struct.uncombox*, %struct.uncombox** %unComTerms1739, align 8
  %arrayidx1740 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1266, i64 %idxprom1738
  %range11741 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1740, i32 0, i32 5
  store i32 0, i32* %range11741, align 4
  br label %for.inc.1742

for.inc.1742:                                     ; preds = %for.body.1732
  %1267 = load i32, i32* %i, align 4
  %inc1743 = add nsw i32 %1267, 1
  store i32 %inc1743, i32* %i, align 4
  br label %for.cond.1729

for.end.1744:                                     ; preds = %for.cond.1729
  store i32 1, i32* %i, align 4
  br label %for.cond.1745

for.cond.1745:                                    ; preds = %for.inc.1754, %for.end.1744
  %1268 = load i32, i32* %i, align 4
  %1269 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsides1746 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1269, i32 0, i32 7
  %1270 = load i32, i32* %numsides1746, align 4
  %cmp1747 = icmp sle i32 %1268, %1270
  br i1 %cmp1747, label %for.body.1749, label %for.end.1756

for.body.1749:                                    ; preds = %for.cond.1745
  %1271 = load i32, i32* %i, align 4
  %1272 = load i32, i32* %sequence, align 4
  %conv1750 = sitofp i32 %1272 to double
  %1273 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsides1751 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1273, i32 0, i32 7
  %1274 = load i32, i32* %numsides1751, align 4
  %conv1752 = sitofp i32 %1274 to double
  %div1753 = fdiv double %conv1750, %conv1752
  call void @loadside(i32 %1271, double %div1753)
  br label %for.inc.1754

for.inc.1754:                                     ; preds = %for.body.1749
  %1275 = load i32, i32* %i, align 4
  %inc1755 = add nsw i32 %1275, 1
  store i32 %inc1755, i32* %i, align 4
  br label %for.cond.1745

for.end.1756:                                     ; preds = %for.cond.1745
  br label %if.end.1801

if.else.1757:                                     ; preds = %if.end.1725
  %1276 = load i32, i32* %lastside, align 4
  %cmp1758 = icmp eq i32 %1276, 0
  br i1 %cmp1758, label %if.then.1760, label %if.else.1777

if.then.1760:                                     ; preds = %if.else.1757
  %1277 = load i32, i32* %first, align 4
  store i32 %1277, i32* %i, align 4
  br label %for.cond.1761

for.cond.1761:                                    ; preds = %for.inc.1773, %if.then.1760
  %1278 = load i32, i32* %i, align 4
  %1279 = load i32, i32* %unComTerms, align 4
  %cmp1762 = icmp sle i32 %1278, %1279
  br i1 %cmp1762, label %for.body.1764, label %for.end.1775

for.body.1764:                                    ; preds = %for.cond.1761
  %1280 = load i32, i32* %i, align 4
  %idxprom1765 = sext i32 %1280 to i64
  %1281 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1766 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1281, i32 0, i32 20
  %1282 = load %struct.uncombox*, %struct.uncombox** %unComTerms1766, align 8
  %arrayidx1767 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1282, i64 %idxprom1765
  %numranges1768 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1767, i32 0, i32 4
  store i32 1, i32* %numranges1768, align 4
  %1283 = load i32, i32* %firstside, align 4
  %1284 = load i32, i32* %i, align 4
  %idxprom1769 = sext i32 %1284 to i64
  %1285 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1770 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1285, i32 0, i32 20
  %1286 = load %struct.uncombox*, %struct.uncombox** %unComTerms1770, align 8
  %arrayidx1771 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1286, i64 %idxprom1769
  %range11772 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1771, i32 0, i32 5
  store i32 %1283, i32* %range11772, align 4
  br label %for.inc.1773

for.inc.1773:                                     ; preds = %for.body.1764
  %1287 = load i32, i32* %i, align 4
  %inc1774 = add nsw i32 %1287, 1
  store i32 %inc1774, i32* %i, align 4
  br label %for.cond.1761

for.end.1775:                                     ; preds = %for.cond.1761
  %1288 = load i32, i32* %firstside, align 4
  %1289 = load i32, i32* %sequence, align 4
  %conv1776 = sitofp i32 %1289 to double
  call void @loadside(i32 %1288, double %conv1776)
  br label %if.end.1800

if.else.1777:                                     ; preds = %if.else.1757
  %1290 = load i32, i32* %first, align 4
  store i32 %1290, i32* %i, align 4
  br label %for.cond.1778

for.cond.1778:                                    ; preds = %for.inc.1793, %if.else.1777
  %1291 = load i32, i32* %i, align 4
  %1292 = load i32, i32* %unComTerms, align 4
  %cmp1779 = icmp sle i32 %1291, %1292
  br i1 %cmp1779, label %for.body.1781, label %for.end.1795

for.body.1781:                                    ; preds = %for.cond.1778
  %1293 = load i32, i32* %i, align 4
  %idxprom1782 = sext i32 %1293 to i64
  %1294 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1783 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1294, i32 0, i32 20
  %1295 = load %struct.uncombox*, %struct.uncombox** %unComTerms1783, align 8
  %arrayidx1784 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1295, i64 %idxprom1782
  %numranges1785 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1784, i32 0, i32 4
  store i32 2, i32* %numranges1785, align 4
  %1296 = load i32, i32* %firstside, align 4
  %1297 = load i32, i32* %i, align 4
  %idxprom1786 = sext i32 %1297 to i64
  %1298 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1787 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1298, i32 0, i32 20
  %1299 = load %struct.uncombox*, %struct.uncombox** %unComTerms1787, align 8
  %arrayidx1788 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1299, i64 %idxprom1786
  %range11789 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1788, i32 0, i32 5
  store i32 %1296, i32* %range11789, align 4
  %1300 = load i32, i32* %lastside, align 4
  %1301 = load i32, i32* %i, align 4
  %idxprom1790 = sext i32 %1301 to i64
  %1302 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms1791 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1302, i32 0, i32 20
  %1303 = load %struct.uncombox*, %struct.uncombox** %unComTerms1791, align 8
  %arrayidx1792 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1303, i64 %idxprom1790
  %range2 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx1792, i32 0, i32 6
  store i32 %1300, i32* %range2, align 4
  br label %for.inc.1793

for.inc.1793:                                     ; preds = %for.body.1781
  %1304 = load i32, i32* %i, align 4
  %inc1794 = add nsw i32 %1304, 1
  store i32 %inc1794, i32* %i, align 4
  br label %for.cond.1778

for.end.1795:                                     ; preds = %for.cond.1778
  %1305 = load i32, i32* %firstside, align 4
  %1306 = load i32, i32* %sequence, align 4
  %conv1796 = sitofp i32 %1306 to double
  %div1797 = fdiv double %conv1796, 2.000000e+00
  call void @loadside(i32 %1305, double %div1797)
  %1307 = load i32, i32* %lastside, align 4
  %1308 = load i32, i32* %sequence, align 4
  %conv1798 = sitofp i32 %1308 to double
  %div1799 = fdiv double %conv1798, 2.000000e+00
  call void @loadside(i32 %1307, double %div1799)
  br label %if.end.1800

if.end.1800:                                      ; preds = %for.end.1795, %for.end.1775
  br label %if.end.1801

if.end.1801:                                      ; preds = %if.end.1800, %for.end.1756
  br label %if.end.1802

if.end.1802:                                      ; preds = %if.end.1801, %lor.lhs.false
  br label %if.end.1803

if.end.1803:                                      ; preds = %if.end.1802, %for.end.1586
  br label %if.end.1804

if.end.1804:                                      ; preds = %if.end.1803, %if.then.1553
  br label %if.end.1805

if.end.1805:                                      ; preds = %if.end.1804, %if.end.1532
  br label %if.end.1806

if.end.1806:                                      ; preds = %if.end.1805, %if.end.1516
  br label %if.end.1807

if.end.1807:                                      ; preds = %if.end.1806, %if.end.1126
  br label %if.end.1808

if.end.1808:                                      ; preds = %if.end.1807, %if.end.578
  br label %if.end.1809

if.end.1809:                                      ; preds = %if.end.1808, %for.end.541
  br label %if.end.1810

if.end.1810:                                      ; preds = %if.end.1809, %do.end.481
  br label %if.end.1811

if.end.1811:                                      ; preds = %if.end.1810, %for.end.314
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1309 = load i32, i32* @totPins, align 4
  %conv1812 = sitofp i32 %1309 to double
  %1310 = load i32, i32* @perim, align 4
  %conv1813 = sitofp i32 %1310 to double
  %div1814 = fdiv double %conv1812, %conv1813
  store double %div1814, double* @pinsPerLen, align 8
  call void @setpwates()
  call void @placepin()
  call void @genorient()
  ret void
}

declare void @parser(%struct._IO_FILE*) #1

declare void @pass2(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @watesides(%struct.cellbox*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @perimeter() #1

declare void @buster() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @Hside(i32, i32, i32, i32, i32) #1

declare i32 @Vside(i32, i32, i32, i32, i32) #1

declare i32 @hashfind(i8*) #1

declare i32 @findside(%struct.cellbox*, i32, i32) #1

declare void @loadside(i32, double) #1

declare void @setpwates() #1

declare void @placepin() #1

declare void @genorient() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
