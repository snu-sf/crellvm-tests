; ModuleID = './MultiSource.Benchmarks.SciMark2-C/3.LU.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @LU_num_flops(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  %Nd = alloca double, align 8
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %Nd, align 8
  %1 = load double, double* %Nd, align 8
  %mul = fmul double 2.000000e+00, %1
  %2 = load double, double* %Nd, align 8
  %mul1 = fmul double %mul, %2
  %3 = load double, double* %Nd, align 8
  %mul2 = fmul double %mul1, %3
  %div = fdiv double %mul2, 3.000000e+00
  ret double %div
}

; Function Attrs: nounwind uwtable
define void @LU_copy_matrix(i32 %M, i32 %N, double** %lu, double** %A) #0 {
entry:
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %lu.addr = alloca double**, align 8
  %A.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store double** %lu, double*** %lu.addr, align 8
  store double** %A, double*** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %6, i64 %idxprom4
  %7 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 %idxprom
  %8 = load double, double* %arrayidx5, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load double**, double*** %lu.addr, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %11, i64 %idxprom7
  %12 = load double*, double** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds double, double* %12, i64 %idxprom6
  store double %8, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LU_factor(i32 %M, i32 %N, double** %A, i32* %pivot) #0 {
entry:
  %retval = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %A.addr = alloca double**, align 8
  %pivot.addr = alloca i32*, align 8
  %minMN = alloca i32, align 4
  %j = alloca i32, align 4
  %jp = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca double, align 8
  %ab = alloca double, align 8
  %tA = alloca double*, align 8
  %recp = alloca double, align 8
  %k = alloca i32, align 4
  %ii = alloca i32, align 4
  %Aii = alloca double*, align 8
  %Aj = alloca double*, align 8
  %AiiJ = alloca double, align 8
  %jj = alloca i32, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store double** %A, double*** %A.addr, align 8
  store i32* %pivot, i32** %pivot.addr, align 8
  %0 = load i32, i32* %M.addr, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %M.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %N.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %minMN, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %cond.end
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %minMN, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  store i32 %6, i32* %jp, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %9, i64 %idxprom2
  %10 = load double*, double** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx3, align 8
  %call = call double @fabs(double %11) #2
  store double %call, double* %t, align 8
  %12 = load i32, i32* %j, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %M.addr, align 4
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %15 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load double**, double*** %A.addr, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %17, i64 %idxprom8
  %18 = load double*, double** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom7
  %19 = load double, double* %arrayidx10, align 8
  %call11 = call double @fabs(double %19) #2
  store double %call11, double* %ab, align 8
  %20 = load double, double* %ab, align 8
  %21 = load double, double* %t, align 8
  %cmp12 = fcmp ogt double %20, %21
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* %jp, align 4
  %23 = load double, double* %ab, align 8
  store double %23, double* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %25 = load i32, i32* %jp, align 4
  %26 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load i32*, i32** %pivot.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  store i32 %25, i32* %arrayidx14, align 4
  %28 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %28 to i64
  %29 = load i32, i32* %jp, align 4
  %idxprom16 = sext i32 %29 to i64
  %30 = load double**, double*** %A.addr, align 8
  %arrayidx17 = getelementptr inbounds double*, double** %30, i64 %idxprom16
  %31 = load double*, double** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds double, double* %31, i64 %idxprom15
  %32 = load double, double* %arrayidx18, align 8
  %cmp19 = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  %33 = load i32, i32* %jp, align 4
  %34 = load i32, i32* %j, align 4
  %cmp22 = icmp ne i32 %33, %34
  br i1 %cmp22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end.21
  %35 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load double**, double*** %A.addr, align 8
  %arrayidx25 = getelementptr inbounds double*, double** %36, i64 %idxprom24
  %37 = load double*, double** %arrayidx25, align 8
  store double* %37, double** %tA, align 8
  %38 = load i32, i32* %jp, align 4
  %idxprom26 = sext i32 %38 to i64
  %39 = load double**, double*** %A.addr, align 8
  %arrayidx27 = getelementptr inbounds double*, double** %39, i64 %idxprom26
  %40 = load double*, double** %arrayidx27, align 8
  %41 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %41 to i64
  %42 = load double**, double*** %A.addr, align 8
  %arrayidx29 = getelementptr inbounds double*, double** %42, i64 %idxprom28
  store double* %40, double** %arrayidx29, align 8
  %43 = load double*, double** %tA, align 8
  %44 = load i32, i32* %jp, align 4
  %idxprom30 = sext i32 %44 to i64
  %45 = load double**, double*** %A.addr, align 8
  %arrayidx31 = getelementptr inbounds double*, double** %45, i64 %idxprom30
  store double* %43, double** %arrayidx31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.23, %if.end.21
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %M.addr, align 4
  %sub = sub nsw i32 %47, 1
  %cmp33 = icmp slt i32 %46, %sub
  br i1 %cmp33, label %if.then.34, label %if.end.50

if.then.34:                                       ; preds = %if.end.32
  %48 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %48 to i64
  %49 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %49 to i64
  %50 = load double**, double*** %A.addr, align 8
  %arrayidx37 = getelementptr inbounds double*, double** %50, i64 %idxprom36
  %51 = load double*, double** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds double, double* %51, i64 %idxprom35
  %52 = load double, double* %arrayidx38, align 8
  %div = fdiv double 1.000000e+00, %52
  store double %div, double* %recp, align 8
  %53 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %53, 1
  store i32 %add39, i32* %k, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %if.then.34
  %54 = load i32, i32* %k, align 4
  %55 = load i32, i32* %M.addr, align 4
  %cmp41 = icmp slt i32 %54, %55
  br i1 %cmp41, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.40
  %56 = load double, double* %recp, align 8
  %57 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %57 to i64
  %58 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %58 to i64
  %59 = load double**, double*** %A.addr, align 8
  %arrayidx45 = getelementptr inbounds double*, double** %59, i64 %idxprom44
  %60 = load double*, double** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds double, double* %60, i64 %idxprom43
  %61 = load double, double* %arrayidx46, align 8
  %mul = fmul double %61, %56
  store double %mul, double* %arrayidx46, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.42
  %62 = load i32, i32* %k, align 4
  %inc48 = add nsw i32 %62, 1
  store i32 %inc48, i32* %k, align 4
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %if.end.32
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %minMN, align 4
  %sub51 = sub nsw i32 %64, 1
  %cmp52 = icmp slt i32 %63, %sub51
  br i1 %cmp52, label %if.then.53, label %if.end.80

if.then.53:                                       ; preds = %if.end.50
  %65 = load i32, i32* %j, align 4
  %add54 = add nsw i32 %65, 1
  store i32 %add54, i32* %ii, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.77, %if.then.53
  %66 = load i32, i32* %ii, align 4
  %67 = load i32, i32* %M.addr, align 4
  %cmp56 = icmp slt i32 %66, %67
  br i1 %cmp56, label %for.body.57, label %for.end.79

for.body.57:                                      ; preds = %for.cond.55
  %68 = load i32, i32* %ii, align 4
  %idxprom58 = sext i32 %68 to i64
  %69 = load double**, double*** %A.addr, align 8
  %arrayidx59 = getelementptr inbounds double*, double** %69, i64 %idxprom58
  %70 = load double*, double** %arrayidx59, align 8
  store double* %70, double** %Aii, align 8
  %71 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %71 to i64
  %72 = load double**, double*** %A.addr, align 8
  %arrayidx61 = getelementptr inbounds double*, double** %72, i64 %idxprom60
  %73 = load double*, double** %arrayidx61, align 8
  store double* %73, double** %Aj, align 8
  %74 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %74 to i64
  %75 = load double*, double** %Aii, align 8
  %arrayidx63 = getelementptr inbounds double, double* %75, i64 %idxprom62
  %76 = load double, double* %arrayidx63, align 8
  store double %76, double* %AiiJ, align 8
  %77 = load i32, i32* %j, align 4
  %add64 = add nsw i32 %77, 1
  store i32 %add64, i32* %jj, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.74, %for.body.57
  %78 = load i32, i32* %jj, align 4
  %79 = load i32, i32* %N.addr, align 4
  %cmp66 = icmp slt i32 %78, %79
  br i1 %cmp66, label %for.body.67, label %for.end.76

for.body.67:                                      ; preds = %for.cond.65
  %80 = load double, double* %AiiJ, align 8
  %81 = load i32, i32* %jj, align 4
  %idxprom68 = sext i32 %81 to i64
  %82 = load double*, double** %Aj, align 8
  %arrayidx69 = getelementptr inbounds double, double* %82, i64 %idxprom68
  %83 = load double, double* %arrayidx69, align 8
  %mul70 = fmul double %80, %83
  %84 = load i32, i32* %jj, align 4
  %idxprom71 = sext i32 %84 to i64
  %85 = load double*, double** %Aii, align 8
  %arrayidx72 = getelementptr inbounds double, double* %85, i64 %idxprom71
  %86 = load double, double* %arrayidx72, align 8
  %sub73 = fsub double %86, %mul70
  store double %sub73, double* %arrayidx72, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.67
  %87 = load i32, i32* %jj, align 4
  %inc75 = add nsw i32 %87, 1
  store i32 %inc75, i32* %jj, align 4
  br label %for.cond.65

for.end.76:                                       ; preds = %for.cond.65
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %88 = load i32, i32* %ii, align 4
  %inc78 = add nsw i32 %88, 1
  store i32 %inc78, i32* %ii, align 4
  br label %for.cond.55

for.end.79:                                       ; preds = %for.cond.55
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %if.end.50
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %89 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %89, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.83, %if.then.20
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
