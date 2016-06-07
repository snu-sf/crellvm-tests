; ModuleID = 'trace_su3.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define { double, double } @trace_su3(%struct.su3_matrix* %a) #0 {
entry:
  %retval = alloca %struct.complex, align 8
  %a.addr = alloca %struct.su3_matrix*, align 8
  %t1 = alloca %struct.complex, align 8
  %t2 = alloca %struct.complex, align 8
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  %0 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e2 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx3, i32 0, i64 1
  %real5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  %3 = load double, double* %real5, align 8
  %add = fadd double %1, %3
  %real6 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  store double %add, double* %real6, align 8
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e7 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e7, i32 0, i64 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx8, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx9, i32 0, i32 1
  %5 = load double, double* %imag, align 8
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e10 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %6, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx11, i32 0, i64 1
  %imag13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  %7 = load double, double* %imag13, align 8
  %add14 = fadd double %5, %7
  %imag15 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  store double %add14, double* %imag15, align 8
  %real16 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %8 = load double, double* %real16, align 8
  %9 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e17 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %9, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx18, i32 0, i64 2
  %real20 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 0
  %10 = load double, double* %real20, align 8
  %add21 = fadd double %8, %10
  %real22 = getelementptr inbounds %struct.complex, %struct.complex* %t2, i32 0, i32 0
  store double %add21, double* %real22, align 8
  %imag23 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %11 = load double, double* %imag23, align 8
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e24 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e24, i32 0, i64 2
  %arrayidx26 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx25, i32 0, i64 2
  %imag27 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx26, i32 0, i32 1
  %13 = load double, double* %imag27, align 8
  %add28 = fadd double %11, %13
  %imag29 = getelementptr inbounds %struct.complex, %struct.complex* %t2, i32 0, i32 1
  store double %add28, double* %imag29, align 8
  %14 = bitcast %struct.complex* %retval to i8*
  %15 = bitcast %struct.complex* %t2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.complex* %retval to { double, double }*
  %17 = load { double, double }, { double, double }* %16, align 8
  ret { double, double } %17
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
