; ModuleID = './SingleSource.Regression.C/27.bigstack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mixed_struct = type { i32, [10 x double], [10 x [10 x double]], [10 x %struct.Flat_struct] }
%struct.Flat_struct = type { i8, float }

@.str = private unnamed_addr constant [16 x i8] c"Sum(M)  = %.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Sum(MA[%d]) = %.2f\0A\00", align 1

; Function Attrs: nounwind uwtable
define double @AddMixed(%struct.Mixed_struct* %M) #0 {
entry:
  %M.addr = alloca %struct.Mixed_struct*, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Mixed_struct* %M, %struct.Mixed_struct** %M.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %A = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %A, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %sum, align 8
  %add = fadd double %4, %3
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.15, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, 10
  br i1 %cmp2, label %for.body.3, label %for.end.17

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %for.body.3
  %7 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %7, 10
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %B = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %10, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [10 x [10 x double]], [10 x [10 x double]]* %B, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx9, i32 0, i64 %idxprom7
  %11 = load double, double* %arrayidx10, align 8
  %12 = load double, double* %sum, align 8
  %add11 = fadd double %12, %11
  store double %add11, double* %sum, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.6
  %13 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end.14
  %14 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.1

for.end.17:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %for.end.17
  %15 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %15, 10
  br i1 %cmp19, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.18
  %16 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %16 to i64
  %17 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %F = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %17, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %F, i32 0, i64 %idxprom21
  %c = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %arrayidx22, i32 0, i32 0
  %18 = load i8, i8* %c, align 1
  %conv = sitofp i8 %18 to double
  %19 = load double, double* %sum, align 8
  %add23 = fadd double %19, %conv
  store double %add23, double* %sum, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %F25 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %21, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %F25, i32 0, i64 %idxprom24
  %x = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %arrayidx26, i32 0, i32 1
  %22 = load float, float* %x, align 4
  %conv27 = fpext float %22 to double
  %23 = load double, double* %sum, align 8
  %add28 = fadd double %23, %conv27
  store double %add28, double* %sum, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.20
  %24 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  %25 = load double, double* %sum, align 8
  ret double %25
}

; Function Attrs: nounwind uwtable
define void @InitializeMixed(%struct.Mixed_struct* %M, i32 %base) #0 {
entry:
  %M.addr = alloca %struct.Mixed_struct*, align 8
  %base.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Mixed_struct* %M, %struct.Mixed_struct** %M.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %base.addr, align 4
  %add = add nsw i32 %1, %2
  %conv = sitofp i32 %add to double
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %A = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %A, i32 0, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.19, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, 10
  br i1 %cmp2, label %for.body.4, label %for.end.21

for.body.4:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.16, %for.body.4
  %7 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %7, 10
  br i1 %cmp6, label %for.body.8, label %for.end.18

for.body.8:                                       ; preds = %for.cond.5
  %8 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %mul, %9
  %10 = load i32, i32* %base.addr, align 4
  %add10 = add nsw i32 %add9, %10
  %conv11 = sitofp i32 %add10 to double
  %11 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %B = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %13, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [10 x [10 x double]], [10 x [10 x double]]* %B, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx14, i32 0, i64 %idxprom12
  store double %conv11, double* %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.8
  %14 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond.5

for.end.18:                                       ; preds = %for.cond.5
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %15 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.1

for.end.21:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.33, %for.end.21
  %16 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %16, 10
  br i1 %cmp23, label %for.body.25, label %for.end.35

for.body.25:                                      ; preds = %for.cond.22
  %17 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %17 to i64
  %18 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %F = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %18, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %F, i32 0, i64 %idxprom26
  %c = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %arrayidx27, i32 0, i32 0
  store i8 81, i8* %c, align 1
  %19 = load i32, i32* %i, align 4
  %div = sdiv i32 %19, 10
  %20 = load i32, i32* %base.addr, align 4
  %add28 = add nsw i32 %div, %20
  %conv29 = sitofp i32 %add28 to float
  %21 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load %struct.Mixed_struct*, %struct.Mixed_struct** %M.addr, align 8
  %F31 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %22, i32 0, i32 3
  %arrayidx32 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %F31, i32 0, i64 %idxprom30
  %x = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %arrayidx32, i32 0, i32 1
  store float %conv29, float* %x, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.25
  %23 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %23, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.22

for.end.35:                                       ; preds = %for.cond.22
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %M = alloca %struct.Mixed_struct, align 8
  %MA = alloca [4 x %struct.Mixed_struct], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @InitializeMixed(%struct.Mixed_struct* %M, i32 100)
  %call = call double @AddMixed(%struct.Mixed_struct* %M)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), double %call)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.Mixed_struct], [4 x %struct.Mixed_struct]* %MA, i32 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 2
  %mul = mul nsw i32 100, %add
  call void @InitializeMixed(%struct.Mixed_struct* %arrayidx, i32 %mul)
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [4 x %struct.Mixed_struct], [4 x %struct.Mixed_struct]* %MA, i32 0, i64 %idxprom2
  %call4 = call double @AddMixed(%struct.Mixed_struct* %arrayidx3)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 %3, double %call4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
