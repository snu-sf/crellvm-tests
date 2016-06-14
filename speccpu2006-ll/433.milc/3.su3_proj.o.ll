; ModuleID = 'su3_proj.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind uwtable
define void @su3_projector(%struct.su3_vector* %a, %struct.su3_vector* %b, %struct.su3_matrix* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_vector*, align 8
  %b.addr = alloca %struct.su3_vector*, align 8
  %c.addr = alloca %struct.su3_matrix*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca double, align 8
  %tmp2 = alloca double, align 8
  store %struct.su3_vector* %a, %struct.su3_vector** %a.addr, align 8
  store %struct.su3_vector* %b, %struct.su3_vector** %b.addr, align 8
  store %struct.su3_matrix* %c, %struct.su3_matrix** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %1, 3
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c5 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c5, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %4 = load double, double* %real, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c7 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c7, i32 0, i64 %idxprom6
  %real9 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 0
  %7 = load double, double* %real9, align 8
  %mul = fmul double %4, %7
  store double %mul, double* %tmp2, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c11 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %9, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c11, i32 0, i64 %idxprom10
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  %10 = load double, double* %imag, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c14 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %12, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c14, i32 0, i64 %idxprom13
  %imag16 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx15, i32 0, i32 1
  %13 = load double, double* %imag16, align 8
  %mul17 = fmul double %10, %13
  store double %mul17, double* %tmp, align 8
  %14 = load double, double* %tmp, align 8
  %15 = load double, double* %tmp2, align 8
  %add = fadd double %14, %15
  %16 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx20, i32 0, i64 %idxprom18
  %real22 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx21, i32 0, i32 0
  store double %add, double* %real22, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %20 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c24 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %20, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c24, i32 0, i64 %idxprom23
  %real26 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 0
  %21 = load double, double* %real26, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c28 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %23, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c28, i32 0, i64 %idxprom27
  %imag30 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx29, i32 0, i32 1
  %24 = load double, double* %imag30, align 8
  %mul31 = fmul double %21, %24
  store double %mul31, double* %tmp2, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %25 to i64
  %26 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c33 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %26, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c33, i32 0, i64 %idxprom32
  %imag35 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx34, i32 0, i32 1
  %27 = load double, double* %imag35, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c37 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %29, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c37, i32 0, i64 %idxprom36
  %real39 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx38, i32 0, i32 0
  %30 = load double, double* %real39, align 8
  %mul40 = fmul double %27, %30
  store double %mul40, double* %tmp, align 8
  %31 = load double, double* %tmp, align 8
  %32 = load double, double* %tmp2, align 8
  %sub = fsub double %31, %32
  %33 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e43 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %35, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e43, i32 0, i64 %idxprom42
  %arrayidx45 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx44, i32 0, i64 %idxprom41
  %imag46 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx45, i32 0, i32 1
  store double %sub, double* %imag46, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %37, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
