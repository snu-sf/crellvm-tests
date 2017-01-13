; ModuleID = './MultiSource.Benchmarks.Prolangs-C/66.allroots.newton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"     NEWTON Called on interval [%g,%g]\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"     X[%d] = %g\0A\00", align 1
@DERIV_X = external global double, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"ROOT: %g (approx.)\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define double @newton(i32 %N, double* %P, double %A, double %B) #0 {
entry:
  %N.addr = alloca i32, align 4
  %P.addr = alloca double*, align 8
  %A.addr = alloca double, align 8
  %B.addr = alloca double, align 8
  %T_DOUBLE = alloca double, align 8
  %Xk = alloca double, align 8
  %Xk1 = alloca double, align 8
  %K = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store double* %P, double** %P.addr, align 8
  store double %A, double* %A.addr, align 8
  store double %B, double* %B.addr, align 8
  store i32 0, i32* %K, align 4
  %0 = load double, double* %B.addr, align 8
  %1 = load double, double* %A.addr, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, double* %A.addr, align 8
  store double %2, double* %T_DOUBLE, align 8
  %3 = load double, double* %B.addr, align 8
  store double %3, double* %A.addr, align 8
  %4 = load double, double* %T_DOUBLE, align 8
  store double %4, double* %B.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double, double* %A.addr, align 8
  %6 = load double, double* %B.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), double %5, double %6)
  %7 = load double, double* %A.addr, align 8
  store double %7, double* %Xk, align 8
  %8 = load double, double* %A.addr, align 8
  %9 = load double, double* %B.addr, align 8
  %add = fadd double %8, %9
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %Xk1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load double, double* %Xk1, align 8
  %11 = load double, double* %Xk, align 8
  %sub = fsub double %10, %11
  %call1 = call double @d_abs(double %sub)
  %12 = load double, double* %Xk1, align 8
  %call2 = call double @d_abs(double %12)
  %div3 = fdiv double %call1, %call2
  %cmp4 = fcmp ogt double %div3, 5.000000e-06
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %K, align 4
  %cmp5 = icmp sle i32 %13, 40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %K, align 4
  %add6 = add nsw i32 %15, 1
  %16 = load double, double* %Xk1, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %add6, double %16)
  %17 = load double, double* %Xk1, align 8
  store double %17, double* %Xk, align 8
  %18 = load double, double* %Xk1, align 8
  %19 = load i32, i32* %N.addr, align 4
  %20 = load double*, double** %P.addr, align 8
  %21 = load double, double* %Xk1, align 8
  %call8 = call double @HORNERS(i32 %19, double* %20, double %21)
  %22 = load double, double* @DERIV_X, align 8
  %div9 = fdiv double %call8, %22
  %sub10 = fsub double %18, %div9
  store double %sub10, double* %Xk1, align 8
  %23 = load i32, i32* %K, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %K, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load double, double* %Xk1, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), double %24)
  %25 = load double, double* %Xk1, align 8
  ret double %25
}

declare i32 @printf(i8*, ...) #1

declare double @d_abs(double) #1

declare double @HORNERS(i32, double*, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
