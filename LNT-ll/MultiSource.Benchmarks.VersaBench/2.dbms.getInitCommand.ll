; ModuleID = './MultiSource.Benchmarks.VersaBench/2.dbms.getInitCommand.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@getInitCommand.name = internal global [15 x i8] c"getInitCommand\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"invalid fan specified\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"improper format - fan must be an integer\00", align 1

; Function Attrs: nounwind uwtable
define i64 @getInitCommand(%struct._IO_FILE* %file, i64* %fan) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %fan.addr = alloca i64*, align 8
  %returnCode = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64* %fan, i64** %fan.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i64*, i64** %fan.addr, align 8
  %call = call i64 @getInt(%struct._IO_FILE* %0, i64* %1)
  store i64 %call, i64* %returnCode, align 8
  %2 = load i64, i64* %returnCode, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %fan.addr, align 8
  %4 = load i64, i64* %3, align 8
  %cmp1 = icmp slt i64 %4, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @errorMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %returnCode, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i64 0, i64* %returnCode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.15

if.else.3:                                        ; preds = %entry
  %5 = load i64, i64* %returnCode, align 8
  %cmp4 = icmp eq i64 %5, 1
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %returnCode, align 8
  br label %if.end.14

if.else.6:                                        ; preds = %if.else.3
  %6 = load i64, i64* %returnCode, align 8
  %cmp7 = icmp eq i64 %6, 2
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  call void @errorMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %returnCode, align 8
  br label %if.end.13

if.else.9:                                        ; preds = %if.else.6
  %7 = load i64, i64* %returnCode, align 8
  %cmp10 = icmp eq i64 %7, 3
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else.9
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %returnCode, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %8 = load i64, i64* %returnCode, align 8
  ret i64 %8
}

declare i64 @getInt(%struct._IO_FILE*, i64*) #1

declare void @errorMessage(i8*, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
