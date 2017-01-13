; ModuleID = './MultiSource.Benchmarks.MallocBench/25.espresso.getopt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@optind = global i32 0, align 4
@espresso_getopt.scan = internal global i8* null, align 8
@optarg = common global i8* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s: unknown option %c\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @espresso_getopt(i32 %argc, i8** %argv, i8* %optstring) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optstring.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %place = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %optstring, i8** %optstring.addr, align 8
  store i8* null, i8** @optarg, align 8
  %0 = load i8*, i8** @espresso_getopt.scan, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @espresso_getopt.scan, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.32

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* @optind, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %4 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @optind, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %5 = load i32, i32* @optind, align 4
  %6 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp sge i32 %5, %6
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %7 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  store i8* %9, i8** %place, align 8
  %10 = load i8*, i8** %place, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp ne i32 %conv11, 45
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end.9
  %12 = load i8*, i8** %place, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.14, %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false.14
  %14 = load i32, i32* @optind, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, i32* @optind, align 4
  %15 = load i8*, i8** %place, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp eq i32 %conv23, 45
  br i1 %cmp24, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.20
  %17 = load i8*, i8** %place, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %18 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true, %if.end.20
  %19 = load i8*, i8** %place, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %add.ptr, i8** @espresso_getopt.scan, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %lor.lhs.false
  %20 = load i8*, i8** @espresso_getopt.scan, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** @espresso_getopt.scan, align 8
  %21 = load i8, i8* %20, align 1
  %conv33 = sext i8 %21 to i32
  store i32 %conv33, i32* %c, align 4
  %22 = load i8*, i8** %optstring.addr, align 8
  %23 = load i32, i32* %c, align 4
  %call = call i8* @strchr(i8* %22, i32 %23) #3
  store i8* %call, i8** %place, align 8
  %24 = load i8*, i8** %place, align 8
  %cmp34 = icmp eq i8* %24, null
  br i1 %cmp34, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.32
  %25 = load i32, i32* %c, align 4
  %cmp37 = icmp eq i32 %25, 58
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.end.32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx40, align 8
  %29 = load i32, i32* %c, align 4
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* %28, i32 %29)
  store i32 63, i32* %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false.36
  %30 = load i8*, i8** %place, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr43, i8** %place, align 8
  %31 = load i8, i8* %incdec.ptr43, align 1
  %conv44 = sext i8 %31 to i32
  %cmp45 = icmp eq i32 %conv44, 58
  br i1 %cmp45, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.end.42
  %32 = load i8*, i8** @espresso_getopt.scan, align 8
  %33 = load i8, i8* %32, align 1
  %conv48 = sext i8 %33 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.then.47
  %34 = load i8*, i8** @espresso_getopt.scan, align 8
  store i8* %34, i8** @optarg, align 8
  store i8* null, i8** @espresso_getopt.scan, align 8
  br label %if.end.55

if.else:                                          ; preds = %if.then.47
  %35 = load i32, i32* @optind, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load i8**, i8*** %argv.addr, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %36, i64 %idxprom52
  %37 = load i8*, i8** %arrayidx53, align 8
  store i8* %37, i8** @optarg, align 8
  %38 = load i32, i32* @optind, align 4
  %inc54 = add nsw i32 %38, 1
  store i32 %inc54, i32* @optind, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.42
  %39 = load i32, i32* %c, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.39, %if.then.30, %if.then.19, %if.then.8
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
