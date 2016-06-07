; ModuleID = 'su3_rdot.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define double @su3_rdot(%struct.su3_vector* %a, %struct.su3_vector* %b) #0 {
entry:
  %a.addr = alloca %struct.su3_vector*, align 8
  %b.addr = alloca %struct.su3_vector*, align 8
  %temp1 = alloca double, align 8
  %temp2 = alloca double, align 8
  store %struct.su3_vector* %a, %struct.su3_vector** %a.addr, align 8
  store %struct.su3_vector* %b, %struct.su3_vector** %b.addr, align 8
  %0 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %2 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 0
  %real3 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx2, i32 0, i32 0
  %3 = load double, double* %real3, align 8
  %mul = fmul double %1, %3
  store double %mul, double* %temp2, align 8
  %4 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c4 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c4, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 1
  %5 = load double, double* %imag, align 8
  %6 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c6 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %6, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c6, i32 0, i64 0
  %imag8 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 1
  %7 = load double, double* %imag8, align 8
  %mul9 = fmul double %5, %7
  store double %mul9, double* %temp1, align 8
  %8 = load double, double* %temp1, align 8
  %9 = load double, double* %temp2, align 8
  %add = fadd double %9, %8
  store double %add, double* %temp2, align 8
  %10 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c10 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c10, i32 0, i64 1
  %real12 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx11, i32 0, i32 0
  %11 = load double, double* %real12, align 8
  %12 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c13 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c13, i32 0, i64 1
  %real15 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx14, i32 0, i32 0
  %13 = load double, double* %real15, align 8
  %mul16 = fmul double %11, %13
  store double %mul16, double* %temp1, align 8
  %14 = load double, double* %temp1, align 8
  %15 = load double, double* %temp2, align 8
  %add17 = fadd double %15, %14
  store double %add17, double* %temp2, align 8
  %16 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c18 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %16, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c18, i32 0, i64 1
  %imag20 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 1
  %17 = load double, double* %imag20, align 8
  %18 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c21 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %18, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c21, i32 0, i64 1
  %imag23 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx22, i32 0, i32 1
  %19 = load double, double* %imag23, align 8
  %mul24 = fmul double %17, %19
  store double %mul24, double* %temp1, align 8
  %20 = load double, double* %temp1, align 8
  %21 = load double, double* %temp2, align 8
  %add25 = fadd double %21, %20
  store double %add25, double* %temp2, align 8
  %22 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c26 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %22, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c26, i32 0, i64 2
  %real28 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 0
  %23 = load double, double* %real28, align 8
  %24 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c29 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %24, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c29, i32 0, i64 2
  %real31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 0
  %25 = load double, double* %real31, align 8
  %mul32 = fmul double %23, %25
  store double %mul32, double* %temp1, align 8
  %26 = load double, double* %temp1, align 8
  %27 = load double, double* %temp2, align 8
  %add33 = fadd double %27, %26
  store double %add33, double* %temp2, align 8
  %28 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c34 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %28, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c34, i32 0, i64 2
  %imag36 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx35, i32 0, i32 1
  %29 = load double, double* %imag36, align 8
  %30 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c37 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %30, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c37, i32 0, i64 2
  %imag39 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx38, i32 0, i32 1
  %31 = load double, double* %imag39, align 8
  %mul40 = fmul double %29, %31
  store double %mul40, double* %temp1, align 8
  %32 = load double, double* %temp1, align 8
  %33 = load double, double* %temp2, align 8
  %add41 = fadd double %33, %32
  store double %add41, double* %temp2, align 8
  %34 = load double, double* %temp2, align 8
  ret double %34
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
