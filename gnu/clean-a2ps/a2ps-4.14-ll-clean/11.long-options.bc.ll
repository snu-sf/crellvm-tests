; ModuleID = './src/long-options.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@opterr = external global i32, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16
@stdout = external global %struct._IO_FILE*, align 8
@optind = external global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1

; Function Attrs: nounwind uwtable
define void @parse_long_options(i32 %argc, i8** %argv, i8* %command_name, i8* %package, i8* %version, i8* %authors, void (i32)*) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8*, align 8
  %usage_func.addr = alloca void (...)*, align 8
  %c = alloca i32, align 4
  %saved_opterr = alloca i32, align 4
  %usage_func = bitcast void (i32)* %0 to void (...)*
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store i8* %authors, i8** %authors.addr, align 8
  store void (...)* %usage_func, void (...)** %usage_func.addr, align 8
  %1 = load i32, i32* @opterr, align 4
  store i32 %1, i32* %saved_opterr, align 4
  store i32 0, i32* @opterr, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt_long(i32 %3, i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i32 0, i32 0), i32* null)
  store i32 %call, i32* %c, align 4
  %cmp1 = icmp ne i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %c, align 4
  switch i32 %5, label %sw.default [
    i32 104, label %sw.bb
    i32 118, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load void (...)*, void (...)** %usage_func.addr, align 8
  %callee.knr.cast = bitcast void (...)* %6 to void (i32, ...)*
  call void (i32, ...) %callee.knr.cast(i32 0)
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %if.then, %sw.bb
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = load i8*, i8** %command_name.addr, align 8
  %9 = load i8*, i8** %package.addr, align 8
  %10 = load i8*, i8** %version.addr, align 8
  %11 = load i8*, i8** %authors.addr, align 8
  call void @version_etc(%struct._IO_FILE* %7, i8* %8, i8* %9, i8* %10, i8* %11)
  call void @close_stdout()
  call void @exit(i32 0) #3
  unreachable

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %entry
  %12 = load i32, i32* %saved_opterr, align 4
  store i32 %12, i32* @opterr, align 4
  store i32 0, i32* @optind, align 4
  ret void
}

declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, i8*) #1

declare void @close_stdout() #1

; Function Attrs: noreturn
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
