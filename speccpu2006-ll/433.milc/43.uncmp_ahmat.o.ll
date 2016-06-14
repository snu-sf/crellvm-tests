; ModuleID = 'uncmp_ahmat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind uwtable
define void @uncompress_anti_hermitian(%struct.anti_hermitmat* %mat_antihermit, %struct.su3_matrix* %mat_su3) #0 {
entry:
  %mat_antihermit.addr = alloca %struct.anti_hermitmat*, align 8
  %mat_su3.addr = alloca %struct.su3_matrix*, align 8
  %temp1 = alloca double, align 8
  store %struct.anti_hermitmat* %mat_antihermit, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  store %struct.su3_matrix* %mat_su3, %struct.su3_matrix** %mat_su3.addr, align 8
  %0 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m00im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %0, i32 0, i32 3
  %1 = load double, double* %m00im, align 8
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 1
  store double %1, double* %imag, align 8
  %3 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e2 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx3, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  store double 0.000000e+00, double* %real, align 8
  %4 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m11im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %4, i32 0, i32 4
  %5 = load double, double* %m11im, align 8
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e5 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx6, i32 0, i64 1
  %imag8 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 1
  store double %5, double* %imag8, align 8
  %7 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e9 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %7, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx10, i32 0, i64 1
  %real12 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx11, i32 0, i32 0
  store double 0.000000e+00, double* %real12, align 8
  %8 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m22im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %8, i32 0, i32 5
  %9 = load double, double* %m22im, align 8
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e13 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %10, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e13, i32 0, i64 2
  %arrayidx15 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx14, i32 0, i64 2
  %imag16 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx15, i32 0, i32 1
  store double %9, double* %imag16, align 8
  %11 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e17 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %11, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx18, i32 0, i64 2
  %real20 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 0
  store double 0.000000e+00, double* %real20, align 8
  %12 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m01 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %12, i32 0, i32 0
  %imag21 = getelementptr inbounds %struct.complex, %struct.complex* %m01, i32 0, i32 1
  %13 = load double, double* %imag21, align 8
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e22 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %14, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e22, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx23, i32 0, i64 1
  %imag25 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx24, i32 0, i32 1
  store double %13, double* %imag25, align 8
  %15 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m0126 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %15, i32 0, i32 0
  %real27 = getelementptr inbounds %struct.complex, %struct.complex* %m0126, i32 0, i32 0
  %16 = load double, double* %real27, align 8
  store double %16, double* %temp1, align 8
  %17 = load double, double* %temp1, align 8
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %18, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 1
  %real31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 0
  store double %17, double* %real31, align 8
  %19 = load double, double* %temp1, align 8
  %sub = fsub double -0.000000e+00, %19
  %20 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e32 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %20, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e32, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx33, i32 0, i64 0
  %real35 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx34, i32 0, i32 0
  store double %sub, double* %real35, align 8
  %21 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m0136 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %21, i32 0, i32 0
  %imag37 = getelementptr inbounds %struct.complex, %struct.complex* %m0136, i32 0, i32 1
  %22 = load double, double* %imag37, align 8
  %23 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e38 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %23, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e38, i32 0, i64 1
  %arrayidx40 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx39, i32 0, i64 0
  %imag41 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx40, i32 0, i32 1
  store double %22, double* %imag41, align 8
  %24 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m02 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %24, i32 0, i32 1
  %imag42 = getelementptr inbounds %struct.complex, %struct.complex* %m02, i32 0, i32 1
  %25 = load double, double* %imag42, align 8
  %26 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e43 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %26, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e43, i32 0, i64 0
  %arrayidx45 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx44, i32 0, i64 2
  %imag46 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx45, i32 0, i32 1
  store double %25, double* %imag46, align 8
  %27 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m0247 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %27, i32 0, i32 1
  %real48 = getelementptr inbounds %struct.complex, %struct.complex* %m0247, i32 0, i32 0
  %28 = load double, double* %real48, align 8
  store double %28, double* %temp1, align 8
  %29 = load double, double* %temp1, align 8
  %30 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e49 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %30, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e49, i32 0, i64 0
  %arrayidx51 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx50, i32 0, i64 2
  %real52 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx51, i32 0, i32 0
  store double %29, double* %real52, align 8
  %31 = load double, double* %temp1, align 8
  %sub53 = fsub double -0.000000e+00, %31
  %32 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e54 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %32, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e54, i32 0, i64 2
  %arrayidx56 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx55, i32 0, i64 0
  %real57 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx56, i32 0, i32 0
  store double %sub53, double* %real57, align 8
  %33 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m0258 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %33, i32 0, i32 1
  %imag59 = getelementptr inbounds %struct.complex, %struct.complex* %m0258, i32 0, i32 1
  %34 = load double, double* %imag59, align 8
  %35 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e60 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %35, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e60, i32 0, i64 2
  %arrayidx62 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx61, i32 0, i64 0
  %imag63 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx62, i32 0, i32 1
  store double %34, double* %imag63, align 8
  %36 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m12 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %36, i32 0, i32 2
  %imag64 = getelementptr inbounds %struct.complex, %struct.complex* %m12, i32 0, i32 1
  %37 = load double, double* %imag64, align 8
  %38 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e65 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %38, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e65, i32 0, i64 1
  %arrayidx67 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx66, i32 0, i64 2
  %imag68 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx67, i32 0, i32 1
  store double %37, double* %imag68, align 8
  %39 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m1269 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %39, i32 0, i32 2
  %real70 = getelementptr inbounds %struct.complex, %struct.complex* %m1269, i32 0, i32 0
  %40 = load double, double* %real70, align 8
  store double %40, double* %temp1, align 8
  %41 = load double, double* %temp1, align 8
  %42 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e71 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %42, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e71, i32 0, i64 1
  %arrayidx73 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx72, i32 0, i64 2
  %real74 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx73, i32 0, i32 0
  store double %41, double* %real74, align 8
  %43 = load double, double* %temp1, align 8
  %sub75 = fsub double -0.000000e+00, %43
  %44 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e76 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %44, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e76, i32 0, i64 2
  %arrayidx78 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx77, i32 0, i64 1
  %real79 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx78, i32 0, i32 0
  store double %sub75, double* %real79, align 8
  %45 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %mat_antihermit.addr, align 8
  %m1280 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %45, i32 0, i32 2
  %imag81 = getelementptr inbounds %struct.complex, %struct.complex* %m1280, i32 0, i32 1
  %46 = load double, double* %imag81, align 8
  %47 = load %struct.su3_matrix*, %struct.su3_matrix** %mat_su3.addr, align 8
  %e82 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %47, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e82, i32 0, i64 2
  %arrayidx84 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx83, i32 0, i64 1
  %imag85 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx84, i32 0, i32 1
  store double %46, double* %imag85, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
