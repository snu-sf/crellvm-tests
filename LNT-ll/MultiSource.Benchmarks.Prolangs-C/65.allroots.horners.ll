; ModuleID = './MultiSource.Benchmarks.Prolangs-C/65.allroots.horners.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DERIV_X = common global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define double @HORNERS(i32 %DEGREE, double* %COEF, double %X) #0 {
entry:
  %DEGREE.addr = alloca i32, align 4
  %COEF.addr = alloca double*, align 8
  %X.addr = alloca double, align 8
  %P_X = alloca double, align 8
  %dP_X = alloca double, align 8
  %J = alloca i32, align 4
  store i32 %DEGREE, i32* %DEGREE.addr, align 4
  store double* %COEF, double** %COEF.addr, align 8
  store double %X, double* %X.addr, align 8
  %0 = load i32, i32* %DEGREE.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load double*, double** %COEF.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  store double %2, double* %dP_X, align 8
  store double %2, double* %P_X, align 8
  %3 = load i32, i32* %DEGREE.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %J, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %J, align 4
  %cmp = icmp sge i32 %4, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double, double* %X.addr, align 8
  %6 = load double, double* %P_X, align 8
  %mul = fmul double %5, %6
  %7 = load i32, i32* %J, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load double*, double** %COEF.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %8, i64 %idxprom1
  %9 = load double, double* %arrayidx2, align 8
  %add = fadd double %mul, %9
  store double %add, double* %P_X, align 8
  %10 = load double, double* %X.addr, align 8
  %11 = load double, double* %dP_X, align 8
  %mul3 = fmul double %10, %11
  %12 = load double, double* %P_X, align 8
  %add4 = fadd double %mul3, %12
  store double %add4, double* %dP_X, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %J, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %J, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load double, double* %X.addr, align 8
  %15 = load double, double* %P_X, align 8
  %mul5 = fmul double %14, %15
  %16 = load double*, double** %COEF.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %16, i64 0
  %17 = load double, double* %arrayidx6, align 8
  %add7 = fadd double %mul5, %17
  store double %add7, double* %P_X, align 8
  %18 = load double, double* %dP_X, align 8
  store double %18, double* @DERIV_X, align 8
  %19 = load double, double* %P_X, align 8
  ret double %19
}

; Function Attrs: nounwind uwtable
define double @d_abs(double %D) #0 {
entry:
  %D.addr = alloca double, align 8
  store double %D, double* %D.addr, align 8
  %0 = load double, double* %D.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %D.addr, align 8
  %mul = fmul double -1.000000e+00, %1
  store double %mul, double* %D.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load double, double* %D.addr, align 8
  ret double %2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
