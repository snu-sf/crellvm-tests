; ModuleID = './MultiSource.Benchmarks.Ptrdist/23.ks.KS-1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Module = type { %struct._Module*, i64 }
%struct._Net = type { %struct._Net*, i64 }
%struct._ModuleList = type { %struct._ModuleRec*, %struct._ModuleRec* }
%struct._ModuleRec = type { %struct._ModuleRec*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"(%s:%s():%d): \00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ReadData\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to open input file [%s]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@numNets = common global i64 0, align 8
@numModules = common global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to parse header in file [%s]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unable to allocate a module list node\00", align 1
@nets = common global [1024 x %struct._Module*] zeroinitializer, align 16
@modules = common global [1024 x %struct._Net*] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"NetsToModules\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to allocate net list node\00", align 1
@cost = common global [1024 x float] zeroinitializer, align 16
@groupA = common global %struct._ModuleList zeroinitializer, align 8
@groupB = common global %struct._ModuleList zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"unable to allocate ModuleRec\00", align 1
@moduleToGroup = common global [1024 x i32] zeroinitializer, align 16
@swapToA = common global %struct._ModuleList zeroinitializer, align 8
@swapToB = common global %struct._ModuleList zeroinitializer, align 8
@D = common global [1024 x float] zeroinitializer, align 16
@GP = common global [1024 x float] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @ReadNetList(i8* %fname) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %inFile = alloca %struct._IO_FILE*, align 8
  %line = alloca [1024 x i8], align 16
  %tok = alloca i8*, align 8
  %net = alloca i64, align 8
  %dest = alloca i64, align 8
  %node = alloca %struct._Module*, align 8
  %prev = alloca %struct._Module*, align 8
  %head = alloca %struct._Module*, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %inFile, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inFile, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 46)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %inFile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %4, i32 0, i32 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %inFile, align 8
  %call4 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %6)
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64* @numNets, i64* @numModules) #6
  %cmp7 = icmp eq i32 %call6, 2
  br i1 %cmp7, label %if.end.12, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 51)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %inFile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %9, i32 0, i32 0)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.12:                                        ; preds = %if.end
  store i64 0, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %11 = load i64, i64* %net, align 8
  %12 = load i64, i64* @numNets, align 8
  %cmp13 = icmp ult i64 %11, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %inFile, align 8
  %call15 = call i8* @fgets(i8* %arraydecay14, i32 1024, %struct._IO_FILE* %13)
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call17 = call i8* @strtok(i8* %arraydecay16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #6
  %call18 = call i64 @atol(i8* %call17) #7
  %sub = sub nsw i64 %call18, 1
  store i64 %sub, i64* %dest, align 8
  %call19 = call noalias i8* @malloc(i64 16) #6
  %14 = bitcast i8* %call19 to %struct._Module*
  store %struct._Module* %14, %struct._Module** %prev, align 8
  store %struct._Module* %14, %struct._Module** %head, align 8
  %15 = load %struct._Module*, %struct._Module** %prev, align 8
  %cmp20 = icmp ne %struct._Module* %15, null
  br i1 %cmp20, label %if.end.25, label %if.then.21

if.then.21:                                       ; preds = %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 63)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.25:                                        ; preds = %for.body
  %call26 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #6
  %call27 = call i64 @atol(i8* %call26) #7
  %sub28 = sub nsw i64 %call27, 1
  %19 = load %struct._Module*, %struct._Module** %prev, align 8
  %module = getelementptr inbounds %struct._Module, %struct._Module* %19, i32 0, i32 1
  store i64 %sub28, i64* %module, align 8
  %20 = load %struct._Module*, %struct._Module** %prev, align 8
  %next = getelementptr inbounds %struct._Module, %struct._Module* %20, i32 0, i32 0
  store %struct._Module* null, %struct._Module** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end.25
  %call29 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #6
  store i8* %call29, i8** %tok, align 8
  %cmp30 = icmp ne i8* %call29, null
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call31 = call noalias i8* @malloc(i64 16) #6
  %21 = bitcast i8* %call31 to %struct._Module*
  store %struct._Module* %21, %struct._Module** %node, align 8
  %22 = load %struct._Module*, %struct._Module** %node, align 8
  %cmp32 = icmp ne %struct._Module* %22, null
  br i1 %cmp32, label %if.end.37, label %if.then.33

if.then.33:                                       ; preds = %while.body
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 70)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.37:                                        ; preds = %while.body
  %26 = load i8*, i8** %tok, align 8
  %call38 = call i64 @atol(i8* %26) #7
  %sub39 = sub nsw i64 %call38, 1
  %27 = load %struct._Module*, %struct._Module** %node, align 8
  %module40 = getelementptr inbounds %struct._Module, %struct._Module* %27, i32 0, i32 1
  store i64 %sub39, i64* %module40, align 8
  %28 = load %struct._Module*, %struct._Module** %node, align 8
  %next41 = getelementptr inbounds %struct._Module, %struct._Module* %28, i32 0, i32 0
  store %struct._Module* null, %struct._Module** %next41, align 8
  %29 = load %struct._Module*, %struct._Module** %node, align 8
  %30 = load %struct._Module*, %struct._Module** %prev, align 8
  %next42 = getelementptr inbounds %struct._Module, %struct._Module* %30, i32 0, i32 0
  store %struct._Module* %29, %struct._Module** %next42, align 8
  %31 = load %struct._Module*, %struct._Module** %node, align 8
  store %struct._Module* %31, %struct._Module** %prev, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct._Module*, %struct._Module** %head, align 8
  %33 = load i64, i64* %dest, align 8
  %arrayidx = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %33
  store %struct._Module* %32, %struct._Module** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %34 = load i64, i64* %net, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define void @NetsToModules() #0 {
entry:
  %net = alloca i64, align 8
  %mod = alloca i64, align 8
  %modNode = alloca %struct._Module*, align 8
  %netNode = alloca %struct._Net*, align 8
  store i64 0, i64* %mod, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %mod, align 8
  %1 = load i64, i64* @numModules, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %mod, align 8
  %arrayidx = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i32 0, i64 %2
  store %struct._Net* null, %struct._Net** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %mod, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %mod, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %net, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.19, %for.end
  %4 = load i64, i64* %net, align 8
  %5 = load i64, i64* @numNets, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end.21

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i64, i64* %net, align 8
  %arrayidx4 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %6
  %7 = load %struct._Module*, %struct._Module** %arrayidx4, align 8
  store %struct._Module* %7, %struct._Module** %modNode, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.16, %for.body.3
  %8 = load %struct._Module*, %struct._Module** %modNode, align 8
  %cmp6 = icmp ne %struct._Module* %8, null
  br i1 %cmp6, label %for.body.7, label %for.end.18

for.body.7:                                       ; preds = %for.cond.5
  %call = call noalias i8* @malloc(i64 16) #6
  %9 = bitcast i8* %call to %struct._Net*
  store %struct._Net* %9, %struct._Net** %netNode, align 8
  %10 = load %struct._Net*, %struct._Net** %netNode, align 8
  %cmp8 = icmp ne %struct._Net* %10, null
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 96)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 0)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %for.body.7
  %14 = load i64, i64* %net, align 8
  %15 = load %struct._Net*, %struct._Net** %netNode, align 8
  %net12 = getelementptr inbounds %struct._Net, %struct._Net* %15, i32 0, i32 1
  store i64 %14, i64* %net12, align 8
  %16 = load %struct._Module*, %struct._Module** %modNode, align 8
  %module = getelementptr inbounds %struct._Module, %struct._Module* %16, i32 0, i32 1
  %17 = load i64, i64* %module, align 8
  %arrayidx13 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i32 0, i64 %17
  %18 = load %struct._Net*, %struct._Net** %arrayidx13, align 8
  %19 = load %struct._Net*, %struct._Net** %netNode, align 8
  %next = getelementptr inbounds %struct._Net, %struct._Net* %19, i32 0, i32 0
  store %struct._Net* %18, %struct._Net** %next, align 8
  %20 = load %struct._Net*, %struct._Net** %netNode, align 8
  %21 = load %struct._Module*, %struct._Module** %modNode, align 8
  %module14 = getelementptr inbounds %struct._Module, %struct._Module* %21, i32 0, i32 1
  %22 = load i64, i64* %module14, align 8
  %arrayidx15 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i32 0, i64 %22
  store %struct._Net* %20, %struct._Net** %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end
  %23 = load %struct._Module*, %struct._Module** %modNode, align 8
  %next17 = getelementptr inbounds %struct._Module, %struct._Module* %23, i32 0, i32 0
  %24 = load %struct._Module*, %struct._Module** %next17, align 8
  store %struct._Module* %24, %struct._Module** %modNode, align 8
  br label %for.cond.5

for.end.18:                                       ; preds = %for.cond.5
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %25 = load i64, i64* %net, align 8
  %inc20 = add i64 %25, 1
  store i64 %inc20, i64* %net, align 8
  br label %for.cond.1

for.end.21:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ComputeNetCosts() #0 {
entry:
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* @numNets, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i32 0, i64 %2
  store float 1.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitLists() #0 {
entry:
  %p = alloca i64, align 8
  %mr = alloca %struct._ModuleRec*, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store i64 0, i64* %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %p, align 8
  %1 = load i64, i64* @numModules, align 8
  %div = udiv i64 %1, 2
  %cmp = icmp ult i64 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %call to %struct._ModuleRec*
  store %struct._ModuleRec* %2, %struct._ModuleRec** %mr, align 8
  %3 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %cmp1 = icmp ne %struct._ModuleRec* %3, null
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 145)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0, i32 0)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %for.body
  %7 = load i64, i64* %p, align 8
  %8 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %8, i32 0, i32 1
  store i64 %7, i64* %module, align 8
  %9 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  %cmp5 = icmp eq %struct._ModuleRec* %9, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  store %struct._ModuleRec* %10, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  store %struct._ModuleRec* %10, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  %11 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %11, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %12 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next7 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %12, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next7, align 8
  %13 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %14 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  %next8 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %14, i32 0, i32 0
  store %struct._ModuleRec* %13, %struct._ModuleRec** %next8, align 8
  %15 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  store %struct._ModuleRec* %15, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %16 = load i64, i64* %p, align 8
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %16
  store i32 0, i32* %arrayidx, align 4
  %call10 = call noalias i8* @malloc(i64 16) #6
  %17 = bitcast i8* %call10 to %struct._ModuleRec*
  store %struct._ModuleRec* %17, %struct._ModuleRec** %mr, align 8
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %cmp11 = icmp ne %struct._ModuleRec* %18, null
  br i1 %cmp11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 164)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0, i32 0)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.16:                                        ; preds = %if.end.9
  %22 = load i64, i64* @numModules, align 8
  %div17 = udiv i64 %22, 2
  %23 = load i64, i64* %p, align 8
  %add = add i64 %div17, %23
  %24 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %module18 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %24, i32 0, i32 1
  store i64 %add, i64* %module18, align 8
  %25 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  %cmp19 = icmp eq %struct._ModuleRec* %25, null
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.end.16
  %26 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  store %struct._ModuleRec* %26, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  store %struct._ModuleRec* %26, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next21 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %27, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next21, align 8
  br label %if.end.25

if.else.22:                                       ; preds = %if.end.16
  %28 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %next23 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %28, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %next23, align 8
  %29 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  %30 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  %next24 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %30, i32 0, i32 0
  store %struct._ModuleRec* %29, %struct._ModuleRec** %next24, align 8
  %31 = load %struct._ModuleRec*, %struct._ModuleRec** %mr, align 8
  store %struct._ModuleRec* %31, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.20
  %32 = load i64, i64* @numModules, align 8
  %div26 = udiv i64 %32, 2
  %33 = load i64, i64* %p, align 8
  %add27 = add i64 %div26, %33
  %arrayidx28 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %add27
  store i32 1, i32* %arrayidx28, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %34 = load i64, i64* %p, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ComputeDs(%struct._ModuleList* %group, i32 %myGroup, i32 %mySwap) #0 {
entry:
  %group.addr = alloca %struct._ModuleList*, align 8
  %myGroup.addr = alloca i32, align 4
  %mySwap.addr = alloca i32, align 4
  %I = alloca float, align 4
  %E = alloca float, align 4
  %netNode = alloca %struct._Net*, align 8
  %modNode = alloca %struct._Module*, align 8
  %groupNode = alloca %struct._ModuleRec*, align 8
  store %struct._ModuleList* %group, %struct._ModuleList** %group.addr, align 8
  store i32 %myGroup, i32* %myGroup.addr, align 4
  store i32 %mySwap, i32* %mySwap.addr, align 4
  %0 = load %struct._ModuleList*, %struct._ModuleList** %group.addr, align 8
  %head = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %0, i32 0, i32 0
  %1 = load %struct._ModuleRec*, %struct._ModuleRec** %head, align 8
  store %struct._ModuleRec* %1, %struct._ModuleRec** %groupNode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %2 = load %struct._ModuleRec*, %struct._ModuleRec** %groupNode, align 8
  %cmp = icmp ne %struct._ModuleRec* %2, null
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, float* %E, align 4
  store float 0.000000e+00, float* %I, align 4
  %3 = load %struct._ModuleRec*, %struct._ModuleRec** %groupNode, align 8
  %module = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %3, i32 0, i32 1
  %4 = load i64, i64* %module, align 8
  %arrayidx = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i32 0, i64 %4
  %5 = load %struct._Net*, %struct._Net** %arrayidx, align 8
  store %struct._Net* %5, %struct._Net** %netNode, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.24, %for.body
  %6 = load %struct._Net*, %struct._Net** %netNode, align 8
  %cmp2 = icmp ne %struct._Net* %6, null
  br i1 %cmp2, label %for.body.3, label %for.end.26

for.body.3:                                       ; preds = %for.cond.1
  %7 = load %struct._Net*, %struct._Net** %netNode, align 8
  %net = getelementptr inbounds %struct._Net, %struct._Net* %7, i32 0, i32 1
  %8 = load i64, i64* %net, align 8
  %arrayidx4 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i32 0, i64 %8
  %9 = load %struct._Module*, %struct._Module** %arrayidx4, align 8
  store %struct._Module* %9, %struct._Module** %modNode, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.3
  %10 = load %struct._Module*, %struct._Module** %modNode, align 8
  %cmp6 = icmp ne %struct._Module* %10, null
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %11 = load %struct._Module*, %struct._Module** %modNode, align 8
  %module8 = getelementptr inbounds %struct._Module, %struct._Module* %11, i32 0, i32 1
  %12 = load i64, i64* %module8, align 8
  %13 = load %struct._ModuleRec*, %struct._ModuleRec** %groupNode, align 8
  %module9 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %13, i32 0, i32 1
  %14 = load i64, i64* %module9, align 8
  %cmp10 = icmp ne i64 %12, %14
  br i1 %cmp10, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %for.body.7
  %15 = load %struct._Module*, %struct._Module** %modNode, align 8
  %module11 = getelementptr inbounds %struct._Module, %struct._Module* %15, i32 0, i32 1
  %16 = load i64, i64* %module11, align 8
  %arrayidx12 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %16
  %17 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp ult i32 %17, 2
  br i1 %cmp13, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct._Module*, %struct._Module** %modNode, align 8
  %module14 = getelementptr inbounds %struct._Module, %struct._Module* %18, i32 0, i32 1
  %19 = load i64, i64* %module14, align 8
  %arrayidx15 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i32 0, i64 %19
  %20 = load i32, i32* %arrayidx15, align 4
  %21 = load i32, i32* %myGroup.addr, align 4
  %cmp16 = icmp eq i32 %20, %21
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %22 = load float, float* %I, align 4
  %23 = load %struct._Net*, %struct._Net** %netNode, align 8
  %net18 = getelementptr inbounds %struct._Net, %struct._Net* %23, i32 0, i32 1
  %24 = load i64, i64* %net18, align 8
  %arrayidx19 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i32 0, i64 %24
  %25 = load float, float* %arrayidx19, align 4
  %add = fadd float %22, %25
  store float %add, float* %I, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load float, float* %E, align 4
  %27 = load %struct._Net*, %struct._Net** %netNode, align 8
  %net20 = getelementptr inbounds %struct._Net, %struct._Net* %27, i32 0, i32 1
  %28 = load i64, i64* %net20, align 8
  %arrayidx21 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i32 0, i64 %28
  %29 = load float, float* %arrayidx21, align 4
  %add22 = fadd float %26, %29
  store float %add22, float* %E, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %land.lhs.true, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %30 = load %struct._Module*, %struct._Module** %modNode, align 8
  %next = getelementptr inbounds %struct._Module, %struct._Module* %30, i32 0, i32 0
  %31 = load %struct._Module*, %struct._Module** %next, align 8
  store %struct._Module* %31, %struct._Module** %modNode, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %32 = load %struct._Net*, %struct._Net** %netNode, align 8
  %next25 = getelementptr inbounds %struct._Net, %struct._Net* %32, i32 0, i32 0
  %33 = load %struct._Net*, %struct._Net** %next25, align 8
  store %struct._Net* %33, %struct._Net** %netNode, align 8
  br label %for.cond.1

for.end.26:                                       ; preds = %for.cond.1
  %34 = load float, float* %E, align 4
  %35 = load float, float* %I, align 4
  %sub = fsub float %34, %35
  %36 = load %struct._ModuleRec*, %struct._ModuleRec** %groupNode, align 8
  %module27 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %36, i32 0, i32 1
  %37 = load i64, i64* %module27, align 8
  %arrayidx28 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i32 0, i64 %37
  store float %sub, float* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.26
  %38 = load %struct._ModuleRec*, %struct._ModuleRec** %groupNode, align 8
  %next30 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %38, i32 0, i32 0
  %39 = load %struct._ModuleRec*, %struct._ModuleRec** %next30, align 8
  store %struct._ModuleRec* %39, %struct._ModuleRec** %groupNode, align 8
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
