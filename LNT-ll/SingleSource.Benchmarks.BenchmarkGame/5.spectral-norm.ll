; ModuleID = './SingleSource.Benchmarks.BenchmarkGame/5.spectral-norm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0.9f\0A\00", align 1

; Function Attrs: nounwind uwtable
define double @eval_A(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %2, %3
  %add2 = add nsw i32 %add1, 1
  %mul = mul nsw i32 %add, %add2
  %div = sdiv i32 %mul, 2
  %4 = load i32, i32* %i.addr, align 4
  %add3 = add nsw i32 %div, %4
  %add4 = add nsw i32 %add3, 1
  %conv = sitofp i32 %add4 to double
  %div5 = fdiv double 1.000000e+00, %conv
  ret double %div5
}

; Function Attrs: nounwind uwtable
define void @eval_A_times_u(i32 %N, double* %u, double* %Au) #0 {
entry:
  %N.addr = alloca i32, align 4
  %u.addr = alloca double*, align 8
  %Au.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store double* %u, double** %u.addr, align 8
  store double* %Au, double** %Au.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %Au.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %call = call double @eval_A(i32 %6, i32 %7)
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %u.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  %10 = load double, double* %arrayidx5, align 8
  %mul = fmul double %call, %10
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load double*, double** %Au.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6
  %13 = load double, double* %arrayidx7, align 8
  %add = fadd double %13, %mul
  store double %add, double* %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @eval_At_times_u(i32 %N, double* %u, double* %Au) #0 {
entry:
  %N.addr = alloca i32, align 4
  %u.addr = alloca double*, align 8
  %Au.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store double* %u, double** %u.addr, align 8
  store double* %Au, double** %Au.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %Au.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %call = call double @eval_A(i32 %6, i32 %7)
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %u.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  %10 = load double, double* %arrayidx5, align 8
  %mul = fmul double %call, %10
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load double*, double** %Au.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6
  %13 = load double, double* %arrayidx7, align 8
  %add = fadd double %13, %mul
  store double %add, double* %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @eval_AtA_times_u(i32 %N, double* %u, double* %AtAu) #0 {
entry:
  %N.addr = alloca i32, align 4
  %u.addr = alloca double*, align 8
  %AtAu.addr = alloca double*, align 8
  %saved_stack = alloca i8*
  store i32 %N, i32* %N.addr, align 4
  store double* %u, double** %u.addr, align 8
  store double* %AtAu, double** %AtAu.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca double, i64 %1, align 16
  %3 = load i32, i32* %N.addr, align 4
  %4 = load double*, double** %u.addr, align 8
  call void @eval_A_times_u(i32 %3, double* %4, double* %vla)
  %5 = load i32, i32* %N.addr, align 4
  %6 = load double*, double** %AtAu.addr, align 8
  call void @eval_At_times_u(i32 %5, double* %vla, double* %6)
  %7 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %7)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca i8*
  %vBv = alloca double, align 8
  %vv = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 2000, %cond.false ]
  store i32 %cond, i32* %N, align 4
  %3 = load i32, i32* %N, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %saved_stack
  %vla = alloca double, i64 %4, align 16
  %6 = load i32, i32* %N, align 4
  %7 = zext i32 %6 to i64
  %vla1 = alloca double, i64 %7, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %N, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds double, double* %vla, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.7, %for.end
  %12 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %12, 10
  br i1 %cmp5, label %for.body.6, label %for.end.9

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %N, align 4
  call void @eval_AtA_times_u(i32 %13, double* %vla, double* %vla1)
  %14 = load i32, i32* %N, align 4
  call void @eval_AtA_times_u(i32 %14, double* %vla1, double* %vla)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.6
  %15 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %15, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.4

for.end.9:                                        ; preds = %for.cond.4
  store double 0.000000e+00, double* %vv, align 8
  store double 0.000000e+00, double* %vBv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %for.end.9
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %N, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %for.body.12, label %for.end.25

for.body.12:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds double, double* %vla, i64 %idxprom13
  %19 = load double, double* %arrayidx14, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds double, double* %vla1, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8
  %mul = fmul double %19, %21
  %22 = load double, double* %vBv, align 8
  %add = fadd double %22, %mul
  store double %add, double* %vBv, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds double, double* %vla1, i64 %idxprom17
  %24 = load double, double* %arrayidx18, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds double, double* %vla1, i64 %idxprom19
  %26 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %24, %26
  %27 = load double, double* %vv, align 8
  %add22 = fadd double %27, %mul21
  store double %add22, double* %vv, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.12
  %28 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %28, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.10

for.end.25:                                       ; preds = %for.cond.10
  %29 = load double, double* %vBv, align 8
  %30 = load double, double* %vv, align 8
  %div = fdiv double %29, %30
  %call26 = call double @sqrt(double %div) #1
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), double %call26)
  store i32 0, i32* %retval
  %31 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
