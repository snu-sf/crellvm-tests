; ModuleID = './MultiSource.Benchmarks.Ptrdist/8.yacr2.channel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@channelFile = common global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Error:\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\09Channel file cannot be opened.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%u%u%u\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\09Channel file description invalid at line %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\09Incorrect number of specifiers.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\09Channel file cannot be closed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\09Channel description invalid.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\09Channel has null dimension.\0A\00", align 1
@channelColumns = common global i64 0, align 8
@channelNets = common global i64 0, align 8
@TOP = common global i64* null, align 8
@BOT = common global i64* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"\09Column number out of range.\0A\00", align 1
@FIRST = common global i64* null, align 8
@LAST = common global i64* null, align 8
@DENSITY = common global i64* null, align 8
@CROSSING = common global i64* null, align 8
@channelTracks = common global i64 0, align 8
@channelDensity = common global i64 0, align 8
@channelDensityColumn = common global i64 0, align 8
@channelTracksCopy = common global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @BuildChannel() #0 {
entry:
  call void @DimensionChannel()
  call void @DescribeChannel()
  call void @DensityChannel()
  ret void
}

; Function Attrs: nounwind uwtable
define void @DimensionChannel() #0 {
entry:
  %channelFP = alloca %struct._IO_FILE*, align 8
  %line = alloca i64, align 8
  %dim = alloca i64, align 8
  %net = alloca i64, align 8
  %col = alloca i64, align 8
  %bot = alloca i64, align 8
  %top = alloca i64, align 8
  %stat = alloca i64, align 8
  %c1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %0 = load i8*, i8** @channelFile, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %channelFP, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %channelFP, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  store i64 0, i64* %line, align 8
  store i64 0, i64* %dim, align 8
  store i64 0, i64* %net, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load i64, i64* %line, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %line, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %channelFP, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32* %c1, i32* %b1, i32* %t1)
  %conv = sext i32 %call3 to i64
  store i64 %conv, i64* %stat, align 8
  %4 = load i32, i32* %c1, align 4
  %conv4 = zext i32 %4 to i64
  store i64 %conv4, i64* %col, align 8
  %5 = load i32, i32* %b1, align 4
  %conv5 = zext i32 %5 to i64
  store i64 %conv5, i64* %bot, align 8
  %6 = load i32, i32* %t1, align 4
  %conv6 = zext i32 %6 to i64
  store i64 %conv6, i64* %top, align 8
  %7 = load i64, i64* %stat, align 8
  %cmp7 = icmp ne i64 %7, -1
  br i1 %cmp7, label %if.then.9, label %if.end.29

if.then.9:                                        ; preds = %do.body
  %8 = load i64, i64* %stat, align 8
  %cmp10 = icmp eq i64 %8, 3
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %9 = load i64, i64* %col, align 8
  %10 = load i64, i64* %dim, align 8
  %cmp13 = icmp ugt i64 %9, %10
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %11 = load i64, i64* %col, align 8
  store i64 %11, i64* %dim, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  %12 = load i64, i64* %bot, align 8
  %13 = load i64, i64* %net, align 8
  %cmp17 = icmp ugt i64 %12, %13
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %14 = load i64, i64* %bot, align 8
  store i64 %14, i64* %net, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %15 = load i64, i64* %top, align 8
  %16 = load i64, i64* %net, align 8
  %cmp21 = icmp ugt i64 %15, %16
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %17 = load i64, i64* %top, align 8
  store i64 %17, i64* %net, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  br label %if.end.28

if.else:                                          ; preds = %if.then.9
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %18 = load i64, i64* %line, align 8
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i64 %18)
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.28:                                        ; preds = %if.end.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  %19 = load i64, i64* %stat, align 8
  %cmp30 = icmp ne i64 %19, -1
  br i1 %cmp30, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %channelFP, align 8
  %call32 = call i32 @fclose(%struct._IO_FILE* %20)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %do.end
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.38:                                        ; preds = %do.end
  %21 = load i64, i64* %dim, align 8
  %cmp39 = icmp eq i64 %21, 0
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.45:                                        ; preds = %if.end.38
  %22 = load i64, i64* %dim, align 8
  store i64 %22, i64* @channelColumns, align 8
  %23 = load i64, i64* %net, align 8
  store i64 %23, i64* @channelNets, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @DescribeChannel() #0 {
entry:
  %channelFP = alloca %struct._IO_FILE*, align 8
  %line = alloca i64, align 8
  %col = alloca i64, align 8
  %bot = alloca i64, align 8
  %top = alloca i64, align 8
  %stat = alloca i64, align 8
  %c1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %0 = load i64, i64* @channelColumns, align 8
  %add = add i64 %0, 1
  %mul = mul i64 %add, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to i64*
  store i64* %1, i64** @TOP, align 8
  %2 = load i64, i64* @channelColumns, align 8
  %add1 = add i64 %2, 1
  %mul2 = mul i64 %add1, 8
  %call3 = call noalias i8* @malloc(i64 %mul2) #5
  %3 = bitcast i8* %call3 to i64*
  store i64* %3, i64** @BOT, align 8
  store i64 0, i64* %col, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %col, align 8
  %5 = load i64, i64* @channelColumns, align 8
  %cmp = icmp ule i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %col, align 8
  %7 = load i64*, i64** @TOP, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  store i64 0, i64* %arrayidx, align 8
  %8 = load i64, i64* %col, align 8
  %9 = load i64*, i64** @BOT, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 %8
  store i64 0, i64* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %col, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %col, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** @channelFile, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %channelFP, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %channelFP, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %12, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %for.end
  store i64 0, i64* %line, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %13 = load i64, i64* %line, align 8
  %inc9 = add i64 %13, 1
  store i64 %inc9, i64* %line, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %channelFP, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32* %c1, i32* %b1, i32* %t1)
  %conv = sext i32 %call10 to i64
  store i64 %conv, i64* %stat, align 8
  %15 = load i32, i32* %c1, align 4
  %conv11 = zext i32 %15 to i64
  store i64 %conv11, i64* %col, align 8
  %16 = load i32, i32* %b1, align 4
  %conv12 = zext i32 %16 to i64
  store i64 %conv12, i64* %bot, align 8
  %17 = load i32, i32* %t1, align 4
  %conv13 = zext i32 %17 to i64
  store i64 %conv13, i64* %top, align 8
  %18 = load i64, i64* %stat, align 8
  %cmp14 = icmp ne i64 %18, -1
  br i1 %cmp14, label %if.then.16, label %if.end.34

if.then.16:                                       ; preds = %do.body
  %19 = load i64, i64* %stat, align 8
  %cmp17 = icmp eq i64 %19, 3
  br i1 %cmp17, label %if.then.19, label %if.else.29

if.then.19:                                       ; preds = %if.then.16
  %20 = load i64, i64* %col, align 8
  %21 = load i64, i64* @channelColumns, align 8
  %cmp20 = icmp ugt i64 %20, %21
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %22 = load i64, i64* %line, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i64 %22)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.else:                                          ; preds = %if.then.19
  %23 = load i64, i64* %bot, align 8
  %24 = load i64, i64* %col, align 8
  %25 = load i64*, i64** @BOT, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %25, i64 %24
  store i64 %23, i64* %arrayidx26, align 8
  %26 = load i64, i64* %top, align 8
  %27 = load i64, i64* %col, align 8
  %28 = load i64*, i64** @TOP, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %28, i64 %27
  store i64 %26, i64* %arrayidx27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else
  br label %if.end.33

if.else.29:                                       ; preds = %if.then.16
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %29 = load i64, i64* %line, align 8
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i64 %29)
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.33:                                        ; preds = %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.34
  %30 = load i64, i64* %stat, align 8
  %cmp35 = icmp ne i64 %30, -1
  br i1 %cmp35, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %channelFP, align 8
  %call37 = call i32 @fclose(%struct._IO_FILE* %31)
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %do.end
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.43:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @DensityChannel() #0 {
entry:
  %init = alloca i64, align 8
  %which = alloca i64, align 8
  %col = alloca i64, align 8
  %bound = alloca i64, align 8
  %boundColumn = alloca i64, align 8
  %0 = load i64, i64* @channelNets, align 8
  %add = add i64 %0, 1
  %mul = mul i64 %add, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to i64*
  store i64* %1, i64** @FIRST, align 8
  %2 = load i64, i64* @channelNets, align 8
  %add1 = add i64 %2, 1
  %mul2 = mul i64 %add1, 8
  %call3 = call noalias i8* @malloc(i64 %mul2) #5
  %3 = bitcast i8* %call3 to i64*
  store i64* %3, i64** @LAST, align 8
  %4 = load i64, i64* @channelColumns, align 8
  %add4 = add i64 %4, 1
  %mul5 = mul i64 %add4, 8
  %call6 = call noalias i8* @malloc(i64 %mul5) #5
  %5 = bitcast i8* %call6 to i64*
  store i64* %5, i64** @DENSITY, align 8
  %6 = load i64, i64* @channelNets, align 8
  %add7 = add i64 %6, 1
  %mul8 = mul i64 %add7, 8
  %call9 = call noalias i8* @malloc(i64 %mul8) #5
  %7 = bitcast i8* %call9 to i64*
  store i64* %7, i64** @CROSSING, align 8
  store i64 0, i64* %init, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, i64* %init, align 8
  %9 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %init, align 8
  %11 = load i64*, i64** @FIRST, align 8
  %arrayidx = getelementptr inbounds i64, i64* %11, i64 %10
  store i64 0, i64* %arrayidx, align 8
  %12 = load i64, i64* %init, align 8
  %13 = load i64*, i64** @LAST, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %13, i64 %12
  store i64 0, i64* %arrayidx10, align 8
  %14 = load i64, i64* %init, align 8
  %15 = load i64*, i64** @CROSSING, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %15, i64 %14
  store i64 0, i64* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %init, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %init, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %init, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.16, %for.end
  %17 = load i64, i64* %init, align 8
  %18 = load i64, i64* @channelColumns, align 8
  %cmp13 = icmp ule i64 %17, %18
  br i1 %cmp13, label %for.body.14, label %for.end.18

for.body.14:                                      ; preds = %for.cond.12
  %19 = load i64, i64* %init, align 8
  %20 = load i64*, i64** @DENSITY, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %20, i64 %19
  store i64 0, i64* %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.14
  %21 = load i64, i64* %init, align 8
  %inc17 = add i64 %21, 1
  store i64 %inc17, i64* %init, align 8
  br label %for.cond.12

for.end.18:                                       ; preds = %for.cond.12
  store i64 1, i64* %which, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.56, %for.end.18
  %22 = load i64, i64* %which, align 8
  %23 = load i64, i64* @channelNets, align 8
  %cmp20 = icmp ule i64 %22, %23
  br i1 %cmp20, label %for.body.21, label %for.end.58

for.body.21:                                      ; preds = %for.cond.19
  store i64 1, i64* %col, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.30, %for.body.21
  %24 = load i64, i64* %col, align 8
  %25 = load i64, i64* @channelColumns, align 8
  %cmp23 = icmp ule i64 %24, %25
  br i1 %cmp23, label %for.body.24, label %for.end.32

for.body.24:                                      ; preds = %for.cond.22
  %26 = load i64, i64* %col, align 8
  %27 = load i64*, i64** @BOT, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %27, i64 %26
  %28 = load i64, i64* %arrayidx25, align 8
  %29 = load i64, i64* %which, align 8
  %cmp26 = icmp eq i64 %28, %29
  br i1 %cmp26, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.24
  %30 = load i64, i64* %col, align 8
  %31 = load i64*, i64** @TOP, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %31, i64 %30
  %32 = load i64, i64* %arrayidx27, align 8
  %33 = load i64, i64* %which, align 8
  %cmp28 = icmp eq i64 %32, %33
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.24
  %34 = load i64, i64* %col, align 8
  %35 = load i64, i64* %which, align 8
  %36 = load i64*, i64** @FIRST, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %36, i64 %35
  store i64 %34, i64* %arrayidx29, align 8
  br label %for.end.32

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end
  %37 = load i64, i64* %col, align 8
  %inc31 = add i64 %37, 1
  store i64 %inc31, i64* %col, align 8
  br label %for.cond.22

for.end.32:                                       ; preds = %if.then, %for.cond.22
  %38 = load i64, i64* @channelColumns, align 8
  store i64 %38, i64* %col, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.44, %for.end.32
  %39 = load i64, i64* %col, align 8
  %cmp34 = icmp uge i64 %39, 1
  br i1 %cmp34, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.33
  %40 = load i64, i64* %col, align 8
  %41 = load i64*, i64** @BOT, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %41, i64 %40
  %42 = load i64, i64* %arrayidx36, align 8
  %43 = load i64, i64* %which, align 8
  %cmp37 = icmp eq i64 %42, %43
  br i1 %cmp37, label %if.then.41, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %for.body.35
  %44 = load i64, i64* %col, align 8
  %45 = load i64*, i64** @TOP, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %45, i64 %44
  %46 = load i64, i64* %arrayidx39, align 8
  %47 = load i64, i64* %which, align 8
  %cmp40 = icmp eq i64 %46, %47
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %lor.lhs.false.38, %for.body.35
  %48 = load i64, i64* %col, align 8
  %49 = load i64, i64* %which, align 8
  %50 = load i64*, i64** @LAST, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %50, i64 %49
  store i64 %48, i64* %arrayidx42, align 8
  br label %for.end.45

if.end.43:                                        ; preds = %lor.lhs.false.38
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %51 = load i64, i64* %col, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %col, align 8
  br label %for.cond.33

for.end.45:                                       ; preds = %if.then.41, %for.cond.33
  %52 = load i64, i64* %which, align 8
  %53 = load i64*, i64** @FIRST, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %53, i64 %52
  %54 = load i64, i64* %arrayidx46, align 8
  store i64 %54, i64* %col, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.53, %for.end.45
  %55 = load i64, i64* %col, align 8
  %56 = load i64, i64* %which, align 8
  %57 = load i64*, i64** @LAST, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %57, i64 %56
  %58 = load i64, i64* %arrayidx48, align 8
  %cmp49 = icmp ule i64 %55, %58
  br i1 %cmp49, label %for.body.50, label %for.end.55

for.body.50:                                      ; preds = %for.cond.47
  %59 = load i64, i64* %col, align 8
  %60 = load i64*, i64** @DENSITY, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %60, i64 %59
  %61 = load i64, i64* %arrayidx51, align 8
  %inc52 = add i64 %61, 1
  store i64 %inc52, i64* %arrayidx51, align 8
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.50
  %62 = load i64, i64* %col, align 8
  %inc54 = add i64 %62, 1
  store i64 %inc54, i64* %col, align 8
  br label %for.cond.47

for.end.55:                                       ; preds = %for.cond.47
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %63 = load i64, i64* %which, align 8
  %inc57 = add i64 %63, 1
  store i64 %inc57, i64* %which, align 8
  br label %for.cond.19

for.end.58:                                       ; preds = %for.cond.19
  store i64 0, i64* %bound, align 8
  %64 = load i64, i64* @channelColumns, align 8
  store i64 %64, i64* %col, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.67, %for.end.58
  %65 = load i64, i64* %col, align 8
  %cmp60 = icmp uge i64 %65, 1
  br i1 %cmp60, label %for.body.61, label %for.end.69

for.body.61:                                      ; preds = %for.cond.59
  %66 = load i64, i64* %col, align 8
  %67 = load i64*, i64** @DENSITY, align 8
  %arrayidx62 = getelementptr inbounds i64, i64* %67, i64 %66
  %68 = load i64, i64* %arrayidx62, align 8
  %69 = load i64, i64* %bound, align 8
  %cmp63 = icmp ugt i64 %68, %69
  br i1 %cmp63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %for.body.61
  %70 = load i64, i64* %col, align 8
  %71 = load i64*, i64** @DENSITY, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %71, i64 %70
  %72 = load i64, i64* %arrayidx65, align 8
  store i64 %72, i64* %bound, align 8
  %73 = load i64, i64* %col, align 8
  store i64 %73, i64* %boundColumn, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %for.body.61
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %74 = load i64, i64* %col, align 8
  %dec68 = add i64 %74, -1
  store i64 %dec68, i64* %col, align 8
  br label %for.cond.59

for.end.69:                                       ; preds = %for.cond.59
  %75 = load i64, i64* %bound, align 8
  store i64 %75, i64* @channelTracks, align 8
  %76 = load i64, i64* %bound, align 8
  store i64 %76, i64* @channelDensity, align 8
  %77 = load i64, i64* %boundColumn, align 8
  store i64 %77, i64* @channelDensityColumn, align 8
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
