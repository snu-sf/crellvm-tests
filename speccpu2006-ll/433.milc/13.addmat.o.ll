; ModuleID = 'addmat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @add_su3_matrix(%struct.su3_matrix* %a, %struct.su3_matrix* %b, %struct.su3_matrix* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_matrix*, align 8
  %b.addr = alloca %struct.su3_matrix*, align 8
  %c.addr = alloca %struct.su3_matrix*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  store %struct.su3_matrix* %b, %struct.su3_matrix** %b.addr, align 8
  store %struct.su3_matrix* %c, %struct.su3_matrix** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.38

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
  %6 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e8 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e8, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx9, i32 0, i64 %idxprom6
  %real11 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx10, i32 0, i32 0
  %9 = load double, double* %real11, align 8
  %add = fadd double %5, %9
  %10 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e14 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx15, i32 0, i64 %idxprom12
  %real17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 0
  store double %add, double* %real17, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %14 to i64
  %15 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e20 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %15, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e20, i32 0, i64 %idxprom19
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx21, i32 0, i64 %idxprom18
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx22, i32 0, i32 1
  %16 = load double, double* %imag, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %18 to i64
  %19 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e25 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %19, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e25, i32 0, i64 %idxprom24
  %arrayidx27 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx26, i32 0, i64 %idxprom23
  %imag28 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 1
  %20 = load double, double* %imag28, align 8
  %add29 = fadd double %16, %20
  %21 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %22 to i64
  %23 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e32 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %23, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e32, i32 0, i64 %idxprom31
  %arrayidx34 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx33, i32 0, i64 %idxprom30
  %imag35 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx34, i32 0, i32 1
  store double %add29, double* %imag35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
