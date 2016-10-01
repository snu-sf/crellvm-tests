; ModuleID = './MultiSource.Benchmarks.Prolangs-C/165.TimberWolfMC.grdcell.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.bustbox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@ecount = common global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@cellarray = external global %struct.cellbox**, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@A = external global %struct.bustbox*, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"padside\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@netarray = external global %struct.dimbox**, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@maxterm = external global i32, align 4
@pinnames = external global i8**, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"asplb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"aspub\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"group\00", align 1

; Function Attrs: nounwind uwtable
define void @grdcell(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %cell = alloca i32, align 4
  %class = alloca i32, align 4
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %sequence = alloca i32, align 4
  %k = alloca i32, align 4
  %firstside = alloca i32, align 4
  %lastside = alloca i32, align 4
  %ncorners = alloca i32, align 4
  %corner = alloca i32, align 4
  %orient = alloca i32, align 4
  %norients = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %minx = alloca i32, align 4
  %miny = alloca i32, align 4
  %maxx = alloca i32, align 4
  %maxy = alloca i32, align 4
  %cellnum = alloca i32, align 4
  %pinctr = alloca i32, align 4
  %netx = alloca i32, align 4
  %aspub = alloca double, align 8
  %asplb = alloca double, align 8
  %space = alloca double, align 8
  %input = alloca [1024 x i8], align 16
  %ptr = alloca %struct.cellbox*, align 8
  %term = alloca %struct.termbox*, align 8
  %saveterm = alloca %struct.termbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %saveptr = alloca %struct.netbox*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @gpass2(%struct._IO_FILE* %0)
  store i32 0, i32* %pinctr, align 4
  store i32 0, i32* @ecount, align 4
  store i32 0, i32* %cell, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.378, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else.79

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %cell, align 4
  %idxprom = sext i32 %inc to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %ptr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay7)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %k, align 4
  %cmp9 = icmp sle i32 %8, 30
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %idxprom10
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx11, i32 0, i32 0
  store i32 0, i32* %xc, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %idxprom12
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx13, i32 0, i32 1
  store i32 0, i32* %yc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %k, align 4
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay16)
  store i32 1, i32* %corner, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.33, %for.end
  %16 = load i32, i32* %corner, align 4
  %17 = load i32, i32* %ncorners, align 4
  %cmp19 = icmp sle i32 %16, %17
  br i1 %cmp19, label %for.body.20, label %for.end.35

for.body.20:                                      ; preds = %for.cond.18
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %19 = load i32, i32* %x, align 4
  %20 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i64 0
  %xc23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx22, i32 0, i32 0
  %21 = load i32, i32* %xc23, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %xc23, align 4
  %idxprom25 = sext i32 %inc24 to i64
  %22 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %idxprom25
  %xc27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx26, i32 0, i32 0
  store i32 %19, i32* %xc27, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx28 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i64 0
  %xc29 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx28, i32 0, i32 0
  %25 = load i32, i32* %xc29, align 4
  %idxprom30 = sext i32 %25 to i64
  %26 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 %idxprom30
  %yc32 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx31, i32 0, i32 1
  store i32 %23, i32* %yc32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.20
  %27 = load i32, i32* %corner, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %corner, align 4
  br label %for.cond.18

for.end.35:                                       ; preds = %for.cond.18
  store i32 1, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.61, %for.end.35
  %28 = load i32, i32* %k, align 4
  %29 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 0
  %xc38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx37, i32 0, i32 0
  %30 = load i32, i32* %xc38, align 4
  %cmp39 = icmp sle i32 %28, %30
  br i1 %cmp39, label %for.body.40, label %for.end.63

for.body.40:                                      ; preds = %for.cond.36
  %31 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %31 to i64
  %32 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %32, i64 %idxprom41
  %xc43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx42, i32 0, i32 0
  %33 = load i32, i32* %xc43, align 4
  store i32 %33, i32* %x, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 %idxprom44
  %yc46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx45, i32 0, i32 1
  %36 = load i32, i32* %yc46, align 4
  store i32 %36, i32* %y, align 4
  %37 = load i32, i32* %k, align 4
  %cmp47 = icmp eq i32 %37, 1
  br i1 %cmp47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %for.body.40
  %38 = load i32, i32* %x, align 4
  store i32 %38, i32* %minx, align 4
  %39 = load i32, i32* %y, align 4
  store i32 %39, i32* %miny, align 4
  %40 = load i32, i32* %x, align 4
  store i32 %40, i32* %maxx, align 4
  %41 = load i32, i32* %y, align 4
  store i32 %41, i32* %maxy, align 4
  br label %if.end.60

if.else:                                          ; preds = %for.body.40
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %minx, align 4
  %cmp49 = icmp slt i32 %42, %43
  br i1 %cmp49, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %if.else
  %44 = load i32, i32* %x, align 4
  store i32 %44, i32* %minx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.50, %if.else
  %45 = load i32, i32* %x, align 4
  %46 = load i32, i32* %maxx, align 4
  %cmp51 = icmp sgt i32 %45, %46
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end
  %47 = load i32, i32* %x, align 4
  store i32 %47, i32* %maxx, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end
  %48 = load i32, i32* %y, align 4
  %49 = load i32, i32* %miny, align 4
  %cmp54 = icmp slt i32 %48, %49
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  %50 = load i32, i32* %y, align 4
  store i32 %50, i32* %miny, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.53
  %51 = load i32, i32* %y, align 4
  %52 = load i32, i32* %maxy, align 4
  %cmp57 = icmp sgt i32 %51, %52
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %53 = load i32, i32* %y, align 4
  store i32 %53, i32* %maxy, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %54 = load i32, i32* %k, align 4
  %inc62 = add nsw i32 %54, 1
  store i32 %inc62, i32* %k, align 4
  br label %for.cond.36

for.end.63:                                       ; preds = %for.cond.36
  %55 = load i32, i32* %maxx, align 4
  %56 = load i32, i32* %minx, align 4
  %add = add nsw i32 %55, %56
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %xcenter, align 4
  %57 = load i32, i32* %maxy, align 4
  %58 = load i32, i32* %miny, align 4
  %add64 = add nsw i32 %57, %58
  %div65 = sdiv i32 %add64, 2
  store i32 %div65, i32* %ycenter, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay66)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay70)
  store i32 1, i32* %orient, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.76, %for.end.63
  %63 = load i32, i32* %orient, align 4
  %64 = load i32, i32* %norients, align 4
  %cmp73 = icmp sle i32 %63, %64
  br i1 %cmp73, label %for.body.74, label %for.end.78

for.body.74:                                      ; preds = %for.cond.72
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.74
  %66 = load i32, i32* %orient, align 4
  %inc77 = add nsw i32 %66, 1
  store i32 %inc77, i32* %orient, align 4
  br label %for.cond.72

for.end.78:                                       ; preds = %for.cond.72
  br label %if.end.378

if.else.79:                                       ; preds = %while.body
  %arraydecay80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call81 = call i32 @strcmp(i8* %arraydecay80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #4
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then.83, label %if.else.159

if.then.83:                                       ; preds = %if.else.79
  %67 = load i32, i32* %cell, align 4
  %inc84 = add nsw i32 %67, 1
  store i32 %inc84, i32* %cell, align 4
  %idxprom85 = sext i32 %inc84 to i64
  %68 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx86 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %68, i64 %idxprom85
  %69 = load %struct.cellbox*, %struct.cellbox** %arrayidx86, align 8
  store %struct.cellbox* %69, %struct.cellbox** %ptr, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay88)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay90)
  store i32 0, i32* %k, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.101, %if.then.83
  %73 = load i32, i32* %k, align 4
  %cmp93 = icmp sle i32 %73, 30
  br i1 %cmp93, label %for.body.94, label %for.end.103

for.body.94:                                      ; preds = %for.cond.92
  %74 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %74 to i64
  %75 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx96 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %75, i64 %idxprom95
  %xc97 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx96, i32 0, i32 0
  store i32 0, i32* %xc97, align 4
  %76 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %76 to i64
  %77 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx99 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %77, i64 %idxprom98
  %yc100 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx99, i32 0, i32 1
  store i32 0, i32* %yc100, align 4
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.94
  %78 = load i32, i32* %k, align 4
  %inc102 = add nsw i32 %78, 1
  store i32 %inc102, i32* %k, align 4
  br label %for.cond.92

for.end.103:                                      ; preds = %for.cond.92
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay105)
  store i32 1, i32* %corner, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.122, %for.end.103
  %81 = load i32, i32* %corner, align 4
  %82 = load i32, i32* %ncorners, align 4
  %cmp108 = icmp sle i32 %81, %82
  br i1 %cmp108, label %for.body.109, label %for.end.124

for.body.109:                                     ; preds = %for.cond.107
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  %84 = load i32, i32* %x, align 4
  %85 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx111 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %85, i64 0
  %xc112 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx111, i32 0, i32 0
  %86 = load i32, i32* %xc112, align 4
  %inc113 = add nsw i32 %86, 1
  store i32 %inc113, i32* %xc112, align 4
  %idxprom114 = sext i32 %inc113 to i64
  %87 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx115 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %87, i64 %idxprom114
  %xc116 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx115, i32 0, i32 0
  store i32 %84, i32* %xc116, align 4
  %88 = load i32, i32* %y, align 4
  %89 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx117 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %89, i64 0
  %xc118 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx117, i32 0, i32 0
  %90 = load i32, i32* %xc118, align 4
  %idxprom119 = sext i32 %90 to i64
  %91 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx120 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %91, i64 %idxprom119
  %yc121 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx120, i32 0, i32 1
  store i32 %88, i32* %yc121, align 4
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.109
  %92 = load i32, i32* %corner, align 4
  %inc123 = add nsw i32 %92, 1
  store i32 %inc123, i32* %corner, align 4
  br label %for.cond.107

for.end.124:                                      ; preds = %for.cond.107
  store i32 1, i32* %k, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.152, %for.end.124
  %93 = load i32, i32* %k, align 4
  %94 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx126 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %94, i64 0
  %xc127 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx126, i32 0, i32 0
  %95 = load i32, i32* %xc127, align 4
  %cmp128 = icmp sle i32 %93, %95
  br i1 %cmp128, label %for.body.129, label %for.end.154

for.body.129:                                     ; preds = %for.cond.125
  %96 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %96 to i64
  %97 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %97, i64 %idxprom130
  %xc132 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx131, i32 0, i32 0
  %98 = load i32, i32* %xc132, align 4
  store i32 %98, i32* %x, align 4
  %99 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %99 to i64
  %100 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx134 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %100, i64 %idxprom133
  %yc135 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx134, i32 0, i32 1
  %101 = load i32, i32* %yc135, align 4
  store i32 %101, i32* %y, align 4
  %102 = load i32, i32* %k, align 4
  %cmp136 = icmp eq i32 %102, 1
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %for.body.129
  %103 = load i32, i32* %x, align 4
  store i32 %103, i32* %minx, align 4
  %104 = load i32, i32* %y, align 4
  store i32 %104, i32* %miny, align 4
  %105 = load i32, i32* %x, align 4
  store i32 %105, i32* %maxx, align 4
  %106 = load i32, i32* %y, align 4
  store i32 %106, i32* %maxy, align 4
  br label %if.end.151

if.else.138:                                      ; preds = %for.body.129
  %107 = load i32, i32* %x, align 4
  %108 = load i32, i32* %minx, align 4
  %cmp139 = icmp slt i32 %107, %108
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.else.138
  %109 = load i32, i32* %x, align 4
  store i32 %109, i32* %minx, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.else.138
  %110 = load i32, i32* %x, align 4
  %111 = load i32, i32* %maxx, align 4
  %cmp142 = icmp sgt i32 %110, %111
  br i1 %cmp142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.141
  %112 = load i32, i32* %x, align 4
  store i32 %112, i32* %maxx, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.end.141
  %113 = load i32, i32* %y, align 4
  %114 = load i32, i32* %miny, align 4
  %cmp145 = icmp slt i32 %113, %114
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.144
  %115 = load i32, i32* %y, align 4
  store i32 %115, i32* %miny, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.144
  %116 = load i32, i32* %y, align 4
  %117 = load i32, i32* %maxy, align 4
  %cmp148 = icmp sgt i32 %116, %117
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.147
  %118 = load i32, i32* %y, align 4
  store i32 %118, i32* %maxy, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.147
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.137
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %119 = load i32, i32* %k, align 4
  %inc153 = add nsw i32 %119, 1
  store i32 %inc153, i32* %k, align 4
  br label %for.cond.125

for.end.154:                                      ; preds = %for.cond.125
  %120 = load i32, i32* %maxx, align 4
  %121 = load i32, i32* %minx, align 4
  %add155 = add nsw i32 %120, %121
  %div156 = sdiv i32 %add155, 2
  store i32 %div156, i32* %xcenter, align 4
  %122 = load i32, i32* %maxy, align 4
  %123 = load i32, i32* %miny, align 4
  %add157 = add nsw i32 %122, %123
  %div158 = sdiv i32 %add157, 2
  store i32 %div158, i32* %ycenter, align 4
  br label %if.end.377

if.else.159:                                      ; preds = %if.else.79
  %arraydecay160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call161 = call i32 @strcmp(i8* %arraydecay160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #4
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then.163, label %if.else.179

if.then.163:                                      ; preds = %if.else.159
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay164)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay166)
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay170)
  store i32 1, i32* %orient, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.176, %if.then.163
  %129 = load i32, i32* %orient, align 4
  %130 = load i32, i32* %norients, align 4
  %cmp173 = icmp sle i32 %129, %130
  br i1 %cmp173, label %for.body.174, label %for.end.178

for.body.174:                                     ; preds = %for.cond.172
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.174
  %132 = load i32, i32* %orient, align 4
  %inc177 = add nsw i32 %132, 1
  store i32 %inc177, i32* %orient, align 4
  br label %for.cond.172

for.end.178:                                      ; preds = %for.cond.172
  br label %if.end.376

if.else.179:                                      ; preds = %if.else.159
  %arraydecay180 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call181 = call i32 @strcmp(i8* %arraydecay180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #4
  %cmp182 = icmp eq i32 %call181, 0
  br i1 %cmp182, label %if.then.183, label %if.else.185

if.then.183:                                      ; preds = %if.else.179
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), double* %space)
  br label %if.end.375

if.else.185:                                      ; preds = %if.else.179
  %arraydecay186 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call187 = call i32 @strcmp(i8* %arraydecay186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %if.then.189, label %if.else.221

if.then.189:                                      ; preds = %if.else.185
  %134 = load i32, i32* %cell, align 4
  %inc190 = add nsw i32 %134, 1
  store i32 %inc190, i32* %cell, align 4
  %idxprom191 = sext i32 %inc190 to i64
  %135 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx192 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %135, i64 %idxprom191
  %136 = load %struct.cellbox*, %struct.cellbox** %arrayidx192, align 8
  store %struct.cellbox* %136, %struct.cellbox** %ptr, align 8
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay194)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay196)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call198 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call200 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay199)
  store i32 1, i32* %corner, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.205, %if.then.189
  %142 = load i32, i32* %corner, align 4
  %143 = load i32, i32* %ncorners, align 4
  %cmp202 = icmp sle i32 %142, %143
  br i1 %cmp202, label %for.body.203, label %for.end.207

for.body.203:                                     ; preds = %for.cond.201
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.body.203
  %145 = load i32, i32* %corner, align 4
  %inc206 = add nsw i32 %145, 1
  store i32 %inc206, i32* %corner, align 4
  br label %for.cond.201

for.end.207:                                      ; preds = %for.cond.201
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call209 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay208)
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay212)
  store i32 1, i32* %orient, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.218, %for.end.207
  %150 = load i32, i32* %orient, align 4
  %151 = load i32, i32* %norients, align 4
  %cmp215 = icmp sle i32 %150, %151
  br i1 %cmp215, label %for.body.216, label %for.end.220

for.body.216:                                     ; preds = %for.cond.214
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.body.216
  %153 = load i32, i32* %orient, align 4
  %inc219 = add nsw i32 %153, 1
  store i32 %inc219, i32* %orient, align 4
  br label %for.cond.214

for.end.220:                                      ; preds = %for.cond.214
  br label %if.end.374

if.else.221:                                      ; preds = %if.else.185
  %arraydecay222 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call223 = call i32 @strcmp(i8* %arraydecay222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp224 = icmp eq i32 %call223, 0
  br i1 %cmp224, label %if.then.225, label %if.else.265

if.then.225:                                      ; preds = %if.else.221
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay226 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay226)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay228 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay228)
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay230)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay232)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  %159 = load i32, i32* %pinctr, align 4
  %inc235 = add nsw i32 %159, 1
  store i32 %inc235, i32* %pinctr, align 4
  %arraydecay236 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call237 = call i32 @hashfind(i8* %arraydecay236)
  store i32 %call237, i32* %netx, align 4
  %160 = load i32, i32* %netx, align 4
  %idxprom238 = sext i32 %160 to i64
  %161 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx239 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %161, i64 %idxprom238
  %162 = load %struct.dimbox*, %struct.dimbox** %arrayidx239, align 8
  %netptr240 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %162, i32 0, i32 0
  %163 = load %struct.netbox*, %struct.netbox** %netptr240, align 8
  store %struct.netbox* %163, %struct.netbox** %netptr, align 8
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.245, %if.then.225
  %164 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal = getelementptr inbounds %struct.netbox, %struct.netbox* %164, i32 0, i32 5
  %165 = load i32, i32* %terminal, align 4
  %166 = load i32, i32* %pinctr, align 4
  %cmp242 = icmp eq i32 %165, %166
  br i1 %cmp242, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %for.cond.241
  br label %for.end.246

if.end.244:                                       ; preds = %for.cond.241
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244
  %167 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %167, i32 0, i32 0
  %168 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %168, %struct.netbox** %netptr, align 8
  br label %for.cond.241

for.end.246:                                      ; preds = %if.then.243
  %169 = load i32, i32* %cell, align 4
  %170 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell247 = getelementptr inbounds %struct.netbox, %struct.netbox* %170, i32 0, i32 7
  store i32 %169, i32* %cell247, align 4
  %171 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %PorE = getelementptr inbounds %struct.netbox, %struct.netbox* %171, i32 0, i32 8
  store i32 1, i32* %PorE, align 4
  %172 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %172, i32 0, i32 10
  %173 = load i32, i32* %softflag, align 4
  %cmp248 = icmp eq i32 %173, 0
  br i1 %cmp248, label %if.then.249, label %if.end.264

if.then.249:                                      ; preds = %for.end.246
  %174 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %174, i32 0, i32 21
  %arrayidx250 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  %175 = load %struct.tilebox*, %struct.tilebox** %arrayidx250, align 8
  %termptr = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i32 0, i32 17
  %176 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  store %struct.termbox* %176, %struct.termbox** %term, align 8
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.256, %if.then.249
  %177 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal252 = getelementptr inbounds %struct.termbox, %struct.termbox* %177, i32 0, i32 5
  %178 = load i32, i32* %terminal252, align 4
  %179 = load i32, i32* %pinctr, align 4
  %cmp253 = icmp eq i32 %178, %179
  br i1 %cmp253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %for.cond.251
  br label %for.end.258

if.end.255:                                       ; preds = %for.cond.251
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255
  %180 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm257 = getelementptr inbounds %struct.termbox, %struct.termbox* %180, i32 0, i32 0
  %181 = load %struct.termbox*, %struct.termbox** %nextterm257, align 8
  store %struct.termbox* %181, %struct.termbox** %term, align 8
  br label %for.cond.251

for.end.258:                                      ; preds = %if.then.254
  %182 = load i32, i32* %xpos, align 4
  %183 = load i32, i32* %xcenter, align 4
  %sub = sub nsw i32 %182, %183
  %184 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos259 = getelementptr inbounds %struct.termbox, %struct.termbox* %184, i32 0, i32 1
  store i32 %sub, i32* %xpos259, align 4
  %185 = load i32, i32* %ypos, align 4
  %186 = load i32, i32* %ycenter, align 4
  %sub260 = sub nsw i32 %185, %186
  %187 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos261 = getelementptr inbounds %struct.termbox, %struct.termbox* %187, i32 0, i32 2
  store i32 %sub260, i32* %ypos261, align 4
  %188 = load i32, i32* %xpos, align 4
  %189 = load i32, i32* %xcenter, align 4
  %sub262 = sub nsw i32 %188, %189
  %190 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oxpos = getelementptr inbounds %struct.termbox, %struct.termbox* %190, i32 0, i32 3
  store i32 %sub262, i32* %oxpos, align 4
  %191 = load i32, i32* %ypos, align 4
  %192 = load i32, i32* %ycenter, align 4
  %sub263 = sub nsw i32 %191, %192
  %193 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oypos = getelementptr inbounds %struct.termbox, %struct.termbox* %193, i32 0, i32 4
  store i32 %sub263, i32* %oypos, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %for.end.258, %for.end.246
  br label %if.end.373

if.else.265:                                      ; preds = %if.else.221
  %arraydecay266 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call267 = call i32 @strcmp(i8* %arraydecay266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #4
  %cmp268 = icmp eq i32 %call267, 0
  br i1 %cmp268, label %if.then.269, label %if.else.313

if.then.269:                                      ; preds = %if.else.265
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay270 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call271 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay270)
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay272 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call273 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay272)
  %arraydecay274 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call275 = call i64 @strlen(i8* %arraydecay274) #4
  %add276 = add i64 %call275, 1
  %mul = mul i64 %add276, 1
  %call277 = call noalias i8* @malloc(i64 %mul) #5
  %196 = load i32, i32* @ecount, align 4
  %inc278 = add nsw i32 %196, 1
  store i32 %inc278, i32* @ecount, align 4
  %197 = load i32, i32* @maxterm, align 4
  %add279 = add nsw i32 %inc278, %197
  %idxprom280 = sext i32 %add279 to i64
  %198 = load i8**, i8*** @pinnames, align 8
  %arrayidx281 = getelementptr inbounds i8*, i8** %198, i64 %idxprom280
  store i8* %call277, i8** %arrayidx281, align 8
  %199 = load i32, i32* @ecount, align 4
  %200 = load i32, i32* @maxterm, align 4
  %add282 = add nsw i32 %199, %200
  %idxprom283 = sext i32 %add282 to i64
  %201 = load i8**, i8*** @pinnames, align 8
  %arrayidx284 = getelementptr inbounds i8*, i8** %201, i64 %idxprom283
  %202 = load i8*, i8** %arrayidx284, align 8
  %arraydecay285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call286 = call i32 (i8*, i8*, ...) @sprintf(i8* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay285) #5
  %203 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm287 = getelementptr inbounds %struct.netbox, %struct.netbox* %203, i32 0, i32 0
  %204 = load %struct.netbox*, %struct.netbox** %nextterm287, align 8
  store %struct.netbox* %204, %struct.netbox** %saveptr, align 8
  %call288 = call noalias i8* @malloc(i64 48) #5
  %205 = bitcast i8* %call288 to %struct.netbox*
  %206 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm289 = getelementptr inbounds %struct.netbox, %struct.netbox* %206, i32 0, i32 0
  store %struct.netbox* %205, %struct.netbox** %nextterm289, align 8
  store %struct.netbox* %205, %struct.netbox** %netptr, align 8
  %207 = load %struct.netbox*, %struct.netbox** %saveptr, align 8
  %208 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm290 = getelementptr inbounds %struct.netbox, %struct.netbox* %208, i32 0, i32 0
  store %struct.netbox* %207, %struct.netbox** %nextterm290, align 8
  %209 = load i32, i32* @ecount, align 4
  %210 = load i32, i32* @maxterm, align 4
  %add291 = add nsw i32 %209, %210
  %211 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal292 = getelementptr inbounds %struct.netbox, %struct.netbox* %211, i32 0, i32 5
  store i32 %add291, i32* %terminal292, align 4
  %212 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos293 = getelementptr inbounds %struct.netbox, %struct.netbox* %212, i32 0, i32 1
  store i32 0, i32* %xpos293, align 4
  %213 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos294 = getelementptr inbounds %struct.netbox, %struct.netbox* %213, i32 0, i32 2
  store i32 0, i32* %ypos294, align 4
  %214 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %214, i32 0, i32 3
  store i32 0, i32* %newx, align 4
  %215 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %215, i32 0, i32 4
  store i32 0, i32* %newy, align 4
  %216 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag = getelementptr inbounds %struct.netbox, %struct.netbox* %216, i32 0, i32 6
  store i32 0, i32* %flag, align 4
  %217 = load i32, i32* %cell, align 4
  %218 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell295 = getelementptr inbounds %struct.netbox, %struct.netbox* %218, i32 0, i32 7
  store i32 %217, i32* %cell295, align 4
  %219 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %PorE296 = getelementptr inbounds %struct.netbox, %struct.netbox* %219, i32 0, i32 8
  store i32 0, i32* %PorE296, align 4
  %220 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip = getelementptr inbounds %struct.netbox, %struct.netbox* %220, i32 0, i32 9
  store i32 0, i32* %skip, align 4
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  %222 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %222, i32 0, i32 8
  %223 = load i32, i32* %numterms, align 4
  %inc298 = add nsw i32 %223, 1
  store i32 %inc298, i32* %numterms, align 4
  %224 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm299 = getelementptr inbounds %struct.termbox, %struct.termbox* %224, i32 0, i32 0
  %225 = load %struct.termbox*, %struct.termbox** %nextterm299, align 8
  store %struct.termbox* %225, %struct.termbox** %saveterm, align 8
  %call300 = call noalias i8* @malloc(i64 32) #5
  %226 = bitcast i8* %call300 to %struct.termbox*
  %227 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm301 = getelementptr inbounds %struct.termbox, %struct.termbox* %227, i32 0, i32 0
  store %struct.termbox* %226, %struct.termbox** %nextterm301, align 8
  store %struct.termbox* %226, %struct.termbox** %term, align 8
  %228 = load %struct.termbox*, %struct.termbox** %saveterm, align 8
  %229 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm302 = getelementptr inbounds %struct.termbox, %struct.termbox* %229, i32 0, i32 0
  store %struct.termbox* %228, %struct.termbox** %nextterm302, align 8
  %230 = load i32, i32* @ecount, align 4
  %231 = load i32, i32* @maxterm, align 4
  %add303 = add nsw i32 %230, %231
  %232 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal304 = getelementptr inbounds %struct.termbox, %struct.termbox* %232, i32 0, i32 5
  store i32 %add303, i32* %terminal304, align 4
  %233 = load i32, i32* %xpos, align 4
  %234 = load i32, i32* %xcenter, align 4
  %sub305 = sub nsw i32 %233, %234
  %235 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos306 = getelementptr inbounds %struct.termbox, %struct.termbox* %235, i32 0, i32 1
  store i32 %sub305, i32* %xpos306, align 4
  %236 = load i32, i32* %ypos, align 4
  %237 = load i32, i32* %ycenter, align 4
  %sub307 = sub nsw i32 %236, %237
  %238 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos308 = getelementptr inbounds %struct.termbox, %struct.termbox* %238, i32 0, i32 2
  store i32 %sub307, i32* %ypos308, align 4
  %239 = load i32, i32* %xpos, align 4
  %240 = load i32, i32* %xcenter, align 4
  %sub309 = sub nsw i32 %239, %240
  %241 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oxpos310 = getelementptr inbounds %struct.termbox, %struct.termbox* %241, i32 0, i32 3
  store i32 %sub309, i32* %oxpos310, align 4
  %242 = load i32, i32* %ypos, align 4
  %243 = load i32, i32* %ycenter, align 4
  %sub311 = sub nsw i32 %242, %243
  %244 = load %struct.termbox*, %struct.termbox** %term, align 8
  %oypos312 = getelementptr inbounds %struct.termbox, %struct.termbox* %244, i32 0, i32 4
  store i32 %sub311, i32* %oypos312, align 4
  br label %if.end.372

if.else.313:                                      ; preds = %if.else.265
  %arraydecay314 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call315 = call i32 @strcmp(i8* %arraydecay314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #4
  %cmp316 = icmp eq i32 %call315, 0
  br i1 %cmp316, label %if.then.317, label %if.else.319

if.then.317:                                      ; preds = %if.else.313
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), double* %asplb)
  br label %if.end.371

if.else.319:                                      ; preds = %if.else.313
  %arraydecay320 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call321 = call i32 @strcmp(i8* %arraydecay320, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %cmp322 = icmp eq i32 %call321, 0
  br i1 %cmp322, label %if.then.323, label %if.else.325

if.then.323:                                      ; preds = %if.else.319
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call324 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), double* %aspub)
  br label %if.end.370

if.else.325:                                      ; preds = %if.else.319
  %arraydecay326 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call327 = call i32 @strcmp(i8* %arraydecay326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #4
  %cmp328 = icmp eq i32 %call327, 0
  br i1 %cmp328, label %if.then.332, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.325
  %arraydecay329 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call330 = call i32 @strcmp(i8* %arraydecay329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #4
  %cmp331 = icmp eq i32 %call330, 0
  br i1 %cmp331, label %if.then.332, label %if.end.369

if.then.332:                                      ; preds = %lor.lhs.false, %if.else.325
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %sequence)
  store i32 1, i32* %i, align 4
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.363, %if.then.332
  %248 = load i32, i32* %i, align 4
  %249 = load i32, i32* %sequence, align 4
  %cmp335 = icmp sle i32 %248, %249
  br i1 %cmp335, label %for.body.336, label %for.end.365

for.body.336:                                     ; preds = %for.cond.334
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay337 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call338 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay337)
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay339 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call340 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay339)
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay341 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call342 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay341)
  %253 = load i32, i32* %pinctr, align 4
  %inc343 = add nsw i32 %253, 1
  store i32 %inc343, i32* %pinctr, align 4
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay344 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay344)
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay346 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay346)
  %arraydecay348 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call349 = call i32 @hashfind(i8* %arraydecay348)
  store i32 %call349, i32* %netx, align 4
  %256 = load i32, i32* %netx, align 4
  %idxprom350 = sext i32 %256 to i64
  %257 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx351 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %257, i64 %idxprom350
  %258 = load %struct.dimbox*, %struct.dimbox** %arrayidx351, align 8
  %netptr352 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %258, i32 0, i32 0
  %259 = load %struct.netbox*, %struct.netbox** %netptr352, align 8
  store %struct.netbox* %259, %struct.netbox** %netptr, align 8
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.358, %for.body.336
  %260 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal354 = getelementptr inbounds %struct.netbox, %struct.netbox* %260, i32 0, i32 5
  %261 = load i32, i32* %terminal354, align 4
  %262 = load i32, i32* %pinctr, align 4
  %cmp355 = icmp eq i32 %261, %262
  br i1 %cmp355, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %for.cond.353
  br label %for.end.360

if.end.357:                                       ; preds = %for.cond.353
  br label %for.inc.358

for.inc.358:                                      ; preds = %if.end.357
  %263 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm359 = getelementptr inbounds %struct.netbox, %struct.netbox* %263, i32 0, i32 0
  %264 = load %struct.netbox*, %struct.netbox** %nextterm359, align 8
  store %struct.netbox* %264, %struct.netbox** %netptr, align 8
  br label %for.cond.353

for.end.360:                                      ; preds = %if.then.356
  %265 = load i32, i32* %cell, align 4
  %266 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell361 = getelementptr inbounds %struct.netbox, %struct.netbox* %266, i32 0, i32 7
  store i32 %265, i32* %cell361, align 4
  %267 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %PorE362 = getelementptr inbounds %struct.netbox, %struct.netbox* %267, i32 0, i32 8
  store i32 1, i32* %PorE362, align 4
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.end.360
  %268 = load i32, i32* %i, align 4
  %inc364 = add nsw i32 %268, 1
  store i32 %inc364, i32* %i, align 4
  br label %for.cond.334

for.end.365:                                      ; preds = %for.cond.334
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay366 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay366)
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call368 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %firstside, i32* %lastside)
  br label %if.end.369

if.end.369:                                       ; preds = %for.end.365, %lor.lhs.false
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.then.323
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.then.317
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371, %if.then.269
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.end.264
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %for.end.220
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.then.183
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %for.end.178
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %for.end.154
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %for.end.78
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @ggenorien()
  ret void
}

declare void @gpass2(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @hashfind(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare void @ggenorien() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
