; ModuleID = './MultiSource.Benchmarks.Prolangs-C/157.TimberWolfMC.gpass2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@netctr = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@termarray = external global %struct.termnets**, align 8
@pinnames = external global i8**, align 8

; Function Attrs: nounwind uwtable
define void @gpass2(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %class = alloca i32, align 4
  %sequence = alloca i32, align 4
  %firstside = alloca i32, align 4
  %lastside = alloca i32, align 4
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
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %ecount, align 4
  store i32 0, i32* @netctr, align 4
  store i32 0, i32* %pinctr, align 4
  call void @maketabl()
  br label %while.cond

while.cond:                                       ; preds = %if.end.172, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay5)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay7)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay10)
  store i32 1, i32* %corner, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %corner, align 4
  %7 = load i32, i32* %ncorners, align 4
  %cmp12 = icmp sle i32 %6, %7
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %corner, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %corner, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay14)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay18)
  store i32 1, i32* %orient, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.24, %for.end
  %14 = load i32, i32* %orient, align 4
  %15 = load i32, i32* %norients, align 4
  %cmp21 = icmp sle i32 %14, %15
  br i1 %cmp21, label %for.body.22, label %for.end.26

for.body.22:                                      ; preds = %for.cond.20
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.22
  %17 = load i32, i32* %orient, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, i32* %orient, align 4
  br label %for.cond.20

for.end.26:                                       ; preds = %for.cond.20
  br label %if.end.172

if.else:                                          ; preds = %while.body
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call28 = call i32 @strcmp(i8* %arraydecay27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #4
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.43

if.then.30:                                       ; preds = %if.else
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay31)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay33)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay35)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay37)
  %22 = load i32, i32* %pinctr, align 4
  %inc39 = add nsw i32 %22, 1
  store i32 %inc39, i32* %pinctr, align 4
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call41 = call i32 @addhash(i8* %arraydecay40)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  br label %if.end.171

if.else.43:                                       ; preds = %if.else
  %arraydecay44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call45 = call i32 @strcmp(i8* %arraydecay44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #4
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.54

if.then.47:                                       ; preds = %if.else.43
  %24 = load i32, i32* %ecount, align 4
  %inc48 = add nsw i32 %24, 1
  store i32 %inc48, i32* %ecount, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay49)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay51)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %xpos, i32* %ypos)
  br label %if.end.170

if.else.54:                                       ; preds = %if.else.43
  %arraydecay55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call56 = call i32 @strcmp(i8* %arraydecay55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #4
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.93

if.then.58:                                       ; preds = %if.else.54
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay60)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay62)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay65)
  store i32 1, i32* %corner, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.71, %if.then.58
  %33 = load i32, i32* %corner, align 4
  %34 = load i32, i32* %ncorners, align 4
  %cmp68 = icmp sle i32 %33, %34
  br i1 %cmp68, label %for.body.69, label %for.end.73

for.body.69:                                      ; preds = %for.cond.67
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.69
  %36 = load i32, i32* %corner, align 4
  %inc72 = add nsw i32 %36, 1
  store i32 %inc72, i32* %corner, align 4
  br label %for.cond.67

for.end.73:                                       ; preds = %for.cond.67
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay74)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), double* %asplb)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay77)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), double* %aspub)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay80)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay84)
  store i32 1, i32* %orient, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.90, %for.end.73
  %45 = load i32, i32* %orient, align 4
  %46 = load i32, i32* %norients, align 4
  %cmp87 = icmp sle i32 %45, %46
  br i1 %cmp87, label %for.body.88, label %for.end.92

for.body.88:                                      ; preds = %for.cond.86
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.88
  %48 = load i32, i32* %orient, align 4
  %inc91 = add nsw i32 %48, 1
  store i32 %inc91, i32* %orient, align 4
  br label %for.cond.86

for.end.92:                                       ; preds = %for.cond.86
  br label %if.end.169

if.else.93:                                       ; preds = %if.else.54
  %arraydecay94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call95 = call i32 @strcmp(i8* %arraydecay94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.93
  %arraydecay97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call98 = call i32 @strcmp(i8* %arraydecay97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.then.100, label %if.else.124

if.then.100:                                      ; preds = %lor.lhs.false, %if.else.93
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %sequence)
  store i32 1, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.118, %if.then.100
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %sequence, align 4
  %cmp103 = icmp sle i32 %50, %51
  br i1 %cmp103, label %for.body.104, label %for.end.120

for.body.104:                                     ; preds = %for.cond.102
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay105)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay107)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay109)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay111)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay113)
  %57 = load i32, i32* %pinctr, align 4
  %inc115 = add nsw i32 %57, 1
  store i32 %inc115, i32* %pinctr, align 4
  %arraydecay116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call117 = call i32 @addhash(i8* %arraydecay116)
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.104
  %58 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %58, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond.102

for.end.120:                                      ; preds = %for.cond.102
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay121)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %firstside, i32* %lastside)
  br label %if.end.168

if.else.124:                                      ; preds = %lor.lhs.false
  %arraydecay125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call126 = call i32 @strcmp(i8* %arraydecay125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #4
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then.128, label %if.else.161

if.then.128:                                      ; preds = %if.else.124
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay130)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay132)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %ncorners)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay135)
  store i32 1, i32* %corner, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.141, %if.then.128
  %66 = load i32, i32* %corner, align 4
  %67 = load i32, i32* %ncorners, align 4
  %cmp138 = icmp sle i32 %66, %67
  br i1 %cmp138, label %for.body.139, label %for.end.143

for.body.139:                                     ; preds = %for.cond.137
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32* %x, i32* %y)
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.139
  %69 = load i32, i32* %corner, align 4
  %inc142 = add nsw i32 %69, 1
  store i32 %inc142, i32* %corner, align 4
  br label %for.cond.137

for.end.143:                                      ; preds = %for.cond.137
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay144)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay146)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay148)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %class)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %norients)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay152)
  store i32 1, i32* %orient, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.158, %for.end.143
  %76 = load i32, i32* %orient, align 4
  %77 = load i32, i32* %norients, align 4
  %cmp155 = icmp sle i32 %76, %77
  br i1 %cmp155, label %for.body.156, label %for.end.160

for.body.156:                                     ; preds = %for.cond.154
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32* %x)
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.156
  %79 = load i32, i32* %orient, align 4
  %inc159 = add nsw i32 %79, 1
  store i32 %inc159, i32* %orient, align 4
  br label %for.cond.154

for.end.160:                                      ; preds = %for.cond.154
  br label %if.end.167

if.else.161:                                      ; preds = %if.else.124
  %arraydecay162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call163 = call i32 @strcmp(i8* %arraydecay162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #4
  %cmp164 = icmp eq i32 %call163, 0
  br i1 %cmp164, label %if.then.165, label %if.end

if.then.165:                                      ; preds = %if.else.161
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), double* %space)
  br label %if.end

if.end:                                           ; preds = %if.then.165, %if.else.161
  br label %if.end.167

if.end.167:                                       ; preds = %if.end, %for.end.160
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %for.end.120
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.end.92
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.47
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.30
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %for.end.26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %81)
  %82 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %83 = bitcast %struct.termnets** %82 to i8*
  %84 = load i32, i32* %pinctr, align 4
  %85 = load i32, i32* %ecount, align 4
  %add = add nsw i32 %84, %85
  %add173 = add nsw i32 %add, 1
  %conv = sext i32 %add173 to i64
  %mul = mul i64 %conv, 8
  %call174 = call i8* @realloc(i8* %83, i64 %mul) #5
  %86 = bitcast i8* %call174 to %struct.termnets**
  store %struct.termnets** %86, %struct.termnets*** @termarray, align 8
  %87 = load i32, i32* %pinctr, align 4
  %add175 = add nsw i32 1, %87
  store i32 %add175, i32* %term, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.181, %while.end
  %88 = load i32, i32* %term, align 4
  %89 = load i32, i32* %pinctr, align 4
  %90 = load i32, i32* %ecount, align 4
  %add177 = add nsw i32 %89, %90
  %cmp178 = icmp sle i32 %88, %add177
  br i1 %cmp178, label %for.body.180, label %for.end.183

for.body.180:                                     ; preds = %for.cond.176
  %91 = load i32, i32* %term, align 4
  %idxprom = sext i32 %91 to i64
  %92 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx = getelementptr inbounds %struct.termnets*, %struct.termnets** %92, i64 %idxprom
  store %struct.termnets* null, %struct.termnets** %arrayidx, align 8
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.180
  %93 = load i32, i32* %term, align 4
  %inc182 = add nsw i32 %93, 1
  store i32 %inc182, i32* %term, align 4
  br label %for.cond.176

for.end.183:                                      ; preds = %for.cond.176
  %94 = load i8**, i8*** @pinnames, align 8
  %95 = bitcast i8** %94 to i8*
  %96 = load i32, i32* %pinctr, align 4
  %97 = load i32, i32* %ecount, align 4
  %add184 = add nsw i32 %96, %97
  %add185 = add nsw i32 %add184, 1
  %conv186 = sext i32 %add185 to i64
  %mul187 = mul i64 %conv186, 8
  %call188 = call i8* @realloc(i8* %95, i64 %mul187) #5
  %98 = bitcast i8* %call188 to i8**
  store i8** %98, i8*** @pinnames, align 8
  ret void
}

declare void @maketabl() #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @addhash(i8*) #1

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
