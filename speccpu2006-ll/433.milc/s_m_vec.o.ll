; ModuleID = 's_m_vec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @scalar_mult_su3_vector(%struct.su3_vector* %a, double %s, %struct.su3_vector* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_vector*, align 8
  %s.addr = alloca double, align 8
  %c.addr = alloca %struct.su3_vector*, align 8
  %i = alloca i32, align 4
  store %struct.su3_vector* %a, %struct.su3_vector** %a.addr, align 8
  store double %s, double* %s.addr, align 8
  store %struct.su3_vector* %c, %struct.su3_vector** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, double* %s.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %4 = load double, double* %real, align 8
  %mul = fmul double %1, %4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c3 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %6, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c3, i32 0, i64 %idxprom2
  %real5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  store double %mul, double* %real5, align 8
  %7 = load double, double* %s.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c7 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %9, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c7, i32 0, i64 %idxprom6
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 1
  %10 = load double, double* %imag, align 8
  %mul9 = fmul double %7, %10
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c11 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %12, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c11, i32 0, i64 %idxprom10
  %imag13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  store double %mul9, double* %imag13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
