; ModuleID = './getopt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_PyOS_opterr = global i32 1, align 4
@_PyOS_optind = global i32 1, align 4
@_PyOS_optarg = global i32* null, align 8
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@opt_ptr = internal global i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i32] [i32 45, i32 45, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 45, i32 45, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [10 x i32] [i32 45, i32 45, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"-J is reserved for Jython\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown option: -%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Argument expected for the -%c option\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @_PyOS_ResetGetOpt() #0 {
entry:
  store i32 1, i32* @_PyOS_opterr, align 4
  store i32 1, i32* @_PyOS_optind, align 4
  store i32* null, i32** @_PyOS_optarg, align 8
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i32 0, i32 0), i32** @opt_ptr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_PyOS_GetOpt(i32 %argc, i32** %argv, i32* %optstring) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i32**, align 8
  %optstring.addr = alloca i32*, align 8
  %ptr = alloca i32*, align 8
  %option = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i32** %argv, i32*** %argv.addr, align 8
  store i32* %optstring, i32** %optstring.addr, align 8
  %0 = load i32*, i32** @opt_ptr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @_PyOS_optind, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sge i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* @_PyOS_optind, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32**, i32*** %argv.addr, align 8
  %arrayidx = getelementptr i32*, i32** %5, i64 %idxprom
  %6 = load i32*, i32** %arrayidx, align 8
  %arrayidx3 = getelementptr i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ne i32 %7, 45
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %8 = load i32, i32* @_PyOS_optind, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32**, i32*** %argv.addr, align 8
  %arrayidx6 = getelementptr i32*, i32** %9, i64 %idxprom5
  %10 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.10:                                       ; preds = %lor.lhs.false
  %12 = load i32, i32* @_PyOS_optind, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i32**, i32*** %argv.addr, align 8
  %arrayidx12 = getelementptr i32*, i32** %13, i64 %idxprom11
  %14 = load i32*, i32** %arrayidx12, align 8
  %call = call i32 @wcscmp(i32* %14, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.1, i32 0, i32 0)) #3
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.10
  %15 = load i32, i32* @_PyOS_optind, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* @_PyOS_optind, align 4
  store i32 -1, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else.10
  %16 = load i32, i32* @_PyOS_optind, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load i32**, i32*** %argv.addr, align 8
  %arrayidx17 = getelementptr i32*, i32** %17, i64 %idxprom16
  %18 = load i32*, i32** %arrayidx17, align 8
  %call18 = call i32 @wcscmp(i32* %18, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.2, i32 0, i32 0)) #3
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.15
  %19 = load i32, i32* @_PyOS_optind, align 4
  %inc21 = add i32 %19, 1
  store i32 %inc21, i32* @_PyOS_optind, align 4
  store i32 104, i32* %retval
  br label %return

if.else.22:                                       ; preds = %if.else.15
  %20 = load i32, i32* @_PyOS_optind, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i32**, i32*** %argv.addr, align 8
  %arrayidx24 = getelementptr i32*, i32** %21, i64 %idxprom23
  %22 = load i32*, i32** %arrayidx24, align 8
  %call25 = call i32 @wcscmp(i32* %22, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @.str.3, i32 0, i32 0)) #3
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else.22
  %23 = load i32, i32* @_PyOS_optind, align 4
  %inc28 = add i32 %23, 1
  store i32 %inc28, i32* @_PyOS_optind, align 4
  store i32 86, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  %24 = load i32, i32* @_PyOS_optind, align 4
  %inc33 = add i32 %24, 1
  store i32 %inc33, i32* @_PyOS_optind, align 4
  %idxprom34 = sext i32 %24 to i64
  %25 = load i32**, i32*** %argv.addr, align 8
  %arrayidx35 = getelementptr i32*, i32** %25, i64 %idxprom34
  %26 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr i32, i32* %26, i64 1
  store i32* %arrayidx36, i32** @opt_ptr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.32, %entry
  %27 = load i32*, i32** @opt_ptr, align 8
  %incdec.ptr = getelementptr i32, i32* %27, i32 1
  store i32* %incdec.ptr, i32** @opt_ptr, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %option, align 4
  %cmp38 = icmp eq i32 %28, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.37
  %29 = load i32, i32* %option, align 4
  %cmp41 = icmp eq i32 %29, 74
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.40
  %30 = load i32, i32* @_PyOS_opterr, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.42
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.then.42
  store i32 95, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.40
  %32 = load i32*, i32** %optstring.addr, align 8
  %33 = load i32, i32* %option, align 4
  %call47 = call i32* @wcschr(i32* %32, i32 %33) #3
  store i32* %call47, i32** %ptr, align 8
  %cmp48 = icmp eq i32* %call47, null
  br i1 %cmp48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.end.46
  %34 = load i32, i32* @_PyOS_opterr, align 4
  %tobool50 = icmp ne i32 %34, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.then.49
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i32, i32* %option, align 4
  %conv = trunc i32 %36 to i8
  %conv52 = sext i8 %conv to i32
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 %conv52)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.then.49
  store i32 95, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.46
  %37 = load i32*, i32** %ptr, align 8
  %add.ptr = getelementptr i32, i32* %37, i64 1
  %38 = load i32, i32* %add.ptr, align 4
  %cmp56 = icmp eq i32 %38, 58
  br i1 %cmp56, label %if.then.58, label %if.end.77

if.then.58:                                       ; preds = %if.end.55
  %39 = load i32*, i32** @opt_ptr, align 8
  %40 = load i32, i32* %39, align 4
  %cmp59 = icmp ne i32 %40, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.58
  %41 = load i32*, i32** @opt_ptr, align 8
  store i32* %41, i32** @_PyOS_optarg, align 8
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i32 0, i32 0), i32** @opt_ptr, align 8
  br label %if.end.76

if.else.62:                                       ; preds = %if.then.58
  %42 = load i32, i32* @_PyOS_optind, align 4
  %43 = load i32, i32* %argc.addr, align 4
  %cmp63 = icmp sge i32 %42, %43
  br i1 %cmp63, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %if.else.62
  %44 = load i32, i32* @_PyOS_opterr, align 4
  %tobool66 = icmp ne i32 %44, 0
  br i1 %tobool66, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %if.then.65
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i32, i32* %option, align 4
  %conv68 = trunc i32 %46 to i8
  %conv69 = sext i8 %conv68 to i32
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 %conv69)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %if.then.65
  store i32 95, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.else.62
  %47 = load i32, i32* @_PyOS_optind, align 4
  %inc73 = add i32 %47, 1
  store i32 %inc73, i32* @_PyOS_optind, align 4
  %idxprom74 = sext i32 %47 to i64
  %48 = load i32**, i32*** %argv.addr, align 8
  %arrayidx75 = getelementptr i32*, i32** %48, i64 %idxprom74
  %49 = load i32*, i32** %arrayidx75, align 8
  store i32* %49, i32** @_PyOS_optarg, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.72, %if.then.61
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.55
  %50 = load i32, i32* %option, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.end.71, %if.end.54, %if.end.45, %if.then.39, %if.then.27, %if.then.20, %if.then.14, %if.then.9, %if.then.2
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind readonly
declare i32 @wcscmp(i32*, i32*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32* @wcschr(i32*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
