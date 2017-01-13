; ModuleID = './MultiSource.Benchmarks.SciMark2-C/10.SparseCompRow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @SparseCompRow_num_flops(i32 %N, i32 %nz, i32 %num_iterations) #0 {
entry:
  %N.addr = alloca i32, align 4
  %nz.addr = alloca i32, align 4
  %num_iterations.addr = alloca i32, align 4
  %actual_nz = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %nz, i32* %nz.addr, align 4
  store i32 %num_iterations, i32* %num_iterations.addr, align 4
  %0 = load i32, i32* %nz.addr, align 4
  %1 = load i32, i32* %N.addr, align 4
  %div = sdiv i32 %0, %1
  %2 = load i32, i32* %N.addr, align 4
  %mul = mul nsw i32 %div, %2
  store i32 %mul, i32* %actual_nz, align 4
  %3 = load i32, i32* %actual_nz, align 4
  %conv = sitofp i32 %3 to double
  %mul1 = fmul double %conv, 2.000000e+00
  %4 = load i32, i32* %num_iterations.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %mul3 = fmul double %mul1, %conv2
  ret double %mul3
}

; Function Attrs: nounwind uwtable
define void @SparseCompRow_matmult(i32 %M, double* %y, double* %val, i32* %row, i32* %col, double* %x, i32 %NUM_ITERATIONS) #0 {
entry:
  %M.addr = alloca i32, align 4
  %y.addr = alloca double*, align 8
  %val.addr = alloca double*, align 8
  %row.addr = alloca i32*, align 8
  %col.addr = alloca i32*, align 8
  %x.addr = alloca double*, align 8
  %NUM_ITERATIONS.addr = alloca i32, align 4
  %reps = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %rowR = alloca i32, align 4
  %rowRp1 = alloca i32, align 4
  store i32 %M, i32* %M.addr, align 4
  store double* %y, double** %y.addr, align 8
  store double* %val, double** %val.addr, align 8
  store i32* %row, i32** %row.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store double* %x, double** %x.addr, align 8
  store i32 %NUM_ITERATIONS, i32* %NUM_ITERATIONS.addr, align 4
  store i32 0, i32* %reps, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %0 = load i32, i32* %reps, align 4
  %1 = load i32, i32* %NUM_ITERATIONS.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %r, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.18, %for.body
  %2 = load i32, i32* %r, align 4
  %3 = load i32, i32* %M.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.20

for.body.3:                                       ; preds = %for.cond.1
  store double 0.000000e+00, double* %sum, align 8
  %4 = load i32, i32* %r, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %row.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %rowR, align 4
  %7 = load i32, i32* %r, align 4
  %add = add nsw i32 %7, 1
  %idxprom4 = sext i32 %add to i64
  %8 = load i32*, i32** %row.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  store i32 %9, i32* %rowRp1, align 4
  %10 = load i32, i32* %rowR, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.3
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %rowRp1, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i32*, i32** %col.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load double*, double** %x.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %idxprom11
  %17 = load double, double* %arrayidx12, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load double*, double** %val.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %19, i64 %idxprom13
  %20 = load double, double* %arrayidx14, align 8
  %mul = fmul double %17, %20
  %21 = load double, double* %sum, align 8
  %add15 = fadd double %21, %mul
  store double %add15, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %23 = load double, double* %sum, align 8
  %24 = load i32, i32* %r, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load double*, double** %y.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %25, i64 %idxprom16
  store double %23, double* %arrayidx17, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %26 = load i32, i32* %r, align 4
  %inc19 = add nsw i32 %26, 1
  store i32 %inc19, i32* %r, align 4
  br label %for.cond.1

for.end.20:                                       ; preds = %for.cond.1
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.20
  %27 = load i32, i32* %reps, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, i32* %reps, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
