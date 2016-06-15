; ModuleID = 'make_ahmat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }

; Function Attrs: nounwind uwtable
define void @make_anti_hermitian(%struct.su3_matrix* %m3, %struct.anti_hermitmat* %ah3) #0 {
entry:
  %m3.addr = alloca %struct.su3_matrix*, align 8
  %ah3.addr = alloca %struct.anti_hermitmat*, align 8
  %temp = alloca double, align 8
  %temp2 = alloca double, align 8
  store %struct.su3_matrix* %m3, %struct.su3_matrix** %m3.addr, align 8
  store %struct.anti_hermitmat* %ah3, %struct.anti_hermitmat** %ah3.addr, align 8
  %0 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 1
  %1 = load double, double* %imag, align 8
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e2 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx3, i32 0, i64 1
  %imag5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 1
  %3 = load double, double* %imag5, align 8
  %add = fadd double %1, %3
  store double %add, double* %temp, align 8
  %4 = load double, double* %temp, align 8
  %5 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e6 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e6, i32 0, i64 2
  %arrayidx8 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx7, i32 0, i64 2
  %imag9 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 1
  %6 = load double, double* %imag9, align 8
  %add10 = fadd double %4, %6
  store double %add10, double* %temp2, align 8
  %7 = load double, double* %temp2, align 8
  %mul = fmul double %7, 0x3FD5555551C112DA
  store double %mul, double* %temp, align 8
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e11 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e11, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx12, i32 0, i64 0
  %imag14 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx13, i32 0, i32 1
  %9 = load double, double* %imag14, align 8
  %10 = load double, double* %temp, align 8
  %sub = fsub double %9, %10
  %11 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m00im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %11, i32 0, i32 3
  store double %sub, double* %m00im, align 8
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e15 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e15, i32 0, i64 1
  %arrayidx17 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx16, i32 0, i64 1
  %imag18 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx17, i32 0, i32 1
  %13 = load double, double* %imag18, align 8
  %14 = load double, double* %temp, align 8
  %sub19 = fsub double %13, %14
  %15 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m11im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %15, i32 0, i32 4
  store double %sub19, double* %m11im, align 8
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e20 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e20, i32 0, i64 2
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx21, i32 0, i64 2
  %imag23 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx22, i32 0, i32 1
  %17 = load double, double* %imag23, align 8
  %18 = load double, double* %temp, align 8
  %sub24 = fsub double %17, %18
  %19 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m22im = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %19, i32 0, i32 5
  store double %sub24, double* %m22im, align 8
  %20 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e25 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %20, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e25, i32 0, i64 0
  %arrayidx27 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx26, i32 0, i64 1
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 0
  %21 = load double, double* %real, align 8
  %22 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %22, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 1
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 0
  %real31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 0
  %23 = load double, double* %real31, align 8
  %sub32 = fsub double %21, %23
  store double %sub32, double* %temp, align 8
  %24 = load double, double* %temp, align 8
  %mul33 = fmul double %24, 5.000000e-01
  %25 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m01 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %25, i32 0, i32 0
  %real34 = getelementptr inbounds %struct.complex, %struct.complex* %m01, i32 0, i32 0
  store double %mul33, double* %real34, align 8
  %26 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e35 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %26, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e35, i32 0, i64 0
  %arrayidx37 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx36, i32 0, i64 2
  %real38 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx37, i32 0, i32 0
  %27 = load double, double* %real38, align 8
  %28 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e39 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %28, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e39, i32 0, i64 2
  %arrayidx41 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx40, i32 0, i64 0
  %real42 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx41, i32 0, i32 0
  %29 = load double, double* %real42, align 8
  %sub43 = fsub double %27, %29
  store double %sub43, double* %temp, align 8
  %30 = load double, double* %temp, align 8
  %mul44 = fmul double %30, 5.000000e-01
  %31 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m02 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %31, i32 0, i32 1
  %real45 = getelementptr inbounds %struct.complex, %struct.complex* %m02, i32 0, i32 0
  store double %mul44, double* %real45, align 8
  %32 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e46 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %32, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e46, i32 0, i64 1
  %arrayidx48 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx47, i32 0, i64 2
  %real49 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx48, i32 0, i32 0
  %33 = load double, double* %real49, align 8
  %34 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e50 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %34, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e50, i32 0, i64 2
  %arrayidx52 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx51, i32 0, i64 1
  %real53 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx52, i32 0, i32 0
  %35 = load double, double* %real53, align 8
  %sub54 = fsub double %33, %35
  store double %sub54, double* %temp, align 8
  %36 = load double, double* %temp, align 8
  %mul55 = fmul double %36, 5.000000e-01
  %37 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m12 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %37, i32 0, i32 2
  %real56 = getelementptr inbounds %struct.complex, %struct.complex* %m12, i32 0, i32 0
  store double %mul55, double* %real56, align 8
  %38 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e57 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %38, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e57, i32 0, i64 0
  %arrayidx59 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx58, i32 0, i64 1
  %imag60 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx59, i32 0, i32 1
  %39 = load double, double* %imag60, align 8
  %40 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e61 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %40, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e61, i32 0, i64 1
  %arrayidx63 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx62, i32 0, i64 0
  %imag64 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx63, i32 0, i32 1
  %41 = load double, double* %imag64, align 8
  %add65 = fadd double %39, %41
  store double %add65, double* %temp, align 8
  %42 = load double, double* %temp, align 8
  %mul66 = fmul double %42, 5.000000e-01
  %43 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m0167 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %43, i32 0, i32 0
  %imag68 = getelementptr inbounds %struct.complex, %struct.complex* %m0167, i32 0, i32 1
  store double %mul66, double* %imag68, align 8
  %44 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e69 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %44, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e69, i32 0, i64 0
  %arrayidx71 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx70, i32 0, i64 2
  %imag72 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx71, i32 0, i32 1
  %45 = load double, double* %imag72, align 8
  %46 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e73 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %46, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e73, i32 0, i64 2
  %arrayidx75 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx74, i32 0, i64 0
  %imag76 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx75, i32 0, i32 1
  %47 = load double, double* %imag76, align 8
  %add77 = fadd double %45, %47
  store double %add77, double* %temp, align 8
  %48 = load double, double* %temp, align 8
  %mul78 = fmul double %48, 5.000000e-01
  %49 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m0279 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %49, i32 0, i32 1
  %imag80 = getelementptr inbounds %struct.complex, %struct.complex* %m0279, i32 0, i32 1
  store double %mul78, double* %imag80, align 8
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e81 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %50, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e81, i32 0, i64 1
  %arrayidx83 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx82, i32 0, i64 2
  %imag84 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx83, i32 0, i32 1
  %51 = load double, double* %imag84, align 8
  %52 = load %struct.su3_matrix*, %struct.su3_matrix** %m3.addr, align 8
  %e85 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %52, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e85, i32 0, i64 2
  %arrayidx87 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx86, i32 0, i64 1
  %imag88 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx87, i32 0, i32 1
  %53 = load double, double* %imag88, align 8
  %add89 = fadd double %51, %53
  store double %add89, double* %temp, align 8
  %54 = load double, double* %temp, align 8
  %mul90 = fmul double %54, 5.000000e-01
  %55 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %ah3.addr, align 8
  %m1291 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %55, i32 0, i32 2
  %imag92 = getelementptr inbounds %struct.complex, %struct.complex* %m1291, i32 0, i32 1
  store double %mul90, double* %imag92, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
