; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/5.CrystalMk.init.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @init(double* %slipRate, double* %dSlipRate, double* %tau, double* %tauc, double* %rhs, [12 x double]* %dtcdgd, [12 x double]* %dtdg, [12 x double]* %matrix) #0 {
entry:
  %slipRate.addr = alloca double*, align 8
  %dSlipRate.addr = alloca double*, align 8
  %tau.addr = alloca double*, align 8
  %tauc.addr = alloca double*, align 8
  %rhs.addr = alloca double*, align 8
  %dtcdgd.addr = alloca [12 x double]*, align 8
  %dtdg.addr = alloca [12 x double]*, align 8
  %matrix.addr = alloca [12 x double]*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store double* %slipRate, double** %slipRate.addr, align 8
  store double* %dSlipRate, double** %dSlipRate.addr, align 8
  store double* %tau, double** %tau.addr, align 8
  store double* %tauc, double** %tauc.addr, align 8
  store double* %rhs, double** %rhs.addr, align 8
  store [12 x double]* %dtcdgd, [12 x double]** %dtcdgd.addr, align 8
  store [12 x double]* %dtdg, [12 x double]** %dtdg.addr, align 8
  store [12 x double]* %matrix, [12 x double]** %matrix.addr, align 8
  store i32 0, i32* %m, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %n, align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double 2.000000e-01, %conv
  %div = fdiv double %mul, 1.200000e+01
  %add = fadd double 1.900000e+00, %div
  %2 = load i32, i32* %n, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %slipRate.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double %add, double* %arrayidx, align 8
  %4 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load double*, double** %slipRate.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  %6 = load double, double* %arrayidx2, align 8
  %mul3 = fmul double %6, 1.000000e-03
  %7 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load double*, double** %dSlipRate.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom4
  store double %mul3, double* %arrayidx5, align 8
  %9 = load i32, i32* %n, align 4
  %conv6 = sitofp i32 %9 to double
  %add7 = fadd double %conv6, 2.000000e+00
  %10 = load i32, i32* %n, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load double*, double** %tau.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %11, i64 %idxprom8
  store double %add7, double* %arrayidx9, align 8
  %12 = load i32, i32* %n, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load double*, double** %tauc.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %13, i64 %idxprom10
  store double 3.000000e+01, double* %arrayidx11, align 8
  %14 = load i32, i32* %n, align 4
  %conv12 = sitofp i32 %14 to double
  %add13 = fadd double %conv12, 3.500000e+00
  %15 = load i32, i32* %n, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load double*, double** %rhs.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %16, i64 %idxprom14
  store double %add13, double* %arrayidx15, align 8
  store i32 0, i32* %m, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %17 = load i32, i32* %m, align 4
  %cmp17 = icmp slt i32 %17, 12
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.16
  %18 = load i32, i32* %m, align 4
  %conv20 = sitofp i32 %18 to double
  %mul21 = fmul double 1.000000e-05, %conv20
  %19 = load i32, i32* %n, align 4
  %conv22 = sitofp i32 %19 to double
  %mul23 = fmul double %mul21, %conv22
  %add24 = fadd double 1.000000e-02, %mul23
  %20 = load i32, i32* %m, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i32, i32* %n, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %arrayidx27 = getelementptr inbounds [12 x double], [12 x double]* %22, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx27, i32 0, i64 %idxprom25
  store double %add24, double* %arrayidx28, align 8
  %23 = load i32, i32* %m, align 4
  %24 = load i32, i32* %n, align 4
  %add29 = add nsw i32 %23, %24
  %conv30 = sitofp i32 %add29 to double
  %25 = load i32, i32* %m, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i32, i32* %n, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load [12 x double]*, [12 x double]** %dtdg.addr, align 8
  %arrayidx33 = getelementptr inbounds [12 x double], [12 x double]* %27, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx33, i32 0, i64 %idxprom31
  store double %conv30, double* %arrayidx34, align 8
  %28 = load i32, i32* %m, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load [12 x double]*, [12 x double]** %matrix.addr, align 8
  %arrayidx37 = getelementptr inbounds [12 x double], [12 x double]* %30, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx37, i32 0, i64 %idxprom35
  store double 0.000000e+00, double* %arrayidx38, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %31 = load i32, i32* %m, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %32 = load i32, i32* %n, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, i32* %n, align 4
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
