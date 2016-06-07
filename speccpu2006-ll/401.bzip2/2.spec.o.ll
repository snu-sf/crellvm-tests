; ModuleID = 'spec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@dbglvl = global i32 4, align 4
@seedi = common global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"spec_init\0A\00", align 1
@spec_fd = common global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"spec_init: Error mallocing memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Creating Chunks\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Filling input file\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Duplicating %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"spec_read: %d, %p, %d = \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"spec_read: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"spec_fread: %p, (%d x %d) fd %d =\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"spec_fread: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"spec_getc: %d = \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"spec_ungetc: %d = \00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"spec_ungetc: pos %d <= 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"spec_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"spec_write: %d, %p, %d = \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"spec_write: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"spec_fwrite: %p, %d, %d, %d = \00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"spec_fwrite: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"spec_putc: %d, %d = \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"input.combined\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Loading Input Data\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Input data %d bytes in length\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"main: Error mallocing memory!\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Compressing Input Data, level %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Compressed data %d bytes in length\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Uncompressing Data\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Uncompressed data %d bytes in length\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"Tested %dMB buffer: Miscompared!!\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"Uncompressed data compared correctly\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Tested %dMB buffer: OK!\0A\00", align 1
@smallMode = external global i8, align 1
@verbosity = external global i32, align 4
@blockSize100k = external global i32, align 4
@workFactor = external global i32, align 4

; Function Attrs: nounwind uwtable
define double @ran() #0 {
entry:
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %test = alloca i64, align 8
  %0 = load i64, i64* @seedi, align 8
  %div = sdiv i64 %0, 127773
  store i64 %div, i64* %hi, align 8
  %1 = load i64, i64* @seedi, align 8
  %rem = srem i64 %1, 127773
  store i64 %rem, i64* %lo, align 8
  %2 = load i64, i64* %lo, align 8
  %mul = mul nsw i64 16807, %2
  %3 = load i64, i64* %hi, align 8
  %mul1 = mul nsw i64 2836, %3
  %sub = sub nsw i64 %mul, %mul1
  store i64 %sub, i64* %test, align 8
  %4 = load i64, i64* %test, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %test, align 8
  store i64 %5, i64* @seedi, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %test, align 8
  %add = add nsw i64 %6, 2147483647
  store i64 %add, i64* @seedi, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* @seedi, align 8
  %conv = sitofp i64 %7 to float
  %div2 = fdiv float %conv, 0x41E0000000000000
  %conv3 = fpext float %div2 to double
  ret double %conv3
}

; Function Attrs: nounwind uwtable
define i32 @spec_init() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %limit = alloca i32, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 3, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %limit2 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %limit2, align 4
  store i32 %3, i32* %limit, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom3
  %5 = bitcast %struct.spec_fd_t* %arrayidx4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 24, i32 8, i1 false)
  %6 = load i32, i32* %limit, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom5
  %limit7 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 0
  store i32 %6, i32* %limit7, align 4
  %8 = load i32, i32* %limit, align 4
  %add = add nsw i32 %8, 1048576
  %conv = sext i32 %add to i64
  %call8 = call noalias i8* @malloc(i64 %conv) #2
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom9
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx10, i32 0, i32 3
  store i8* %call8, i8** %buf, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom11
  %buf13 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx12, i32 0, i32 3
  %11 = load i8*, i8** %buf13, align 8
  %cmp14 = icmp eq i8* %11, null
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

if.end.18:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end.18
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %limit, align 4
  %cmp20 = icmp slt i32 %12, %13
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %14 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom24
  %buf26 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx25, i32 0, i32 3
  %16 = load i8*, i8** %buf26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  store i8 0, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %17 = load i32, i32* %j, align 4
  %add28 = add nsw i32 %17, 1024
  store i32 %add28, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @spec_random_load(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %random_text = alloca [32 x [131072 x i8]], align 16
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 32
  br i1 %cmp1, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @dbglvl, align 4
  %cmp2 = icmp slt i32 5, %2
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %3)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end.5
  %4 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %4, 131072
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %call9 = call double @ran()
  %mul = fmul double %call9, 2.560000e+02
  %conv = fptosi double %mul to i32
  %conv10 = trunc i32 %conv to i8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %random_text, i32 0, i64 %idxprom11
  %arrayidx12 = getelementptr inbounds [131072 x i8], [131072 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 %conv10, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %8, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %9 = load i32, i32* @dbglvl, align 4
  %cmp16 = icmp slt i32 4, %9
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.end.15
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.34, %if.end.20
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %fd.addr, align 4
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom22
  %limit = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 0
  %12 = load i32, i32* %limit, align 4
  %cmp24 = icmp slt i32 %10, %12
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.21
  %13 = load i32, i32* %fd.addr, align 4
  %idxprom27 = sext i32 %13 to i64
  %arrayidx28 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom27
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx28, i32 0, i32 3
  %14 = load i8*, i8** %buf, align 8
  %15 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %call29 = call double @ran()
  %mul30 = fmul double %call29, 3.200000e+01
  %conv31 = fptosi double %mul30 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %random_text, i32 0, i64 %idxprom32
  %16 = bitcast [131072 x i8]* %arrayidx33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %16, i64 131072, i32 1, i1 false)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.26
  %17 = load i32, i32* %i, align 4
  %add = add nsw i32 %17, 131072
  store i32 %add, i32* %i, align 4
  br label %for.cond.21

for.end.35:                                       ; preds = %for.cond.21
  %18 = load i32, i32* %fd.addr, align 4
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom36
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx37, i32 0, i32 1
  store i32 1048576, i32* %len, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @spec_load(i32 %num, i8* %filename, i32 %size) #0 {
entry:
  %num.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32* @__errno_location() #8
  %4 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %4) #2
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %3, i8* %call2)
  call void @exit(i32 0) #7
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %num.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 1
  store i32 0, i32* %len, align 4
  %6 = load i32, i32* %num.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom4
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx5, i32 0, i32 2
  store i32 0, i32* %pos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %fd, align 4
  %10 = load i32, i32* %num.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom7
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx8, i32 0, i32 3
  %11 = load i8*, i8** %buf, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %call9 = call i64 @read(i32 %9, i8* %add.ptr, i64 131072)
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %rc, align 4
  %13 = load i32, i32* %rc, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %for.end

if.end.13:                                        ; preds = %for.body
  %14 = load i32, i32* %rc, align 4
  %cmp14 = icmp slt i32 %14, 0
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.13
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** %filename.addr, align 8
  %call17 = call i32* @__errno_location() #8
  %17 = load i32, i32* %call17, align 4
  %call18 = call i8* @strerror(i32 %17) #2
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %16, i8* %call18)
  call void @exit(i32 0) #7
  unreachable

if.end.20:                                        ; preds = %if.end.13
  %18 = load i32, i32* %rc, align 4
  %19 = load i32, i32* %num.addr, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom21
  %len23 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx22, i32 0, i32 1
  %20 = load i32, i32* %len23, align 4
  %add = add nsw i32 %20, %18
  store i32 %add, i32* %len23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %21 = load i32, i32* %rc, align 4
  %22 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %22, %21
  store i32 %add24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %23 = load i32, i32* %fd, align 4
  %call25 = call i32 @close(i32 %23)
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %for.end
  %24 = load i32, i32* %num.addr, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom26
  %len28 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx27, i32 0, i32 1
  %25 = load i32, i32* %len28, align 4
  %26 = load i32, i32* %size.addr, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %size.addr, align 4
  %28 = load i32, i32* %num.addr, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom31
  %len33 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx32, i32 0, i32 1
  %29 = load i32, i32* %len33, align 4
  %sub = sub nsw i32 %27, %29
  store i32 %sub, i32* %tmp, align 4
  %30 = load i32, i32* %tmp, align 4
  %31 = load i32, i32* %num.addr, align 4
  %idxprom34 = sext i32 %31 to i64
  %arrayidx35 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom34
  %len36 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx35, i32 0, i32 1
  %32 = load i32, i32* %len36, align 4
  %cmp37 = icmp sgt i32 %30, %32
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %while.body
  %33 = load i32, i32* %num.addr, align 4
  %idxprom40 = sext i32 %33 to i64
  %arrayidx41 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom40
  %len42 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx41, i32 0, i32 1
  %34 = load i32, i32* %len42, align 4
  store i32 %34, i32* %tmp, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %while.body
  %35 = load i32, i32* @dbglvl, align 4
  %cmp44 = icmp slt i32 3, %35
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.43
  %36 = load i32, i32* %tmp, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %36)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.43
  %37 = load i32, i32* %num.addr, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom49
  %buf51 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx50, i32 0, i32 3
  %38 = load i8*, i8** %buf51, align 8
  %39 = load i32, i32* %num.addr, align 4
  %idxprom52 = sext i32 %39 to i64
  %arrayidx53 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom52
  %len54 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx53, i32 0, i32 1
  %40 = load i32, i32* %len54, align 4
  %idx.ext55 = sext i32 %40 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %38, i64 %idx.ext55
  %41 = load i32, i32* %num.addr, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom57
  %buf59 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx58, i32 0, i32 3
  %42 = load i8*, i8** %buf59, align 8
  %43 = load i32, i32* %tmp, align 4
  %conv60 = sext i32 %43 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr56, i8* %42, i64 %conv60, i32 1, i1 false)
  %44 = load i32, i32* %tmp, align 4
  %45 = load i32, i32* %num.addr, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom61
  %len63 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx62, i32 0, i32 1
  %46 = load i32, i32* %len63, align 4
  %add64 = add nsw i32 %46, %44
  store i32 %add64, i32* %len63, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i64 @read(i32, i8*, i64) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define i32 @spec_read(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %1, i8* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %4, 3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %6)
  call void @exit(i32 0) #7
  unreachable

if.end.4:                                         ; preds = %if.end
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %fd.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %10 = load i32, i32* %len, align 4
  %cmp7 = icmp sge i32 %8, %10
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.4
  %11 = load i32, i32* @dbglvl, align 4
  %cmp9 = icmp slt i32 4, %11
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %12 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %13 = load i32, i32* %pos16, align 4
  %14 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %13, %14
  %15 = load i32, i32* %fd.addr, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom17
  %len19 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx18, i32 0, i32 1
  %16 = load i32, i32* %len19, align 4
  %cmp20 = icmp sge i32 %add, %16
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.13
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom22
  %len24 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 1
  %18 = load i32, i32* %len24, align 4
  %19 = load i32, i32* %fd.addr, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom25
  %pos27 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx26, i32 0, i32 2
  %20 = load i32, i32* %pos27, align 4
  %sub = sub nsw i32 %18, %20
  store i32 %sub, i32* %rc, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end.13
  %21 = load i32, i32* %size.addr, align 4
  store i32 %21, i32* %rc, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.21
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i32, i32* %fd.addr, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom29
  %pos31 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx30, i32 0, i32 2
  %24 = load i32, i32* %pos31, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32, i32* %fd.addr, align 4
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom33
  %buf35 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx34, i32 0, i32 3
  %26 = load i8*, i8** %buf35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 %idxprom32
  %27 = load i32, i32* %rc, align 4
  %conv = sext i32 %27 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %arrayidx36, i64 %conv, i32 1, i1 false)
  %28 = load i32, i32* %rc, align 4
  %29 = load i32, i32* %fd.addr, align 4
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom37
  %pos39 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx38, i32 0, i32 2
  %30 = load i32, i32* %pos39, align 4
  %add40 = add nsw i32 %30, %28
  store i32 %add40, i32* %pos39, align 4
  %31 = load i32, i32* @dbglvl, align 4
  %cmp41 = icmp slt i32 4, %31
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.28
  %32 = load i32, i32* %rc, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %32)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.28
  %33 = load i32, i32* %rc, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.end.12
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @spec_fread(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %num.addr, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* %1, i32 %2, i32 %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %5, 3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 %7)
  call void @exit(i32 0) #7
  unreachable

if.end.4:                                         ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %9 = load i32, i32* %pos, align 4
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %11 = load i32, i32* %len, align 4
  %cmp7 = icmp sge i32 %9, %11
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.4
  %12 = load i32, i32* @dbglvl, align 4
  %cmp9 = icmp slt i32 4, %12
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %13 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %14 = load i32, i32* %pos16, align 4
  %15 = load i32, i32* %size.addr, align 4
  %16 = load i32, i32* %num.addr, align 4
  %mul = mul nsw i32 %15, %16
  %add = add nsw i32 %14, %mul
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom17
  %len19 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx18, i32 0, i32 1
  %18 = load i32, i32* %len19, align 4
  %cmp20 = icmp sge i32 %add, %18
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.13
  %19 = load i32, i32* %fd.addr, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom22
  %len24 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 1
  %20 = load i32, i32* %len24, align 4
  %21 = load i32, i32* %fd.addr, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom25
  %pos27 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx26, i32 0, i32 2
  %22 = load i32, i32* %pos27, align 4
  %sub = sub nsw i32 %20, %22
  %23 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %sub, %23
  store i32 %div, i32* %rc, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end.13
  %24 = load i32, i32* %num.addr, align 4
  store i32 %24, i32* %rc, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.21
  %25 = load i8*, i8** %buf.addr, align 8
  %26 = load i32, i32* %fd.addr, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom29
  %pos31 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx30, i32 0, i32 2
  %27 = load i32, i32* %pos31, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load i32, i32* %fd.addr, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom33
  %buf35 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx34, i32 0, i32 3
  %29 = load i8*, i8** %buf35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %29, i64 %idxprom32
  %30 = load i32, i32* %rc, align 4
  %conv = sext i32 %30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %arrayidx36, i64 %conv, i32 1, i1 false)
  %31 = load i32, i32* %rc, align 4
  %32 = load i32, i32* %size.addr, align 4
  %mul37 = mul nsw i32 %31, %32
  %33 = load i32, i32* %fd.addr, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom38
  %pos40 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx39, i32 0, i32 2
  %34 = load i32, i32* %pos40, align 4
  %add41 = add nsw i32 %34, %mul37
  store i32 %add41, i32* %pos40, align 4
  %35 = load i32, i32* @dbglvl, align 4
  %cmp42 = icmp slt i32 4, %35
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.28
  %36 = load i32, i32* %rc, align 4
  %37 = load i32, i32* %size.addr, align 4
  %mul45 = mul nsw i32 %36, %37
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %mul45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.28
  %38 = load i32, i32* %rc, align 4
  store i32 %38, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.end.12
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @spec_getc(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %2, 3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %4)
  call void @exit(i32 0) #7
  unreachable

if.end.4:                                         ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %pos, align 4
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %8 = load i32, i32* %len, align 4
  %cmp7 = icmp sge i32 %6, %8
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.4
  %9 = load i32, i32* @dbglvl, align 4
  %cmp9 = icmp slt i32 4, %9
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %11 = load i32, i32* %pos16, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %pos16, align 4
  %idxprom17 = sext i32 %11 to i64
  %12 = load i32, i32* %fd.addr, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom18
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx19, i32 0, i32 3
  %13 = load i8*, i8** %buf, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %13, i64 %idxprom17
  %14 = load i8, i8* %arrayidx20, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %rc, align 4
  %15 = load i32, i32* @dbglvl, align 4
  %cmp21 = icmp slt i32 4, %15
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.13
  %16 = load i32, i32* %rc, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %16)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.13
  %17 = load i32, i32* %rc, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.end.12
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @spec_ungetc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %2, 3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %4)
  call void @exit(i32 0) #7
  unreachable

if.end.4:                                         ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %pos, align 4
  %cmp5 = icmp sle i32 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %fd.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom7
  %pos9 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx8, i32 0, i32 2
  %9 = load i32, i32* %pos9, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i32 %9)
  call void @exit(i32 0) #7
  unreachable

if.end.11:                                        ; preds = %if.end.4
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom12
  %pos14 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx13, i32 0, i32 2
  %11 = load i32, i32* %pos14, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %pos14, align 4
  %idxprom15 = sext i32 %dec to i64
  %12 = load i32, i32* %fd.addr, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom16
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx17, i32 0, i32 3
  %13 = load i8*, i8** %buf, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom15
  %14 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %14 to i32
  %15 = load i8, i8* %ch.addr, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp ne i32 %conv, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

if.end.24:                                        ; preds = %if.end.11
  %17 = load i32, i32* @dbglvl, align 4
  %cmp25 = icmp slt i32 4, %17
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %18 = load i32, i32* %rc, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %18)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %19 = load i8, i8* %ch.addr, align 1
  %conv30 = zext i8 %19 to i32
  ret i32 %conv30
}

; Function Attrs: nounwind uwtable
define i32 @spec_rewind(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  store i32 0, i32* %pos, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @spec_reset(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %1 = load i8*, i8** %buf, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom1
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx2, i32 0, i32 1
  %3 = load i32, i32* %len, align 4
  %conv = sext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %conv, i32 1, i1 false)
  %4 = load i32, i32* %fd.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom3
  %len5 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx4, i32 0, i32 1
  store i32 0, i32* %len5, align 4
  %5 = load i32, i32* %fd.addr, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  store i32 0, i32* %pos, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @spec_write(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i32 %1, i8* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %4, 3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32 %6)
  call void @exit(i32 0) #7
  unreachable

if.end.4:                                         ; preds = %if.end
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %8 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32, i32* %fd.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom6
  %buf8 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 3
  %10 = load i8*, i8** %buf8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %11, i64 %conv, i32 1, i1 false)
  %13 = load i32, i32* %size.addr, align 4
  %14 = load i32, i32* %fd.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom10
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx11, i32 0, i32 1
  %15 = load i32, i32* %len, align 4
  %add = add nsw i32 %15, %13
  store i32 %add, i32* %len, align 4
  %16 = load i32, i32* %size.addr, align 4
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom12
  %pos14 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx13, i32 0, i32 2
  %18 = load i32, i32* %pos14, align 4
  %add15 = add nsw i32 %18, %16
  store i32 %add15, i32* %pos14, align 4
  %19 = load i32, i32* @dbglvl, align 4
  %cmp16 = icmp slt i32 4, %19
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.4
  %20 = load i32, i32* %size.addr, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %20)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.4
  %21 = load i32, i32* %size.addr, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @spec_fwrite(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %num.addr, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* %1, i32 %2, i32 %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %5, 3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i32 %7)
  call void @exit(i32 0) #7
  unreachable

if.end.4:                                         ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %9 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom6
  %buf8 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 3
  %11 = load i8*, i8** %buf8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom5
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i32, i32* %size.addr, align 4
  %14 = load i32, i32* %num.addr, align 4
  %mul = mul nsw i32 %13, %14
  %conv = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %12, i64 %conv, i32 1, i1 false)
  %15 = load i32, i32* %size.addr, align 4
  %16 = load i32, i32* %num.addr, align 4
  %mul10 = mul nsw i32 %15, %16
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom11
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx12, i32 0, i32 1
  %18 = load i32, i32* %len, align 4
  %add = add nsw i32 %18, %mul10
  store i32 %add, i32* %len, align 4
  %19 = load i32, i32* %size.addr, align 4
  %20 = load i32, i32* %num.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %21 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %22 = load i32, i32* %pos16, align 4
  %add17 = add nsw i32 %22, %mul13
  store i32 %add17, i32* %pos16, align 4
  %23 = load i32, i32* @dbglvl, align 4
  %cmp18 = icmp slt i32 4, %23
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.4
  %24 = load i32, i32* %num.addr, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.4
  %25 = load i32, i32* %num.addr, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @spec_putc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %fd.addr = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %ch.addr, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 %conv, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %3, 3
  br i1 %cmp1, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %fd.addr, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32 %5)
  call void @exit(i32 0) #7
  unreachable

if.end.5:                                         ; preds = %if.end
  %6 = load i8, i8* %ch.addr, align 1
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %8 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32, i32* %fd.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom7
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx8, i32 0, i32 3
  %10 = load i8*, i8** %buf, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom6
  store i8 %6, i8* %arrayidx9, align 1
  %11 = load i32, i32* %fd.addr, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 %idxprom10
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx11, i32 0, i32 1
  %12 = load i32, i32* %len, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %len, align 4
  %13 = load i8, i8* %ch.addr, align 1
  %conv13 = zext i8 %13 to i32
  ret i32 %conv13
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %level = alloca i32, align 4
  %input_size = alloca i32, align 4
  %compressed_size = alloca i32, align 4
  %input_name = alloca i8*, align 8
  %validate_array = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 64, i32* %input_size, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8** %input_name, align 8
  store i64 10, i64* @seedi, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %input_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call = call i32 @atoi(i8* %5) #9
  store i32 %call, i32* %input_size, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* %argc.addr, align 4
  %cmp5 = icmp sgt i32 %6, 3
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %7, i64 3
  %8 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 @atoi(i8* %8) #9
  store i32 %call8, i32* %compressed_size, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end.4
  %9 = load i32, i32* %input_size, align 4
  store i32 %9, i32* %compressed_size, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %10 = load i32, i32* %input_size, align 4
  %mul = mul nsw i32 %10, 1048576
  store i32 %mul, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 0, i32 0), align 4
  %11 = load i32, i32* %compressed_size, align 4
  %mul10 = mul nsw i32 %11, 1048576
  store i32 %mul10, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 1, i32 0), align 4
  %12 = load i32, i32* %input_size, align 4
  %mul11 = mul nsw i32 %12, 1048576
  store i32 %mul11, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 2, i32 0), align 4
  %call12 = call i32 @spec_init()
  %call13 = call i32 @debug_time()
  %13 = load i32, i32* @dbglvl, align 4
  %cmp14 = icmp slt i32 2, %13
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.9
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.9
  %14 = load i8*, i8** %input_name, align 8
  %15 = load i32, i32* %input_size, align 4
  %mul18 = mul nsw i32 %15, 1048576
  %call19 = call i32 @spec_load(i32 0, i8* %14, i32 %mul18)
  %16 = load i32, i32* @dbglvl, align 4
  %cmp20 = icmp slt i32 3, %16
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %17 = load i32, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 0, i32 1), align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i32 %17)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.17
  %18 = load i32, i32* %input_size, align 4
  %mul24 = mul nsw i32 %18, 1048576
  %div = sdiv i32 %mul24, 1024
  %conv = sext i32 %div to i64
  %call25 = call noalias i8* @malloc(i64 %conv) #2
  store i8* %call25, i8** %validate_array, align 8
  %19 = load i8*, i8** %validate_array, align 8
  %cmp26 = icmp eq i8* %19, null
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.23
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

if.end.30:                                        ; preds = %if.end.23
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %20 = load i32, i32* %i, align 4
  %mul31 = mul nsw i32 %20, 1027
  %21 = load i32, i32* %input_size, align 4
  %mul32 = mul nsw i32 %21, 1048576
  %cmp33 = icmp slt i32 %mul31, %mul32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %mul35 = mul nsw i32 %22, 1027
  %idxprom = sext i32 %mul35 to i64
  %23 = load i8*, i8** getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 0, i32 3), align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx36, align 1
  %25 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %25 to i64
  %26 = load i8*, i8** %validate_array, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %26, i64 %idxprom37
  store i8 %24, i8* %arrayidx38, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @spec_initbufs()
  store i32 5, i32* %level, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.98, %for.end
  %28 = load i32, i32* %level, align 4
  %cmp40 = icmp sle i32 %28, 9
  br i1 %cmp40, label %for.body.42, label %for.end.99

for.body.42:                                      ; preds = %for.cond.39
  %call43 = call i32 @debug_time()
  %29 = load i32, i32* @dbglvl, align 4
  %cmp44 = icmp slt i32 2, %29
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %for.body.42
  %30 = load i32, i32* %level, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), i32 %30)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %for.body.42
  %31 = load i32, i32* %level, align 4
  call void @spec_compress(i32 0, i32 1, i32 %31)
  %call49 = call i32 @debug_time()
  %32 = load i32, i32* @dbglvl, align 4
  %cmp50 = icmp slt i32 3, %32
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.48
  %33 = load i32, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 1, i32 1), align 4
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i32 %33)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.48
  %call55 = call i32 @spec_reset(i32 0)
  %call56 = call i32 @spec_rewind(i32 1)
  %call57 = call i32 @debug_time()
  %34 = load i32, i32* @dbglvl, align 4
  %cmp58 = icmp slt i32 2, %34
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.54
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.54
  %35 = load i32, i32* %level, align 4
  call void @spec_uncompress(i32 1, i32 0, i32 %35)
  %call63 = call i32 @debug_time()
  %36 = load i32, i32* @dbglvl, align 4
  %cmp64 = icmp slt i32 3, %36
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.62
  %37 = load i32, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 0, i32 1), align 4
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i32 %37)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.62
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.87, %if.end.68
  %38 = load i32, i32* %i, align 4
  %mul70 = mul nsw i32 %38, 1027
  %39 = load i32, i32* %input_size, align 4
  %mul71 = mul nsw i32 %39, 1048576
  %cmp72 = icmp slt i32 %mul70, %mul71
  br i1 %cmp72, label %for.body.74, label %for.end.89

for.body.74:                                      ; preds = %for.cond.69
  %40 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %40 to i64
  %41 = load i8*, i8** %validate_array, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %41, i64 %idxprom75
  %42 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %42 to i32
  %43 = load i32, i32* %i, align 4
  %mul78 = mul nsw i32 %43, 1027
  %idxprom79 = sext i32 %mul78 to i64
  %44 = load i8*, i8** getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i32 0, i64 0, i32 3), align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %44, i64 %idxprom79
  %45 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %45 to i32
  %cmp82 = icmp ne i32 %conv77, %conv81
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %for.body.74
  %46 = load i32, i32* %input_size, align 4
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0), i32 %46)
  call void @exit(i32 0) #7
  unreachable

if.end.86:                                        ; preds = %for.body.74
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %47 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %47, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.69

for.end.89:                                       ; preds = %for.cond.69
  %call90 = call i32 @debug_time()
  %48 = load i32, i32* @dbglvl, align 4
  %cmp91 = icmp slt i32 3, %48
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %for.end.89
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %for.end.89
  %call96 = call i32 @spec_reset(i32 1)
  %call97 = call i32 @spec_rewind(i32 0)
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.95
  %49 = load i32, i32* %level, align 4
  %add = add nsw i32 %49, 2
  store i32 %add, i32* %level, align 4
  br label %for.cond.39

for.end.99:                                       ; preds = %for.cond.39
  %50 = load i32, i32* %input_size, align 4
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %50)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: nounwind uwtable
define void @spec_compress(i32 %in, i32 %out, i32 %lev) #0 {
entry:
  %in.addr = alloca i32, align 4
  %out.addr = alloca i32, align 4
  %lev.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  store i32 %out, i32* %out.addr, align 4
  store i32 %lev, i32* %lev.addr, align 4
  %0 = load i32, i32* %lev.addr, align 4
  store i32 %0, i32* @blockSize100k, align 4
  %1 = load i32, i32* %in.addr, align 4
  %2 = load i32, i32* %out.addr, align 4
  call void @compressStream(i32 %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @spec_uncompress(i32 %in, i32 %out, i32 %lev) #0 {
entry:
  %in.addr = alloca i32, align 4
  %out.addr = alloca i32, align 4
  %lev.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  store i32 %out, i32* %out.addr, align 4
  store i32 %lev, i32* %lev.addr, align 4
  store i32 0, i32* @blockSize100k, align 4
  %0 = load i32, i32* %in.addr, align 4
  %1 = load i32, i32* %out.addr, align 4
  %call = call zeroext i8 @uncompressStream(i32 %0, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @spec_initbufs() #0 {
entry:
  store i8 0, i8* @smallMode, align 1
  store i32 0, i32* @verbosity, align 4
  store i32 9, i32* @blockSize100k, align 4
  store i32 30, i32* @workFactor, align 4
  ret void
}

declare void @compressStream(i32, i32) #1

declare zeroext i8 @uncompressStream(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @debug_time() #0 {
entry:
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
