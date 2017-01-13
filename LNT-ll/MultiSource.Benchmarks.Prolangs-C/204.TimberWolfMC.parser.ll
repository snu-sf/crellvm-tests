; ModuleID = './MultiSource.Benchmarks.Prolangs-C/204.TimberWolfMC.parser.bc'
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

@maxterm = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to input cell # in the .cel file\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cell:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to input keyword name \0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c" in the .cel file; cell:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"in the .cel file; cell:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Failed to input cell name in the .cel file\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Failed to input corners in the .cel file\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Failed to input at least 4 corners\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"corners\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"parser failed to find: corners \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"in the .cel file\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Failed to input corner coordinates\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"parser failed to find: class \00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Failed to input class in the .cel file\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Failed to input orientations in the .cel file\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Failed to input orientations between 1 and \00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"8 in the .cel file; cell:%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"orientations\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"parser failed to find: orientations \00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Failed to input expected orientations\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"parser unexpectedly found: pin \00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"parser failed to find keyword: name \00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"in the .cel file; instead found:%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"parser failed to find pin name \00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"parser failed to find keyword: signal \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"parser failed to find signal name \00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Failed to input coordinates for a pin\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Failed to input cell number \0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"asplb\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"Failed to input asplb in the .cel file\0A\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"parser failed to find: asplb \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"aspub\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"Failed to input aspub in the .cel file\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"parser failed to find: aspub \00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"parser unexpectedly found: sequence/group \00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Failed to input a seq/group in .cel file\0A\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"parser did not find keyword: \00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"name in the .cel file\0A\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"parser failed to find keyword: \00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"name in the .cel file:\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c" instead found:%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"signal in the .cel file\0A\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"signal in the .cel file;\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"parser failed to find signal \00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"parser failed to find: pin \00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"side.restriction\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"parser failed to find: side.restriction \00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"Failed to input the 2 side.restriction \0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"sides in the .cel file; cell:%d\0A\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"Failed to input pad # in the .cel file\0A\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"pad:%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"padside\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"Failed to input padside \00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"Current pad: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"Failed to find keyword padside \00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"for a pad\0A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"found unparsable keyword \00", align 1
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@padspace = common global double* null, align 8
@fixLRBT = common global i32* null, align 8

; Function Attrs: nounwind uwtable
define void @parser(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %space = alloca i32, align 4
  %cell = alloca i32, align 4
  %test = alloca i32, align 4
  %orient = alloca i32, align 4
  %norients = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %pad = alloca i32, align 4
  %code = alloca i32, align 4
  %class = alloca i32, align 4
  %sequence = alloca i32, align 4
  %firstside = alloca i32, align 4
  %lastside = alloca i32, align 4
  %cellnum = alloca i32, align 4
  %corner = alloca i32, align 4
  %ncorners = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %minx = alloca i32, align 4
  %miny = alloca i32, align 4
  %maxx = alloca i32, align 4
  %maxy = alloca i32, align 4
  %aspub = alloca double, align 8
  %asplb = alloca double, align 8
  %input = alloca [1024 x i8], align 16
  %ptr = alloca %struct.cellbox*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* @maxterm, align 4
  store i32 0, i32* %cell, align 4
  store i32 0, i32* %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.674, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else.125

if.then:                                          ; preds = %while.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  store i32 %call4, i32* %test, align 4
  %2 = load i32, i32* %test, align 4
  %cmp5 = icmp ne i32 %2, 1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %5 = load i32, i32* %cell, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %5)
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay9)
  store i32 %call10, i32* %test, align 4
  %7 = load i32, i32* %test, align 4
  %cmp11 = icmp ne i32 %7, 1
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = load i32, i32* %cell, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %10)
  call void @exit(i32 0) #6
  unreachable

if.end.15:                                        ; preds = %if.end
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call17 = call i32 @strcmp(i8* %arraydecay16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.15
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %13 = load i32, i32* %cell, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %13)
  call void @exit(i32 0) #6
  unreachable

if.end.22:                                        ; preds = %if.end.15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay23)
  store i32 %call24, i32* %test, align 4
  %15 = load i32, i32* %test, align 4
  %cmp25 = icmp ne i32 %15, 1
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.22
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %18 = load i32, i32* %cell, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %18)
  call void @exit(i32 0) #6
  unreachable

if.end.29:                                        ; preds = %if.end.22
  %19 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %cell, align 4
  store i32 3, i32* %code, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %ncorners)
  store i32 %call30, i32* %test, align 4
  %21 = load i32, i32* %test, align 4
  %cmp31 = icmp ne i32 %21, 1
  br i1 %cmp31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.29
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %24 = load i32, i32* %cell, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %24)
  call void @exit(i32 0) #6
  unreachable

if.end.35:                                        ; preds = %if.end.29
  %25 = load i32, i32* %ncorners, align 4
  %cmp36 = icmp slt i32 %25, 4
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.35
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %28 = load i32, i32* %cell, align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %28)
  call void @exit(i32 0) #6
  unreachable

if.end.40:                                        ; preds = %if.end.35
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay41)
  %arraydecay43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call44 = call i32 @strcmp(i8* %arraydecay43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.end.40
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %33 = load i32, i32* %cell, align 4
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %33)
  call void @exit(i32 0) #6
  unreachable

if.end.50:                                        ; preds = %if.end.40
  store i32 1, i32* %corner, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %34 = load i32, i32* %corner, align 4
  %35 = load i32, i32* %ncorners, align 4
  %cmp51 = icmp sle i32 %34, %35
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* %x, i32* %y)
  store i32 %call52, i32* %test, align 4
  %37 = load i32, i32* %test, align 4
  %cmp53 = icmp ne i32 %37, 2
  br i1 %cmp53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %for.body
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %40 = load i32, i32* %cell, align 4
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %40)
  call void @exit(i32 0) #6
  unreachable

if.else:                                          ; preds = %for.body
  %41 = load i32, i32* %corner, align 4
  %cmp57 = icmp eq i32 %41, 1
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else
  %42 = load i32, i32* %x, align 4
  store i32 %42, i32* %minx, align 4
  %43 = load i32, i32* %y, align 4
  store i32 %43, i32* %miny, align 4
  %44 = load i32, i32* %x, align 4
  store i32 %44, i32* %maxx, align 4
  %45 = load i32, i32* %y, align 4
  store i32 %45, i32* %maxy, align 4
  br label %if.end.72

if.else.59:                                       ; preds = %if.else
  %46 = load i32, i32* %x, align 4
  %47 = load i32, i32* %minx, align 4
  %cmp60 = icmp slt i32 %46, %47
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.59
  %48 = load i32, i32* %x, align 4
  store i32 %48, i32* %minx, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.else.59
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %maxx, align 4
  %cmp63 = icmp sgt i32 %49, %50
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  %51 = load i32, i32* %x, align 4
  store i32 %51, i32* %maxx, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %miny, align 4
  %cmp66 = icmp slt i32 %52, %53
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  %54 = load i32, i32* %y, align 4
  store i32 %54, i32* %miny, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  %55 = load i32, i32* %y, align 4
  %56 = load i32, i32* %maxy, align 4
  %cmp69 = icmp sgt i32 %55, %56
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  %57 = load i32, i32* %y, align 4
  store i32 %57, i32* %maxy, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.58
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %58 = load i32, i32* %corner, align 4
  %inc74 = add nsw i32 %58, 1
  store i32 %inc74, i32* %corner, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay75)
  %arraydecay77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call78 = call i32 @strcmp(i8* %arraydecay77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %for.end
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %63 = load i32, i32* %cell, align 4
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %63)
  call void @exit(i32 0) #6
  unreachable

if.end.84:                                        ; preds = %for.end
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %class)
  store i32 %call85, i32* %test, align 4
  %65 = load i32, i32* %test, align 4
  %cmp86 = icmp ne i32 %65, 1
  br i1 %cmp86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.84
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %68 = load i32, i32* %cell, align 4
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %68)
  call void @exit(i32 0) #6
  unreachable

if.end.90:                                        ; preds = %if.end.84
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %norients)
  store i32 %call91, i32* %test, align 4
  %70 = load i32, i32* %test, align 4
  %cmp92 = icmp ne i32 %70, 1
  br i1 %cmp92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.90
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %73 = load i32, i32* %cell, align 4
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %73)
  call void @exit(i32 0) #6
  unreachable

if.end.96:                                        ; preds = %if.end.90
  %74 = load i32, i32* %norients, align 4
  %cmp97 = icmp slt i32 %74, 1
  br i1 %cmp97, label %if.then.99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.96
  %75 = load i32, i32* %norients, align 4
  %cmp98 = icmp sgt i32 %75, 8
  br i1 %cmp98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %lor.lhs.false, %if.end.96
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0))
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %78 = load i32, i32* %cell, align 4
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i32 %78)
  call void @exit(i32 0) #6
  unreachable

if.end.102:                                       ; preds = %lor.lhs.false
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay103)
  %arraydecay105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call106 = call i32 @strcmp(i8* %arraydecay105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #5
  %cmp107 = icmp ne i32 %call106, 0
  br i1 %cmp107, label %if.then.108, label %if.end.112

if.then.108:                                      ; preds = %if.end.102
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %83 = load i32, i32* %cell, align 4
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %83)
  call void @exit(i32 0) #6
  unreachable

if.end.112:                                       ; preds = %if.end.102
  store i32 1, i32* %orient, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.122, %if.end.112
  %84 = load i32, i32* %orient, align 4
  %85 = load i32, i32* %norients, align 4
  %cmp114 = icmp sle i32 %84, %85
  br i1 %cmp114, label %for.body.115, label %for.end.124

for.body.115:                                     ; preds = %for.cond.113
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %x)
  store i32 %call116, i32* %test, align 4
  %87 = load i32, i32* %test, align 4
  %cmp117 = icmp ne i32 %87, 1
  br i1 %cmp117, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %for.body.115
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0))
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %90 = load i32, i32* %cell, align 4
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %90)
  call void @exit(i32 0) #6
  unreachable

if.end.121:                                       ; preds = %for.body.115
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %91 = load i32, i32* %orient, align 4
  %inc123 = add nsw i32 %91, 1
  store i32 %inc123, i32* %orient, align 4
  br label %for.cond.113

for.end.124:                                      ; preds = %for.cond.113
  store i32 4, i32* %code, align 4
  br label %if.end.674

if.else.125:                                      ; preds = %while.body
  %arraydecay126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call127 = call i32 @strcmp(i8* %arraydecay126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #5
  %cmp128 = icmp eq i32 %call127, 0
  br i1 %cmp128, label %if.then.129, label %if.else.193

if.then.129:                                      ; preds = %if.else.125
  %92 = load i32, i32* %code, align 4
  %cmp130 = icmp ne i32 %92, 4
  br i1 %cmp130, label %land.lhs.true, label %if.end.136

land.lhs.true:                                    ; preds = %if.then.129
  %93 = load i32, i32* %code, align 4
  %cmp131 = icmp ne i32 %93, 2
  br i1 %cmp131, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %land.lhs.true
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0))
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %97 = load i32, i32* %cell, align 4
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %97)
  call void @exit(i32 0) #6
  unreachable

if.end.136:                                       ; preds = %land.lhs.true, %if.then.129
  store i32 4, i32* %code, align 4
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay137)
  store i32 %call138, i32* %test, align 4
  %99 = load i32, i32* %test, align 4
  %cmp139 = icmp ne i32 %99, 1
  br i1 %cmp139, label %if.then.140, label %if.end.144

if.then.140:                                      ; preds = %if.end.136
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0))
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %103 = load i32, i32* %cell, align 4
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %103)
  call void @exit(i32 0) #6
  unreachable

if.end.144:                                       ; preds = %if.end.136
  %arraydecay145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call146 = call i32 @strcmp(i8* %arraydecay145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp147 = icmp ne i32 %call146, 0
  br i1 %cmp147, label %if.then.148, label %if.end.153

if.then.148:                                      ; preds = %if.end.144
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0))
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay150)
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %107 = load i32, i32* %cell, align 4
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %107)
  call void @exit(i32 0) #6
  unreachable

if.end.153:                                       ; preds = %if.end.144
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay154)
  store i32 %call155, i32* %test, align 4
  %109 = load i32, i32* %test, align 4
  %cmp156 = icmp ne i32 %109, 1
  br i1 %cmp156, label %if.then.157, label %if.end.161

if.then.157:                                      ; preds = %if.end.153
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %113 = load i32, i32* %cell, align 4
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %113)
  call void @exit(i32 0) #6
  unreachable

if.end.161:                                       ; preds = %if.end.153
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay162)
  store i32 %call163, i32* %test, align 4
  %115 = load i32, i32* %test, align 4
  %cmp164 = icmp ne i32 %115, 1
  br i1 %cmp164, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %if.end.161
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0))
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %119 = load i32, i32* %cell, align 4
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %119)
  call void @exit(i32 0) #6
  unreachable

if.end.169:                                       ; preds = %if.end.161
  %arraydecay170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call171 = call i32 @strcmp(i8* %arraydecay170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp172 = icmp ne i32 %call171, 0
  br i1 %cmp172, label %if.then.173, label %if.end.178

if.then.173:                                      ; preds = %if.end.169
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0))
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay175 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay175)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %123 = load i32, i32* %cell, align 4
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %123)
  call void @exit(i32 0) #6
  unreachable

if.end.178:                                       ; preds = %if.end.169
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay179)
  store i32 %call180, i32* %test, align 4
  %125 = load i32, i32* %test, align 4
  %cmp181 = icmp ne i32 %125, 1
  br i1 %cmp181, label %if.then.182, label %if.end.186

if.then.182:                                      ; preds = %if.end.178
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0))
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %129 = load i32, i32* %cell, align 4
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %129)
  call void @exit(i32 0) #6
  unreachable

if.end.186:                                       ; preds = %if.end.178
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* %xpos, i32* %ypos)
  store i32 %call187, i32* %test, align 4
  %131 = load i32, i32* %test, align 4
  %cmp188 = icmp ne i32 %131, 2
  br i1 %cmp188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.end.186
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0))
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %134 = load i32, i32* %cell, align 4
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %134)
  call void @exit(i32 0) #6
  unreachable

if.end.192:                                       ; preds = %if.end.186
  br label %if.end.673

if.else.193:                                      ; preds = %if.else.125
  %arraydecay194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call195 = call i32 @strcmp(i8* %arraydecay194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #5
  %cmp196 = icmp eq i32 %call195, 0
  br i1 %cmp196, label %if.then.197, label %if.else.229

if.then.197:                                      ; preds = %if.else.193
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay198 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay198)
  store i32 %call199, i32* %test, align 4
  %136 = load i32, i32* %test, align 4
  %cmp200 = icmp ne i32 %136, 1
  br i1 %cmp200, label %if.then.201, label %if.end.205

if.then.201:                                      ; preds = %if.then.197
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0))
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %140 = load i32, i32* %cell, align 4
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %140)
  call void @exit(i32 0) #6
  unreachable

if.end.205:                                       ; preds = %if.then.197
  %arraydecay206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call207 = call i32 @strcmp(i8* %arraydecay206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp208 = icmp ne i32 %call207, 0
  br i1 %cmp208, label %if.then.209, label %if.end.214

if.then.209:                                      ; preds = %if.end.205
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0))
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay211 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay211)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %144 = load i32, i32* %cell, align 4
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %144)
  call void @exit(i32 0) #6
  unreachable

if.end.214:                                       ; preds = %if.end.205
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay215 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay215)
  store i32 %call216, i32* %test, align 4
  %146 = load i32, i32* %test, align 4
  %cmp217 = icmp ne i32 %146, 1
  br i1 %cmp217, label %if.then.218, label %if.end.222

if.then.218:                                      ; preds = %if.end.214
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0))
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %150 = load i32, i32* %cell, align 4
  %call221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %150)
  call void @exit(i32 0) #6
  unreachable

if.end.222:                                       ; preds = %if.end.214
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* %xpos, i32* %ypos)
  store i32 %call223, i32* %test, align 4
  %152 = load i32, i32* %test, align 4
  %cmp224 = icmp ne i32 %152, 2
  br i1 %cmp224, label %if.then.225, label %if.end.228

if.then.225:                                      ; preds = %if.end.222
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0))
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %155 = load i32, i32* %cell, align 4
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %155)
  call void @exit(i32 0) #6
  unreachable

if.end.228:                                       ; preds = %if.end.222
  br label %if.end.672

if.else.229:                                      ; preds = %if.else.193
  %arraydecay230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call231 = call i32 @strcmp(i8* %arraydecay230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)) #5
  %cmp232 = icmp eq i32 %call231, 0
  br i1 %cmp232, label %if.then.233, label %if.else.397

if.then.233:                                      ; preds = %if.else.229
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  store i32 %call234, i32* %test, align 4
  %157 = load i32, i32* %test, align 4
  %cmp235 = icmp ne i32 %157, 1
  br i1 %cmp235, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %if.then.233
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0))
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %160 = load i32, i32* %cell, align 4
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %160)
  call void @exit(i32 0) #6
  unreachable

if.end.239:                                       ; preds = %if.then.233
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay240 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay240)
  store i32 %call241, i32* %test, align 4
  %162 = load i32, i32* %test, align 4
  %cmp242 = icmp ne i32 %162, 1
  br i1 %cmp242, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %if.end.239
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %165 = load i32, i32* %cell, align 4
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %165)
  call void @exit(i32 0) #6
  unreachable

if.end.246:                                       ; preds = %if.end.239
  %arraydecay247 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call248 = call i32 @strcmp(i8* %arraydecay247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp249 = icmp ne i32 %call248, 0
  br i1 %cmp249, label %if.then.250, label %if.end.253

if.then.250:                                      ; preds = %if.end.246
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %168 = load i32, i32* %cell, align 4
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %168)
  call void @exit(i32 0) #6
  unreachable

if.end.253:                                       ; preds = %if.end.246
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay254)
  store i32 %call255, i32* %test, align 4
  %170 = load i32, i32* %test, align 4
  %cmp256 = icmp ne i32 %170, 1
  br i1 %cmp256, label %if.then.257, label %if.end.260

if.then.257:                                      ; preds = %if.end.253
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0))
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %173 = load i32, i32* %cell, align 4
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %173)
  call void @exit(i32 0) #6
  unreachable

if.end.260:                                       ; preds = %if.end.253
  %174 = load i32, i32* %cell, align 4
  %inc261 = add nsw i32 %174, 1
  store i32 %inc261, i32* %cell, align 4
  store i32 1, i32* %code, align 4
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %ncorners)
  store i32 %call262, i32* %test, align 4
  %176 = load i32, i32* %test, align 4
  %cmp263 = icmp ne i32 %176, 1
  br i1 %cmp263, label %if.then.264, label %if.end.267

if.then.264:                                      ; preds = %if.end.260
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0))
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %179 = load i32, i32* %cell, align 4
  %call266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %179)
  call void @exit(i32 0) #6
  unreachable

if.end.267:                                       ; preds = %if.end.260
  %180 = load i32, i32* %ncorners, align 4
  %cmp268 = icmp slt i32 %180, 4
  br i1 %cmp268, label %if.then.269, label %if.end.272

if.then.269:                                      ; preds = %if.end.267
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %183 = load i32, i32* %cell, align 4
  %call271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %183)
  call void @exit(i32 0) #6
  unreachable

if.end.272:                                       ; preds = %if.end.267
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay273 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call274 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay273)
  %arraydecay275 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call276 = call i32 @strcmp(i8* %arraydecay275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp277 = icmp ne i32 %call276, 0
  br i1 %cmp277, label %if.then.278, label %if.end.282

if.then.278:                                      ; preds = %if.end.272
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %188 = load i32, i32* %cell, align 4
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %188)
  call void @exit(i32 0) #6
  unreachable

if.end.282:                                       ; preds = %if.end.272
  store i32 1, i32* %corner, align 4
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.309, %if.end.282
  %189 = load i32, i32* %corner, align 4
  %190 = load i32, i32* %ncorners, align 4
  %cmp284 = icmp sle i32 %189, %190
  br i1 %cmp284, label %for.body.285, label %for.end.311

for.body.285:                                     ; preds = %for.cond.283
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* %x, i32* %y)
  store i32 %call286, i32* %test, align 4
  %192 = load i32, i32* %test, align 4
  %cmp287 = icmp ne i32 %192, 2
  br i1 %cmp287, label %if.then.288, label %if.else.291

if.then.288:                                      ; preds = %for.body.285
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0))
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %195 = load i32, i32* %cell, align 4
  %call290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %195)
  call void @exit(i32 0) #6
  unreachable

if.else.291:                                      ; preds = %for.body.285
  %196 = load i32, i32* %corner, align 4
  %cmp292 = icmp eq i32 %196, 1
  br i1 %cmp292, label %if.then.293, label %if.else.294

if.then.293:                                      ; preds = %if.else.291
  %197 = load i32, i32* %x, align 4
  store i32 %197, i32* %minx, align 4
  %198 = load i32, i32* %y, align 4
  store i32 %198, i32* %miny, align 4
  %199 = load i32, i32* %x, align 4
  store i32 %199, i32* %maxx, align 4
  %200 = load i32, i32* %y, align 4
  store i32 %200, i32* %maxy, align 4
  br label %if.end.307

if.else.294:                                      ; preds = %if.else.291
  %201 = load i32, i32* %x, align 4
  %202 = load i32, i32* %minx, align 4
  %cmp295 = icmp slt i32 %201, %202
  br i1 %cmp295, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.else.294
  %203 = load i32, i32* %x, align 4
  store i32 %203, i32* %minx, align 4
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.else.294
  %204 = load i32, i32* %x, align 4
  %205 = load i32, i32* %maxx, align 4
  %cmp298 = icmp sgt i32 %204, %205
  br i1 %cmp298, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.end.297
  %206 = load i32, i32* %x, align 4
  store i32 %206, i32* %maxx, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %if.end.297
  %207 = load i32, i32* %y, align 4
  %208 = load i32, i32* %miny, align 4
  %cmp301 = icmp slt i32 %207, %208
  br i1 %cmp301, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.end.300
  %209 = load i32, i32* %y, align 4
  store i32 %209, i32* %miny, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %if.end.300
  %210 = load i32, i32* %y, align 4
  %211 = load i32, i32* %maxy, align 4
  %cmp304 = icmp sgt i32 %210, %211
  br i1 %cmp304, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.303
  %212 = load i32, i32* %y, align 4
  store i32 %212, i32* %maxy, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %if.end.303
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.then.293
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307
  br label %for.inc.309

for.inc.309:                                      ; preds = %if.end.308
  %213 = load i32, i32* %corner, align 4
  %inc310 = add nsw i32 %213, 1
  store i32 %inc310, i32* %corner, align 4
  br label %for.cond.283

for.end.311:                                      ; preds = %for.cond.283
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay312 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call313 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay312)
  %arraydecay314 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call315 = call i32 @strcmp(i8* %arraydecay314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #5
  %cmp316 = icmp eq i32 %call315, 0
  br i1 %cmp316, label %if.then.317, label %if.else.324

if.then.317:                                      ; preds = %for.end.311
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), double* %asplb)
  store i32 %call318, i32* %test, align 4
  %216 = load i32, i32* %test, align 4
  %cmp319 = icmp ne i32 %216, 1
  br i1 %cmp319, label %if.then.320, label %if.end.323

if.then.320:                                      ; preds = %if.then.317
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i32 0, i32 0))
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %219 = load i32, i32* %cell, align 4
  %call322 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %219)
  call void @exit(i32 0) #6
  unreachable

if.end.323:                                       ; preds = %if.then.317
  br label %if.end.328

if.else.324:                                      ; preds = %for.end.311
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0))
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %223 = load i32, i32* %cell, align 4
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %223)
  call void @exit(i32 0) #6
  unreachable

if.end.328:                                       ; preds = %if.end.323
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay329 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call330 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay329)
  %arraydecay331 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call332 = call i32 @strcmp(i8* %arraydecay331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #5
  %cmp333 = icmp eq i32 %call332, 0
  br i1 %cmp333, label %if.then.334, label %if.else.341

if.then.334:                                      ; preds = %if.end.328
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), double* %aspub)
  store i32 %call335, i32* %test, align 4
  %226 = load i32, i32* %test, align 4
  %cmp336 = icmp ne i32 %226, 1
  br i1 %cmp336, label %if.then.337, label %if.end.340

if.then.337:                                      ; preds = %if.then.334
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call338 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i32 0, i32 0))
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %229 = load i32, i32* %cell, align 4
  %call339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %229)
  call void @exit(i32 0) #6
  unreachable

if.end.340:                                       ; preds = %if.then.334
  br label %if.end.345

if.else.341:                                      ; preds = %if.end.328
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call342 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0))
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %233 = load i32, i32* %cell, align 4
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %233)
  call void @exit(i32 0) #6
  unreachable

if.end.345:                                       ; preds = %if.end.340
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay346 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay346)
  %arraydecay348 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call349 = call i32 @strcmp(i8* %arraydecay348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  %cmp350 = icmp ne i32 %call349, 0
  br i1 %cmp350, label %if.then.351, label %if.end.355

if.then.351:                                      ; preds = %if.end.345
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0))
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %238 = load i32, i32* %cell, align 4
  %call354 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %238)
  call void @exit(i32 0) #6
  unreachable

if.end.355:                                       ; preds = %if.end.345
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call356 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %class)
  store i32 %call356, i32* %test, align 4
  %240 = load i32, i32* %test, align 4
  %cmp357 = icmp ne i32 %240, 1
  br i1 %cmp357, label %if.then.358, label %if.end.361

if.then.358:                                      ; preds = %if.end.355
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %243 = load i32, i32* %cell, align 4
  %call360 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %243)
  call void @exit(i32 0) #6
  unreachable

if.end.361:                                       ; preds = %if.end.355
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %norients)
  store i32 %call362, i32* %test, align 4
  %245 = load i32, i32* %test, align 4
  %cmp363 = icmp ne i32 %245, 1
  br i1 %cmp363, label %if.then.364, label %if.end.367

if.then.364:                                      ; preds = %if.end.361
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0))
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %248 = load i32, i32* %cell, align 4
  %call366 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %248)
  call void @exit(i32 0) #6
  unreachable

if.end.367:                                       ; preds = %if.end.361
  %249 = load i32, i32* %norients, align 4
  %cmp368 = icmp slt i32 %249, 1
  br i1 %cmp368, label %if.then.371, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %if.end.367
  %250 = load i32, i32* %norients, align 4
  %cmp370 = icmp sgt i32 %250, 8
  br i1 %cmp370, label %if.then.371, label %if.end.374

if.then.371:                                      ; preds = %lor.lhs.false.369, %if.end.367
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call372 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0))
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %253 = load i32, i32* %cell, align 4
  %call373 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i32 %253)
  call void @exit(i32 0) #6
  unreachable

if.end.374:                                       ; preds = %lor.lhs.false.369
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay375 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay375)
  %arraydecay377 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call378 = call i32 @strcmp(i8* %arraydecay377, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #5
  %cmp379 = icmp ne i32 %call378, 0
  br i1 %cmp379, label %if.then.380, label %if.end.384

if.then.380:                                      ; preds = %if.end.374
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call382 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %258 = load i32, i32* %cell, align 4
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %258)
  call void @exit(i32 0) #6
  unreachable

if.end.384:                                       ; preds = %if.end.374
  store i32 1, i32* %orient, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.394, %if.end.384
  %259 = load i32, i32* %orient, align 4
  %260 = load i32, i32* %norients, align 4
  %cmp386 = icmp sle i32 %259, %260
  br i1 %cmp386, label %for.body.387, label %for.end.396

for.body.387:                                     ; preds = %for.cond.385
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call388 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %x)
  store i32 %call388, i32* %test, align 4
  %262 = load i32, i32* %test, align 4
  %cmp389 = icmp ne i32 %262, 1
  br i1 %cmp389, label %if.then.390, label %if.end.393

if.then.390:                                      ; preds = %for.body.387
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call391 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %263, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0))
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %265 = load i32, i32* %cell, align 4
  %call392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %264, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %265)
  call void @exit(i32 0) #6
  unreachable

if.end.393:                                       ; preds = %for.body.387
  br label %for.inc.394

for.inc.394:                                      ; preds = %if.end.393
  %266 = load i32, i32* %orient, align 4
  %inc395 = add nsw i32 %266, 1
  store i32 %inc395, i32* %orient, align 4
  br label %for.cond.385

for.end.396:                                      ; preds = %for.cond.385
  store i32 2, i32* %code, align 4
  br label %if.end.671

if.else.397:                                      ; preds = %if.else.229
  %arraydecay398 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call399 = call i32 @strcmp(i8* %arraydecay398, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0)) #5
  %cmp400 = icmp eq i32 %call399, 0
  br i1 %cmp400, label %if.then.405, label %lor.lhs.false.401

lor.lhs.false.401:                                ; preds = %if.else.397
  %arraydecay402 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call403 = call i32 @strcmp(i8* %arraydecay402, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  %cmp404 = icmp eq i32 %call403, 0
  br i1 %cmp404, label %if.then.405, label %if.else.503

if.then.405:                                      ; preds = %lor.lhs.false.401, %if.else.397
  %267 = load i32, i32* %code, align 4
  %cmp406 = icmp ne i32 %267, 2
  br i1 %cmp406, label %if.then.407, label %if.end.411

if.then.407:                                      ; preds = %if.then.405
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call408 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %268, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i32 0, i32 0))
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %269, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %271 = load i32, i32* %cell, align 4
  %call410 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %271)
  call void @exit(i32 0) #6
  unreachable

if.end.411:                                       ; preds = %if.then.405
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call412 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %sequence)
  store i32 %call412, i32* %test, align 4
  %273 = load i32, i32* %test, align 4
  %cmp413 = icmp ne i32 %273, 1
  br i1 %cmp413, label %if.then.414, label %if.end.417

if.then.414:                                      ; preds = %if.end.411
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call415 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0))
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %276 = load i32, i32* %cell, align 4
  %call416 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %276)
  call void @exit(i32 0) #6
  unreachable

if.end.417:                                       ; preds = %if.end.411
  store i32 1, i32* %i, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.484, %if.end.417
  %277 = load i32, i32* %i, align 4
  %278 = load i32, i32* %sequence, align 4
  %cmp419 = icmp sle i32 %277, %278
  br i1 %cmp419, label %for.body.420, label %for.end.486

for.body.420:                                     ; preds = %for.cond.418
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay421 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call422 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay421)
  %arraydecay423 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call424 = call i32 @strcmp(i8* %arraydecay423, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #5
  %cmp425 = icmp eq i32 %call424, 0
  br i1 %cmp425, label %if.then.426, label %if.else.479

if.then.426:                                      ; preds = %for.body.420
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay427 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay427)
  store i32 %call428, i32* %test, align 4
  %281 = load i32, i32* %test, align 4
  %cmp429 = icmp ne i32 %281, 1
  br i1 %cmp429, label %if.then.430, label %if.end.434

if.then.430:                                      ; preds = %if.then.426
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call432 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %285 = load i32, i32* %cell, align 4
  %call433 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %285)
  call void @exit(i32 0) #6
  unreachable

if.end.434:                                       ; preds = %if.then.426
  %arraydecay435 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call436 = call i32 @strcmp(i8* %arraydecay435, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp437 = icmp ne i32 %call436, 0
  br i1 %cmp437, label %if.then.438, label %if.end.444

if.then.438:                                      ; preds = %if.end.434
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call439 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %286, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0))
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call440 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0))
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay441 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call442 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay441)
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %290 = load i32, i32* %cell, align 4
  %call443 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %290)
  call void @exit(i32 0) #6
  unreachable

if.end.444:                                       ; preds = %if.end.434
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay445 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call446 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay445)
  store i32 %call446, i32* %test, align 4
  %292 = load i32, i32* %test, align 4
  %cmp447 = icmp ne i32 %292, 1
  br i1 %cmp447, label %if.then.448, label %if.end.452

if.then.448:                                      ; preds = %if.end.444
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0))
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call450 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %294, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %296 = load i32, i32* %cell, align 4
  %call451 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %296)
  call void @exit(i32 0) #6
  unreachable

if.end.452:                                       ; preds = %if.end.444
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay453 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call454 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay453)
  store i32 %call454, i32* %test, align 4
  %298 = load i32, i32* %test, align 4
  %cmp455 = icmp ne i32 %298, 1
  br i1 %cmp455, label %if.then.456, label %if.end.460

if.then.456:                                      ; preds = %if.end.452
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %299, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0))
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call458 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i32 0, i32 0))
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %302 = load i32, i32* %cell, align 4
  %call459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %302)
  call void @exit(i32 0) #6
  unreachable

if.end.460:                                       ; preds = %if.end.452
  %arraydecay461 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call462 = call i32 @strcmp(i8* %arraydecay461, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp463 = icmp ne i32 %call462, 0
  br i1 %cmp463, label %if.then.464, label %if.end.470

if.then.464:                                      ; preds = %if.end.460
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call465 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %303, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0))
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0))
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay467 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call468 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %305, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay467)
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %307 = load i32, i32* %cell, align 4
  %call469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %307)
  call void @exit(i32 0) #6
  unreachable

if.end.470:                                       ; preds = %if.end.460
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay471 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call472 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay471)
  store i32 %call472, i32* %test, align 4
  %309 = load i32, i32* %test, align 4
  %cmp473 = icmp ne i32 %309, 1
  br i1 %cmp473, label %if.then.474, label %if.end.478

if.then.474:                                      ; preds = %if.end.470
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call475 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %310, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0))
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %311, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %313 = load i32, i32* %cell, align 4
  %call477 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %313)
  call void @exit(i32 0) #6
  unreachable

if.end.478:                                       ; preds = %if.end.470
  br label %if.end.483

if.else.479:                                      ; preds = %for.body.420
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %314, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0))
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call481 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %317 = load i32, i32* %cell, align 4
  %call482 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %317)
  call void @exit(i32 0) #6
  unreachable

if.end.483:                                       ; preds = %if.end.478
  br label %for.inc.484

for.inc.484:                                      ; preds = %if.end.483
  %318 = load i32, i32* %i, align 4
  %inc485 = add nsw i32 %318, 1
  store i32 %inc485, i32* %i, align 4
  br label %for.cond.418

for.end.486:                                      ; preds = %for.cond.418
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay487 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call488 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay487)
  %arraydecay489 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call490 = call i32 @strcmp(i8* %arraydecay489, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0)) #5
  %cmp491 = icmp ne i32 %call490, 0
  br i1 %cmp491, label %if.then.492, label %if.end.496

if.then.492:                                      ; preds = %for.end.486
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call493 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %320, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i32 0, i32 0))
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %321, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %323 = load i32, i32* %cell, align 4
  %call495 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %323)
  call void @exit(i32 0) #6
  unreachable

if.end.496:                                       ; preds = %for.end.486
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* %firstside, i32* %lastside)
  store i32 %call497, i32* %test, align 4
  %325 = load i32, i32* %test, align 4
  %cmp498 = icmp ne i32 %325, 2
  br i1 %cmp498, label %if.then.499, label %if.end.502

if.then.499:                                      ; preds = %if.end.496
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call500 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %326, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0))
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %328 = load i32, i32* %cell, align 4
  %call501 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %327, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i32 0, i32 0), i32 %328)
  call void @exit(i32 0) #6
  unreachable

if.end.502:                                       ; preds = %if.end.496
  br label %if.end.670

if.else.503:                                      ; preds = %lor.lhs.false.401
  %arraydecay504 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call505 = call i32 @strcmp(i8* %arraydecay504, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0)) #5
  %cmp506 = icmp eq i32 %call505, 0
  br i1 %cmp506, label %if.then.507, label %if.else.656

if.then.507:                                      ; preds = %if.else.503
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call508 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %cellnum)
  store i32 %call508, i32* %test, align 4
  %330 = load i32, i32* %test, align 4
  %cmp509 = icmp ne i32 %330, 1
  br i1 %cmp509, label %if.then.510, label %if.end.513

if.then.510:                                      ; preds = %if.then.507
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call511 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %331, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i32 0, i32 0))
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %333 = load i32, i32* %cell, align 4
  %call512 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %332, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 %333)
  call void @exit(i32 0) #6
  unreachable

if.end.513:                                       ; preds = %if.then.507
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay514 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call515 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay514)
  store i32 %call515, i32* %test, align 4
  %335 = load i32, i32* %test, align 4
  %cmp516 = icmp ne i32 %335, 1
  br i1 %cmp516, label %if.then.517, label %if.end.520

if.then.517:                                      ; preds = %if.end.513
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call518 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %336, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %338 = load i32, i32* %cell, align 4
  %call519 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %337, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %338)
  call void @exit(i32 0) #6
  unreachable

if.end.520:                                       ; preds = %if.end.513
  %arraydecay521 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call522 = call i32 @strcmp(i8* %arraydecay521, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp523 = icmp ne i32 %call522, 0
  br i1 %cmp523, label %if.then.524, label %if.end.527

if.then.524:                                      ; preds = %if.end.520
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call525 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %341 = load i32, i32* %cell, align 4
  %call526 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %341)
  call void @exit(i32 0) #6
  unreachable

if.end.527:                                       ; preds = %if.end.520
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay528 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call529 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %342, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay528)
  store i32 %call529, i32* %test, align 4
  %343 = load i32, i32* %test, align 4
  %cmp530 = icmp ne i32 %343, 1
  br i1 %cmp530, label %if.then.531, label %if.end.534

if.then.531:                                      ; preds = %if.end.527
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call532 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %344, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0))
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %346 = load i32, i32* %cell, align 4
  %call533 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %346)
  call void @exit(i32 0) #6
  unreachable

if.end.534:                                       ; preds = %if.end.527
  %347 = load i32, i32* %pad, align 4
  %inc535 = add nsw i32 %347, 1
  store i32 %inc535, i32* %pad, align 4
  store i32 3, i32* %code, align 4
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call536 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %ncorners)
  store i32 %call536, i32* %test, align 4
  %349 = load i32, i32* %test, align 4
  %cmp537 = icmp ne i32 %349, 1
  br i1 %cmp537, label %if.then.538, label %if.end.541

if.then.538:                                      ; preds = %if.end.534
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call539 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %350, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0))
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %352 = load i32, i32* %cell, align 4
  %call540 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %352)
  call void @exit(i32 0) #6
  unreachable

if.end.541:                                       ; preds = %if.end.534
  %353 = load i32, i32* %ncorners, align 4
  %cmp542 = icmp slt i32 %353, 4
  br i1 %cmp542, label %if.then.543, label %if.end.546

if.then.543:                                      ; preds = %if.end.541
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call544 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %354, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %356 = load i32, i32* %cell, align 4
  %call545 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %355, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %356)
  call void @exit(i32 0) #6
  unreachable

if.end.546:                                       ; preds = %if.end.541
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay547 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call548 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay547)
  %arraydecay549 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call550 = call i32 @strcmp(i8* %arraydecay549, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp551 = icmp ne i32 %call550, 0
  br i1 %cmp551, label %if.then.552, label %if.end.556

if.then.552:                                      ; preds = %if.end.546
  %358 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %358, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call554 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %361 = load i32, i32* %cell, align 4
  %call555 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %361)
  call void @exit(i32 0) #6
  unreachable

if.end.556:                                       ; preds = %if.end.546
  store i32 1, i32* %corner, align 4
  br label %for.cond.557

for.cond.557:                                     ; preds = %for.inc.583, %if.end.556
  %362 = load i32, i32* %corner, align 4
  %363 = load i32, i32* %ncorners, align 4
  %cmp558 = icmp sle i32 %362, %363
  br i1 %cmp558, label %for.body.559, label %for.end.585

for.body.559:                                     ; preds = %for.cond.557
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call560 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %364, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* %x, i32* %y)
  store i32 %call560, i32* %test, align 4
  %365 = load i32, i32* %test, align 4
  %cmp561 = icmp ne i32 %365, 2
  br i1 %cmp561, label %if.then.562, label %if.else.565

if.then.562:                                      ; preds = %for.body.559
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call563 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %366, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0))
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %368 = load i32, i32* %cell, align 4
  %call564 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %367, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %368)
  call void @exit(i32 0) #6
  unreachable

if.else.565:                                      ; preds = %for.body.559
  %369 = load i32, i32* %corner, align 4
  %cmp566 = icmp eq i32 %369, 1
  br i1 %cmp566, label %if.then.567, label %if.else.568

if.then.567:                                      ; preds = %if.else.565
  %370 = load i32, i32* %x, align 4
  store i32 %370, i32* %minx, align 4
  %371 = load i32, i32* %y, align 4
  store i32 %371, i32* %miny, align 4
  %372 = load i32, i32* %x, align 4
  store i32 %372, i32* %maxx, align 4
  %373 = load i32, i32* %y, align 4
  store i32 %373, i32* %maxy, align 4
  br label %if.end.581

if.else.568:                                      ; preds = %if.else.565
  %374 = load i32, i32* %x, align 4
  %375 = load i32, i32* %minx, align 4
  %cmp569 = icmp slt i32 %374, %375
  br i1 %cmp569, label %if.then.570, label %if.end.571

if.then.570:                                      ; preds = %if.else.568
  %376 = load i32, i32* %x, align 4
  store i32 %376, i32* %minx, align 4
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.570, %if.else.568
  %377 = load i32, i32* %x, align 4
  %378 = load i32, i32* %maxx, align 4
  %cmp572 = icmp sgt i32 %377, %378
  br i1 %cmp572, label %if.then.573, label %if.end.574

if.then.573:                                      ; preds = %if.end.571
  %379 = load i32, i32* %x, align 4
  store i32 %379, i32* %maxx, align 4
  br label %if.end.574

if.end.574:                                       ; preds = %if.then.573, %if.end.571
  %380 = load i32, i32* %y, align 4
  %381 = load i32, i32* %miny, align 4
  %cmp575 = icmp slt i32 %380, %381
  br i1 %cmp575, label %if.then.576, label %if.end.577

if.then.576:                                      ; preds = %if.end.574
  %382 = load i32, i32* %y, align 4
  store i32 %382, i32* %miny, align 4
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.576, %if.end.574
  %383 = load i32, i32* %y, align 4
  %384 = load i32, i32* %maxy, align 4
  %cmp578 = icmp sgt i32 %383, %384
  br i1 %cmp578, label %if.then.579, label %if.end.580

if.then.579:                                      ; preds = %if.end.577
  %385 = load i32, i32* %y, align 4
  store i32 %385, i32* %maxy, align 4
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.579, %if.end.577
  br label %if.end.581

if.end.581:                                       ; preds = %if.end.580, %if.then.567
  br label %if.end.582

if.end.582:                                       ; preds = %if.end.581
  br label %for.inc.583

for.inc.583:                                      ; preds = %if.end.582
  %386 = load i32, i32* %corner, align 4
  %inc584 = add nsw i32 %386, 1
  store i32 %inc584, i32* %corner, align 4
  br label %for.cond.557

for.end.585:                                      ; preds = %for.cond.557
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay586 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call587 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %387, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay586)
  %arraydecay588 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call589 = call i32 @strcmp(i8* %arraydecay588, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0)) #5
  %cmp590 = icmp eq i32 %call589, 0
  br i1 %cmp590, label %if.then.591, label %if.else.600

if.then.591:                                      ; preds = %for.end.585
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay592 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call593 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %388, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay592)
  store i32 %call593, i32* %test, align 4
  %389 = load i32, i32* %test, align 4
  %cmp594 = icmp ne i32 %389, 1
  br i1 %cmp594, label %if.then.595, label %if.end.599

if.then.595:                                      ; preds = %if.then.591
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call596 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %390, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0))
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call597 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %391, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %393 = load i32, i32* %pad, align 4
  %call598 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %392, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i32 %393)
  call void @exit(i32 0) #6
  unreachable

if.end.599:                                       ; preds = %if.then.591
  br label %if.end.604

if.else.600:                                      ; preds = %for.end.585
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call601 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %394, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i32 0, i32 0))
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call602 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %395, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0))
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %397 = load i32, i32* %pad, align 4
  %call603 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %396, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i32 %397)
  call void @exit(i32 0) #6
  unreachable

if.end.604:                                       ; preds = %if.end.599
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay605 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call606 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %398, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay605)
  %arraydecay607 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call608 = call i32 @strcmp(i8* %arraydecay607, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  %cmp609 = icmp ne i32 %call608, 0
  br i1 %cmp609, label %if.then.610, label %if.end.614

if.then.610:                                      ; preds = %if.end.604
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call611 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %399, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0))
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call612 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %401 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %402 = load i32, i32* %cell, align 4
  %call613 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %401, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %402)
  call void @exit(i32 0) #6
  unreachable

if.end.614:                                       ; preds = %if.end.604
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call615 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %403, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %class)
  store i32 %call615, i32* %test, align 4
  %404 = load i32, i32* %test, align 4
  %cmp616 = icmp ne i32 %404, 1
  br i1 %cmp616, label %if.then.617, label %if.end.620

if.then.617:                                      ; preds = %if.end.614
  %405 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call618 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %405, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %407 = load i32, i32* %cell, align 4
  %call619 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %406, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %407)
  call void @exit(i32 0) #6
  unreachable

if.end.620:                                       ; preds = %if.end.614
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call621 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %408, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %norients)
  store i32 %call621, i32* %test, align 4
  %409 = load i32, i32* %test, align 4
  %cmp622 = icmp ne i32 %409, 1
  br i1 %cmp622, label %if.then.623, label %if.end.626

if.then.623:                                      ; preds = %if.end.620
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call624 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %410, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0))
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %412 = load i32, i32* %cell, align 4
  %call625 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %411, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %412)
  call void @exit(i32 0) #6
  unreachable

if.end.626:                                       ; preds = %if.end.620
  %413 = load i32, i32* %norients, align 4
  %cmp627 = icmp slt i32 %413, 1
  br i1 %cmp627, label %if.then.630, label %lor.lhs.false.628

lor.lhs.false.628:                                ; preds = %if.end.626
  %414 = load i32, i32* %norients, align 4
  %cmp629 = icmp sgt i32 %414, 8
  br i1 %cmp629, label %if.then.630, label %if.end.633

if.then.630:                                      ; preds = %lor.lhs.false.628, %if.end.626
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call631 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %415, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0))
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %417 = load i32, i32* %cell, align 4
  %call632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %416, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i32 %417)
  call void @exit(i32 0) #6
  unreachable

if.end.633:                                       ; preds = %lor.lhs.false.628
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay634 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call635 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %418, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay634)
  %arraydecay636 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call637 = call i32 @strcmp(i8* %arraydecay636, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #5
  %cmp638 = icmp ne i32 %call637, 0
  br i1 %cmp638, label %if.then.639, label %if.end.643

if.then.639:                                      ; preds = %if.end.633
  %419 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call640 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %419, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call641 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %422 = load i32, i32* %cell, align 4
  %call642 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %421, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %422)
  call void @exit(i32 0) #6
  unreachable

if.end.643:                                       ; preds = %if.end.633
  store i32 1, i32* %orient, align 4
  br label %for.cond.644

for.cond.644:                                     ; preds = %for.inc.653, %if.end.643
  %423 = load i32, i32* %orient, align 4
  %424 = load i32, i32* %norients, align 4
  %cmp645 = icmp sle i32 %423, %424
  br i1 %cmp645, label %for.body.646, label %for.end.655

for.body.646:                                     ; preds = %for.cond.644
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call647 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %425, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %x)
  store i32 %call647, i32* %test, align 4
  %426 = load i32, i32* %test, align 4
  %cmp648 = icmp ne i32 %426, 1
  br i1 %cmp648, label %if.then.649, label %if.end.652

if.then.649:                                      ; preds = %for.body.646
  %427 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call650 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %427, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0))
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %429 = load i32, i32* %cell, align 4
  %call651 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %428, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %429)
  call void @exit(i32 0) #6
  unreachable

if.end.652:                                       ; preds = %for.body.646
  br label %for.inc.653

for.inc.653:                                      ; preds = %if.end.652
  %430 = load i32, i32* %orient, align 4
  %inc654 = add nsw i32 %430, 1
  store i32 %inc654, i32* %orient, align 4
  br label %for.cond.644

for.end.655:                                      ; preds = %for.cond.644
  store i32 4, i32* %code, align 4
  br label %if.end.669

if.else.656:                                      ; preds = %if.else.503
  %arraydecay657 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call658 = call i32 @strcmp(i8* %arraydecay657, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0)) #5
  %cmp659 = icmp eq i32 %call658, 0
  br i1 %cmp659, label %if.then.660, label %if.else.662

if.then.660:                                      ; preds = %if.else.656
  %431 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call661 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %431, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %space)
  store i32 %call661, i32* %test, align 4
  br label %if.end.668

if.else.662:                                      ; preds = %if.else.656
  %432 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call663 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %432, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0))
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay664 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call665 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %433, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay664)
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call666 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %434, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  %435 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %436 = load i32, i32* %cell, align 4
  %call667 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %435, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %436)
  call void @exit(i32 0) #6
  unreachable

if.end.668:                                       ; preds = %if.then.660
  br label %if.end.669

if.end.669:                                       ; preds = %if.end.668, %for.end.655
  br label %if.end.670

if.end.670:                                       ; preds = %if.end.669, %if.end.502
  br label %if.end.671

if.end.671:                                       ; preds = %if.end.670, %for.end.396
  br label %if.end.672

if.end.672:                                       ; preds = %if.end.671, %if.end.228
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.672, %if.end.192
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %for.end.124
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %437 = load i32, i32* %cell, align 4
  store i32 %437, i32* @numcells, align 4
  %438 = load i32, i32* %pad, align 4
  store i32 %438, i32* @numpads, align 4
  %439 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %439)
  %440 = load i32, i32* @numcells, align 4
  call void @makebins(i32 %440)
  %441 = load i32, i32* @numcells, align 4
  %add = add nsw i32 5, %441
  %442 = load i32, i32* @numpads, align 4
  %add675 = add nsw i32 %add, %442
  %conv = sext i32 %add675 to i64
  %mul = mul i64 %conv, 8
  %call676 = call noalias i8* @malloc(i64 %mul) #7
  %443 = bitcast i8* %call676 to %struct.cellbox**
  store %struct.cellbox** %443, %struct.cellbox*** @cellarray, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond.677

for.cond.677:                                     ; preds = %for.inc.696, %while.end
  %444 = load i32, i32* %cell, align 4
  %445 = load i32, i32* @numcells, align 4
  %446 = load i32, i32* @numpads, align 4
  %add678 = add nsw i32 %445, %446
  %add679 = add nsw i32 %add678, 4
  %cmp680 = icmp sle i32 %444, %add679
  br i1 %cmp680, label %for.body.682, label %for.end.698

for.body.682:                                     ; preds = %for.cond.677
  %call683 = call noalias i8* @malloc(i64 224) #7
  %447 = bitcast i8* %call683 to %struct.cellbox*
  %448 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %448 to i64
  %449 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %449, i64 %idxprom
  store %struct.cellbox* %447, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %447, %struct.cellbox** %ptr, align 8
  %450 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %450, i32 0, i32 2
  store i32 0, i32* %xcenter, align 4
  %451 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %451, i32 0, i32 3
  store i32 0, i32* %ycenter, align 4
  %452 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient684 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %452, i32 0, i32 5
  store i32 0, i32* %orient684, align 4
  %453 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %453, i32 0, i32 6
  store i32 0, i32* %numtiles, align 4
  %454 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %454, i32 0, i32 8
  store i32 0, i32* %numterms, align 4
  %455 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites = getelementptr inbounds %struct.cellbox, %struct.cellbox* %455, i32 0, i32 17
  store i32 0, i32* %numsites, align 4
  %456 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numgroups = getelementptr inbounds %struct.cellbox, %struct.cellbox* %456, i32 0, i32 9
  store i32 0, i32* %numgroups, align 4
  %457 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %457, i32 0, i32 10
  store i32 0, i32* %softflag, align 4
  %458 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %padside = getelementptr inbounds %struct.cellbox, %struct.cellbox* %458, i32 0, i32 11
  store i32 0, i32* %padside, align 4
  %459 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %459, i32 0, i32 18
  store i32 0, i32* %numUnComTerms, align 4
  %460 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspect = getelementptr inbounds %struct.cellbox, %struct.cellbox* %460, i32 0, i32 13
  store double 1.000000e+00, double* %aspect, align 8
  %461 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspUB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %461, i32 0, i32 15
  store double 1.000000e+00, double* %aspUB, align 8
  %462 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %aspLB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %462, i32 0, i32 16
  store double 1.000000e+00, double* %aspLB, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.685

for.cond.685:                                     ; preds = %for.inc.693, %for.body.682
  %463 = load i32, i32* %i, align 4
  %cmp686 = icmp slt i32 %463, 8
  br i1 %cmp686, label %for.body.688, label %for.end.695

for.body.688:                                     ; preds = %for.cond.685
  %464 = load i32, i32* %i, align 4
  %idxprom689 = sext i32 %464 to i64
  %465 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %465, i32 0, i32 21
  %arrayidx690 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom689
  store %struct.tilebox* null, %struct.tilebox** %arrayidx690, align 8
  %466 = load i32, i32* %i, align 4
  %idxprom691 = sext i32 %466 to i64
  %467 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList = getelementptr inbounds %struct.cellbox, %struct.cellbox* %467, i32 0, i32 4
  %arrayidx692 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList, i32 0, i64 %idxprom691
  store i32 0, i32* %arrayidx692, align 4
  br label %for.inc.693

for.inc.693:                                      ; preds = %for.body.688
  %468 = load i32, i32* %i, align 4
  %inc694 = add nsw i32 %468, 1
  store i32 %inc694, i32* %i, align 4
  br label %for.cond.685

for.end.695:                                      ; preds = %for.cond.685
  br label %for.inc.696

for.inc.696:                                      ; preds = %for.end.695
  %469 = load i32, i32* %cell, align 4
  %inc697 = add nsw i32 %469, 1
  store i32 %inc697, i32* %cell, align 4
  br label %for.cond.677

for.end.698:                                      ; preds = %for.cond.677
  %470 = load i32, i32* @numpads, align 4
  %add699 = add nsw i32 %470, 1
  %conv700 = sext i32 %add699 to i64
  %mul701 = mul i64 %conv700, 8
  %call702 = call noalias i8* @malloc(i64 %mul701) #7
  %471 = bitcast i8* %call702 to double*
  store double* %471, double** @padspace, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.703

for.cond.703:                                     ; preds = %for.inc.709, %for.end.698
  %472 = load i32, i32* %i, align 4
  %473 = load i32, i32* @numpads, align 4
  %cmp704 = icmp sle i32 %472, %473
  br i1 %cmp704, label %for.body.706, label %for.end.711

for.body.706:                                     ; preds = %for.cond.703
  %474 = load i32, i32* %i, align 4
  %idxprom707 = sext i32 %474 to i64
  %475 = load double*, double** @padspace, align 8
  %arrayidx708 = getelementptr inbounds double, double* %475, i64 %idxprom707
  store double 0.000000e+00, double* %arrayidx708, align 8
  br label %for.inc.709

for.inc.709:                                      ; preds = %for.body.706
  %476 = load i32, i32* %i, align 4
  %inc710 = add nsw i32 %476, 1
  store i32 %inc710, i32* %i, align 4
  br label %for.cond.703

for.end.711:                                      ; preds = %for.cond.703
  %call712 = call noalias i8* @malloc(i64 16) #7
  %477 = bitcast i8* %call712 to i32*
  store i32* %477, i32** @fixLRBT, align 8
  %478 = load i32*, i32** @fixLRBT, align 8
  %arrayidx713 = getelementptr inbounds i32, i32* %478, i64 0
  store i32 0, i32* %arrayidx713, align 4
  %479 = load i32*, i32** @fixLRBT, align 8
  %arrayidx714 = getelementptr inbounds i32, i32* %479, i64 1
  store i32 0, i32* %arrayidx714, align 4
  %480 = load i32*, i32** @fixLRBT, align 8
  %arrayidx715 = getelementptr inbounds i32, i32* %480, i64 2
  store i32 0, i32* %arrayidx715, align 4
  %481 = load i32*, i32** @fixLRBT, align 8
  %arrayidx716 = getelementptr inbounds i32, i32* %481, i64 3
  store i32 0, i32* %arrayidx716, align 4
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @rewind(%struct._IO_FILE*) #1

declare void @makebins(i32) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
