; ModuleID = './SingleSource.UnitTests/32.2002-05-02-ArgumentTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"%d, %f, %d, %lld, %d, %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @testfunc(i16 signext %s, float %X, i8 signext %C, i64 %LL, i32 %I, double %D) #0 {
entry:
  %s.addr = alloca i16, align 2
  %X.addr = alloca float, align 4
  %C.addr = alloca i8, align 1
  %LL.addr = alloca i64, align 8
  %I.addr = alloca i32, align 4
  %D.addr = alloca double, align 8
  store i16 %s, i16* %s.addr, align 2
  store float %X, float* %X.addr, align 4
  store i8 %C, i8* %C.addr, align 1
  store i64 %LL, i64* %LL.addr, align 8
  store i32 %I, i32* %I.addr, align 4
  store double %D, double* %D.addr, align 8
  %0 = load i16, i16* %s.addr, align 2
  %conv = sext i16 %0 to i32
  %1 = load float, float* %X.addr, align 4
  %conv1 = fpext float %1 to double
  %2 = load i8, i8* %C.addr, align 1
  %conv2 = sext i8 %2 to i32
  %3 = load i64, i64* %LL.addr, align 8
  %4 = load i32, i32* %I.addr, align 4
  %5 = load double, double* %D.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %conv, double %conv1, i32 %conv2, i64 %3, i32 %4, double %5)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @testfunc(i16 signext 12, float 0x3FF3EB8520000000, i8 signext 120, i64 123456677890, i32 -10, double 4.500000e+15)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
