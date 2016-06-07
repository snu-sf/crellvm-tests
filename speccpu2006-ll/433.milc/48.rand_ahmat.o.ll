; ModuleID = 'rand_ahmat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

; Function Attrs: nounwind uwtable
define void @random_anti_hermitian(%struct.anti_hermitmat* %mat_antihermit, %struct.double_prn* %prn_pt) #0 {
entry:
  %mat_antihermit.addr = alloca %struct.anti_hermitmat*, align 8
  %prn_pt.addr = alloca %struct.double_prn*, align 8
  %r3 = alloca double, align 8
  %r8 = alloca double, align 8
  %sqrt_third = alloca double, align 8
  store %struct.anti_hermitmat* %mat_antihermit, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  store %struct.double_prn* %prn_pt, %struct.double_prn** %prn_pt.addr, align 8
  %call = call double @sqrt(double 0x3FD5555555555555) #3
  store double %call, double* %sqrt_third, align 8
  %0 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call1 = call double @gaussian_rand_no(%struct.double_prn* %0)
  store double %call1, double* %r3, align 8
  %1 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call2 = call double @gaussian_rand_no(%struct.double_prn* %1)
  store double %call2, double* %r8, align 8
  %2 = load double, double* %r3, align 8
  %3 = load double, double* %sqrt_third, align 8
  %4 = load double, double* %r8, align 8
  %mul = fmul double %3, %4
  %add = fadd double %2, %mul
  %5 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m00im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %5, i32 0, i32 3
  store double %add, double* %m00im, align 8
  %6 = load double, double* %r3, align 8
  %sub = fsub double -0.000000e+00, %6
  %7 = load double, double* %sqrt_third, align 8
  %8 = load double, double* %r8, align 8
  %mul3 = fmul double %7, %8
  %add4 = fadd double %sub, %mul3
  %9 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m11im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %9, i32 0, i32 4
  store double %add4, double* %m11im, align 8
  %10 = load double, double* %sqrt_third, align 8
  %mul5 = fmul double -2.000000e+00, %10
  %11 = load double, double* %r8, align 8
  %mul6 = fmul double %mul5, %11
  %12 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m22im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %12, i32 0, i32 5
  store double %mul6, double* %m22im, align 8
  %13 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call7 = call double @gaussian_rand_no(%struct.double_prn* %13)
  %14 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m01 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %14, i32 0, i32 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %m01, i32 0, i32 0
  store double %call7, double* %real, align 8
  %15 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call8 = call double @gaussian_rand_no(%struct.double_prn* %15)
  %16 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m02 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %16, i32 0, i32 1
  %real9 = getelementptr inbounds %struct.complex, %struct.complex* %m02, i32 0, i32 0
  store double %call8, double* %real9, align 8
  %17 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call10 = call double @gaussian_rand_no(%struct.double_prn* %17)
  %18 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m12 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %18, i32 0, i32 2
  %real11 = getelementptr inbounds %struct.complex, %struct.complex* %m12, i32 0, i32 0
  store double %call10, double* %real11, align 8
  %19 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call12 = call double @gaussian_rand_no(%struct.double_prn* %19)
  %20 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m0113 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %20, i32 0, i32 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %m0113, i32 0, i32 1
  store double %call12, double* %imag, align 8
  %21 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call14 = call double @gaussian_rand_no(%struct.double_prn* %21)
  %22 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m0215 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %22, i32 0, i32 1
  %imag16 = getelementptr inbounds %struct.complex, %struct.complex* %m0215, i32 0, i32 1
  store double %call14, double* %imag16, align 8
  %23 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call17 = call double @gaussian_rand_no(%struct.double_prn* %23)
  %24 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m1218 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %24, i32 0, i32 2
  %imag19 = getelementptr inbounds %struct.complex, %struct.complex* %m1218, i32 0, i32 1
  store double %call17, double* %imag19, align 8
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare double @gaussian_rand_no(%struct.double_prn*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
