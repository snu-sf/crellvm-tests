; ModuleID = './SingleSource.Benchmarks.Misc/22.flops-2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A0 = global double 1.000000e+00, align 8
@A1 = global double 0xBFC5555555559705, align 8
@A2 = global double 0x3F811111113AE9A3, align 8
@A3 = global double 0x3F2A01A03FB1CA71, align 8
@A4 = global double 0x3EC71DF284AA3566, align 8
@A5 = global double 0x3E5AEB5A8CF8A426, align 8
@A6 = global double 0x3DE68DF75229C1A6, align 8
@B0 = global double 1.000000e+00, align 8
@B1 = global double 0xBFDFFFFFFFFF8156, align 8
@B2 = global double 0x3FA5555555290224, align 8
@B3 = global double 0xBF56C16BFFE76516, align 8
@B4 = global double 0x3EFA019528242DB7, align 8
@B5 = global double 0xBE927BB3D47DDB8E, align 8
@B6 = global double 0x3E2157B275DF182A, align 8
@C0 = global double 1.000000e+00, align 8
@C1 = global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = global double 0x3FC555587C476915, align 8
@C4 = global double 0x3FA5555B7E795548, align 8
@C5 = global double 0x3F810D9A4AD9120C, align 8
@C6 = global double 0x3F5713187EDB8C05, align 8
@C7 = global double 0x3F26C077C8173F3A, align 8
@C8 = global double 3.931683e-05, align 8
@D1 = global double 0x3FA47AE143138374, align 8
@D2 = global double 9.600000e-04, align 8
@D3 = global double 1.233153e-06, align 8
@E2 = global double 4.800000e-04, align 8
@E3 = global double 4.110510e-07, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@TLimit = common global double 0.000000e+00, align 8
@piref = common global double 0.000000e+00, align 8
@one = common global double 0.000000e+00, align 8
@two = common global double 0.000000e+00, align 8
@three = common global double 0.000000e+00, align 8
@four = common global double 0.000000e+00, align 8
@five = common global double 0.000000e+00, align 8
@scale = common global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@sa = common global double 0.000000e+00, align 8
@sc = common global double 0.000000e+00, align 8
@sb = common global double 0.000000e+00, align 8
@piprg = common global double 0.000000e+00, align 8
@pierr = common global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = common global double 0.000000e+00, align 8
@TimeArray = common global [3 x double] zeroinitializer, align 16
@T = common global [36 x double] zeroinitializer, align 16
@sd = common global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %w = alloca double, align 8
  %x = alloca double, align 8
  %loops = alloca i64, align 8
  %NLimit = alloca i64, align 8
  %i = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  store i32 0, i32* %retval
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0))
  store i64 15625, i64* %loops, align 8
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %NLimit, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %0 = load double, double* @one, align 8
  store double %0, double* @scale, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  %1 = load i64, i64* %loops, align 8
  %mul = mul nsw i64 %1, 10000
  store i64 %mul, i64* %m, align 8
  %2 = load double, double* @five, align 8
  %sub = fsub double -0.000000e+00, %2
  store double %sub, double* %s, align 8
  %3 = load double, double* @one, align 8
  %sub4 = fsub double -0.000000e+00, %3
  store double %sub4, double* @sa, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %m, align 8
  %cmp = icmp sle i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double, double* %s, align 8
  %sub5 = fsub double -0.000000e+00, %6
  store double %sub5, double* %s, align 8
  %7 = load double, double* @sa, align 8
  %8 = load double, double* %s, align 8
  %add = fadd double %7, %8
  store double %add, double* @sa, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %m, align 8
  %conv = sitofp i64 %10 to double
  store double %conv, double* @sc, align 8
  %11 = load double, double* @sa, align 8
  store double %11, double* %u, align 8
  store double 0.000000e+00, double* %v, align 8
  store double 0.000000e+00, double* %w, align 8
  store double 0.000000e+00, double* %x, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.18, %for.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %m, align 8
  %cmp7 = icmp sle i64 %12, %13
  br i1 %cmp7, label %for.body.9, label %for.end.20

for.body.9:                                       ; preds = %for.cond.6
  %14 = load double, double* %s, align 8
  %sub10 = fsub double -0.000000e+00, %14
  store double %sub10, double* %s, align 8
  %15 = load double, double* @sa, align 8
  %16 = load double, double* %s, align 8
  %add11 = fadd double %15, %16
  store double %add11, double* @sa, align 8
  %17 = load double, double* %u, align 8
  %18 = load double, double* @two, align 8
  %add12 = fadd double %17, %18
  store double %add12, double* %u, align 8
  %19 = load double, double* %x, align 8
  %20 = load double, double* %s, align 8
  %21 = load double, double* %u, align 8
  %sub13 = fsub double %20, %21
  %add14 = fadd double %19, %sub13
  store double %add14, double* %x, align 8
  %22 = load double, double* %v, align 8
  %23 = load double, double* %s, align 8
  %24 = load double, double* %u, align 8
  %mul15 = fmul double %23, %24
  %sub16 = fsub double %22, %mul15
  store double %sub16, double* %v, align 8
  %25 = load double, double* %w, align 8
  %26 = load double, double* %s, align 8
  %27 = load double, double* %u, align 8
  %div = fdiv double %26, %27
  %add17 = fadd double %25, %div
  store double %add17, double* %w, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.9
  %28 = load i64, i64* %i, align 8
  %inc19 = add nsw i64 %28, 1
  store i64 %inc19, i64* %i, align 8
  br label %for.cond.6

for.end.20:                                       ; preds = %for.cond.6
  %29 = load double, double* @sa, align 8
  %30 = load double, double* %x, align 8
  %mul21 = fmul double %29, %30
  %31 = load double, double* @sc, align 8
  %div22 = fdiv double %mul21, %31
  %conv23 = fptosi double %div22 to i64
  store i64 %conv23, i64* %m, align 8
  %32 = load double, double* @four, align 8
  %33 = load double, double* %w, align 8
  %mul24 = fmul double %32, %33
  %34 = load double, double* @five, align 8
  %div25 = fdiv double %mul24, %34
  store double %div25, double* @sa, align 8
  %35 = load double, double* @sa, align 8
  %36 = load double, double* @five, align 8
  %37 = load double, double* %v, align 8
  %div26 = fdiv double %36, %37
  %add27 = fadd double %35, %div26
  store double %add27, double* @sb, align 8
  store double 3.125000e+01, double* @sc, align 8
  %38 = load double, double* @sb, align 8
  %39 = load double, double* @sc, align 8
  %40 = load double, double* %v, align 8
  %41 = load double, double* %v, align 8
  %mul28 = fmul double %40, %41
  %42 = load double, double* %v, align 8
  %mul29 = fmul double %mul28, %42
  %div30 = fdiv double %39, %mul29
  %sub31 = fsub double %38, %div30
  store double %sub31, double* @piprg, align 8
  %43 = load double, double* @piprg, align 8
  %44 = load double, double* @piref, align 8
  %sub32 = fsub double %43, %44
  store double %sub32, double* @pierr, align 8
  %45 = load double, double* @pierr, align 8
  %mul33 = fmul double %45, 1.000000e-30
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), double %mul33, double 0.000000e+00, double 0.000000e+00)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
