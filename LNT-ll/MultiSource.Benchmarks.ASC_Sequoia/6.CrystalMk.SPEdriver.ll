; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/6.CrystalMk.SPEdriver.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

; Function Attrs: nounwind uwtable
define double @SPEdriver(double* %slipRate, double* %dSlipRate, double* %tau, double* %tauc, double* %rhs, [12 x double]* %dtcdgd, [12 x double]* %dtdg, [12 x double]* %matrix) #0 {
entry:
  %slipRate.addr = alloca double*, align 8
  %dSlipRate.addr = alloca double*, align 8
  %tau.addr = alloca double*, align 8
  %tauc.addr = alloca double*, align 8
  %rhs.addr = alloca double*, align 8
  %dtcdgd.addr = alloca [12 x double]*, align 8
  %dtdg.addr = alloca [12 x double]*, align 8
  %matrix.addr = alloca [12 x double]*, align 8
  %t0 = alloca %struct.timeval, align 8
  %t1 = alloca %struct.timeval, align 8
  %t0_cpu = alloca i64, align 8
  %t1_cpu = alloca i64, align 8
  %del_wtime = alloca double, align 8
  %tmp = alloca double, align 8
  %noIter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store double* %slipRate, double** %slipRate.addr, align 8
  store double* %dSlipRate, double** %dSlipRate.addr, align 8
  store double* %tau, double** %tau.addr, align 8
  store double* %tauc, double** %tauc.addr, align 8
  store double* %rhs, double** %rhs.addr, align 8
  store [12 x double]* %dtcdgd, [12 x double]** %dtcdgd.addr, align 8
  store [12 x double]* %dtdg, [12 x double]** %dtdg.addr, align 8
  store [12 x double]* %matrix, [12 x double]** %matrix.addr, align 8
  store i64 0, i64* %t0_cpu, align 8
  store i64 0, i64* %t1_cpu, align 8
  store double 0.000000e+00, double* %del_wtime, align 8
  store i32 2000000, i32* %noIter, align 4
  store i32 0, i32* %i, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %t0, %struct.timezone* null) #3
  %call5 = call i64 @clock() #3
  store i64 %call5, i64* %t0_cpu, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double*, double** %slipRate.addr, align 8
  %2 = load double*, double** %dSlipRate.addr, align 8
  %3 = load double*, double** %tau.addr, align 8
  %4 = load double*, double** %tauc.addr, align 8
  %5 = load double*, double** %rhs.addr, align 8
  %6 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %7 = load [12 x double]*, [12 x double]** %dtdg.addr, align 8
  %8 = load [12 x double]*, [12 x double]** %matrix.addr, align 8
  call void @Crystal_div(i32 12, double 1.000000e-02, double* %1, double* %2, double* %3, double* %4, double* %5, [12 x double]* %6, [12 x double]* %7, [12 x double]* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.10, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %10, 2000000
  br i1 %cmp7, label %for.body.8, label %for.end.12

for.body.8:                                       ; preds = %for.cond.6
  %11 = load double*, double** %slipRate.addr, align 8
  %call9 = call double @Crystal_pow(i32 12, double* %11)
  store double %call9, double* %tmp, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.8
  %12 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.6

for.end.12:                                       ; preds = %for.cond.6
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.28, %for.end.12
  %13 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %13, 12
  br i1 %cmp14, label %for.body.15, label %for.end.30

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.25, %for.body.15
  %14 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %14, 12
  br i1 %cmp17, label %for.body.18, label %for.end.27

for.body.18:                                      ; preds = %for.cond.16
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %arrayidx = getelementptr inbounds [12 x double], [12 x double]* %17, i64 %idxprom19
  %arrayidx20 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx, i32 0, i64 %idxprom
  %18 = load double, double* %arrayidx20, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load [12 x double]*, [12 x double]** %matrix.addr, align 8
  %arrayidx23 = getelementptr inbounds [12 x double], [12 x double]* %21, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx23, i32 0, i64 %idxprom21
  store double %18, double* %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.18
  %22 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond.16

for.end.27:                                       ; preds = %for.cond.16
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %23 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.13

for.end.30:                                       ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.54, %for.end.30
  %24 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %24, 2000000
  br i1 %cmp32, label %for.body.33, label %for.end.56

for.body.33:                                      ; preds = %for.cond.31
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.51, %for.body.33
  %25 = load i32, i32* %j, align 4
  %cmp35 = icmp slt i32 %25, 12
  br i1 %cmp35, label %for.body.36, label %for.end.53

for.body.36:                                      ; preds = %for.cond.34
  store i32 0, i32* %k, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.48, %for.body.36
  %26 = load i32, i32* %k, align 4
  %cmp38 = icmp slt i32 %26, 12
  br i1 %cmp38, label %for.body.39, label %for.end.50

for.body.39:                                      ; preds = %for.cond.37
  %27 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %27 to i64
  %28 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %28 to i64
  %29 = load [12 x double]*, [12 x double]** %matrix.addr, align 8
  %arrayidx42 = getelementptr inbounds [12 x double], [12 x double]* %29, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx42, i32 0, i64 %idxprom40
  %30 = load double, double* %arrayidx43, align 8
  %31 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %arrayidx46 = getelementptr inbounds [12 x double], [12 x double]* %33, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx46, i32 0, i64 %idxprom44
  store double %30, double* %arrayidx47, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.39
  %34 = load i32, i32* %k, align 4
  %inc49 = add nsw i32 %34, 1
  store i32 %inc49, i32* %k, align 4
  br label %for.cond.37

for.end.50:                                       ; preds = %for.cond.37
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %35 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %35, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.34

for.end.53:                                       ; preds = %for.cond.34
  %36 = load [12 x double]*, [12 x double]** %dtcdgd.addr, align 8
  %37 = load double*, double** %tau.addr, align 8
  %38 = load double*, double** %rhs.addr, align 8
  call void @Crystal_Cholesky(i32 12, [12 x double]* %36, double* %37, double* %38)
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %39 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.31

for.end.56:                                       ; preds = %for.cond.31
  %40 = load double, double* %tmp, align 8
  ret double %40
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind
declare i64 @clock() #1

declare void @Crystal_div(i32, double, double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #2

declare double @Crystal_pow(i32, double*) #2

declare void @Crystal_Cholesky(i32, [12 x double]*, double*, double*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
