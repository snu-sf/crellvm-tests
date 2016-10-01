; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/9.CrystalMk.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"\0ASequoia benchmark version 1.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0A***** results \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"returnVal = %f \0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"i = %5d j = %5d    dtcdgd[i][j]   = %e \0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t0 = alloca %struct.timeval, align 8
  %t1 = alloca %struct.timeval, align 8
  %t0_cpu = alloca i64, align 8
  %t1_cpu = alloca i64, align 8
  %slipRate = alloca [12 x double], align 16
  %dSlipRate = alloca [12 x double], align 16
  %tau = alloca [12 x double], align 16
  %tauc = alloca [12 x double], align 16
  %rhs = alloca [12 x double], align 16
  %dtcdgd = alloca [12 x [12 x double]], align 16
  %dtdg = alloca [12 x [12 x double]], align 16
  %matrix = alloca [12 x [12 x double]], align 16
  %del_wtime = alloca double, align 8
  %returnVal = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i64 0, i64* %t0_cpu, align 8
  store i64 0, i64* %t1_cpu, align 8
  store double 0.000000e+00, double* %del_wtime, align 8
  store double 0.000000e+00, double* %returnVal, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [12 x double], [12 x double]* %slipRate, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [12 x double], [12 x double]* %dSlipRate, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [12 x double], [12 x double]* %tau, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [12 x double], [12 x double]* %tauc, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [12 x double], [12 x double]* %rhs, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %dtcdgd, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %dtdg, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %matrix, i32 0, i32 0
  call void @init(double* %arraydecay, double* %arraydecay1, double* %arraydecay2, double* %arraydecay3, double* %arraydecay4, [12 x double]* %arraydecay5, [12 x double]* %arraydecay6, [12 x double]* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [12 x double], [12 x double]* %slipRate, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [12 x double], [12 x double]* %dSlipRate, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [12 x double], [12 x double]* %tau, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [12 x double], [12 x double]* %tauc, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [12 x double], [12 x double]* %rhs, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %dtcdgd, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %dtdg, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %matrix, i32 0, i32 0
  %call16 = call double @SPEdriver(double* %arraydecay8, double* %arraydecay9, double* %arraydecay10, double* %arraydecay11, double* %arraydecay12, [12 x double]* %arraydecay13, [12 x double]* %arraydecay14, [12 x double]* %arraydecay15)
  store double %call16, double* %returnVal, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %0 = load double, double* %returnVal, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), double %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp20 = icmp slt i32 %2, 12
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %dtcdgd, i32 0, i64 %idxprom22
  %arrayidx23 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx23, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %3, i32 %4, double %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %8 = load i32, i32* %j, align 4
  %add = add nsw i32 %8, 4
  store i32 %add, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %9, 4
  store i32 %add26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare void @init(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #1

declare double @SPEdriver(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
