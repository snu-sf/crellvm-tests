; ModuleID = './SingleSource.Benchmarks.McGill/1.queens.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@printing = global i32 1, align 4
@findall = global i32 0, align 4
@solutions = global i64 0, align 8
@progname = global i8* null, align 8
@.str = private unnamed_addr constant [168 x i8] c"Usage:  %s [-ac] n\0A\09n\09Number of queens (rows and columns). An integer from 1 to 100.\0A\09-a\09Find and print all solutions.\0A\09-c\09Count all solutions, but do not print them.\0A\00", align 1
@queens = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: Illegal option '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: Non-integer argument '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: n must be positive integer\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: Can't have more than %d queens\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: Missing n argument\0A\00", align 1
@files = common global i32 0, align 4
@ranks = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%d queen%s on a %dx%d board...\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = external global %struct._IO_FILE*, align 8
@file = common global [100 x i32] zeroinitializer, align 16
@bakdiag = common global [199 x i32] zeroinitializer, align 16
@fordiag = common global [199 x i32] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [24 x i8] c"...there is 1 solution\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"...there are %ld solutions\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\0ASolution #%lu:\0A\00", align 1
@queen = common global [100 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %usage = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str, i32 0, i32 0), i8** %usage, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** @progname, align 8
  store i32 0, i32* @printing, align 4
  store i32 14, i32* @queens, align 4
  store i32 1, i32* @findall, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx1, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %10 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv4 = sext i8 %12 to i32
  switch i32 %conv4, label %sw.default [
    i32 99, label %sw.bb
    i32 97, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* @printing, align 4
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %while.body, %sw.bb
  store i32 1, i32* @findall, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %16, i64 %idxprom6
  %17 = load i8*, i8** %arrayidx7, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %14, i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** %usage, align 8
  %20 = load i8*, i8** @progname, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* %19, i8* %20)
  call void @exit(i32 -1) #4
  unreachable

sw.epilog:                                        ; preds = %sw.bb.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.24

if.else:                                          ; preds = %for.body
  %21 = load i8*, i8** %p, align 8
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* @queens) #5
  %cmp10 = icmp ne i32 %call9, 1
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** @progname, align 8
  %24 = load i8*, i8** %p, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* %23, i8* %24)
  call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %if.else
  %25 = load i32, i32* @queens, align 4
  %cmp14 = icmp sle i32 %25, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** @progname, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* %27)
  call void @exit(i32 -1) #4
  unreachable

if.end.18:                                        ; preds = %if.end
  %28 = load i32, i32* @queens, align 4
  %cmp19 = icmp sgt i32 %28, 100
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i8*, i8** @progname, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %30, i32 100)
  call void @exit(i32 -1) #4
  unreachable

if.end.23:                                        ; preds = %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* @queens, align 4
  %tobool25 = icmp ne i32 %32, 0
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %for.end
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i8*, i8** @progname, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** %usage, align 8
  %37 = load i8*, i8** @progname, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* %36, i8* %37)
  call void @exit(i32 -1) #4
  unreachable

if.end.29:                                        ; preds = %for.end
  %38 = load i32, i32* @queens, align 4
  store i32 %38, i32* @files, align 4
  store i32 %38, i32* @ranks, align 4
  %39 = load i32, i32* @queens, align 4
  %40 = load i32, i32* @queens, align 4
  %cmp30 = icmp sgt i32 %40, 1
  %cond = select i1 %cmp30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)
  %41 = load i32, i32* @ranks, align 4
  %42 = load i32, i32* @files, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 %39, i8* %cond, i32 %41, i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i32 @fflush(%struct._IO_FILE* %43)
  store i64 0, i64* @solutions, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.40, %if.end.29
  %44 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %44, 100
  br i1 %cmp35, label %for.body.37, label %for.end.42

for.body.37:                                      ; preds = %for.cond.34
  %45 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %45 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], [100 x i32]* @file, i32 0, i64 %idxprom38
  store i32 101, i32* %arrayidx39, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.37
  %46 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %46, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.34

for.end.42:                                       ; preds = %for.cond.34
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.51, %for.end.42
  %47 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %47, 199
  br i1 %cmp44, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %for.cond.43
  %48 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %48 to i64
  %arrayidx48 = getelementptr inbounds [199 x i32], [199 x i32]* @bakdiag, i32 0, i64 %idxprom47
  store i32 101, i32* %arrayidx48, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %49 to i64
  %arrayidx50 = getelementptr inbounds [199 x i32], [199 x i32]* @fordiag, i32 0, i64 %idxprom49
  store i32 101, i32* %arrayidx50, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.46
  %50 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %50, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.43

for.end.53:                                       ; preds = %for.cond.43
  call void @find(i32 0)
  %51 = load i32, i32* @printing, align 4
  %tobool54 = icmp ne i32 %51, 0
  br i1 %tobool54, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %for.end.53
  %52 = load i64, i64* @solutions, align 8
  %tobool55 = icmp ne i64 %52, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %land.lhs.true
  %call57 = call i32 @putchar(i32 10)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %land.lhs.true, %for.end.53
  %53 = load i64, i64* @solutions, align 8
  %cmp59 = icmp eq i64 %53, 1
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.end.58
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.65

if.else.63:                                       ; preds = %if.end.58
  %54 = load i64, i64* @solutions, align 8
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i64 %54)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.61
  call void @exit(i32 0) #4
  unreachable

return:                                           ; No predecessors!
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @find(i32 %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  %f = alloca i32, align 4
  %fp = alloca i32*, align 8
  %fdp = alloca i32*, align 8
  %bdp = alloca i32*, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  %1 = load i32, i32* @queens, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @solutions, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* @solutions, align 8
  %3 = load i32, i32* @printing, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void @pboard()
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load i32, i32* @findall, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void @exit(i32 0) #4
  unreachable

if.end.4:                                         ; preds = %if.end
  br label %if.end.20

if.else:                                          ; preds = %entry
  store i32 0, i32* %f, align 4
  store i32* getelementptr inbounds ([100 x i32], [100 x i32]* @file, i32 0, i32 0), i32** %fp, align 8
  %5 = load i32, i32* %level.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [199 x i32], [199 x i32]* @fordiag, i32 0, i64 %idxprom
  store i32* %arrayidx, i32** %fdp, align 8
  %6 = load i32, i32* %level.addr, align 4
  %7 = load i32, i32* @files, align 4
  %add = add nsw i32 %6, %7
  %sub = sub nsw i32 %add, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [199 x i32], [199 x i32]* @bakdiag, i32 0, i64 %idxprom5
  store i32* %arrayidx6, i32** %bdp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load i32, i32* %f, align 4
  %9 = load i32, i32* @files, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %fp, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %level.addr, align 4
  %cmp8 = icmp sge i32 %11, %12
  br i1 %cmp8, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32*, i32** %fdp, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %level.addr, align 4
  %cmp9 = icmp sge i32 %14, %15
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %16 = load i32*, i32** %bdp, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %level.addr, align 4
  %cmp11 = icmp sge i32 %17, %18
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %land.lhs.true.10
  %19 = load i32, i32* %f, align 4
  %20 = load i32, i32* %level.addr, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], [100 x i32]* @queen, i32 0, i64 %idxprom13
  store i32 %19, i32* %arrayidx14, align 4
  %21 = load i32, i32* %level.addr, align 4
  %22 = load i32*, i32** %bdp, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %fdp, align 8
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %fp, align 8
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %level.addr, align 4
  %add15 = add nsw i32 %25, 1
  call void @find(i32 %add15)
  %26 = load i32*, i32** %bdp, align 8
  store i32 101, i32* %26, align 4
  %27 = load i32*, i32** %fdp, align 8
  store i32 101, i32* %27, align 4
  %28 = load i32*, i32** %fp, align 8
  store i32 101, i32* %28, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %29 = load i32, i32* %f, align 4
  %inc17 = add nsw i32 %29, 1
  store i32 %inc17, i32* %f, align 4
  %30 = load i32*, i32** %fp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %incdec.ptr, i32** %fp, align 8
  %31 = load i32*, i32** %fdp, align 8
  %incdec.ptr18 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr18, i32** %fdp, align 8
  %32 = load i32*, i32** %bdp, align 8
  %incdec.ptr19 = getelementptr inbounds i32, i32* %32, i32 -1
  store i32* %incdec.ptr19, i32** %bdp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.end.4
  ret void
}

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define void @pboard() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32, i32* @findall, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @solutions, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i64 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @ranks, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* @files, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call4 = call i32 @putchar(i32 32)
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @queen, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp eq i32 %6, %8
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body.3
  %call7 = call i32 @putchar(i32 81)
  br label %if.end.9

if.else:                                          ; preds = %for.body.3
  %call8 = call i32 @putchar(i32 45)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %call10 = call i32 @putchar(i32 10)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %11)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
