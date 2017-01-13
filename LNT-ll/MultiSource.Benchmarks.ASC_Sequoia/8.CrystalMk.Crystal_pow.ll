; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/8.CrystalMk.Crystal_pow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @Crystal_pow(i32 %nSlip, double* %slipRate) #0 {
entry:
  %nSlip.addr = alloca i32, align 4
  %slipRate.addr = alloca double*, align 8
  %rateFact = alloca [12 x double], align 16
  %sgn = alloca [12 x double], align 16
  %muNew = alloca double, align 8
  %muRef = alloca double, align 8
  %rate_offset = alloca double, align 8
  %rate_norm = alloca double, align 8
  %rate_exp = alloca double, align 8
  %n = alloca i32, align 4
  store i32 %nSlip, i32* %nSlip.addr, align 4
  store double* %slipRate, double** %slipRate.addr, align 8
  store double 6.000000e+04, double* %muNew, align 8
  store double 5.000000e+04, double* %muRef, align 8
  store double 1.000000e-06, double* %rate_offset, align 8
  store double 2.000000e+00, double* %rate_norm, align 8
  store double 1.000000e-02, double* %rate_exp, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %nSlip.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [12 x double], [12 x double]* %sgn, i32 0, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx, align 8
  %3 = load i32, i32* %n, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double 2.000000e-01, %conv
  %mul1 = fmul double 9.000000e-01, %mul
  %div = fdiv double %mul1, 1.200000e+01
  %4 = load i32, i32* %n, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [12 x double], [12 x double]* %rateFact, i32 0, i64 %idxprom2
  store double %div, double* %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.18, %for.end
  %6 = load i32, i32* %n, align 4
  %7 = load i32, i32* %nSlip.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body.7, label %for.end.20

for.body.7:                                       ; preds = %for.cond.4
  %8 = load double, double* %muNew, align 8
  %9 = load double, double* %muRef, align 8
  %div8 = fdiv double %8, %9
  %10 = load i32, i32* %n, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load double*, double** %slipRate.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %11, i64 %idxprom9
  %12 = load double, double* %arrayidx10, align 8
  %13 = load i32, i32* %n, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [12 x double], [12 x double]* %sgn, i32 0, i64 %idxprom11
  %14 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %12, %14
  %15 = load double, double* %rate_offset, align 8
  %add = fadd double %mul13, %15
  %16 = load double, double* %rate_norm, align 8
  %div14 = fdiv double %add, %16
  %17 = load double, double* %rate_exp, align 8
  %call = call double @pow(double %div14, double %17) #2
  %mul15 = fmul double %div8, %call
  %18 = load i32, i32* %n, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [12 x double], [12 x double]* %rateFact, i32 0, i64 %idxprom16
  store double %mul15, double* %arrayidx17, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.7
  %19 = load i32, i32* %n, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %n, align 4
  br label %for.cond.4

for.end.20:                                       ; preds = %for.cond.4
  %arrayidx21 = getelementptr inbounds [12 x double], [12 x double]* %rateFact, i32 0, i64 3
  %20 = load double, double* %arrayidx21, align 8
  ret double %20
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
