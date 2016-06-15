; ModuleID = 'leaky_bucket.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }

@total_frame_buffer = global i64 0, align 8
@input = external global %struct.InputParameters*, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c" LeakyBucketRate File does not exist; using rate calculated from avg. rate \0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c" Leaky BucketRateFile does not have valid entries;\0A using rate calculated from avg. rate \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errortext = external global [300 x i8], align 16
@.str.5 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c" Number Leaky Buckets: %ld \0A     Rmin     Bmin     Fmin \0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" %8ld %8ld %8ld \0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c" Total Frames:  %ld (%d) \0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"init_buffer: buffer_frame\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"init_buffer: Rmin\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"init_buffer: Bmin\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"init_buffer: Fmin\00", align 1
@Bit_Buffer = common global [10000 x i64] zeroinitializer, align 16
@img = external global %struct.ImageParameters*, align 8

; Function Attrs: nounwind uwtable
define i32 @get_LeakyBucketRate(i64 %NumberLeakyBuckets, i64* %Rmin) #0 {
entry:
  %retval = alloca i32, align 4
  %NumberLeakyBuckets.addr = alloca i64, align 8
  %Rmin.addr = alloca i64*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %buf = alloca i64, align 8
  store i64 %NumberLeakyBuckets, i64* %NumberLeakyBuckets.addr, align 8
  store i64* %Rmin, i64** %Rmin.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LeakyBucketRateFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 89
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %LeakyBucketRateFile, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %cmp2 = icmp ult i64 %1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64* %buf)
  %cmp4 = icmp ne i32 1, %call3
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %for.body
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %4)
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  %5 = load i64, i64* %buf, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  store i64 %5, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PutBigDoubleWord(i64 %dw, %struct._IO_FILE* %fp) #0 {
entry:
  %dw.addr = alloca i64, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store i64 %dw, i64* %dw.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i64, i64* %dw.addr, align 8
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %1)
  %2 = load i64, i64* %dw.addr, align 8
  %shr1 = lshr i64 %2, 16
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputc(i32 %conv3, %struct._IO_FILE* %3)
  %4 = load i64, i64* %dw.addr, align 8
  %shr5 = lshr i64 %4, 8
  %and6 = and i64 %shr5, 255
  %conv7 = trunc i64 %and6 to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @fputc(i32 %conv7, %struct._IO_FILE* %5)
  %6 = load i64, i64* %dw.addr, align 8
  %and9 = and i64 %6, 255
  %conv10 = trunc i64 %and9 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @fputc(i32 %conv10, %struct._IO_FILE* %7)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @write_buffer(i64 %NumberLeakyBuckets, i64* %Rmin, i64* %Bmin, i64* %Fmin) #0 {
entry:
  %NumberLeakyBuckets.addr = alloca i64, align 8
  %Rmin.addr = alloca i64*, align 8
  %Bmin.addr = alloca i64*, align 8
  %Fmin.addr = alloca i64*, align 8
  %outf = alloca %struct._IO_FILE*, align 8
  %iBucket = alloca i64, align 8
  store i64 %NumberLeakyBuckets, i64* %NumberLeakyBuckets.addr, align 8
  store i64* %Rmin, i64** %Rmin.addr, align 8
  store i64* %Bmin, i64** %Bmin.addr, align 8
  store i64* %Fmin, i64** %Fmin.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LeakyBucketParamFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 90
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %LeakyBucketParamFile, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %outf, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LeakyBucketParamFile1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 90
  %arraydecay2 = getelementptr inbounds [200 x i8], [200 x i8]* %LeakyBucketParamFile1, i32 0, i32 0
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay2) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %2, %struct._IO_FILE* %3)
  %4 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i32 0, i32 0), i64 %4)
  store i64 0, i64* %iBucket, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %iBucket, align 8
  %6 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %cmp5 = icmp ult i64 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %iBucket, align 8
  %8 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %9, %struct._IO_FILE* %10)
  %11 = load i64, i64* %iBucket, align 8
  %12 = load i64*, i64** %Bmin.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx6, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %13, %struct._IO_FILE* %14)
  %15 = load i64, i64* %iBucket, align 8
  %16 = load i64*, i64** %Fmin.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %16, i64 %15
  %17 = load i64, i64* %arrayidx7, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %17, %struct._IO_FILE* %18)
  %19 = load i64, i64* %iBucket, align 8
  %20 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %20, i64 %19
  %21 = load i64, i64* %arrayidx8, align 8
  %22 = load i64, i64* %iBucket, align 8
  %23 = load i64*, i64** %Bmin.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %23, i64 %22
  %24 = load i64, i64* %arrayidx9, align 8
  %25 = load i64, i64* %iBucket, align 8
  %26 = load i64*, i64** %Fmin.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %26, i64 %25
  %27 = load i64, i64* %arrayidx10, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i64 %21, i64 %24, i64 %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, i64* %iBucket, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %iBucket, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %29)
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @Sort(i64 %NumberLeakyBuckets, i64* %Rmin) #0 {
entry:
  %NumberLeakyBuckets.addr = alloca i64, align 8
  %Rmin.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 %NumberLeakyBuckets, i64* %NumberLeakyBuckets.addr, align 8
  store i64* %Rmin, i64** %Rmin.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %sub = sub i64 %1, 1
  %cmp = icmp ult i64 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %add = add i64 %2, 1
  store i64 %add, i64* %j, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i64, i64* %j, align 8
  %4 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %cmp2 = icmp ult i64 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i64, i64* %j, align 8
  %9 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 %8
  %10 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp ugt i64 %7, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx6, align 8
  store i64 %13, i64* %temp, align 8
  %14 = load i64, i64* %j, align 8
  %15 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx7, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %18, i64 %17
  store i64 %16, i64* %arrayidx8, align 8
  %19 = load i64, i64* %temp, align 8
  %20 = load i64, i64* %j, align 8
  %21 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %21, i64 %20
  store i64 %19, i64* %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, i64* %j, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %23 = load i64, i64* %i, align 8
  %inc11 = add i64 %23, 1
  store i64 %inc11, i64* %i, align 8
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @calc_buffer() #0 {
entry:
  %AvgRate = alloca i64, align 8
  %TotalRate = alloca i64, align 8
  %NumberLeakyBuckets = alloca i64, align 8
  %buffer_frame = alloca i64*, align 8
  %minB = alloca i64, align 8
  %iBucket = alloca i64, align 8
  %iFrame = alloca i64, align 8
  %FrameIndex = alloca i64, align 8
  %maxBuffer = alloca i64, align 8
  %actualBuffer = alloca i64, align 8
  %InitFullness = alloca i64, align 8
  %iChannelRate = alloca i64, align 8
  %Rmin = alloca i64*, align 8
  %Bmin = alloca i64*, align 8
  %Fmin = alloca i64*, align 8
  store i64 0, i64* %FrameIndex, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i32 0, i32 0))
  %1 = load i64, i64* @total_frame_buffer, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 2
  %3 = load i32, i32* %no_frames, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i64 %1, i32 %3)
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumberLeakyBuckets2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 88
  %5 = load i32, i32* %NumberLeakyBuckets2, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %NumberLeakyBuckets, align 8
  %6 = load i64, i64* @total_frame_buffer, align 8
  %add = add i64 %6, 1
  %call3 = call noalias i8* @calloc(i64 %add, i64 8) #3
  %7 = bitcast i8* %call3 to i64*
  store i64* %7, i64** %buffer_frame, align 8
  %8 = load i64*, i64** %buffer_frame, align 8
  %tobool = icmp ne i64* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %NumberLeakyBuckets, align 8
  %call4 = call noalias i8* @calloc(i64 %9, i64 8) #3
  %10 = bitcast i8* %call4 to i64*
  store i64* %10, i64** %Rmin, align 8
  %11 = load i64*, i64** %Rmin, align 8
  %tobool5 = icmp ne i64* %11, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %12 = load i64, i64* %NumberLeakyBuckets, align 8
  %call8 = call noalias i8* @calloc(i64 %12, i64 8) #3
  %13 = bitcast i8* %call8 to i64*
  store i64* %13, i64** %Bmin, align 8
  %14 = load i64*, i64** %Bmin, align 8
  %tobool9 = icmp ne i64* %14, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %15 = load i64, i64* %NumberLeakyBuckets, align 8
  %call12 = call noalias i8* @calloc(i64 %15, i64 8) #3
  %16 = bitcast i8* %call12 to i64*
  store i64* %16, i64** %Fmin, align 8
  %17 = load i64*, i64** %Fmin, align 8
  %tobool13 = icmp ne i64* %17, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  store i64 0, i64* %TotalRate, align 8
  store i64 0, i64* %iFrame, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %18 = load i64, i64* %iFrame, align 8
  %19 = load i64, i64* @total_frame_buffer, align 8
  %cmp = icmp ult i64 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %iFrame, align 8
  %arrayidx = getelementptr inbounds [10000 x i64], [10000 x i64]* @Bit_Buffer, i32 0, i64 %20
  %21 = load i64, i64* %arrayidx, align 8
  %22 = load i64, i64* %TotalRate, align 8
  %add17 = add i64 %22, %21
  store i64 %add17, i64* %TotalRate, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %iFrame, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %iFrame, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i64, i64* %TotalRate, align 8
  %conv18 = uitofp i64 %24 to float
  %25 = load i64, i64* @total_frame_buffer, align 8
  %conv19 = uitofp i64 %25 to float
  %div = fdiv float %conv18, %conv19
  %conv20 = fptoui float %div to i64
  store i64 %conv20, i64* %AvgRate, align 8
  %26 = load i64, i64* %NumberLeakyBuckets, align 8
  %27 = load i64*, i64** %Rmin, align 8
  %call21 = call i32 @get_LeakyBucketRate(i64 %26, i64* %27)
  %cmp22 = icmp ne i32 1, %call21
  br i1 %cmp22, label %if.then.24, label %if.end.55

if.then.24:                                       ; preds = %for.end
  store i64 0, i64* %iBucket, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.52, %if.then.24
  %28 = load i64, i64* %iBucket, align 8
  %29 = load i64, i64* %NumberLeakyBuckets, align 8
  %cmp26 = icmp ult i64 %28, %29
  br i1 %cmp26, label %for.body.28, label %for.end.54

for.body.28:                                      ; preds = %for.cond.25
  %30 = load i64, i64* %iBucket, align 8
  %cmp29 = icmp eq i64 %30, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.body.28
  %31 = load i64, i64* %AvgRate, align 8
  %conv32 = uitofp i64 %31 to float
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 12
  %33 = load float, float* %framerate, align 4
  %mul = fmul float %conv32, %33
  %conv33 = fptoui float %mul to i64
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 5
  %35 = load i32, i32* %jumpd, align 4
  %add34 = add nsw i32 %35, 1
  %conv35 = sext i32 %add34 to i64
  %div36 = udiv i64 %conv33, %conv35
  %36 = load i64, i64* %iBucket, align 8
  %37 = load i64*, i64** %Rmin, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %37, i64 %36
  store i64 %div36, i64* %arrayidx37, align 8
  br label %if.end.51

if.else:                                          ; preds = %for.body.28
  %38 = load i64, i64* %iBucket, align 8
  %sub = sub i64 %38, 1
  %39 = load i64*, i64** %Rmin, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %39, i64 %sub
  %40 = load i64, i64* %arrayidx38, align 8
  %conv39 = uitofp i64 %40 to float
  %41 = load i64, i64* %AvgRate, align 8
  %div40 = udiv i64 %41, 4
  %conv41 = uitofp i64 %div40 to float
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 12
  %43 = load float, float* %framerate42, align 4
  %mul43 = fmul float %conv41, %43
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 5
  %45 = load i32, i32* %jumpd44, align 4
  %add45 = add nsw i32 %45, 1
  %conv46 = sitofp i32 %add45 to float
  %div47 = fdiv float %mul43, %conv46
  %add48 = fadd float %conv39, %div47
  %conv49 = fptoui float %add48 to i64
  %46 = load i64, i64* %iBucket, align 8
  %47 = load i64*, i64** %Rmin, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %47, i64 %46
  store i64 %conv49, i64* %arrayidx50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.31
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %48 = load i64, i64* %iBucket, align 8
  %inc53 = add i64 %48, 1
  store i64 %inc53, i64* %iBucket, align 8
  br label %for.cond.25

for.end.54:                                       ; preds = %for.cond.25
  br label %if.end.55

if.end.55:                                        ; preds = %for.end.54, %for.end
  %49 = load i64, i64* %NumberLeakyBuckets, align 8
  %50 = load i64*, i64** %Rmin, align 8
  call void @Sort(i64 %49, i64* %50)
  %51 = load i64, i64* %AvgRate, align 8
  %mul56 = mul i64 %51, 20
  store i64 %mul56, i64* %maxBuffer, align 8
  store i64 0, i64* %iBucket, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.134, %if.end.55
  %52 = load i64, i64* %iBucket, align 8
  %53 = load i64, i64* %NumberLeakyBuckets, align 8
  %cmp58 = icmp ult i64 %52, %53
  br i1 %cmp58, label %for.body.60, label %for.end.136

for.body.60:                                      ; preds = %for.cond.57
  %54 = load i64, i64* %iBucket, align 8
  %55 = load i64*, i64** %Rmin, align 8
  %arrayidx61 = getelementptr inbounds i64, i64* %55, i64 %54
  %56 = load i64, i64* %arrayidx61, align 8
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 5
  %58 = load i32, i32* %jumpd62, align 4
  %add63 = add nsw i32 %58, 1
  %conv64 = sext i32 %add63 to i64
  %mul65 = mul i64 %56, %conv64
  %conv66 = uitofp i64 %mul65 to float
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate67 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 12
  %60 = load float, float* %framerate67, align 4
  %div68 = fdiv float %conv66, %60
  %conv69 = fptosi float %div68 to i64
  store i64 %conv69, i64* %iChannelRate, align 8
  %61 = load i64, i64* %maxBuffer, align 8
  store i64 %61, i64* %InitFullness, align 8
  %62 = load i64, i64* %InitFullness, align 8
  %63 = load i64*, i64** %buffer_frame, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %62, i64* %arrayidx70, align 8
  %64 = load i64, i64* %maxBuffer, align 8
  store i64 %64, i64* %minB, align 8
  store i64 0, i64* %iFrame, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.97, %for.body.60
  %65 = load i64, i64* %iFrame, align 8
  %66 = load i64, i64* @total_frame_buffer, align 8
  %cmp72 = icmp ult i64 %65, %66
  br i1 %cmp72, label %for.body.74, label %for.end.99

for.body.74:                                      ; preds = %for.cond.71
  %67 = load i64, i64* %iFrame, align 8
  %68 = load i64*, i64** %buffer_frame, align 8
  %arrayidx75 = getelementptr inbounds i64, i64* %68, i64 %67
  %69 = load i64, i64* %arrayidx75, align 8
  %70 = load i64, i64* %iFrame, align 8
  %arrayidx76 = getelementptr inbounds [10000 x i64], [10000 x i64]* @Bit_Buffer, i32 0, i64 %70
  %71 = load i64, i64* %arrayidx76, align 8
  %sub77 = sub nsw i64 %69, %71
  %72 = load i64, i64* %iFrame, align 8
  %73 = load i64*, i64** %buffer_frame, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %73, i64 %72
  store i64 %sub77, i64* %arrayidx78, align 8
  %74 = load i64, i64* %iFrame, align 8
  %75 = load i64*, i64** %buffer_frame, align 8
  %arrayidx79 = getelementptr inbounds i64, i64* %75, i64 %74
  %76 = load i64, i64* %arrayidx79, align 8
  %77 = load i64, i64* %minB, align 8
  %cmp80 = icmp slt i64 %76, %77
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %for.body.74
  %78 = load i64, i64* %iFrame, align 8
  %79 = load i64*, i64** %buffer_frame, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %79, i64 %78
  %80 = load i64, i64* %arrayidx83, align 8
  store i64 %80, i64* %minB, align 8
  %81 = load i64, i64* %iFrame, align 8
  store i64 %81, i64* %FrameIndex, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %for.body.74
  %82 = load i64, i64* %iFrame, align 8
  %83 = load i64*, i64** %buffer_frame, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %83, i64 %82
  %84 = load i64, i64* %arrayidx85, align 8
  %85 = load i64, i64* %iChannelRate, align 8
  %add86 = add nsw i64 %84, %85
  %86 = load i64, i64* %iFrame, align 8
  %add87 = add i64 %86, 1
  %87 = load i64*, i64** %buffer_frame, align 8
  %arrayidx88 = getelementptr inbounds i64, i64* %87, i64 %add87
  store i64 %add86, i64* %arrayidx88, align 8
  %88 = load i64, i64* %iFrame, align 8
  %add89 = add i64 %88, 1
  %89 = load i64*, i64** %buffer_frame, align 8
  %arrayidx90 = getelementptr inbounds i64, i64* %89, i64 %add89
  %90 = load i64, i64* %arrayidx90, align 8
  %91 = load i64, i64* %maxBuffer, align 8
  %cmp91 = icmp sgt i64 %90, %91
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.84
  %92 = load i64, i64* %maxBuffer, align 8
  %93 = load i64, i64* %iFrame, align 8
  %add94 = add i64 %93, 1
  %94 = load i64*, i64** %buffer_frame, align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %94, i64 %add94
  store i64 %92, i64* %arrayidx95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.84
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %95 = load i64, i64* %iFrame, align 8
  %inc98 = add i64 %95, 1
  store i64 %inc98, i64* %iFrame, align 8
  br label %for.cond.71

for.end.99:                                       ; preds = %for.cond.71
  %96 = load i64, i64* %maxBuffer, align 8
  %97 = load i64, i64* %minB, align 8
  %sub100 = sub nsw i64 %96, %97
  store i64 %sub100, i64* %actualBuffer, align 8
  %98 = load i64, i64* getelementptr inbounds ([10000 x i64], [10000 x i64]* @Bit_Buffer, i32 0, i64 0), align 8
  store i64 %98, i64* %InitFullness, align 8
  %99 = load i64, i64* %InitFullness, align 8
  %100 = load i64*, i64** %buffer_frame, align 8
  %arrayidx101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 %99, i64* %arrayidx101, align 8
  store i64 0, i64* %iFrame, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.129, %for.end.99
  %101 = load i64, i64* %iFrame, align 8
  %102 = load i64, i64* %FrameIndex, align 8
  %add103 = add i64 %102, 1
  %cmp104 = icmp ult i64 %101, %add103
  br i1 %cmp104, label %for.body.106, label %for.end.131

for.body.106:                                     ; preds = %for.cond.102
  %103 = load i64, i64* %iFrame, align 8
  %104 = load i64*, i64** %buffer_frame, align 8
  %arrayidx107 = getelementptr inbounds i64, i64* %104, i64 %103
  %105 = load i64, i64* %arrayidx107, align 8
  %106 = load i64, i64* %iFrame, align 8
  %arrayidx108 = getelementptr inbounds [10000 x i64], [10000 x i64]* @Bit_Buffer, i32 0, i64 %106
  %107 = load i64, i64* %arrayidx108, align 8
  %sub109 = sub nsw i64 %105, %107
  %108 = load i64, i64* %iFrame, align 8
  %109 = load i64*, i64** %buffer_frame, align 8
  %arrayidx110 = getelementptr inbounds i64, i64* %109, i64 %108
  store i64 %sub109, i64* %arrayidx110, align 8
  %110 = load i64, i64* %iFrame, align 8
  %111 = load i64*, i64** %buffer_frame, align 8
  %arrayidx111 = getelementptr inbounds i64, i64* %111, i64 %110
  %112 = load i64, i64* %arrayidx111, align 8
  %cmp112 = icmp slt i64 %112, 0
  br i1 %cmp112, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %for.body.106
  %113 = load i64, i64* %iFrame, align 8
  %114 = load i64*, i64** %buffer_frame, align 8
  %arrayidx115 = getelementptr inbounds i64, i64* %114, i64 %113
  %115 = load i64, i64* %arrayidx115, align 8
  %116 = load i64, i64* %InitFullness, align 8
  %sub116 = sub nsw i64 %116, %115
  store i64 %sub116, i64* %InitFullness, align 8
  %117 = load i64, i64* %iFrame, align 8
  %118 = load i64*, i64** %buffer_frame, align 8
  %arrayidx117 = getelementptr inbounds i64, i64* %118, i64 %117
  store i64 0, i64* %arrayidx117, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %for.body.106
  %119 = load i64, i64* %iFrame, align 8
  %120 = load i64*, i64** %buffer_frame, align 8
  %arrayidx119 = getelementptr inbounds i64, i64* %120, i64 %119
  %121 = load i64, i64* %arrayidx119, align 8
  %122 = load i64, i64* %iChannelRate, align 8
  %add120 = add nsw i64 %121, %122
  %123 = load i64, i64* %iFrame, align 8
  %add121 = add i64 %123, 1
  %124 = load i64*, i64** %buffer_frame, align 8
  %arrayidx122 = getelementptr inbounds i64, i64* %124, i64 %add121
  store i64 %add120, i64* %arrayidx122, align 8
  %125 = load i64, i64* %iFrame, align 8
  %add123 = add i64 %125, 1
  %126 = load i64*, i64** %buffer_frame, align 8
  %arrayidx124 = getelementptr inbounds i64, i64* %126, i64 %add123
  %127 = load i64, i64* %arrayidx124, align 8
  %128 = load i64, i64* %actualBuffer, align 8
  %cmp125 = icmp sgt i64 %127, %128
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.118
  br label %for.end.131

if.end.128:                                       ; preds = %if.end.118
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %129 = load i64, i64* %iFrame, align 8
  %inc130 = add i64 %129, 1
  store i64 %inc130, i64* %iFrame, align 8
  br label %for.cond.102

for.end.131:                                      ; preds = %if.then.127, %for.cond.102
  %130 = load i64, i64* %actualBuffer, align 8
  %131 = load i64, i64* %iBucket, align 8
  %132 = load i64*, i64** %Bmin, align 8
  %arrayidx132 = getelementptr inbounds i64, i64* %132, i64 %131
  store i64 %130, i64* %arrayidx132, align 8
  %133 = load i64, i64* %InitFullness, align 8
  %134 = load i64, i64* %iBucket, align 8
  %135 = load i64*, i64** %Fmin, align 8
  %arrayidx133 = getelementptr inbounds i64, i64* %135, i64 %134
  store i64 %133, i64* %arrayidx133, align 8
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.131
  %136 = load i64, i64* %iBucket, align 8
  %inc135 = add i64 %136, 1
  store i64 %inc135, i64* %iBucket, align 8
  br label %for.cond.57

for.end.136:                                      ; preds = %for.cond.57
  %137 = load i64, i64* %NumberLeakyBuckets, align 8
  %138 = load i64*, i64** %Rmin, align 8
  %139 = load i64*, i64** %Bmin, align 8
  %140 = load i64*, i64** %Fmin, align 8
  call void @write_buffer(i64 %137, i64* %138, i64* %139, i64* %140)
  %141 = load i64*, i64** %buffer_frame, align 8
  %142 = bitcast i64* %141 to i8*
  call void @free(i8* %142) #3
  %143 = load i64*, i64** %Rmin, align 8
  %144 = bitcast i64* %143 to i8*
  call void @free(i8* %144) #3
  %145 = load i64*, i64** %Bmin, align 8
  %146 = bitcast i64* %145 to i8*
  call void @free(i8* %146) #3
  %147 = load i64*, i64** %Fmin, align 8
  %148 = bitcast i64* %147 to i8*
  call void @free(i8* %148) #3
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
