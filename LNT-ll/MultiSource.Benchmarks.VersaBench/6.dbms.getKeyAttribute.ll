; ModuleID = './MultiSource.Benchmarks.VersaBench/6.dbms.getKeyAttribute.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@getKeyAttribute.name = internal global [16 x i8] c"getKeyAttribute\00", align 16

; Function Attrs: nounwind uwtable
define i64 @getKeyAttribute(%struct._IO_FILE* %file, float* %value) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %value.addr = alloca float*, align 8
  %returnCode = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store float* %value, float** %value.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load float*, float** %value.addr, align 8
  %call = call i64 @getFloat(%struct._IO_FILE* %0, float* %1)
  store i64 %call, i64* %returnCode, align 8
  %2 = load i64, i64* %returnCode, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %returnCode, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %returnCode, align 8
  %cmp1 = icmp eq i64 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %returnCode, align 8
  br label %if.end.7

if.else.3:                                        ; preds = %if.else
  %4 = load i64, i64* %returnCode, align 8
  %cmp4 = icmp eq i64 %4, 2
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.3
  %5 = load i64, i64* %returnCode, align 8
  %cmp5 = icmp eq i64 %5, 3
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.else.3
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %returnCode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %lor.lhs.false
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  %6 = load i64, i64* %returnCode, align 8
  ret i64 %6
}

declare i64 @getFloat(%struct._IO_FILE*, float*) #1

declare void @errorMessage(i8*, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
