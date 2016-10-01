; ModuleID = './MultiSource.Benchmarks.VersaBench/17.dbms.getNextCommandCode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@getNextCommandCode.name = internal global [19 x i8] c"getNextCommandCode\00", align 16
@.str = private unnamed_addr constant [21 x i8] c"unknown command code\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"improper format - code must be an integer\00", align 1

; Function Attrs: nounwind uwtable
define i64 @getNextCommandCode(%struct._IO_FILE* %file, i32* %commandCode) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %commandCode.addr = alloca i32*, align 8
  %returnCode = alloca i64, align 8
  %command = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32* %commandCode, i32** %commandCode.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @getInt(%struct._IO_FILE* %0, i64* %command)
  store i64 %call, i64* %returnCode, align 8
  %1 = load i64, i64* %returnCode, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %command, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i32*, i32** %commandCode.addr, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %returnCode, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* %command, align 8
  %cmp3 = icmp eq i64 %4, 1
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %5 = load i32*, i32** %commandCode.addr, align 8
  store i32 1, i32* %5, align 4
  store i64 0, i64* %returnCode, align 8
  br label %if.end.13

if.else.5:                                        ; preds = %if.else
  %6 = load i64, i64* %command, align 8
  %cmp6 = icmp eq i64 %6, 2
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.5
  %7 = load i32*, i32** %commandCode.addr, align 8
  store i32 2, i32* %7, align 4
  store i64 0, i64* %returnCode, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %if.else.5
  %8 = load i64, i64* %command, align 8
  %cmp9 = icmp eq i64 %8, 3
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.8
  %9 = load i32*, i32** %commandCode.addr, align 8
  store i32 3, i32* %9, align 4
  store i64 0, i64* %returnCode, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else.8
  call void @errorMessage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i32 0, i32 0), i8 signext 1)
  %10 = load i32*, i32** %commandCode.addr, align 8
  store i32 5, i32* %10, align 4
  store i64 2, i64* %returnCode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.2
  br label %if.end.27

if.else.15:                                       ; preds = %entry
  %11 = load i64, i64* %returnCode, align 8
  %cmp16 = icmp eq i64 %11, 1
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  %12 = load i32*, i32** %commandCode.addr, align 8
  store i32 4, i32* %12, align 4
  store i64 0, i64* %returnCode, align 8
  br label %if.end.26

if.else.18:                                       ; preds = %if.else.15
  %13 = load i64, i64* %returnCode, align 8
  %cmp19 = icmp eq i64 %13, 2
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  call void @errorMessage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i32 0, i32 0), i8 signext 1)
  %14 = load i32*, i32** %commandCode.addr, align 8
  store i32 5, i32* %14, align 4
  store i64 2, i64* %returnCode, align 8
  br label %if.end.25

if.else.21:                                       ; preds = %if.else.18
  %15 = load i64, i64* %returnCode, align 8
  %cmp22 = icmp eq i64 %15, 3
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else.21
  call void @errorMessage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i32 0, i32 0), i8 signext 1)
  %16 = load i32*, i32** %commandCode.addr, align 8
  store i32 5, i32* %16, align 4
  store i64 2, i64* %returnCode, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.else.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.14
  %17 = load i64, i64* %returnCode, align 8
  ret i64 %17
}

declare i64 @getInt(%struct._IO_FILE*, i64*) #1

declare void @errorMessage(i8*, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
