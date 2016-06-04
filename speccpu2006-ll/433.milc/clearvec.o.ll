; ModuleID = 'clearvec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @clearvec(%struct.su3_vector* %v) #0 {
entry:
  %v.addr = alloca %struct.su3_vector*, align 8
  store %struct.su3_vector* %v, %struct.su3_vector** %v.addr, align 8
  %0 = load %struct.su3_vector*, %struct.su3_vector** %v.addr, align 8
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  %1 = load %struct.su3_vector*, %struct.su3_vector** %v.addr, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx2, i32 0, i32 0
  store double 0.000000e+00, double* %real, align 8
  %2 = load %struct.su3_vector*, %struct.su3_vector** %v.addr, align 8
  %c3 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c3, i32 0, i64 1
  %imag5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 1
  store double 0.000000e+00, double* %imag5, align 8
  %3 = load %struct.su3_vector*, %struct.su3_vector** %v.addr, align 8
  %c6 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %3, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c6, i32 0, i64 1
  %real8 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 0
  store double 0.000000e+00, double* %real8, align 8
  %4 = load %struct.su3_vector*, %struct.su3_vector** %v.addr, align 8
  %c9 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %4, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c9, i32 0, i64 2
  %imag11 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx10, i32 0, i32 1
  store double 0.000000e+00, double* %imag11, align 8
  %5 = load %struct.su3_vector*, %struct.su3_vector** %v.addr, align 8
  %c12 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %5, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c12, i32 0, i64 2
  %real14 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx13, i32 0, i32 0
  store double 0.000000e+00, double* %real14, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
