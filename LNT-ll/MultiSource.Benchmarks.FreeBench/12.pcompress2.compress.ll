; ModuleID = './MultiSource.Benchmarks.FreeBench/12.pcompress2.compress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [22 x i8] c"USAGE: %s <FILENAME>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@fpi = common global %struct._IO_FILE* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: Could not find infile %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".compr\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = common global %struct._IO_FILE* null, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"ERROR: Could not open outfile (do you have write permission here?)\0A\00", align 1
@in = internal global i8* null, align 8
@bw = common global i8* null, align 8
@rot = common global i32* null, align 8
@rle = common global i8* null, align 8
@ari = common global i8* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Something is fishy regarding the file size\0A\00", align 1
@size = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"PANIC: RLE buf larger than %d bytes needed (repeat)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @compress(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %filename = alloca i8*, align 8
  %outname = alloca [1000 x i8], align 16
  %buf = alloca %struct.stat, align 8
  %filesize = alloca i32, align 4
  %outsize = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* %3)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx1, align 8
  store i8* %5, i8** %filename, align 8
  %6 = load i8*, i8** %filename, align 8
  %call2 = call i32 @stat(i8* %6, %struct.stat* %buf) #4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %7 = load i64, i64* %st_size, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %filesize, align 4
  %8 = load i8*, i8** %filename, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** @fpi, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpi, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %filename, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* %11)
  call void @exit(i32 1) #6
  unreachable

if.end.8:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %outname, i32 0, i32 0
  %12 = load i8*, i8** %filename, align 8
  %call9 = call i8* @strcpy(i8* %arraydecay, i8* %12) #4
  %arraydecay10 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outname, i32 0, i32 0
  %call11 = call i8* @strcat(i8* %arraydecay10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #4
  %arraydecay12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outname, i32 0, i32 0
  %call13 = call %struct._IO_FILE* @fopen(i8* %arraydecay12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** @fpo, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %cmp14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.18:                                        ; preds = %if.end.8
  %15 = bitcast i32* %filesize to i8*
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call19 = call i64 @fwrite(i8* %15, i64 4, i64 1, %struct._IO_FILE* %16)
  %17 = load i32, i32* %filesize, align 4
  %mul = mul i32 2, %17
  %conv20 = zext i32 %mul to i64
  %mul21 = mul i64 %conv20, 1
  %call22 = call noalias i8* @malloc(i64 %mul21) #4
  store i8* %call22, i8** @in, align 8
  %18 = load i32, i32* %filesize, align 4
  %conv23 = zext i32 %18 to i64
  %mul24 = mul i64 %conv23, 1
  %call25 = call noalias i8* @malloc(i64 %mul24) #4
  store i8* %call25, i8** @bw, align 8
  %19 = load i32, i32* %filesize, align 4
  %conv26 = zext i32 %19 to i64
  %mul27 = mul i64 %conv26, 4
  %call28 = call noalias i8* @malloc(i64 %mul27) #4
  %20 = bitcast i8* %call28 to i32*
  store i32* %20, i32** @rot, align 8
  %21 = load i32, i32* %filesize, align 4
  %mul29 = mul i32 2, %21
  %conv30 = zext i32 %mul29 to i64
  %mul31 = mul i64 %conv30, 1
  %call32 = call noalias i8* @malloc(i64 %mul31) #4
  store i8* %call32, i8** @rle, align 8
  %22 = load i32, i32* %filesize, align 4
  %mul33 = mul i32 2, %22
  %conv34 = zext i32 %mul33 to i64
  %mul35 = mul i64 %conv34, 1
  %call36 = call noalias i8* @malloc(i64 %mul35) #4
  store i8* %call36, i8** @ari, align 8
  %23 = load i8*, i8** @in, align 8
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.44

lor.lhs.false:                                    ; preds = %if.end.18
  %24 = load i8*, i8** @bw, align 8
  %tobool37 = icmp ne i8* %24, null
  br i1 %tobool37, label %lor.lhs.false.38, label %if.then.44

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %25 = load i32*, i32** @rot, align 8
  %tobool39 = icmp ne i32* %25, null
  br i1 %tobool39, label %lor.lhs.false.40, label %if.then.44

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.38
  %26 = load i8*, i8** @rle, align 8
  %tobool41 = icmp ne i8* %26, null
  br i1 %tobool41, label %lor.lhs.false.42, label %if.then.44

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.40
  %27 = load i8*, i8** @ari, align 8
  %tobool43 = icmp ne i8* %27, null
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.40, %lor.lhs.false.38, %lor.lhs.false, %if.end.18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.46:                                        ; preds = %lor.lhs.false.42
  %29 = load i8*, i8** @in, align 8
  %30 = load i32, i32* %filesize, align 4
  %conv47 = zext i32 %30 to i64
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpi, align 8
  %call48 = call i64 @fread(i8* %29, i64 1, i64 %conv47, %struct._IO_FILE* %31)
  %32 = load i32, i32* %filesize, align 4
  %conv49 = zext i32 %32 to i64
  %cmp50 = icmp ne i64 %call48, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.46
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.54:                                        ; preds = %if.end.46
  %33 = load i32, i32* %filesize, align 4
  store i32 %33, i32* @size, align 4
  call void @do_bwe()
  %34 = load i8*, i8** @in, align 8
  call void @free(i8* %34) #4
  %35 = load i32*, i32** @rot, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36) #4
  %call55 = call i32 @do_rle()
  store i32 %call55, i32* %outsize, align 4
  %37 = load i8*, i8** @bw, align 8
  call void @free(i8* %37) #4
  %38 = load i32, i32* %outsize, align 4
  %call56 = call i32 @do_ari(i32 %38)
  store i32 %call56, i32* %outsize, align 4
  %39 = load i8*, i8** @rle, align 8
  call void @free(i8* %39) #4
  %40 = load i8*, i8** @ari, align 8
  %41 = load i32, i32* %outsize, align 4
  %conv57 = zext i32 %41 to i64
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call58 = call i64 @fwrite(i8* %40, i64 1, i64 %conv57, %struct._IO_FILE* %42)
  %43 = load i8*, i8** @ari, align 8
  call void @free(i8* %43) #4
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpi, align 8
  %call59 = call i32 @fclose(%struct._IO_FILE* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* %45)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @do_ari(i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @do_bwe() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i8*, i8** @in, align 8
  %1 = load i32, i32* @size, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = load i8*, i8** @in, align 8
  %3 = load i32, i32* @size, align 4
  %conv = zext i32 %3 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %2, i64 %conv, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @size, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i32*, i32** @rot, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** @rot, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i32, i32* @size, align 4
  %conv2 = zext i32 %12 to i64
  call void @qsort(i8* %11, i64 %conv2, i64 4, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.13, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @size, align 4
  %cmp4 = icmp ult i32 %13, %14
  br i1 %cmp4, label %for.body.6, label %for.end.15

for.body.6:                                       ; preds = %for.cond.3
  %15 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %15 to i64
  %16 = load i32*, i32** @rot, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  %17 = load i32, i32* %arrayidx8, align 4
  %18 = load i32, i32* @size, align 4
  %add = add i32 %17, %18
  %sub = sub i32 %add, 1
  %19 = load i32, i32* @size, align 4
  %rem = urem i32 %sub, %19
  %idxprom9 = zext i32 %rem to i64
  %20 = load i8*, i8** @in, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 %idxprom9
  %21 = load i8, i8* %arrayidx10, align 1
  %22 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %22 to i64
  %23 = load i8*, i8** @bw, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %23, i64 %idxprom11
  store i8 %21, i8* %arrayidx12, align 1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.6
  %24 = load i32, i32* %i, align 4
  %inc14 = add i32 %24, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.3

for.end.15:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.24, %for.end.15
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* @size, align 4
  %cmp17 = icmp ult i32 %25, %26
  br i1 %cmp17, label %for.body.19, label %for.end.26

for.body.19:                                      ; preds = %for.cond.16
  %27 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %27 to i64
  %28 = load i32*, i32** @rot, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom20
  %29 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %29, 0
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.19
  %30 = bitcast i32* %i to i8*
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call = call i64 @fwrite(i8* %30, i64 4, i64 1, %struct._IO_FILE* %31)
  br label %for.end.26

if.end:                                           ; preds = %for.body.19
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc25 = add i32 %32, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.16

for.end.26:                                       ; preds = %if.then, %for.cond.16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %first = alloca i32*, align 8
  %sec = alloca i32*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %first, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %sec, align 8
  %4 = load i8*, i8** @in, align 8
  %5 = load i32*, i32** %first, align 8
  %6 = load i32, i32* %5, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %7 = load i8*, i8** @in, align 8
  %8 = load i32*, i32** %sec, align 8
  %9 = load i32, i32* %8, align 4
  %idx.ext1 = zext i32 %9 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 %idx.ext1
  %10 = load i32, i32* @size, align 4
  %conv = zext i32 %10 to i64
  %call = call i32 @memcmp(i8* %add.ptr, i8* %add.ptr2, i64 %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @do_rle() #0 {
entry:
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %rlepos = alloca i32, align 4
  %teck = alloca i8, align 1
  %count = alloca i8, align 1
  store i32 0, i32* %rlepos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.71, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @size, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %c, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i8*, i8** @bw, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %teck, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %c, align 4
  %add = add i32 %5, %6
  %7 = load i32, i32* @size, align 4
  %cmp1 = icmp ult i32 %add, %7
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8, i8* %teck, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %c, align 4
  %add2 = add i32 %9, %10
  %idxprom3 = zext i32 %add2 to i64
  %11 = load i8*, i8** @bw, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom3
  %12 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* %c, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %cmp8 = icmp uge i32 %15, 127
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %land.end
  %16 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %16, 1
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %c, align 4
  %add13 = add i32 %17, %18
  %19 = load i32, i32* @size, align 4
  %cmp14 = icmp ult i32 %add13, %19
  br i1 %cmp14, label %if.then.16, label %if.end.44

if.then.16:                                       ; preds = %if.then.12
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.41, %if.then.16
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %c, align 4
  %add18 = add i32 %20, %21
  %sub = sub i32 %add18, 1
  %idxprom19 = zext i32 %sub to i64
  %22 = load i8*, i8** @bw, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %idxprom19
  %23 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %23 to i32
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %c, align 4
  %add22 = add i32 %24, %25
  %idxprom23 = zext i32 %add22 to i64
  %26 = load i8*, i8** @bw, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 %idxprom23
  %27 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %27 to i32
  %cmp26 = icmp ne i32 %conv21, %conv25
  br i1 %cmp26, label %land.rhs.28, label %land.end.40

land.rhs.28:                                      ; preds = %while.cond.17
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %c, align 4
  %add29 = add i32 %28, %29
  %idxprom30 = zext i32 %add29 to i64
  %30 = load i8*, i8** @bw, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  %31 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %31 to i32
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %c, align 4
  %add33 = add i32 %32, %33
  %add34 = add i32 %add33, 1
  %idxprom35 = zext i32 %add34 to i64
  %34 = load i8*, i8** @bw, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %34, i64 %idxprom35
  %35 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %35 to i32
  %cmp38 = icmp ne i32 %conv32, %conv37
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.28, %while.cond.17
  %36 = phi i1 [ false, %while.cond.17 ], [ %cmp38, %land.rhs.28 ]
  br i1 %36, label %while.body.41, label %while.end.43

while.body.41:                                    ; preds = %land.end.40
  %37 = load i32, i32* %c, align 4
  %inc42 = add i32 %37, 1
  store i32 %inc42, i32* %c, align 4
  br label %while.cond.17

while.end.43:                                     ; preds = %land.end.40
  br label %if.end.44

if.end.44:                                        ; preds = %while.end.43, %if.then.12
  %38 = load i32, i32* %c, align 4
  %conv45 = trunc i32 %38 to i8
  %conv46 = zext i8 %conv45 to i32
  %and = and i32 %conv46, 127
  %conv47 = trunc i32 %and to i8
  store i8 %conv47, i8* %count, align 1
  %39 = load i8, i8* %count, align 1
  %40 = load i32, i32* %rlepos, align 4
  %inc48 = add i32 %40, 1
  store i32 %inc48, i32* %rlepos, align 4
  %idxprom49 = zext i32 %40 to i64
  %41 = load i8*, i8** @rle, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %41, i64 %idxprom49
  store i8 %39, i8* %arrayidx50, align 1
  %42 = load i8*, i8** @rle, align 8
  %43 = load i32, i32* %rlepos, align 4
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  %44 = load i8*, i8** @bw, align 8
  %45 = load i32, i32* %i, align 4
  %idx.ext51 = zext i32 %45 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %44, i64 %idx.ext51
  %46 = load i32, i32* %c, align 4
  %conv53 = zext i32 %46 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr52, i64 %conv53, i32 1, i1 false)
  %47 = load i32, i32* %c, align 4
  %48 = load i32, i32* %rlepos, align 4
  %add54 = add i32 %48, %47
  store i32 %add54, i32* %rlepos, align 4
  %49 = load i32, i32* %c, align 4
  %50 = load i32, i32* %i, align 4
  %add55 = add i32 %50, %49
  store i32 %add55, i32* %i, align 4
  br label %if.end.71

if.else:                                          ; preds = %while.end
  %51 = load i32, i32* %rlepos, align 4
  %add56 = add i32 %51, 2
  %52 = load i32, i32* @size, align 4
  %mul = mul i32 2, %52
  %cmp57 = icmp ugt i32 %add56, %mul
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i32, i32* @size, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i32 %54)
  call void @exit(i32 1) #6
  unreachable

if.end.60:                                        ; preds = %if.else
  %55 = load i32, i32* %c, align 4
  %conv61 = trunc i32 %55 to i8
  %conv62 = zext i8 %conv61 to i32
  %or = or i32 %conv62, 128
  %conv63 = trunc i32 %or to i8
  store i8 %conv63, i8* %count, align 1
  %56 = load i8, i8* %count, align 1
  %57 = load i32, i32* %rlepos, align 4
  %idxprom64 = zext i32 %57 to i64
  %58 = load i8*, i8** @rle, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %58, i64 %idxprom64
  store i8 %56, i8* %arrayidx65, align 1
  %59 = load i8, i8* %teck, align 1
  %60 = load i32, i32* %rlepos, align 4
  %add66 = add i32 %60, 1
  %idxprom67 = zext i32 %add66 to i64
  %61 = load i8*, i8** @rle, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %61, i64 %idxprom67
  store i8 %59, i8* %arrayidx68, align 1
  %62 = load i32, i32* %rlepos, align 4
  %add69 = add i32 %62, 2
  store i32 %add69, i32* %rlepos, align 4
  %63 = load i32, i32* %c, align 4
  %64 = load i32, i32* %i, align 4
  %add70 = add i32 %64, %63
  store i32 %add70, i32* %i, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.60, %if.end.44
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load i32, i32* %rlepos, align 4
  ret i32 %65
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
