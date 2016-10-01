; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/7.CrystalMk.Crystal_div.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @Crystal_div(i32 %nSlip, double %deltaTime, double* %slipRate, double* %dSlipRate, double* %tau, double* %tauc, double* %rhs, [12 x double]* %dtcdgd, [12 x double]* %dtdg, [12 x double]* %matrix) #0 {
entry:
  %nSlip.addr = alloca i32, align 4
  %deltaTime.addr = alloca double, align 8
  %slipRate.addr = alloca double*, align 8
  %dSlipRate.addr = alloca double*, align 8
  %tau.addr = alloca double*, align 8
  %tauc.addr = alloca double*, align 8
  %rhs.addr = alloca double*, align 8
  %dtcdgd.addr = alloca [12 x double]*, align 8
  %dtdg.addr = alloca [12 x double]*, align 8
  %matrix.addr = alloca [12 x double]*, align 8
  %bor_array = alloca [12 x double], align 16
  %sgn = alloca [12 x double], align 16
  %rateFact = alloca [12 x double], align 16
  %tauN = alloca [12 x double], align 16
  %err = alloca [12 x double], align 16
  %rate_offset = alloca double, align 8
  %tauA = alloca double, align 8
  %tauH = alloca double, align 8
  %rate_exp = alloca double, align 8
  %bor_s_tmp = alloca double, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %nSlip, i32* %nSlip.addr, align 4
  store double %deltaTime, double* %deltaTime.addr, align 8
  store double* %slipRate, double** %slipRate.addr, align 8
  store double* %dSlipRate, double** %dSlipRate.addr, align 8
  store double* %tau, double** %tau.addr, align 8
  store double* %tauc, double** %tauc.addr, align 8
  store double* %rhs, double** %rhs.addr, align 8
  store [12 x double]* %dtcdgd, [12 x double]** %dtcdgd.addr, align 8
  store [12 x double]* %dtdg, [12 x double]** %dtdg.addr, align 8
  store [12 x double]* %matrix, [12 x double]** %matrix.addr, align 8
  store double 1.000000e-06, double* %rate_offset, align 8
  store double 3.000000e+01, double* %tauA, align 8
  store double 1.200000e+00, double* %tauH, align 8
  store double 1.000000e-02, double* %rate_exp, align 8
  store double 0.000000e+00, double* %bor_s_tmp, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %m, align 4
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
  %div = fdiv double %mul, 1.200000e+01
  %add = fadd double 9.000000e-01, %div
  %4 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [12 x double], [12 x double]* %rateFact, i32 0, i64 %idxprom1
  store double %add, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.16, %for.end
  %6 = load i32, i32* %n, align 4
  %7 = load i32, i32* %nSlip.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body.6, label %for.end.18

for.body.6:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %n, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load double*, double** %slipRate.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %9, i64 %idxprom7
  %10 = load double, double* %arrayidx8, align 8
  %11 = load i32, i32* %n, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [12 x double], [12 x double]* %sgn, i32 0, i64 %idxprom9
  %12 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %10, %12
  %13 = load double, double* %rate_offset, align 8
  %add12 = fadd double %mul11, %13
  %div13 = fdiv double 1.000000e+00, %add12
  %14 = load i32, i32* %n, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [12 x double], [12 x double]* %bor_array, i32 0, i64 %idxprom14
  store double %div13, double* %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.6
  %15 = load i32, i32* %n, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* %n, align 4
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  store i32 0, i32* %n, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.60, %for.end.18
  %16 = load i32, i32* %n, align 4
  %17 = load i32, i32* %nSlip.addr, align 4
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body.22, label %for.end.62

for.body.22:                                      ; preds = %for.cond.19
  %18 = load double, double* %tauA, align 8
  %19 = load i32, i32* %n, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [12 x double], [12 x double]* %rateFact, i32 0, i64 %idxprom23
  %20 = load double, double* %arrayidx24, align 8
  %mul25 = fmul double %18, %20
  %21 = load i32, i32* %n, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [12 x double], [12 x double]* %sgn, i32 0, i64 %idxprom26
  %22 = load double, double* %arrayidx27, align 8
  %mul28 = fmul double %mul25, %22
  %23 = load i32, i32* %n, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load double*, double** %tau.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %24, i64 %idxprom29
  store double %mul28, double* %arrayidx30, align 8
  store i32 0, i32* %m, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.43, %for.body.22
  %25 = load i32, i32* %m, align 4
  %26 = load i32, i32* %nSlip.addr, align 4
  %cmp32 = icmp slt i32 %25, %26
  br i1 %cmp32, label %for.body.34, label %for.end.45

for.body.34:                                      ; preds = %for.cond.31
  %27 = load double, double* %tauH, align 8
  %28 = load double, double* %deltaTime.addr, align 8
  %mul35 = fmul double %27, %28
  %29 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [12 x double], [12 x double]* %rateFact, i32 0, i64 %idxprom36
  %30 = load double, double* %arrayidx37, align 8
  %mul38 = fmul double %mul35, %30
  %31 = load i32, i32* %m, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load i32, i32* %n, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %arrayidx41 = getelementptr inbounds [12 x double], [12 x double]* %33, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx41, i32 0, i64 %idxprom39
  store double %mul38, double* %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.34
  %34 = load i32, i32* %m, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %m, align 4
  br label %for.cond.31

for.end.45:                                       ; preds = %for.cond.31
  %35 = load i32, i32* %n, align 4
  %idxprom46 = sext i32 %35 to i64
  %36 = load double*, double** %tau.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %36, i64 %idxprom46
  %37 = load double, double* %arrayidx47, align 8
  %38 = load double, double* %rate_exp, align 8
  %mul48 = fmul double %37, %38
  %39 = load i32, i32* %n, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [12 x double], [12 x double]* %sgn, i32 0, i64 %idxprom49
  %40 = load double, double* %arrayidx50, align 8
  %mul51 = fmul double %mul48, %40
  %41 = load i32, i32* %n, align 4
  %idxprom52 = sext i32 %41 to i64
  %arrayidx53 = getelementptr inbounds [12 x double], [12 x double]* %bor_array, i32 0, i64 %idxprom52
  %42 = load double, double* %arrayidx53, align 8
  %mul54 = fmul double %mul51, %42
  %43 = load i32, i32* %n, align 4
  %idxprom55 = sext i32 %43 to i64
  %44 = load i32, i32* %n, align 4
  %idxprom56 = sext i32 %44 to i64
  %45 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %arrayidx57 = getelementptr inbounds [12 x double], [12 x double]* %45, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx57, i32 0, i64 %idxprom55
  %46 = load double, double* %arrayidx58, align 8
  %add59 = fadd double %46, %mul54
  store double %add59, double* %arrayidx58, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.45
  %47 = load i32, i32* %n, align 4
  %inc61 = add nsw i32 %47, 1
  store i32 %inc61, i32* %n, align 4
  br label %for.cond.19

for.end.62:                                       ; preds = %for.cond.19
  store i32 0, i32* %n, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.74, %for.end.62
  %48 = load i32, i32* %n, align 4
  %49 = load i32, i32* %nSlip.addr, align 4
  %cmp64 = icmp slt i32 %48, %49
  br i1 %cmp64, label %for.body.66, label %for.end.76

for.body.66:                                      ; preds = %for.cond.63
  %50 = load i32, i32* %n, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load i32, i32* %n, align 4
  %idxprom68 = sext i32 %51 to i64
  %52 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %arrayidx69 = getelementptr inbounds [12 x double], [12 x double]* %52, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx69, i32 0, i64 %idxprom67
  %53 = load double, double* %arrayidx70, align 8
  %div71 = fdiv double 1.000000e+00, %53
  %54 = load i32, i32* %n, align 4
  %idxprom72 = sext i32 %54 to i64
  %arrayidx73 = getelementptr inbounds [12 x double], [12 x double]* %bor_array, i32 0, i64 %idxprom72
  store double %div71, double* %arrayidx73, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.66
  %55 = load i32, i32* %n, align 4
  %inc75 = add nsw i32 %55, 1
  store i32 %inc75, i32* %n, align 4
  br label %for.cond.63

for.end.76:                                       ; preds = %for.cond.63
  store i32 0, i32* %n, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.129, %for.end.76
  %56 = load i32, i32* %n, align 4
  %57 = load i32, i32* %nSlip.addr, align 4
  %cmp78 = icmp slt i32 %56, %57
  br i1 %cmp78, label %for.body.80, label %for.end.131

for.body.80:                                      ; preds = %for.cond.77
  %58 = load i32, i32* %n, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load double*, double** %tau.addr, align 8
  %arrayidx82 = getelementptr inbounds double, double* %59, i64 %idxprom81
  %60 = load double, double* %arrayidx82, align 8
  %61 = load i32, i32* %n, align 4
  %idxprom83 = sext i32 %61 to i64
  %arrayidx84 = getelementptr inbounds [12 x double], [12 x double]* %tauN, i32 0, i64 %idxprom83
  store double %60, double* %arrayidx84, align 8
  store i32 0, i32* %m, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.112, %for.body.80
  %62 = load i32, i32* %m, align 4
  %63 = load i32, i32* %nSlip.addr, align 4
  %cmp86 = icmp slt i32 %62, %63
  br i1 %cmp86, label %for.body.88, label %for.end.114

for.body.88:                                      ; preds = %for.cond.85
  %64 = load i32, i32* %m, align 4
  %idxprom89 = sext i32 %64 to i64
  %65 = load i32, i32* %n, align 4
  %idxprom90 = sext i32 %65 to i64
  %66 = load [12 x double]*, [12 x double]** %dtdg.addr, align 8
  %arrayidx91 = getelementptr inbounds [12 x double], [12 x double]* %66, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx91, i32 0, i64 %idxprom89
  %67 = load double, double* %arrayidx92, align 8
  %68 = load double, double* %deltaTime.addr, align 8
  %mul93 = fmul double %67, %68
  store double %mul93, double* %bor_s_tmp, align 8
  %69 = load double, double* %bor_s_tmp, align 8
  %70 = load i32, i32* %m, align 4
  %idxprom94 = sext i32 %70 to i64
  %71 = load double*, double** %dSlipRate.addr, align 8
  %arrayidx95 = getelementptr inbounds double, double* %71, i64 %idxprom94
  %72 = load double, double* %arrayidx95, align 8
  %mul96 = fmul double %69, %72
  %73 = load i32, i32* %n, align 4
  %idxprom97 = sext i32 %73 to i64
  %arrayidx98 = getelementptr inbounds [12 x double], [12 x double]* %tauN, i32 0, i64 %idxprom97
  %74 = load double, double* %arrayidx98, align 8
  %add99 = fadd double %74, %mul96
  store double %add99, double* %arrayidx98, align 8
  %75 = load double, double* %bor_s_tmp, align 8
  %sub = fsub double -0.000000e+00, %75
  %76 = load i32, i32* %m, align 4
  %idxprom100 = sext i32 %76 to i64
  %77 = load i32, i32* %n, align 4
  %idxprom101 = sext i32 %77 to i64
  %78 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %arrayidx102 = getelementptr inbounds [12 x double], [12 x double]* %78, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx102, i32 0, i64 %idxprom100
  %79 = load double, double* %arrayidx103, align 8
  %add104 = fadd double %sub, %79
  %80 = load i32, i32* %n, align 4
  %idxprom105 = sext i32 %80 to i64
  %arrayidx106 = getelementptr inbounds [12 x double], [12 x double]* %bor_array, i32 0, i64 %idxprom105
  %81 = load double, double* %arrayidx106, align 8
  %mul107 = fmul double %add104, %81
  %82 = load i32, i32* %m, align 4
  %idxprom108 = sext i32 %82 to i64
  %83 = load i32, i32* %n, align 4
  %idxprom109 = sext i32 %83 to i64
  %84 = load [12 x double]*, [12 x double]** %matrix.addr, align 8
  %arrayidx110 = getelementptr inbounds [12 x double], [12 x double]* %84, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx110, i32 0, i64 %idxprom108
  store double %mul107, double* %arrayidx111, align 8
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.88
  %85 = load i32, i32* %m, align 4
  %inc113 = add nsw i32 %85, 1
  store i32 %inc113, i32* %m, align 4
  br label %for.cond.85

for.end.114:                                      ; preds = %for.cond.85
  %86 = load i32, i32* %n, align 4
  %idxprom115 = sext i32 %86 to i64
  %arrayidx116 = getelementptr inbounds [12 x double], [12 x double]* %tauN, i32 0, i64 %idxprom115
  %87 = load double, double* %arrayidx116, align 8
  %88 = load i32, i32* %n, align 4
  %idxprom117 = sext i32 %88 to i64
  %89 = load double*, double** %tauc.addr, align 8
  %arrayidx118 = getelementptr inbounds double, double* %89, i64 %idxprom117
  %90 = load double, double* %arrayidx118, align 8
  %sub119 = fsub double %87, %90
  %91 = load i32, i32* %n, align 4
  %idxprom120 = sext i32 %91 to i64
  %arrayidx121 = getelementptr inbounds [12 x double], [12 x double]* %err, i32 0, i64 %idxprom120
  store double %sub119, double* %arrayidx121, align 8
  %92 = load i32, i32* %n, align 4
  %idxprom122 = sext i32 %92 to i64
  %arrayidx123 = getelementptr inbounds [12 x double], [12 x double]* %err, i32 0, i64 %idxprom122
  %93 = load double, double* %arrayidx123, align 8
  %94 = load i32, i32* %n, align 4
  %idxprom124 = sext i32 %94 to i64
  %arrayidx125 = getelementptr inbounds [12 x double], [12 x double]* %bor_array, i32 0, i64 %idxprom124
  %95 = load double, double* %arrayidx125, align 8
  %mul126 = fmul double %93, %95
  %96 = load i32, i32* %n, align 4
  %idxprom127 = sext i32 %96 to i64
  %97 = load double*, double** %rhs.addr, align 8
  %arrayidx128 = getelementptr inbounds double, double* %97, i64 %idxprom127
  store double %mul126, double* %arrayidx128, align 8
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.114
  %98 = load i32, i32* %n, align 4
  %inc130 = add nsw i32 %98, 1
  store i32 %inc130, i32* %n, align 4
  br label %for.cond.77

for.end.131:                                      ; preds = %for.cond.77
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
