; ModuleID = 's_m_a_mat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %a, %struct.su3_matrix* %b, double %s, %struct.su3_matrix* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_matrix*, align 8
  %b.addr = alloca %struct.su3_matrix*, align 8
  %s.addr = alloca double, align 8
  %c.addr = alloca %struct.su3_matrix*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  store %struct.su3_matrix* %b, %struct.su3_matrix** %b.addr, align 8
  store double %s, double* %s.addr, align 8
  store %struct.su3_matrix* %c, %struct.su3_matrix** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 0
  %5 = load double, double* %real, align 8
  %6 = load double, double* %s.addr, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e8 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %9, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e8, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx9, i32 0, i64 %idxprom6
  %real11 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx10, i32 0, i32 0
  %10 = load double, double* %real11, align 8
  %mul = fmul double %6, %10
  %add = fadd double %5, %mul
  %11 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e14 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx15, i32 0, i64 %idxprom12
  %real17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 0
  store double %add, double* %real17, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e20 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e20, i32 0, i64 %idxprom19
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx21, i32 0, i64 %idxprom18
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx22, i32 0, i32 1
  %17 = load double, double* %imag, align 8
  %18 = load double, double* %s.addr, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e25 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %21, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e25, i32 0, i64 %idxprom24
  %arrayidx27 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx26, i32 0, i64 %idxprom23
  %imag28 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 1
  %22 = load double, double* %imag28, align 8
  %mul29 = fmul double %18, %22
  %add30 = fadd double %17, %mul29
  %23 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e33 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %25, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e33, i32 0, i64 %idxprom32
  %arrayidx35 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx34, i32 0, i64 %idxprom31
  %imag36 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx35, i32 0, i32 1
  store double %add30, double* %imag36, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
