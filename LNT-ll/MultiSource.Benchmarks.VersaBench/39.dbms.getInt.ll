; ModuleID = './MultiSource.Benchmarks.VersaBench/39.dbms.getInt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define i64 @getInt(%struct._IO_FILE* %file, i64* %value) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %value.addr = alloca i64*, align 8
  %temp = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %returnCode = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64* %value, i64** %value.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i8* @getString(%struct._IO_FILE* %0)
  store i8* %call, i8** %temp, align 8
  %1 = load i8*, i8** %temp, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else.17

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %temp, align 8
  %call1 = call i64 @strtol(i8* %2, i8** %endptr, i32 0) #5
  %3 = load i64*, i64** %value.addr, align 8
  store i64 %call1, i64* %3, align 8
  %4 = load i64*, i64** %value.addr, align 8
  %5 = load i64, i64* %4, align 8
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8*, i8** %endptr, align 8
  %call3 = call i64 @strlen(i8* %6) #6
  %cmp4 = icmp ugt i64 %call3, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %call6 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call6, align 4
  %cmp7 = icmp eq i32 %7, 34
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.5
  %8 = load i64*, i64** %value.addr, align 8
  store i64 -2147483647, i64* %8, align 8
  store i64 3, i64* %returnCode, align 8
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %if.then
  %9 = load i64*, i64** %value.addr, align 8
  %10 = load i64, i64* %9, align 8
  %cmp9 = icmp slt i64 %10, -2147483647
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  %11 = load i64*, i64** %value.addr, align 8
  store i64 -2147483647, i64* %11, align 8
  store i64 2, i64* %returnCode, align 8
  br label %if.end.15

if.else.11:                                       ; preds = %if.else
  %12 = load i64*, i64** %value.addr, align 8
  %13 = load i64, i64* %12, align 8
  %cmp12 = icmp sgt i64 %13, 2147483647
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.11
  %14 = load i64*, i64** %value.addr, align 8
  store i64 2147483647, i64* %14, align 8
  store i64 2, i64* %returnCode, align 8
  br label %if.end

if.else.14:                                       ; preds = %if.else.11
  store i64 0, i64* %returnCode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  br label %if.end.18

if.else.17:                                       ; preds = %entry
  %15 = load i64*, i64** %value.addr, align 8
  store i64 -2147483647, i64* %15, align 8
  store i64 1, i64* %returnCode, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.16
  %16 = load i64, i64* %returnCode, align 8
  ret i64 %16
}

declare i8* @getString(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
