; ModuleID = './SingleSource.Regression.C/16.callargs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"\0AprintArgsNoRet with 15 arguments:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\09Args 1-5  : %d %f %c %f %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09Args 6-10 : %d %f %c %f %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09Args 11-14: %d %f %c %f %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"o\00", align 1

; Function Attrs: nounwind uwtable
define void @printArgsNoRet(i32 %a1, float %a2, i8 signext %a3, double %a4, i8* %a5, i32 %a6, float %a7, i8 signext %a8, double %a9, i8* %a10, i32 %a11, float %a12, i8 signext %a13, double %a14, i8* %a15) #0 {
entry:
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca float, align 4
  %a3.addr = alloca i8, align 1
  %a4.addr = alloca double, align 8
  %a5.addr = alloca i8*, align 8
  %a6.addr = alloca i32, align 4
  %a7.addr = alloca float, align 4
  %a8.addr = alloca i8, align 1
  %a9.addr = alloca double, align 8
  %a10.addr = alloca i8*, align 8
  %a11.addr = alloca i32, align 4
  %a12.addr = alloca float, align 4
  %a13.addr = alloca i8, align 1
  %a14.addr = alloca double, align 8
  %a15.addr = alloca i8*, align 8
  store i32 %a1, i32* %a1.addr, align 4
  store float %a2, float* %a2.addr, align 4
  store i8 %a3, i8* %a3.addr, align 1
  store double %a4, double* %a4.addr, align 8
  store i8* %a5, i8** %a5.addr, align 8
  store i32 %a6, i32* %a6.addr, align 4
  store float %a7, float* %a7.addr, align 4
  store i8 %a8, i8* %a8.addr, align 1
  store double %a9, double* %a9.addr, align 8
  store i8* %a10, i8** %a10.addr, align 8
  store i32 %a11, i32* %a11.addr, align 4
  store float %a12, float* %a12.addr, align 4
  store i8 %a13, i8* %a13.addr, align 1
  store double %a14, double* %a14.addr, align 8
  store i8* %a15, i8** %a15.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %a1.addr, align 4
  %1 = load float, float* %a2.addr, align 4
  %conv = fpext float %1 to double
  %2 = load i8, i8* %a3.addr, align 1
  %conv1 = sext i8 %2 to i32
  %3 = load double, double* %a4.addr, align 8
  %4 = load i8*, i8** %a5.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %0, double %conv, i32 %conv1, double %3, i32 %conv2)
  %6 = load i32, i32* %a6.addr, align 4
  %7 = load float, float* %a7.addr, align 4
  %conv4 = fpext float %7 to double
  %8 = load i8, i8* %a8.addr, align 1
  %conv5 = sext i8 %8 to i32
  %9 = load double, double* %a9.addr, align 8
  %10 = load i8*, i8** %a10.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %6, double %conv4, i32 %conv5, double %9, i32 %conv6)
  %12 = load i32, i32* %a11.addr, align 4
  %13 = load float, float* %a12.addr, align 4
  %conv8 = fpext float %13 to double
  %14 = load i8, i8* %a13.addr, align 1
  %conv9 = sext i8 %14 to i32
  %15 = load double, double* %a14.addr, align 8
  %16 = load i8*, i8** %a15.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv10 = sext i8 %17 to i32
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %12, double %conv8, i32 %conv9, double %15, i32 %conv10)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @printArgsNoRet(i32 1, float 0x4000CCCCC0000000, i8 signext 99, double 4.100000e+00, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 6, float 0x401C666660000000, i8 signext 104, double 9.100000e+00, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32 11, float 0x4028333340000000, i8 signext 109, double 1.410000e+01, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
