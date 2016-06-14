; ModuleID = 'msq_su3vec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define double @magsq_su3vec(%struct.su3_vector* %a) #0 {
entry:
  %a.addr = alloca %struct.su3_vector*, align 8
  %temp = alloca double, align 8
  %sum = alloca double, align 8
  store %struct.su3_vector* %a, %struct.su3_vector** %a.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  %0 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %2 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 0
  %real3 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx2, i32 0, i32 0
  %3 = load double, double* %real3, align 8
  %mul = fmul double %1, %3
  store double %mul, double* %temp, align 8
  %4 = load double, double* %temp, align 8
  %5 = load double, double* %sum, align 8
  %add = fadd double %5, %4
  store double %add, double* %sum, align 8
  %6 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c4 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %6, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c4, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 1
  %7 = load double, double* %imag, align 8
  %8 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c6 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c6, i32 0, i64 0
  %imag8 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 1
  %9 = load double, double* %imag8, align 8
  %mul9 = fmul double %7, %9
  store double %mul9, double* %temp, align 8
  %10 = load double, double* %temp, align 8
  %11 = load double, double* %sum, align 8
  %add10 = fadd double %11, %10
  store double %add10, double* %sum, align 8
  %12 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c11 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %12, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c11, i32 0, i64 1
  %real13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 0
  %13 = load double, double* %real13, align 8
  %14 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c14 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %14, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c14, i32 0, i64 1
  %real16 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx15, i32 0, i32 0
  %15 = load double, double* %real16, align 8
  %mul17 = fmul double %13, %15
  store double %mul17, double* %temp, align 8
  %16 = load double, double* %temp, align 8
  %17 = load double, double* %sum, align 8
  %add18 = fadd double %17, %16
  store double %add18, double* %sum, align 8
  %18 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c19 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c19, i32 0, i64 1
  %imag21 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx20, i32 0, i32 1
  %19 = load double, double* %imag21, align 8
  %20 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c22 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %20, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c22, i32 0, i64 1
  %imag24 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx23, i32 0, i32 1
  %21 = load double, double* %imag24, align 8
  %mul25 = fmul double %19, %21
  store double %mul25, double* %temp, align 8
  %22 = load double, double* %temp, align 8
  %23 = load double, double* %sum, align 8
  %add26 = fadd double %23, %22
  store double %add26, double* %sum, align 8
  %24 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c27 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %24, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c27, i32 0, i64 2
  %real29 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx28, i32 0, i32 0
  %25 = load double, double* %real29, align 8
  %26 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c30 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %26, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c30, i32 0, i64 2
  %real32 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx31, i32 0, i32 0
  %27 = load double, double* %real32, align 8
  %mul33 = fmul double %25, %27
  store double %mul33, double* %temp, align 8
  %28 = load double, double* %temp, align 8
  %29 = load double, double* %sum, align 8
  %add34 = fadd double %29, %28
  store double %add34, double* %sum, align 8
  %30 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c35 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %30, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c35, i32 0, i64 2
  %imag37 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx36, i32 0, i32 1
  %31 = load double, double* %imag37, align 8
  %32 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c38 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %32, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c38, i32 0, i64 2
  %imag40 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx39, i32 0, i32 1
  %33 = load double, double* %imag40, align 8
  %mul41 = fmul double %31, %33
  store double %mul41, double* %temp, align 8
  %34 = load double, double* %temp, align 8
  %35 = load double, double* %sum, align 8
  %add42 = fadd double %35, %34
  store double %add42, double* %sum, align 8
  %36 = load double, double* %sum, align 8
  ret double %36
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
