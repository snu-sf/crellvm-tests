; ModuleID = './MultiSource.Benchmarks.McCat/19.04-bisect.bisect_test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%5d %.15e\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"eps2 = %e,  k = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @test_matrix(i32 %n, double* %C, double* %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %C.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %C, double** %C.addr, align 8
  store double* %B, double** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %B.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %conv1 = sitofp i32 %add to double
  %6 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %6, 1
  %conv3 = sitofp i32 %add2 to double
  %mul = fmul double %conv1, %conv3
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load double*, double** %C.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom4
  store double %mul, double* %arrayidx5, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load double*, double** %C.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 %idxprom6
  %11 = load double, double* %arrayidx7, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load double*, double** %C.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 %idxprom8
  %14 = load double, double* %arrayidx9, align 8
  %mul10 = fmul double %11, %14
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load double*, double** %C.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %idxprom11
  store double %mul10, double* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rep = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %eps = alloca double, align 8
  %eps2 = alloca double, align 8
  %D = alloca double*, align 8
  %E = alloca double*, align 8
  %beta = alloca double*, align 8
  %S = alloca double*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %rep)
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %n)
  %call2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %eps)
  %0 = load i32, i32* %n, align 4
  call void @dallocvector(i32 %0, double** %D)
  %1 = load i32, i32* %n, align 4
  call void @dallocvector(i32 %1, double** %E)
  %2 = load i32, i32* %n, align 4
  call void @dallocvector(i32 %2, double** %beta)
  %3 = load i32, i32* %n, align 4
  call void @dallocvector(i32 %3, double** %S)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %rep, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %n, align 4
  %7 = load double*, double** %D, align 8
  %8 = load double*, double** %E, align 8
  call void @test_matrix(i32 %6, double* %7, double* %8)
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load double*, double** %E, align 8
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load double*, double** %E, align 8
  %arrayidx7 = getelementptr inbounds double, double* %15, i64 %idxprom6
  %16 = load double, double* %arrayidx7, align 8
  %mul = fmul double %13, %16
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load double*, double** %beta, align 8
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 %idxprom8
  store double %mul, double* %arrayidx9, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load double*, double** %S, align 8
  %arrayidx11 = getelementptr inbounds double, double* %20, i64 %idxprom10
  store double 0.000000e+00, double* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %22 = load double*, double** %beta, align 8
  %arrayidx12 = getelementptr inbounds double, double* %22, i64 0
  store double 0.000000e+00, double* %arrayidx12, align 8
  %23 = load double*, double** %E, align 8
  %arrayidx13 = getelementptr inbounds double, double* %23, i64 0
  store double 0.000000e+00, double* %arrayidx13, align 8
  %24 = load double*, double** %D, align 8
  %25 = load double*, double** %E, align 8
  %26 = load double*, double** %beta, align 8
  %27 = load i32, i32* %n, align 4
  %28 = load i32, i32* %n, align 4
  %29 = load double, double* %eps, align 8
  %30 = load double*, double** %S, align 8
  %arrayidx14 = getelementptr inbounds double, double* %30, i64 -1
  call void @dbisect(double* %24, double* %25, double* %26, i32 %27, i32 1, i32 %28, double %29, double* %eps2, i32* %k, double* %arrayidx14)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %31 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %31, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %for.end.17
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %n, align 4
  %cmp19 = icmp slt i32 %32, %33
  br i1 %cmp19, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.18
  %34 = load i32, i32* %i, align 4
  %add = add nsw i32 %34, 1
  %35 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %35 to i64
  %36 = load double*, double** %S, align 8
  %arrayidx22 = getelementptr inbounds double, double* %36, i64 %idxprom21
  %37 = load double, double* %arrayidx22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %add, double %37)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %38 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %38, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.18

for.end.26:                                       ; preds = %for.cond.18
  %39 = load double, double* %eps2, align 8
  %40 = load i32, i32* %k, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), double %39, i32 %40)
  ret i32 0
}

declare i32 @__isoc99_scanf(i8*, ...) #1

declare void @dallocvector(i32, double**) #1

declare void @dbisect(double*, double*, double*, i32, i32, i32, double, double*, i32*, double*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
