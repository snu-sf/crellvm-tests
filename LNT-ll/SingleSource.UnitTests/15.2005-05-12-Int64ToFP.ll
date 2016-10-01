; ModuleID = './SingleSource.UnitTests/15.2005-05-12-Int64ToFP.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%llu = %f  %lld = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %NX = alloca i64, align 8
  %X = alloca i64, align 8
  store i32 0, i32* %retval
  store i64 124, i64* %NX, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, i64* %NX, align 8
  store i64 %0, i64* %X, align 8
  %1 = load i64, i64* %X, align 8
  %2 = load i64, i64* %X, align 8
  %conv = uitofp i64 %2 to double
  %3 = load i64, i64* %X, align 8
  %4 = load i64, i64* %X, align 8
  %conv1 = sitofp i64 %4 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i64 %1, double %conv, i64 %3, double %conv1)
  %5 = load i64, i64* %NX, align 8
  %add = add i64 %5, 1152921504606846976
  store i64 %add, i64* %NX, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i64, i64* %X, align 8
  %7 = load i64, i64* %NX, align 8
  %cmp = icmp ult i64 %6, %7
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
