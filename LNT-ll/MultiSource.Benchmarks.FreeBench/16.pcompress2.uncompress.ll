; ModuleID = './MultiSource.Benchmarks.FreeBench/16.pcompress2.uncompress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"ERROR: Could not find infile.\0A\00", align 1
@size = common global i32 0, align 4
@orgpos = common global i32 0, align 4
@in = common global i8* null, align 8
@deari = common global i8* null, align 8
@derle = common global i8* null, align 8
@debw = common global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @uncompress(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fpi = alloca %struct._IO_FILE*, align 8
  %insize = alloca i32, align 4
  %outsize = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fpi, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fpi, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fpi, align 8
  %call2 = call i64 @fread(i8* bitcast (i32* @size to i8*), i64 4, i64 1, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fpi, align 8
  %call3 = call i64 @fread(i8* bitcast (i32* @orgpos to i8*), i64 4, i64 1, %struct._IO_FILE* %5)
  %6 = load i32, i32* @size, align 4
  %mul = mul i32 2, %6
  %conv = zext i32 %mul to i64
  %mul4 = mul i64 %conv, 1
  %call5 = call noalias i8* @malloc(i64 %mul4) #4
  store i8* %call5, i8** @in, align 8
  %7 = load i32, i32* @size, align 4
  %mul6 = mul i32 2, %7
  %conv7 = zext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 1
  %call9 = call noalias i8* @malloc(i64 %mul8) #4
  store i8* %call9, i8** @deari, align 8
  %8 = load i32, i32* @size, align 4
  %mul10 = mul i32 2, %8
  %conv11 = zext i32 %mul10 to i64
  %mul12 = mul i64 %conv11, 1
  %call13 = call noalias i8* @malloc(i64 %mul12) #4
  store i8* %call13, i8** @derle, align 8
  %9 = load i32, i32* @size, align 4
  %mul14 = mul i32 2, %9
  %conv15 = zext i32 %mul14 to i64
  %mul16 = mul i64 %conv15, 1
  %call17 = call noalias i8* @malloc(i64 %mul16) #4
  store i8* %call17, i8** @debw, align 8
  %10 = load i8*, i8** @in, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.23

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i8*, i8** @deari, align 8
  %tobool18 = icmp ne i8* %11, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.23

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** @derle, align 8
  %tobool20 = icmp ne i8* %12, null
  br i1 %tobool20, label %lor.lhs.false.21, label %if.then.23

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.19
  %13 = load i8*, i8** @debw, align 8
  %tobool22 = icmp ne i8* %13, null
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.19, %lor.lhs.false, %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.25:                                        ; preds = %lor.lhs.false.21
  %15 = load i8*, i8** @in, align 8
  %16 = load i32, i32* @size, align 4
  %mul26 = mul i32 2, %16
  %conv27 = zext i32 %mul26 to i64
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fpi, align 8
  %call28 = call i64 @fread(i8* %15, i64 1, i64 %conv27, %struct._IO_FILE* %17)
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, i32* %insize, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fpi, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %18)
  %19 = load i32, i32* %insize, align 4
  %call31 = call i32 @do_deari(i32 %19)
  store i32 %call31, i32* %outsize, align 4
  %20 = load i8*, i8** @in, align 8
  call void @free(i8* %20) #4
  %21 = load i32, i32* %outsize, align 4
  call void @do_derle(i32 %21)
  %22 = load i8*, i8** @deari, align 8
  call void @free(i8* %22) #4
  call void @do_debwe()
  %23 = load i8*, i8** @derle, align 8
  call void @free(i8* %23) #4
  %24 = load i8*, i8** @debw, align 8
  %25 = load i32, i32* @size, align 4
  %conv32 = zext i32 %25 to i64
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i64 @fwrite(i8* %24, i64 1, i64 %conv32, %struct._IO_FILE* %26)
  %27 = load i8*, i8** @debw, align 8
  call void @free(i8* %27) #4
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @do_deari(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @do_derle(i32 %rlesize) #0 {
entry:
  %rlesize.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %derlepos = alloca i32, align 4
  store i32 %rlesize, i32* %rlesize.addr, align 4
  store i32 0, i32* %derlepos, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %rlesize.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i8*, i8** @deari, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %if.then
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom2 = zext i32 %6 to i64
  %7 = load i8*, i8** @deari, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %and5 = and i32 %conv4, 127
  %cmp6 = icmp ult i32 %5, %and5
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %j, align 4
  %add = add i32 %9, 1
  %idxprom9 = zext i32 %add to i64
  %10 = load i8*, i8** @deari, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 %idxprom9
  %11 = load i8, i8* %arrayidx10, align 1
  %12 = load i32, i32* %derlepos, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %derlepos, align 4
  %idxprom11 = zext i32 %12 to i64
  %13 = load i8*, i8** @derle, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  store i8 %11, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %14 = load i32, i32* %k, align 4
  %inc13 = add i32 %14, 1
  store i32 %inc13, i32* %k, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %15 = load i32, i32* %j, align 4
  %add14 = add i32 %15, 2
  store i32 %add14, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load i8*, i8** @derle, align 8
  %17 = load i32, i32* %derlepos, align 4
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %18 = load i8*, i8** @deari, align 8
  %19 = load i32, i32* %j, align 4
  %idx.ext15 = zext i32 %19 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %18, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 1
  %20 = load i32, i32* %j, align 4
  %idxprom18 = zext i32 %20 to i64
  %21 = load i8*, i8** @deari, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 %idxprom18
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %22 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr17, i64 %conv20, i32 1, i1 false)
  %23 = load i32, i32* %j, align 4
  %idxprom21 = zext i32 %23 to i64
  %24 = load i8*, i8** @deari, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 %idxprom21
  %25 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  %26 = load i32, i32* %derlepos, align 4
  %add24 = add i32 %26, %conv23
  store i32 %add24, i32* %derlepos, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom25 = zext i32 %27 to i64
  %28 = load i8*, i8** @deari, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %28, i64 %idxprom25
  %29 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %29 to i32
  %add28 = add nsw i32 %conv27, 1
  %30 = load i32, i32* %j, align 4
  %add29 = add i32 %30, %add28
  store i32 %add29, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @do_debwe() #0 {
entry:
  %L = alloca i8*, align 8
  %T = alloca i32*, align 8
  %count = alloca [256 x i32], align 16
  %total = alloca [256 x i32], align 16
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %indx = alloca i32, align 4
  %0 = load i8*, i8** @derle, align 8
  store i8* %0, i8** %L, align 8
  store i32 0, i32* %sum, align 4
  %1 = load i32, i32* @size, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %T, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp ult i32 %3, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %count, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.11, %for.end
  %6 = load i32, i32* %k, align 4
  %7 = load i32, i32* @size, align 4
  %cmp3 = icmp ult i32 %6, %7
  br i1 %cmp3, label %for.body.5, label %for.end.13

for.body.5:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %k, align 4
  %idxprom6 = zext i32 %8 to i64
  %9 = load i8*, i8** %L, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 %idxprom6
  %10 = load i8, i8* %arrayidx7, align 1
  %idxprom8 = zext i8 %10 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %inc10 = add i32 %11, 1
  store i32 %inc10, i32* %arrayidx9, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.5
  %12 = load i32, i32* %k, align 4
  %inc12 = add i32 %12, 1
  store i32 %inc12, i32* %k, align 4
  br label %for.cond.2

for.end.13:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.24, %for.end.13
  %13 = load i32, i32* %i, align 4
  %cmp15 = icmp ult i32 %13, 256
  br i1 %cmp15, label %for.body.17, label %for.end.26

for.body.17:                                      ; preds = %for.cond.14
  %14 = load i32, i32* %sum, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %total, i32 0, i64 %idxprom18
  store i32 %14, i32* %arrayidx19, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i32 0, i64 %idxprom20
  %17 = load i32, i32* %arrayidx21, align 4
  %18 = load i32, i32* %sum, align 4
  %add = add i32 %18, %17
  store i32 %add, i32* %sum, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i32 0, i64 %idxprom22
  store i32 0, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.17
  %20 = load i32, i32* %i, align 4
  %inc25 = add i32 %20, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.14

for.end.26:                                       ; preds = %for.cond.14
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.44, %for.end.26
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* @size, align 4
  %cmp28 = icmp ult i32 %21, %22
  br i1 %cmp28, label %for.body.30, label %for.end.46

for.body.30:                                      ; preds = %for.cond.27
  %23 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %23 to i64
  %24 = load i8*, i8** %L, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %24, i64 %idxprom31
  %25 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %25 to i32
  store i32 %conv33, i32* %indx, align 4
  %26 = load i32, i32* %indx, align 4
  %idxprom34 = zext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i32 0, i64 %idxprom34
  %27 = load i32, i32* %arrayidx35, align 4
  %28 = load i32, i32* %indx, align 4
  %idxprom36 = zext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* %total, i32 0, i64 %idxprom36
  %29 = load i32, i32* %arrayidx37, align 4
  %add38 = add i32 %27, %29
  %30 = load i32, i32* %i, align 4
  %idxprom39 = zext i32 %30 to i64
  %31 = load i32*, i32** %T, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %31, i64 %idxprom39
  store i32 %add38, i32* %arrayidx40, align 4
  %32 = load i32, i32* %indx, align 4
  %idxprom41 = zext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i32 0, i64 %idxprom41
  %33 = load i32, i32* %arrayidx42, align 4
  %inc43 = add i32 %33, 1
  store i32 %inc43, i32* %arrayidx42, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.30
  %34 = load i32, i32* %i, align 4
  %inc45 = add i32 %34, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.27

for.end.46:                                       ; preds = %for.cond.27
  %35 = load i32, i32* @orgpos, align 4
  %idxprom47 = zext i32 %35 to i64
  %36 = load i8*, i8** %L, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %36, i64 %idxprom47
  %37 = load i8, i8* %arrayidx48, align 1
  %38 = load i32, i32* @size, align 4
  %sub = sub i32 %38, 1
  %idxprom49 = zext i32 %sub to i64
  %39 = load i8*, i8** @debw, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %39, i64 %idxprom49
  store i8 %37, i8* %arrayidx50, align 1
  store i32 1, i32* %k, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.65, %for.end.46
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* @size, align 4
  %cmp52 = icmp ult i32 %40, %41
  br i1 %cmp52, label %for.body.54, label %for.end.67

for.body.54:                                      ; preds = %for.cond.51
  %42 = load i32, i32* @orgpos, align 4
  %idxprom55 = zext i32 %42 to i64
  %43 = load i32*, i32** %T, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %43, i64 %idxprom55
  %44 = load i32, i32* %arrayidx56, align 4
  %idxprom57 = zext i32 %44 to i64
  %45 = load i8*, i8** %L, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %45, i64 %idxprom57
  %46 = load i8, i8* %arrayidx58, align 1
  %47 = load i32, i32* @size, align 4
  %48 = load i32, i32* %k, align 4
  %sub59 = sub i32 %47, %48
  %sub60 = sub i32 %sub59, 1
  %idxprom61 = zext i32 %sub60 to i64
  %49 = load i8*, i8** @debw, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %49, i64 %idxprom61
  store i8 %46, i8* %arrayidx62, align 1
  %50 = load i32, i32* @orgpos, align 4
  %idxprom63 = zext i32 %50 to i64
  %51 = load i32*, i32** %T, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %51, i64 %idxprom63
  %52 = load i32, i32* %arrayidx64, align 4
  store i32 %52, i32* @orgpos, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.54
  %53 = load i32, i32* %k, align 4
  %inc66 = add i32 %53, 1
  store i32 %inc66, i32* %k, align 4
  br label %for.cond.51

for.end.67:                                       ; preds = %for.cond.51
  %54 = load i32*, i32** %T, align 8
  %55 = bitcast i32* %54 to i8*
  call void @free(i8* %55) #4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
