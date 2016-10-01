; ModuleID = './MultiSource.Benchmarks.SciMark2-C/8.SOR.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @SOR_num_flops(i32 %M, i32 %N, i32 %num_iterations) #0 {
entry:
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %num_iterations.addr = alloca i32, align 4
  %Md = alloca double, align 8
  %Nd = alloca double, align 8
  %num_iterD = alloca double, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %num_iterations, i32* %num_iterations.addr, align 4
  %0 = load i32, i32* %M.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %Md, align 8
  %1 = load i32, i32* %N.addr, align 4
  %conv1 = sitofp i32 %1 to double
  store double %conv1, double* %Nd, align 8
  %2 = load i32, i32* %num_iterations.addr, align 4
  %conv2 = sitofp i32 %2 to double
  store double %conv2, double* %num_iterD, align 8
  %3 = load double, double* %Md, align 8
  %sub = fsub double %3, 1.000000e+00
  %4 = load double, double* %Nd, align 8
  %sub3 = fsub double %4, 1.000000e+00
  %mul = fmul double %sub, %sub3
  %5 = load double, double* %num_iterD, align 8
  %mul4 = fmul double %mul, %5
  %mul5 = fmul double %mul4, 6.000000e+00
  ret double %mul5
}

; Function Attrs: nounwind uwtable
define void @SOR_execute(i32 %M, i32 %N, double %omega, double** %G, i32 %num_iterations) #0 {
entry:
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %omega.addr = alloca double, align 8
  %G.addr = alloca double**, align 8
  %num_iterations.addr = alloca i32, align 4
  %omega_over_four = alloca double, align 8
  %one_minus_omega = alloca double, align 8
  %Mm1 = alloca i32, align 4
  %Nm1 = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Gi = alloca double*, align 8
  %Gim1 = alloca double*, align 8
  %Gip1 = alloca double*, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store double %omega, double* %omega.addr, align 8
  store double** %G, double*** %G.addr, align 8
  store i32 %num_iterations, i32* %num_iterations.addr, align 4
  %0 = load double, double* %omega.addr, align 8
  %mul = fmul double %0, 2.500000e-01
  store double %mul, double* %omega_over_four, align 8
  %1 = load double, double* %omega.addr, align 8
  %sub = fsub double 1.000000e+00, %1
  store double %sub, double* %one_minus_omega, align 8
  %2 = load i32, i32* %M.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, i32* %Mm1, align 4
  %3 = load i32, i32* %N.addr, align 4
  %sub2 = sub nsw i32 %3, 1
  store i32 %sub2, i32* %Nm1, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %4 = load i32, i32* %p, align 4
  %5 = load i32, i32* %num_iterations.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.34, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %Mm1, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body.5, label %for.end.36

for.body.5:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load double**, double*** %G.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %9, i64 %idxprom
  %10 = load double*, double** %arrayidx, align 8
  store double* %10, double** %Gi, align 8
  %11 = load i32, i32* %i, align 4
  %sub6 = sub nsw i32 %11, 1
  %idxprom7 = sext i32 %sub6 to i64
  %12 = load double**, double*** %G.addr, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %12, i64 %idxprom7
  %13 = load double*, double** %arrayidx8, align 8
  store double* %13, double** %Gim1, align 8
  %14 = load i32, i32* %i, align 4
  %add = add nsw i32 %14, 1
  %idxprom9 = sext i32 %add to i64
  %15 = load double**, double*** %G.addr, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %15, i64 %idxprom9
  %16 = load double*, double** %arrayidx10, align 8
  store double* %16, double** %Gip1, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.5
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %Nm1, align 4
  %cmp12 = icmp slt i32 %17, %18
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %19 = load double, double* %omega_over_four, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load double*, double** %Gim1, align 8
  %arrayidx15 = getelementptr inbounds double, double* %21, i64 %idxprom14
  %22 = load double, double* %arrayidx15, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load double*, double** %Gip1, align 8
  %arrayidx17 = getelementptr inbounds double, double* %24, i64 %idxprom16
  %25 = load double, double* %arrayidx17, align 8
  %add18 = fadd double %22, %25
  %26 = load i32, i32* %j, align 4
  %sub19 = sub nsw i32 %26, 1
  %idxprom20 = sext i32 %sub19 to i64
  %27 = load double*, double** %Gi, align 8
  %arrayidx21 = getelementptr inbounds double, double* %27, i64 %idxprom20
  %28 = load double, double* %arrayidx21, align 8
  %add22 = fadd double %add18, %28
  %29 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %29, 1
  %idxprom24 = sext i32 %add23 to i64
  %30 = load double*, double** %Gi, align 8
  %arrayidx25 = getelementptr inbounds double, double* %30, i64 %idxprom24
  %31 = load double, double* %arrayidx25, align 8
  %add26 = fadd double %add22, %31
  %mul27 = fmul double %19, %add26
  %32 = load double, double* %one_minus_omega, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load double*, double** %Gi, align 8
  %arrayidx29 = getelementptr inbounds double, double* %34, i64 %idxprom28
  %35 = load double, double* %arrayidx29, align 8
  %mul30 = fmul double %32, %35
  %add31 = fadd double %mul27, %mul30
  %36 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load double*, double** %Gi, align 8
  %arrayidx33 = getelementptr inbounds double, double* %37, i64 %idxprom32
  store double %add31, double* %arrayidx33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %39, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.3

for.end.36:                                       ; preds = %for.cond.3
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %40 = load i32, i32* %p, align 4
  %inc38 = add nsw i32 %40, 1
  store i32 %inc38, i32* %p, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
