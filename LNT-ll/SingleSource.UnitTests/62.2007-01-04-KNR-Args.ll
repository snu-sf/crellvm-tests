; ModuleID = './SingleSource.UnitTests/62.2007-01-04-KNR-Args.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"%c %f %d %f %d %f %d %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @p1(i32, double, i32, double %d1, i32 %i, double, i64 %l, double %d2) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  %f1.addr = alloca float, align 4
  %s.addr = alloca i16, align 2
  %d1.addr = alloca double, align 8
  %i.addr = alloca i32, align 4
  %f2.addr = alloca float, align 4
  %l.addr = alloca i64, align 8
  %d2.addr = alloca double, align 8
  %c = trunc i32 %0 to i8
  %f1 = fptrunc double %1 to float
  %s = trunc i32 %2 to i16
  %f2 = fptrunc double %3 to float
  store i8 %c, i8* %c.addr, align 1
  store float %f1, float* %f1.addr, align 4
  store i16 %s, i16* %s.addr, align 2
  store double %d1, double* %d1.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store float %f2, float* %f2.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store double %d2, double* %d2.addr, align 8
  %4 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %4 to i32
  %5 = load float, float* %f1.addr, align 4
  %conv4 = fpext float %5 to double
  %6 = load i16, i16* %s.addr, align 2
  %conv5 = sext i16 %6 to i32
  %7 = load double, double* %d1.addr, align 8
  %8 = load i32, i32* %i.addr, align 4
  %9 = load float, float* %f2.addr, align 4
  %conv6 = fpext float %9 to double
  %10 = load i64, i64* %l.addr, align 8
  %11 = load double, double* %d2.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 %conv, double %conv4, i32 %conv5, double %7, i32 %8, double %conv6, i64 %10, double %11)
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @p2(i8 signext %c, float %f1, i16 signext %s, double %d1, i32 %i, float %f2, i64 %l, double %d2) #0 {
entry:
  %c.addr = alloca i8, align 1
  %f1.addr = alloca float, align 4
  %s.addr = alloca i16, align 2
  %d1.addr = alloca double, align 8
  %i.addr = alloca i32, align 4
  %f2.addr = alloca float, align 4
  %l.addr = alloca i64, align 8
  %d2.addr = alloca double, align 8
  store i8 %c, i8* %c.addr, align 1
  store float %f1, float* %f1.addr, align 4
  store i16 %s, i16* %s.addr, align 2
  store double %d1, double* %d1.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store float %f2, float* %f2.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store double %d2, double* %d2.addr, align 8
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load float, float* %f1.addr, align 4
  %conv1 = fpext float %1 to double
  %2 = load i16, i16* %s.addr, align 2
  %conv2 = sext i16 %2 to i32
  %3 = load double, double* %d1.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %5 = load float, float* %f2.addr, align 4
  %conv3 = fpext float %5 to double
  %6 = load i64, i64* %l.addr, align 8
  %7 = load double, double* %d2.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 %conv, double %conv1, i32 %conv2, double %3, i32 %4, double %conv3, i64 %6, double %7)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @p1(i32 97, double 4.000000e+00, i32 1, double 5.000000e+00, i32 2, double 4.000000e+00, i64 3, double 5.000000e+00)
  call void @p2(i8 signext 97, float 4.000000e+00, i16 signext 1, double 5.000000e+00, i32 2, float 4.000000e+00, i64 3, double 5.000000e+00)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
