; ModuleID = './MultiSource.Benchmarks.VersaBench/1.dbms.getFloat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define i64 @getFloat(%struct._IO_FILE* %file, float* %value) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %value.addr = alloca float*, align 8
  %temp = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %returnCode = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store float* %value, float** %value.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i8* @getString(%struct._IO_FILE* %0)
  store i8* %call, i8** %temp, align 8
  %1 = load i8*, i8** %temp, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %temp, align 8
  %call1 = call double @strtod(i8* %2, i8** %endptr) #5
  %conv = fptrunc double %call1 to float
  %3 = load float*, float** %value.addr, align 8
  store float %conv, float* %3, align 4
  %4 = load float*, float** %value.addr, align 8
  %5 = load float, float* %4, align 4
  %conv2 = fpext float %5 to double
  %cmp3 = fcmp oeq double %conv2, 0.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8*, i8** %endptr, align 8
  %call5 = call i64 @strlen(i8* %6) #6
  %cmp6 = icmp ugt i64 %call5, 0
  br i1 %cmp6, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %call9 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call9, align 4
  %cmp10 = icmp eq i32 %7, 34
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true.8
  %8 = load float*, float** %value.addr, align 8
  store float 0xC7EFFFFFE0000000, float* %8, align 4
  store i64 3, i64* %returnCode, align 8
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true, %if.then
  %9 = load float*, float** %value.addr, align 8
  %10 = load float, float* %9, align 4
  %conv13 = fpext float %10 to double
  %cmp14 = fcmp olt double %conv13, 0xC7EFFFFFE091FF3D
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  %11 = load float*, float** %value.addr, align 8
  store float 0xC7EFFFFFE0000000, float* %11, align 4
  store i64 2, i64* %returnCode, align 8
  br label %if.end.23

if.else.17:                                       ; preds = %if.else
  %12 = load float*, float** %value.addr, align 8
  %13 = load float, float* %12, align 4
  %conv18 = fpext float %13 to double
  %cmp19 = fcmp ogt double %conv18, 0x47EFFFFFE091FF3D
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.17
  %14 = load float*, float** %value.addr, align 8
  store float 0x47EFFFFFE0000000, float* %14, align 4
  store i64 2, i64* %returnCode, align 8
  br label %if.end

if.else.22:                                       ; preds = %if.else.17
  store i64 0, i64* %returnCode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.12
  br label %if.end.26

if.else.25:                                       ; preds = %entry
  %15 = load float*, float** %value.addr, align 8
  store float 0xC7EFFFFFE0000000, float* %15, align 4
  store i64 1, i64* %returnCode, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.end.24
  %16 = load i64, i64* %returnCode, align 8
  ret i64 %16
}

declare i8* @getString(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #2

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
