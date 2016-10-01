; ModuleID = './MultiSource.Benchmarks.Prolangs-C/219.TimberWolfMC.pass2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bustbox = type { i32, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }

@C = common global %struct.bustbox* null, align 8
@netctr = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cellarray = external global %struct.cellbox**, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"a zero length side was found for\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"the current cell:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"a non rectilinear side was found \0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"for the current cell:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"equiv pin cannot reside on soft cell\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"problematic cell: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"a non rectilinear side found \0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@termarray = external global %struct.termnets**, align 8
@maxterm = external global i32, align 4
@pinnames = external global i8**, align 8
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@totPins = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @pass2(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %cell = alloca i32, align 4
  %class = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %k = alloca i32, align 4
  %xx1 = alloca i32, align 4
  %xx2 = alloca i32, align 4
  %yy1 = alloca i32, align 4
  %yy2 = alloca i32, align 4
  %sequence = alloca i32, align 4
  %firstside = alloca i32, align 4
  %lastside = alloca i32, align 4
  %soft = alloca i32, align 4
  %cellnum = alloca i32, align 4
  %pinctr = alloca i32, align 4
  %term = alloca i32, align 4
  %corner = alloca i32, align 4
  %ncorners = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %ecount = alloca i32, align 4
  %orient = alloca i32, align 4
  %norients = alloca i32, align 4
  %aspub = alloca double, align 8
  %asplb = alloca double, align 8
  %space = alloca double, align 8
  %input = alloca [1024 x i8], align 16
  %ptr = alloca %struct.cellbox*, align 8
  %nptr = alloca %struct.dimbox*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %call = call noalias i8* @malloc(i64 808) #5
  %0 = bitcast i8* %call to %struct.bustbox*
  store %struct.bustbox* %0, %struct.bustbox** @C, align 8
  store i32 0, i32* %cell, align 4
  store i32 0, i32* %ecount, align 4
  store i32 0, i32* @netctr, align 4
  store i32 0, i32* %pinctr, align 4
  call void @maketabl()
  br label %while.cond

while.cond:                                       ; preds = %if.end.441, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.else.92

if.then:                                          ; preds = %while.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay6)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay8)
  %5 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %cell, align 4
  %idxprom = sext i32 %inc to i64
  %6 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %6, i64 %idxprom
  %7 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %7, %struct.cellbox** %ptr, align 8
  store i32 0, i32* %soft, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %k, align 4
  %cmp10 = icmp sle i32 %8, 100
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %idxprom11
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx12, i32 0, i32 0
  store i32 0, i32* %xc, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %idxprom13
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx14, i32 0, i32 1
  store i32 0, i32* %yc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay17)
  store i32 1, i32* %corner, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.34, %for.end
  %16 = load i32, i32* %corner, align 4
  %17 = load i32, i32* %ncorners, align 4
  %cmp20 = icmp sle i32 %16, %17
  br i1 %cmp20, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.19
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %19 = load i32, i32* %x, align 4
  %20 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i64 0
  %xc24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx23, i32 0, i32 0
  %21 = load i32, i32* %xc24, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %xc24, align 4
  %idxprom26 = sext i32 %inc25 to i64
  %22 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %idxprom26
  %xc28 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx27, i32 0, i32 0
  store i32 %19, i32* %xc28, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx29 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i64 0
  %xc30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx29, i32 0, i32 0
  %25 = load i32, i32* %xc30, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx32 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 %idxprom31
  %yc33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx32, i32 0, i32 1
  store i32 %23, i32* %yc33, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.21
  %27 = load i32, i32* %corner, align 4
  %inc35 = add nsw i32 %27, 1
  store i32 %inc35, i32* %corner, align 4
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  store i32 1, i32* %k, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.76, %for.end.36
  %28 = load i32, i32* %k, align 4
  %29 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 0
  %xc39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx38, i32 0, i32 0
  %30 = load i32, i32* %xc39, align 4
  %cmp40 = icmp sle i32 %28, %30
  br i1 %cmp40, label %for.body.41, label %for.end.78

for.body.41:                                      ; preds = %for.cond.37
  %31 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %31 to i64
  %32 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %32, i64 %idxprom42
  %xc44 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx43, i32 0, i32 0
  %33 = load i32, i32* %xc44, align 4
  store i32 %33, i32* %xx1, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %34 to i64
  %35 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 %idxprom45
  %yc47 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx46, i32 0, i32 1
  %36 = load i32, i32* %yc47, align 4
  store i32 %36, i32* %yy1, align 4
  %37 = load i32, i32* %k, align 4
  %38 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx48 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i64 0
  %xc49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx48, i32 0, i32 0
  %39 = load i32, i32* %xc49, align 4
  %cmp50 = icmp eq i32 %37, %39
  br i1 %cmp50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %for.body.41
  %40 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx52 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %40, i64 1
  %xc53 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx52, i32 0, i32 0
  %41 = load i32, i32* %xc53, align 4
  store i32 %41, i32* %xx2, align 4
  %42 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx54 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %42, i64 1
  %yc55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx54, i32 0, i32 1
  %43 = load i32, i32* %yc55, align 4
  store i32 %43, i32* %yy2, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.41
  %44 = load i32, i32* %k, align 4
  %add = add nsw i32 %44, 1
  %idxprom56 = sext i32 %add to i64
  %45 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx57 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %45, i64 %idxprom56
  %xc58 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx57, i32 0, i32 0
  %46 = load i32, i32* %xc58, align 4
  store i32 %46, i32* %xx2, align 4
  %47 = load i32, i32* %k, align 4
  %add59 = add nsw i32 %47, 1
  %idxprom60 = sext i32 %add59 to i64
  %48 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %48, i64 %idxprom60
  %yc62 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx61, i32 0, i32 1
  %49 = load i32, i32* %yc62, align 4
  store i32 %49, i32* %yy2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.51
  %50 = load i32, i32* %xx1, align 4
  %51 = load i32, i32* %xx2, align 4
  %cmp63 = icmp eq i32 %50, %51
  br i1 %cmp63, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end
  %52 = load i32, i32* %yy1, align 4
  %53 = load i32, i32* %yy2, align 4
  %cmp64 = icmp eq i32 %52, %53
  br i1 %cmp64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %land.lhs.true
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %56 = load i32, i32* %cell, align 4
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %56)
  call void @exit(i32 0) #7
  unreachable

if.end.68:                                        ; preds = %land.lhs.true, %if.end
  %57 = load i32, i32* %xx1, align 4
  %58 = load i32, i32* %xx2, align 4
  %cmp69 = icmp ne i32 %57, %58
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.75

land.lhs.true.70:                                 ; preds = %if.end.68
  %59 = load i32, i32* %yy1, align 4
  %60 = load i32, i32* %yy2, align 4
  %cmp71 = icmp ne i32 %59, %60
  br i1 %cmp71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %land.lhs.true.70
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %63 = load i32, i32* %cell, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %63)
  call void @exit(i32 0) #7
  unreachable

if.end.75:                                        ; preds = %land.lhs.true.70, %if.end.68
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %64 = load i32, i32* %k, align 4
  %inc77 = add nsw i32 %64, 1
  store i32 %inc77, i32* %k, align 4
  br label %for.cond.37

for.end.78:                                       ; preds = %for.cond.37
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay79)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay83)
  store i32 1, i32* %orient, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.89, %for.end.78
  %69 = load i32, i32* %orient, align 4
  %70 = load i32, i32* %norients, align 4
  %cmp86 = icmp sle i32 %69, %70
  br i1 %cmp86, label %for.body.87, label %for.end.91

for.body.87:                                      ; preds = %for.cond.85
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.87
  %72 = load i32, i32* %orient, align 4
  %inc90 = add nsw i32 %72, 1
  store i32 %inc90, i32* %orient, align 4
  br label %for.cond.85

for.end.91:                                       ; preds = %for.cond.85
  br label %if.end.441

if.else.92:                                       ; preds = %while.body
  %arraydecay93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call94 = call i32 @strcmp(i8* %arraydecay93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #6
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.160

if.then.96:                                       ; preds = %if.else.92
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay97)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay99)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay101)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay103)
  %77 = load i32, i32* %pinctr, align 4
  %inc105 = add nsw i32 %77, 1
  store i32 %inc105, i32* %pinctr, align 4
  %arraydecay106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call107 = call i32 @addhash(i8* %arraydecay106)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  %79 = load i32, i32* %soft, align 4
  %cmp109 = icmp eq i32 %79, 1
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.159

land.lhs.true.110:                                ; preds = %if.then.96
  %80 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %80, i32 0, i32 18
  %81 = load i32, i32* %numUnComTerms, align 4
  %cmp111 = icmp ne i32 %81, 0
  br i1 %cmp111, label %if.then.112, label %if.end.159

if.then.112:                                      ; preds = %land.lhs.true.110
  store i32 1, i32* %k, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.156, %if.then.112
  %82 = load i32, i32* %k, align 4
  %83 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx114 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i64 0
  %xc115 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx114, i32 0, i32 0
  %84 = load i32, i32* %xc115, align 4
  %cmp116 = icmp sle i32 %82, %84
  br i1 %cmp116, label %for.body.117, label %for.end.158

for.body.117:                                     ; preds = %for.cond.113
  %85 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %85 to i64
  %86 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx119 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %86, i64 %idxprom118
  %xc120 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx119, i32 0, i32 0
  %87 = load i32, i32* %xc120, align 4
  store i32 %87, i32* %xx1, align 4
  %88 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %88 to i64
  %89 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx122 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %89, i64 %idxprom121
  %yc123 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx122, i32 0, i32 1
  %90 = load i32, i32* %yc123, align 4
  store i32 %90, i32* %yy1, align 4
  %91 = load i32, i32* %k, align 4
  %92 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx124 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %92, i64 0
  %xc125 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx124, i32 0, i32 0
  %93 = load i32, i32* %xc125, align 4
  %cmp126 = icmp eq i32 %91, %93
  br i1 %cmp126, label %if.then.127, label %if.else.132

if.then.127:                                      ; preds = %for.body.117
  %94 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx128 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %94, i64 1
  %xc129 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx128, i32 0, i32 0
  %95 = load i32, i32* %xc129, align 4
  store i32 %95, i32* %xx2, align 4
  %96 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx130 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %96, i64 1
  %yc131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx130, i32 0, i32 1
  %97 = load i32, i32* %yc131, align 4
  store i32 %97, i32* %yy2, align 4
  br label %if.end.141

if.else.132:                                      ; preds = %for.body.117
  %98 = load i32, i32* %k, align 4
  %add133 = add nsw i32 %98, 1
  %idxprom134 = sext i32 %add133 to i64
  %99 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx135 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %99, i64 %idxprom134
  %xc136 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx135, i32 0, i32 0
  %100 = load i32, i32* %xc136, align 4
  store i32 %100, i32* %xx2, align 4
  %101 = load i32, i32* %k, align 4
  %add137 = add nsw i32 %101, 1
  %idxprom138 = sext i32 %add137 to i64
  %102 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx139 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %102, i64 %idxprom138
  %yc140 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx139, i32 0, i32 1
  %103 = load i32, i32* %yc140, align 4
  store i32 %103, i32* %yy2, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.132, %if.then.127
  %104 = load i32, i32* %xx1, align 4
  %105 = load i32, i32* %xx2, align 4
  %cmp142 = icmp eq i32 %104, %105
  br i1 %cmp142, label %if.then.143, label %if.else.149

if.then.143:                                      ; preds = %if.end.141
  %106 = load i32, i32* %xpos, align 4
  %107 = load i32, i32* %xx1, align 4
  %cmp144 = icmp eq i32 %106, %107
  br i1 %cmp144, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %if.then.143
  %108 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms146 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i32 0, i32 18
  %109 = load i32, i32* %numUnComTerms146, align 4
  %inc147 = add nsw i32 %109, 1
  store i32 %inc147, i32* %numUnComTerms146, align 4
  br label %for.end.158

if.end.148:                                       ; preds = %if.then.143
  br label %if.end.155

if.else.149:                                      ; preds = %if.end.141
  %110 = load i32, i32* %ypos, align 4
  %111 = load i32, i32* %yy1, align 4
  %cmp150 = icmp eq i32 %110, %111
  br i1 %cmp150, label %if.then.151, label %if.end.154

if.then.151:                                      ; preds = %if.else.149
  %112 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms152 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i32 0, i32 18
  %113 = load i32, i32* %numUnComTerms152, align 4
  %inc153 = add nsw i32 %113, 1
  store i32 %inc153, i32* %numUnComTerms152, align 4
  br label %for.end.158

if.end.154:                                       ; preds = %if.else.149
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.148
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %114 = load i32, i32* %k, align 4
  %inc157 = add nsw i32 %114, 1
  store i32 %inc157, i32* %k, align 4
  br label %for.cond.113

for.end.158:                                      ; preds = %if.then.151, %if.then.145, %for.cond.113
  br label %if.end.159

if.end.159:                                       ; preds = %for.end.158, %land.lhs.true.110, %if.then.96
  br label %if.end.440

if.else.160:                                      ; preds = %if.else.92
  %arraydecay161 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call162 = call i32 @strcmp(i8* %arraydecay161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #6
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then.164, label %if.else.176

if.then.164:                                      ; preds = %if.else.160
  %115 = load i32, i32* %soft, align 4
  %cmp165 = icmp eq i32 %115, 1
  br i1 %cmp165, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %if.then.164
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %118 = load i32, i32* %cell, align 4
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %118)
  call void @exit(i32 0) #7
  unreachable

if.end.169:                                       ; preds = %if.then.164
  %119 = load i32, i32* %ecount, align 4
  %inc170 = add nsw i32 %119, 1
  store i32 %inc170, i32* %ecount, align 4
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay171)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay173)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  br label %if.end.439

if.else.176:                                      ; preds = %if.else.160
  %arraydecay177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call178 = call i32 @strcmp(i8* %arraydecay177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #6
  %cmp179 = icmp eq i32 %call178, 0
  br i1 %cmp179, label %if.then.180, label %if.else.287

if.then.180:                                      ; preds = %if.else.176
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay182)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay184)
  %126 = load i32, i32* %cell, align 4
  %inc186 = add nsw i32 %126, 1
  store i32 %inc186, i32* %cell, align 4
  %idxprom187 = sext i32 %inc186 to i64
  %127 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx188 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %127, i64 %idxprom187
  %128 = load %struct.cellbox*, %struct.cellbox** %arrayidx188, align 8
  store %struct.cellbox* %128, %struct.cellbox** %ptr, align 8
  store i32 1, i32* %soft, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.198, %if.then.180
  %129 = load i32, i32* %k, align 4
  %cmp190 = icmp sle i32 %129, 100
  br i1 %cmp190, label %for.body.191, label %for.end.200

for.body.191:                                     ; preds = %for.cond.189
  %130 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %130 to i64
  %131 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx193 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %131, i64 %idxprom192
  %xc194 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx193, i32 0, i32 0
  store i32 0, i32* %xc194, align 4
  %132 = load i32, i32* %k, align 4
  %idxprom195 = sext i32 %132 to i64
  %133 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx196 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %133, i64 %idxprom195
  %yc197 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx196, i32 0, i32 1
  store i32 0, i32* %yc197, align 4
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.191
  %134 = load i32, i32* %k, align 4
  %inc199 = add nsw i32 %134, 1
  store i32 %inc199, i32* %k, align 4
  br label %for.cond.189

for.end.200:                                      ; preds = %for.cond.189
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay202 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay202)
  store i32 1, i32* %corner, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.219, %for.end.200
  %137 = load i32, i32* %corner, align 4
  %138 = load i32, i32* %ncorners, align 4
  %cmp205 = icmp sle i32 %137, %138
  br i1 %cmp205, label %for.body.206, label %for.end.221

for.body.206:                                     ; preds = %for.cond.204
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %140 = load i32, i32* %x, align 4
  %141 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx208 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %141, i64 0
  %xc209 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx208, i32 0, i32 0
  %142 = load i32, i32* %xc209, align 4
  %inc210 = add nsw i32 %142, 1
  store i32 %inc210, i32* %xc209, align 4
  %idxprom211 = sext i32 %inc210 to i64
  %143 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx212 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %143, i64 %idxprom211
  %xc213 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx212, i32 0, i32 0
  store i32 %140, i32* %xc213, align 4
  %144 = load i32, i32* %y, align 4
  %145 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx214 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %145, i64 0
  %xc215 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx214, i32 0, i32 0
  %146 = load i32, i32* %xc215, align 4
  %idxprom216 = sext i32 %146 to i64
  %147 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx217 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %147, i64 %idxprom216
  %yc218 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx217, i32 0, i32 1
  store i32 %144, i32* %yc218, align 4
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.body.206
  %148 = load i32, i32* %corner, align 4
  %inc220 = add nsw i32 %148, 1
  store i32 %inc220, i32* %corner, align 4
  br label %for.cond.204

for.end.221:                                      ; preds = %for.cond.204
  store i32 1, i32* %k, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.265, %for.end.221
  %149 = load i32, i32* %k, align 4
  %150 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx223 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %150, i64 0
  %xc224 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx223, i32 0, i32 0
  %151 = load i32, i32* %xc224, align 4
  %cmp225 = icmp sle i32 %149, %151
  br i1 %cmp225, label %for.body.226, label %for.end.267

for.body.226:                                     ; preds = %for.cond.222
  %152 = load i32, i32* %k, align 4
  %idxprom227 = sext i32 %152 to i64
  %153 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx228 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %153, i64 %idxprom227
  %xc229 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx228, i32 0, i32 0
  %154 = load i32, i32* %xc229, align 4
  store i32 %154, i32* %xx1, align 4
  %155 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %155 to i64
  %156 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx231 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %156, i64 %idxprom230
  %yc232 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx231, i32 0, i32 1
  %157 = load i32, i32* %yc232, align 4
  store i32 %157, i32* %yy1, align 4
  %158 = load i32, i32* %k, align 4
  %159 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx233 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %159, i64 0
  %xc234 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx233, i32 0, i32 0
  %160 = load i32, i32* %xc234, align 4
  %cmp235 = icmp eq i32 %158, %160
  br i1 %cmp235, label %if.then.236, label %if.else.241

if.then.236:                                      ; preds = %for.body.226
  %161 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx237 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %161, i64 1
  %xc238 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx237, i32 0, i32 0
  %162 = load i32, i32* %xc238, align 4
  store i32 %162, i32* %xx2, align 4
  %163 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx239 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %163, i64 1
  %yc240 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx239, i32 0, i32 1
  %164 = load i32, i32* %yc240, align 4
  store i32 %164, i32* %yy2, align 4
  br label %if.end.250

if.else.241:                                      ; preds = %for.body.226
  %165 = load i32, i32* %k, align 4
  %add242 = add nsw i32 %165, 1
  %idxprom243 = sext i32 %add242 to i64
  %166 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx244 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %166, i64 %idxprom243
  %xc245 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx244, i32 0, i32 0
  %167 = load i32, i32* %xc245, align 4
  store i32 %167, i32* %xx2, align 4
  %168 = load i32, i32* %k, align 4
  %add246 = add nsw i32 %168, 1
  %idxprom247 = sext i32 %add246 to i64
  %169 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx248 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %169, i64 %idxprom247
  %yc249 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx248, i32 0, i32 1
  %170 = load i32, i32* %yc249, align 4
  store i32 %170, i32* %yy2, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.241, %if.then.236
  %171 = load i32, i32* %xx1, align 4
  %172 = load i32, i32* %xx2, align 4
  %cmp251 = icmp eq i32 %171, %172
  br i1 %cmp251, label %land.lhs.true.252, label %if.end.257

land.lhs.true.252:                                ; preds = %if.end.250
  %173 = load i32, i32* %yy1, align 4
  %174 = load i32, i32* %yy2, align 4
  %cmp253 = icmp eq i32 %173, %174
  br i1 %cmp253, label %if.then.254, label %if.end.257

if.then.254:                                      ; preds = %land.lhs.true.252
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %177 = load i32, i32* %cell, align 4
  %call256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %177)
  call void @exit(i32 0) #7
  unreachable

if.end.257:                                       ; preds = %land.lhs.true.252, %if.end.250
  %178 = load i32, i32* %xx1, align 4
  %179 = load i32, i32* %xx2, align 4
  %cmp258 = icmp ne i32 %178, %179
  br i1 %cmp258, label %land.lhs.true.259, label %if.end.264

land.lhs.true.259:                                ; preds = %if.end.257
  %180 = load i32, i32* %yy1, align 4
  %181 = load i32, i32* %yy2, align 4
  %cmp260 = icmp ne i32 %180, %181
  br i1 %cmp260, label %if.then.261, label %if.end.264

if.then.261:                                      ; preds = %land.lhs.true.259
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0))
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %184 = load i32, i32* %cell, align 4
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %184)
  call void @exit(i32 0) #7
  unreachable

if.end.264:                                       ; preds = %land.lhs.true.259, %if.end.257
  br label %for.inc.265

for.inc.265:                                      ; preds = %if.end.264
  %185 = load i32, i32* %k, align 4
  %inc266 = add nsw i32 %185, 1
  store i32 %inc266, i32* %k, align 4
  br label %for.cond.222

for.end.267:                                      ; preds = %for.cond.222
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay268 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call269 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay268)
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), double* %asplb)
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay271 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay271)
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call273 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), double* %aspub)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay274 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay274)
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call277 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay278 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay278)
  store i32 1, i32* %orient, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.284, %for.end.267
  %194 = load i32, i32* %orient, align 4
  %195 = load i32, i32* %norients, align 4
  %cmp281 = icmp sle i32 %194, %195
  br i1 %cmp281, label %for.body.282, label %for.end.286

for.body.282:                                     ; preds = %for.cond.280
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.282
  %197 = load i32, i32* %orient, align 4
  %inc285 = add nsw i32 %197, 1
  store i32 %inc285, i32* %orient, align 4
  br label %for.cond.280

for.end.286:                                      ; preds = %for.cond.280
  br label %if.end.438

if.else.287:                                      ; preds = %if.else.176
  %arraydecay288 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call289 = call i32 @strcmp(i8* %arraydecay288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #6
  %cmp290 = icmp eq i32 %call289, 0
  br i1 %cmp290, label %if.then.294, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.287
  %arraydecay291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call292 = call i32 @strcmp(i8* %arraydecay291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  %cmp293 = icmp eq i32 %call292, 0
  br i1 %cmp293, label %if.then.294, label %if.else.320

if.then.294:                                      ; preds = %lor.lhs.false, %if.else.287
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %sequence)
  %199 = load i32, i32* %sequence, align 4
  %200 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms296 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %200, i32 0, i32 18
  %201 = load i32, i32* %numUnComTerms296, align 4
  %add297 = add nsw i32 %201, %199
  store i32 %add297, i32* %numUnComTerms296, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.314, %if.then.294
  %202 = load i32, i32* %i, align 4
  %203 = load i32, i32* %sequence, align 4
  %cmp299 = icmp sle i32 %202, %203
  br i1 %cmp299, label %for.body.300, label %for.end.316

for.body.300:                                     ; preds = %for.cond.298
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call302 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay301)
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay303 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call304 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay303)
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay305 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay305)
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay307 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay307)
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay309 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call310 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay309)
  %209 = load i32, i32* %pinctr, align 4
  %inc311 = add nsw i32 %209, 1
  store i32 %inc311, i32* %pinctr, align 4
  %arraydecay312 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call313 = call i32 @addhash(i8* %arraydecay312)
  br label %for.inc.314

for.inc.314:                                      ; preds = %for.body.300
  %210 = load i32, i32* %i, align 4
  %inc315 = add nsw i32 %210, 1
  store i32 %inc315, i32* %i, align 4
  br label %for.cond.298

for.end.316:                                      ; preds = %for.cond.298
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay317 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay317)
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %firstside, i32* %lastside)
  br label %if.end.437

if.else.320:                                      ; preds = %lor.lhs.false
  %arraydecay321 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call322 = call i32 @strcmp(i8* %arraydecay321, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #6
  %cmp323 = icmp eq i32 %call322, 0
  br i1 %cmp323, label %if.then.324, label %if.else.429

if.then.324:                                      ; preds = %if.else.320
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call325 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay326 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay326)
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay328 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call329 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay328)
  %216 = load i32, i32* %cell, align 4
  %inc330 = add nsw i32 %216, 1
  store i32 %inc330, i32* %cell, align 4
  %idxprom331 = sext i32 %inc330 to i64
  %217 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx332 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %217, i64 %idxprom331
  %218 = load %struct.cellbox*, %struct.cellbox** %arrayidx332, align 8
  store %struct.cellbox* %218, %struct.cellbox** %ptr, align 8
  store i32 0, i32* %soft, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.342, %if.then.324
  %219 = load i32, i32* %k, align 4
  %cmp334 = icmp sle i32 %219, 100
  br i1 %cmp334, label %for.body.335, label %for.end.344

for.body.335:                                     ; preds = %for.cond.333
  %220 = load i32, i32* %k, align 4
  %idxprom336 = sext i32 %220 to i64
  %221 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx337 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %221, i64 %idxprom336
  %xc338 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx337, i32 0, i32 0
  store i32 0, i32* %xc338, align 4
  %222 = load i32, i32* %k, align 4
  %idxprom339 = sext i32 %222 to i64
  %223 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx340 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %223, i64 %idxprom339
  %yc341 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx340, i32 0, i32 1
  store i32 0, i32* %yc341, align 4
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.body.335
  %224 = load i32, i32* %k, align 4
  %inc343 = add nsw i32 %224, 1
  store i32 %inc343, i32* %k, align 4
  br label %for.cond.333

for.end.344:                                      ; preds = %for.cond.333
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay346 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay346)
  store i32 1, i32* %corner, align 4
  br label %for.cond.348

for.cond.348:                                     ; preds = %for.inc.363, %for.end.344
  %227 = load i32, i32* %corner, align 4
  %228 = load i32, i32* %ncorners, align 4
  %cmp349 = icmp sle i32 %227, %228
  br i1 %cmp349, label %for.body.350, label %for.end.365

for.body.350:                                     ; preds = %for.cond.348
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %230 = load i32, i32* %x, align 4
  %231 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx352 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %231, i64 0
  %xc353 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx352, i32 0, i32 0
  %232 = load i32, i32* %xc353, align 4
  %inc354 = add nsw i32 %232, 1
  store i32 %inc354, i32* %xc353, align 4
  %idxprom355 = sext i32 %inc354 to i64
  %233 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx356 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %233, i64 %idxprom355
  %xc357 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx356, i32 0, i32 0
  store i32 %230, i32* %xc357, align 4
  %234 = load i32, i32* %y, align 4
  %235 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx358 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %235, i64 0
  %xc359 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx358, i32 0, i32 0
  %236 = load i32, i32* %xc359, align 4
  %idxprom360 = sext i32 %236 to i64
  %237 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx361 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %237, i64 %idxprom360
  %yc362 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx361, i32 0, i32 1
  store i32 %234, i32* %yc362, align 4
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.body.350
  %238 = load i32, i32* %corner, align 4
  %inc364 = add nsw i32 %238, 1
  store i32 %inc364, i32* %corner, align 4
  br label %for.cond.348

for.end.365:                                      ; preds = %for.cond.348
  store i32 1, i32* %k, align 4
  br label %for.cond.366

for.cond.366:                                     ; preds = %for.inc.409, %for.end.365
  %239 = load i32, i32* %k, align 4
  %240 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx367 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %240, i64 0
  %xc368 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx367, i32 0, i32 0
  %241 = load i32, i32* %xc368, align 4
  %cmp369 = icmp sle i32 %239, %241
  br i1 %cmp369, label %for.body.370, label %for.end.411

for.body.370:                                     ; preds = %for.cond.366
  %242 = load i32, i32* %k, align 4
  %idxprom371 = sext i32 %242 to i64
  %243 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx372 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %243, i64 %idxprom371
  %xc373 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx372, i32 0, i32 0
  %244 = load i32, i32* %xc373, align 4
  store i32 %244, i32* %xx1, align 4
  %245 = load i32, i32* %k, align 4
  %idxprom374 = sext i32 %245 to i64
  %246 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx375 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %246, i64 %idxprom374
  %yc376 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx375, i32 0, i32 1
  %247 = load i32, i32* %yc376, align 4
  store i32 %247, i32* %yy1, align 4
  %248 = load i32, i32* %k, align 4
  %249 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx377 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %249, i64 0
  %xc378 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx377, i32 0, i32 0
  %250 = load i32, i32* %xc378, align 4
  %cmp379 = icmp eq i32 %248, %250
  br i1 %cmp379, label %if.then.380, label %if.else.385

if.then.380:                                      ; preds = %for.body.370
  %251 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx381 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %251, i64 1
  %xc382 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx381, i32 0, i32 0
  %252 = load i32, i32* %xc382, align 4
  store i32 %252, i32* %xx2, align 4
  %253 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx383 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %253, i64 1
  %yc384 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx383, i32 0, i32 1
  %254 = load i32, i32* %yc384, align 4
  store i32 %254, i32* %yy2, align 4
  br label %if.end.394

if.else.385:                                      ; preds = %for.body.370
  %255 = load i32, i32* %k, align 4
  %add386 = add nsw i32 %255, 1
  %idxprom387 = sext i32 %add386 to i64
  %256 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx388 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %256, i64 %idxprom387
  %xc389 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx388, i32 0, i32 0
  %257 = load i32, i32* %xc389, align 4
  store i32 %257, i32* %xx2, align 4
  %258 = load i32, i32* %k, align 4
  %add390 = add nsw i32 %258, 1
  %idxprom391 = sext i32 %add390 to i64
  %259 = load %struct.bustbox*, %struct.bustbox** @C, align 8
  %arrayidx392 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %259, i64 %idxprom391
  %yc393 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx392, i32 0, i32 1
  %260 = load i32, i32* %yc393, align 4
  store i32 %260, i32* %yy2, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.385, %if.then.380
  %261 = load i32, i32* %xx1, align 4
  %262 = load i32, i32* %xx2, align 4
  %cmp395 = icmp eq i32 %261, %262
  br i1 %cmp395, label %land.lhs.true.396, label %if.end.401

land.lhs.true.396:                                ; preds = %if.end.394
  %263 = load i32, i32* %yy1, align 4
  %264 = load i32, i32* %yy2, align 4
  %cmp397 = icmp eq i32 %263, %264
  br i1 %cmp397, label %if.then.398, label %if.end.401

if.then.398:                                      ; preds = %land.lhs.true.396
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call399 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %265, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %267 = load i32, i32* %cell, align 4
  %call400 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %266, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %267)
  call void @exit(i32 0) #7
  unreachable

if.end.401:                                       ; preds = %land.lhs.true.396, %if.end.394
  %268 = load i32, i32* %xx1, align 4
  %269 = load i32, i32* %xx2, align 4
  %cmp402 = icmp ne i32 %268, %269
  br i1 %cmp402, label %land.lhs.true.403, label %if.end.408

land.lhs.true.403:                                ; preds = %if.end.401
  %270 = load i32, i32* %yy1, align 4
  %271 = load i32, i32* %yy2, align 4
  %cmp404 = icmp ne i32 %270, %271
  br i1 %cmp404, label %if.then.405, label %if.end.408

if.then.405:                                      ; preds = %land.lhs.true.403
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call406 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %272, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0))
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %274 = load i32, i32* %cell, align 4
  %call407 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %274)
  call void @exit(i32 0) #7
  unreachable

if.end.408:                                       ; preds = %land.lhs.true.403, %if.end.401
  br label %for.inc.409

for.inc.409:                                      ; preds = %if.end.408
  %275 = load i32, i32* %k, align 4
  %inc410 = add nsw i32 %275, 1
  store i32 %inc410, i32* %k, align 4
  br label %for.cond.366

for.end.411:                                      ; preds = %for.cond.366
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay412 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call413 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay412)
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay414 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call415 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay414)
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay416 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call417 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay416)
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call418 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call419 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay420 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call421 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay420)
  store i32 1, i32* %orient, align 4
  br label %for.cond.422

for.cond.422:                                     ; preds = %for.inc.426, %for.end.411
  %282 = load i32, i32* %orient, align 4
  %283 = load i32, i32* %norients, align 4
  %cmp423 = icmp sle i32 %282, %283
  br i1 %cmp423, label %for.body.424, label %for.end.428

for.body.424:                                     ; preds = %for.cond.422
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call425 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.426

for.inc.426:                                      ; preds = %for.body.424
  %285 = load i32, i32* %orient, align 4
  %inc427 = add nsw i32 %285, 1
  store i32 %inc427, i32* %orient, align 4
  br label %for.cond.422

for.end.428:                                      ; preds = %for.cond.422
  br label %if.end.436

if.else.429:                                      ; preds = %if.else.320
  %arraydecay430 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call431 = call i32 @strcmp(i8* %arraydecay430, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #6
  %cmp432 = icmp eq i32 %call431, 0
  br i1 %cmp432, label %if.then.433, label %if.end.435

if.then.433:                                      ; preds = %if.else.429
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call434 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), double* %space)
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.433, %if.else.429
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %for.end.428
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %for.end.316
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437, %for.end.286
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438, %if.end.169
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.end.159
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %for.end.91
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %287)
  %288 = load i32, i32* %pinctr, align 4
  %add442 = add nsw i32 %288, 1
  %conv = sext i32 %add442 to i64
  %mul = mul i64 %conv, 8
  %call443 = call noalias i8* @malloc(i64 %mul) #5
  %289 = bitcast i8* %call443 to %struct.termnets**
  store %struct.termnets** %289, %struct.termnets*** @termarray, align 8
  store i32 1, i32* %term, align 4
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.450, %while.end
  %290 = load i32, i32* %term, align 4
  %291 = load i32, i32* %pinctr, align 4
  %cmp445 = icmp sle i32 %290, %291
  br i1 %cmp445, label %for.body.447, label %for.end.452

for.body.447:                                     ; preds = %for.cond.444
  %292 = load i32, i32* %term, align 4
  %idxprom448 = sext i32 %292 to i64
  %293 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx449 = getelementptr inbounds %struct.termnets*, %struct.termnets** %293, i64 %idxprom448
  store %struct.termnets* null, %struct.termnets** %arrayidx449, align 8
  br label %for.inc.450

for.inc.450:                                      ; preds = %for.body.447
  %294 = load i32, i32* %term, align 4
  %inc451 = add nsw i32 %294, 1
  store i32 %inc451, i32* %term, align 4
  br label %for.cond.444

for.end.452:                                      ; preds = %for.cond.444
  %295 = load i32, i32* %pinctr, align 4
  store i32 %295, i32* @maxterm, align 4
  %296 = load i32, i32* %pinctr, align 4
  %add453 = add nsw i32 %296, 1
  %conv454 = sext i32 %add453 to i64
  %mul455 = mul i64 %conv454, 8
  %call456 = call noalias i8* @malloc(i64 %mul455) #5
  %297 = bitcast i8* %call456 to i8**
  store i8** %297, i8*** @pinnames, align 8
  %298 = load i32, i32* @netctr, align 4
  store i32 %298, i32* @numnets, align 4
  %299 = load i32, i32* @netctr, align 4
  %add457 = add nsw i32 %299, 1
  %conv458 = sext i32 %add457 to i64
  %mul459 = mul i64 %conv458, 8
  %call460 = call noalias i8* @malloc(i64 %mul459) #5
  %300 = bitcast i8* %call460 to %struct.dimbox**
  store %struct.dimbox** %300, %struct.dimbox*** @netarray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.461

for.cond.461:                                     ; preds = %for.inc.468, %for.end.452
  %301 = load i32, i32* %i, align 4
  %302 = load i32, i32* @netctr, align 4
  %cmp462 = icmp sle i32 %301, %302
  br i1 %cmp462, label %for.body.464, label %for.end.470

for.body.464:                                     ; preds = %for.cond.461
  %call465 = call noalias i8* @malloc(i64 72) #5
  %303 = bitcast i8* %call465 to %struct.dimbox*
  %304 = load i32, i32* %i, align 4
  %idxprom466 = sext i32 %304 to i64
  %305 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx467 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %305, i64 %idxprom466
  store %struct.dimbox* %303, %struct.dimbox** %arrayidx467, align 8
  store %struct.dimbox* %303, %struct.dimbox** %nptr, align 8
  %306 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %netptr = getelementptr inbounds %struct.dimbox, %struct.dimbox* %306, i32 0, i32 0
  store %struct.netbox* null, %struct.netbox** %netptr, align 8
  %307 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %307, i32 0, i32 13
  store i8* null, i8** %nname, align 8
  %308 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %308, i32 0, i32 1
  store i32 0, i32* %skip, align 4
  %309 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %309, i32 0, i32 7
  store i32 0, i32* %flag, align 4
  %310 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %310, i32 0, i32 2
  store i32 0, i32* %xmin, align 4
  %311 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %311, i32 0, i32 3
  store i32 0, i32* %newxmin, align 4
  %312 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %312, i32 0, i32 4
  store i32 0, i32* %xmax, align 4
  %313 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %313, i32 0, i32 5
  store i32 0, i32* %newxmax, align 4
  %314 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %314, i32 0, i32 6
  store i32 0, i32* %ymin, align 4
  %315 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %315, i32 0, i32 8
  store i32 0, i32* %newymin, align 4
  %316 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %316, i32 0, i32 9
  store i32 0, i32* %ymax, align 4
  %317 = load %struct.dimbox*, %struct.dimbox** %nptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %317, i32 0, i32 10
  store i32 0, i32* %newymax, align 4
  br label %for.inc.468

for.inc.468:                                      ; preds = %for.body.464
  %318 = load i32, i32* %i, align 4
  %inc469 = add nsw i32 %318, 1
  store i32 %inc469, i32* %i, align 4
  br label %for.cond.461

for.end.470:                                      ; preds = %for.cond.461
  %319 = load i32, i32* %ecount, align 4
  %320 = load i32, i32* @maxterm, align 4
  %add471 = add nsw i32 %319, %320
  store i32 %add471, i32* @totPins, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @maketabl() #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @addhash(i8*) #2

declare void @rewind(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
