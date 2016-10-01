; ModuleID = './MultiSource.Benchmarks.Prolangs-C/64.allroots.all.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.A = internal global [4 x double] [double 4.100000e+00, double -3.900000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@.str = private unnamed_addr constant [14 x i8] c"DEBUG: %g %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"==============================================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Find all roots of\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x**%d - \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x**%d + \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"using NEWTON method.\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"No roots\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"   ROOT = %g\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"  ROOT = %g (from quadratic formula)\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"     DEFLATED to\0A(x - %g)*(\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%g)\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\0A  ROOT = %g (from quadratic formula)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %J = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 3, i32* %N, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double 0x40337AAE58825399, double 0x401CF55906D75FA4)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %0 = load i32, i32* %N, align 4
  store i32 %0, i32* %J, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %J, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %J, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* @main.A, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %call3 = call double @d_abs(double %3)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), double %call3)
  %4 = load i32, i32* %J, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* @main.A, i32 0, i64 %idxprom5
  %5 = load double, double* %arrayidx6, align 8
  %cmp7 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %J, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %6)
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %J, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %J, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %J, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i32 0, i64 0), align 8
  %call10 = call double @d_abs(double %9)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), double %call10)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0))
  %10 = load i32, i32* %N, align 4
  %11 = load i32, i32* %N, align 4
  call void @allroots(i32 %10, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i32 0, i32 0), i32 %11, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare double @d_abs(double) #1

; Function Attrs: nounwind uwtable
define void @allroots(i32 %No, double* %Po, i32 %N, double* %Pn) #0 {
entry:
  %No.addr = alloca i32, align 4
  %Po.addr = alloca double*, align 8
  %N.addr = alloca i32, align 4
  %Pn.addr = alloca double*, align 8
  %I = alloca i32, align 4
  %ROOT = alloca double, align 8
  %LOWER = alloca double, align 8
  %UPPER = alloca double, align 8
  store i32 %No, i32* %No.addr, align 4
  store double* %Po, double** %Po.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store double* %Pn, double** %Pn.addr, align 8
  store double 0.000000e+00, double* %UPPER, align 8
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %I, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %Pn.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %call = call double @d_abs(double %4)
  %5 = load double, double* %UPPER, align 8
  %add = fadd double %5, %call
  store double %add, double* %UPPER, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %I, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %N.addr, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load double*, double** %Pn.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %8, i64 %idxprom1
  %9 = load double, double* %arrayidx2, align 8
  %call3 = call double @d_abs(double %9)
  %10 = load double, double* %UPPER, align 8
  %div = fdiv double %10, %call3
  store double %div, double* %UPPER, align 8
  %11 = load double, double* %UPPER, align 8
  %sub = fsub double -0.000000e+00, %11
  %sub4 = fsub double %sub, 1.000000e+00
  store double %sub4, double* %LOWER, align 8
  %12 = load i32, i32* %N.addr, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.51

if.else:                                          ; preds = %for.end
  %13 = load i32, i32* %N.addr, align 4
  %cmp7 = icmp eq i32 %13, 1
  br i1 %cmp7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.else
  %14 = load double*, double** %Pn.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %14, i64 0
  %15 = load double, double* %arrayidx9, align 8
  %sub10 = fsub double -0.000000e+00, %15
  %16 = load double*, double** %Pn.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 1
  %17 = load double, double* %arrayidx11, align 8
  %div12 = fdiv double %sub10, %17
  store double %div12, double* %ROOT, align 8
  %18 = load double, double* %ROOT, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), double %18)
  br label %if.end.50

if.else.14:                                       ; preds = %if.else
  %19 = load i32, i32* %N.addr, align 4
  %cmp15 = icmp eq i32 %19, 2
  br i1 %cmp15, label %if.then.16, label %if.else.48

if.then.16:                                       ; preds = %if.else.14
  %20 = load double*, double** %Pn.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %20, i64 1
  %21 = load double, double* %arrayidx17, align 8
  %sub18 = fsub double -0.000000e+00, %21
  %22 = load double*, double** %Pn.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %22, i64 1
  %23 = load double, double* %arrayidx19, align 8
  %24 = load double*, double** %Pn.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %24, i64 1
  %25 = load double, double* %arrayidx20, align 8
  %mul = fmul double %23, %25
  %26 = load double*, double** %Pn.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %26, i64 2
  %27 = load double, double* %arrayidx21, align 8
  %mul22 = fmul double 4.000000e+00, %27
  %28 = load double*, double** %Pn.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %28, i64 0
  %29 = load double, double* %arrayidx23, align 8
  %mul24 = fmul double %mul22, %29
  %sub25 = fsub double %mul, %mul24
  %call26 = call double @sqrt(double %sub25) #3
  %add27 = fadd double %sub18, %call26
  %30 = load double*, double** %Pn.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %30, i64 2
  %31 = load double, double* %arrayidx28, align 8
  %mul29 = fmul double 2.000000e+00, %31
  %div30 = fdiv double %add27, %mul29
  store double %div30, double* %ROOT, align 8
  %32 = load double, double* %ROOT, align 8
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), double %32)
  %33 = load double*, double** %Pn.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %33, i64 1
  %34 = load double, double* %arrayidx32, align 8
  %sub33 = fsub double -0.000000e+00, %34
  %35 = load double*, double** %Pn.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %35, i64 1
  %36 = load double, double* %arrayidx34, align 8
  %37 = load double*, double** %Pn.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %37, i64 1
  %38 = load double, double* %arrayidx35, align 8
  %mul36 = fmul double %36, %38
  %39 = load double*, double** %Pn.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %39, i64 2
  %40 = load double, double* %arrayidx37, align 8
  %mul38 = fmul double 4.000000e+00, %40
  %41 = load double*, double** %Pn.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %41, i64 0
  %42 = load double, double* %arrayidx39, align 8
  %mul40 = fmul double %mul38, %42
  %sub41 = fsub double %mul36, %mul40
  %call42 = call double @sqrt(double %sub41) #3
  %sub43 = fsub double %sub33, %call42
  %43 = load double*, double** %Pn.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %43, i64 2
  %44 = load double, double* %arrayidx44, align 8
  %mul45 = fmul double 2.000000e+00, %44
  %div46 = fdiv double %sub43, %mul45
  store double %div46, double* %ROOT, align 8
  %45 = load double, double* %ROOT, align 8
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), double %45)
  br label %if.end

if.else.48:                                       ; preds = %if.else.14
  %46 = load i32, i32* %N.addr, align 4
  %47 = load double*, double** %Pn.addr, align 8
  %48 = load double, double* %LOWER, align 8
  %49 = load double, double* %UPPER, align 8
  %call49 = call double @newton(i32 %46, double* %47, double %48, double %49)
  store double %call49, double* %ROOT, align 8
  %50 = load i32, i32* %No.addr, align 4
  %51 = load double*, double** %Po.addr, align 8
  %52 = load i32, i32* %N.addr, align 4
  %53 = load double*, double** %Pn.addr, align 8
  %54 = load double, double* %ROOT, align 8
  call void @deflat(i32 %50, double* %51, i32 %52, double* %53, double %54)
  br label %if.end

if.end:                                           ; preds = %if.else.48, %if.then.16
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %if.then.8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare double @newton(i32, double*, double, double) #1

; Function Attrs: nounwind uwtable
define void @deflat(i32 %No, double* %Po, i32 %N, double* %Pn, double %ROOT) #0 {
entry:
  %No.addr = alloca i32, align 4
  %Po.addr = alloca double*, align 8
  %N.addr = alloca i32, align 4
  %Pn.addr = alloca double*, align 8
  %ROOT.addr = alloca double, align 8
  %TP = alloca double*, align 8
  %I = alloca i32, align 4
  %J = alloca i32, align 4
  store i32 %No, i32* %No.addr, align 4
  store double* %Po, double** %Po.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store double* %Pn, double** %Pn.addr, align 8
  store double %ROOT, double* %ROOT.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %No.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0))
  %2 = load i32, i32* %No.addr, align 4
  %3 = load double*, double** %Po.addr, align 8
  %4 = load double, double* %ROOT.addr, align 8
  %sub = fsub double %4, 5.000000e-01
  %5 = load double, double* %ROOT.addr, align 8
  %add = fadd double %5, 5.000000e-01
  %call1 = call double @newton(i32 %2, double* %3, double %sub, double %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %N.addr, align 4
  %conv = sext i32 %6 to i64
  %call2 = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %7 = bitcast i8* %call2 to double*
  store double* %7, double** %TP, align 8
  %8 = load i32, i32* %N.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load double*, double** %Pn.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8
  %11 = load i32, i32* %N.addr, align 4
  %sub3 = sub nsw i32 %11, 1
  %idxprom4 = sext i32 %sub3 to i64
  %12 = load double*, double** %TP, align 8
  %arrayidx5 = getelementptr inbounds double, double* %12, i64 %idxprom4
  store double %10, double* %arrayidx5, align 8
  %13 = load i32, i32* %N.addr, align 4
  %sub6 = sub nsw i32 %13, 2
  store i32 %sub6, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %I, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %I, align 4
  %add9 = add nsw i32 %15, 1
  %idxprom10 = sext i32 %add9 to i64
  %16 = load double*, double** %TP, align 8
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 %idxprom10
  %17 = load double, double* %arrayidx11, align 8
  %18 = load double, double* %ROOT.addr, align 8
  %mul = fmul double %17, %18
  %19 = load i32, i32* %I, align 4
  %add12 = add nsw i32 %19, 1
  %idxprom13 = sext i32 %add12 to i64
  %20 = load double*, double** %Pn.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %20, i64 %idxprom13
  %21 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %mul, %21
  %22 = load i32, i32* %I, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load double*, double** %TP, align 8
  %arrayidx17 = getelementptr inbounds double, double* %23, i64 %idxprom16
  store double %add15, double* %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %I, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %N.addr, align 4
  store i32 %25, i32* %J, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.35, %for.end
  %26 = load i32, i32* %J, align 4
  %cmp19 = icmp sgt i32 %26, 0
  br i1 %cmp19, label %for.body.21, label %for.end.37

for.body.21:                                      ; preds = %for.cond.18
  %27 = load i32, i32* %J, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load double*, double** %Pn.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %28, i64 %idxprom22
  %29 = load double, double* %arrayidx23, align 8
  %call24 = call double @d_abs(double %29)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), double %call24)
  %30 = load i32, i32* %J, align 4
  %sub26 = sub nsw i32 %30, 1
  %idxprom27 = sext i32 %sub26 to i64
  %31 = load double*, double** %Pn.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %31, i64 %idxprom27
  %32 = load double, double* %arrayidx28, align 8
  %cmp29 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.body.21
  %33 = load i32, i32* %J, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %33)
  br label %if.end.34

if.else:                                          ; preds = %for.body.21
  %34 = load i32, i32* %J, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %34)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.31
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %35 = load i32, i32* %J, align 4
  %dec36 = add nsw i32 %35, -1
  store i32 %dec36, i32* %J, align 4
  br label %for.cond.18

for.end.37:                                       ; preds = %for.cond.18
  %36 = load double*, double** %Pn.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %36, i64 0
  %37 = load double, double* %arrayidx38, align 8
  %call39 = call double @d_abs(double %37)
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), double %call39)
  %38 = load double, double* %ROOT.addr, align 8
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), double %38)
  %39 = load i32, i32* %N.addr, align 4
  %sub42 = sub nsw i32 %39, 1
  store i32 %sub42, i32* %J, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.61, %for.end.37
  %40 = load i32, i32* %J, align 4
  %cmp44 = icmp sgt i32 %40, 0
  br i1 %cmp44, label %for.body.46, label %for.end.63

for.body.46:                                      ; preds = %for.cond.43
  %41 = load i32, i32* %J, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load double*, double** %TP, align 8
  %arrayidx48 = getelementptr inbounds double, double* %42, i64 %idxprom47
  %43 = load double, double* %arrayidx48, align 8
  %call49 = call double @d_abs(double %43)
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), double %call49)
  %44 = load i32, i32* %J, align 4
  %sub51 = sub nsw i32 %44, 1
  %idxprom52 = sext i32 %sub51 to i64
  %45 = load double*, double** %TP, align 8
  %arrayidx53 = getelementptr inbounds double, double* %45, i64 %idxprom52
  %46 = load double, double* %arrayidx53, align 8
  %cmp54 = fcmp olt double %46, 0.000000e+00
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %for.body.46
  %47 = load i32, i32* %J, align 4
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %47)
  br label %if.end.60

if.else.58:                                       ; preds = %for.body.46
  %48 = load i32, i32* %J, align 4
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %48)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %49 = load i32, i32* %J, align 4
  %dec62 = add nsw i32 %49, -1
  store i32 %dec62, i32* %J, align 4
  br label %for.cond.43

for.end.63:                                       ; preds = %for.cond.43
  %50 = load double*, double** %TP, align 8
  %arrayidx64 = getelementptr inbounds double, double* %50, i64 0
  %51 = load double, double* %arrayidx64, align 8
  %call65 = call double @d_abs(double %51)
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), double %call65)
  %52 = load i32, i32* %N.addr, align 4
  %cmp67 = icmp eq i32 %52, 3
  br i1 %cmp67, label %if.then.69, label %if.else.109

if.then.69:                                       ; preds = %for.end.63
  %53 = load double*, double** %TP, align 8
  %arrayidx70 = getelementptr inbounds double, double* %53, i64 1
  %54 = load double, double* %arrayidx70, align 8
  %sub71 = fsub double -0.000000e+00, %54
  %55 = load double*, double** %TP, align 8
  %arrayidx72 = getelementptr inbounds double, double* %55, i64 1
  %56 = load double, double* %arrayidx72, align 8
  %57 = load double*, double** %TP, align 8
  %arrayidx73 = getelementptr inbounds double, double* %57, i64 1
  %58 = load double, double* %arrayidx73, align 8
  %mul74 = fmul double %56, %58
  %59 = load double*, double** %TP, align 8
  %arrayidx75 = getelementptr inbounds double, double* %59, i64 2
  %60 = load double, double* %arrayidx75, align 8
  %mul76 = fmul double 4.000000e+00, %60
  %61 = load double*, double** %TP, align 8
  %arrayidx77 = getelementptr inbounds double, double* %61, i64 0
  %62 = load double, double* %arrayidx77, align 8
  %mul78 = fmul double %mul76, %62
  %sub79 = fsub double %mul74, %mul78
  %call80 = call double @sqrt(double %sub79) #3
  %add81 = fadd double %sub71, %call80
  %63 = load double*, double** %TP, align 8
  %arrayidx82 = getelementptr inbounds double, double* %63, i64 2
  %64 = load double, double* %arrayidx82, align 8
  %mul83 = fmul double 2.000000e+00, %64
  %div = fdiv double %add81, %mul83
  store double %div, double* %ROOT.addr, align 8
  %65 = load double, double* %ROOT.addr, align 8
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), double %65)
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0))
  %66 = load i32, i32* %No.addr, align 4
  %67 = load double*, double** %Po.addr, align 8
  %68 = load double, double* %ROOT.addr, align 8
  %sub86 = fsub double %68, 5.000000e-01
  %69 = load double, double* %ROOT.addr, align 8
  %add87 = fadd double %69, 5.000000e-01
  %call88 = call double @newton(i32 %66, double* %67, double %sub86, double %add87)
  %70 = load double*, double** %TP, align 8
  %arrayidx89 = getelementptr inbounds double, double* %70, i64 1
  %71 = load double, double* %arrayidx89, align 8
  %sub90 = fsub double -0.000000e+00, %71
  %72 = load double*, double** %TP, align 8
  %arrayidx91 = getelementptr inbounds double, double* %72, i64 1
  %73 = load double, double* %arrayidx91, align 8
  %74 = load double*, double** %TP, align 8
  %arrayidx92 = getelementptr inbounds double, double* %74, i64 1
  %75 = load double, double* %arrayidx92, align 8
  %mul93 = fmul double %73, %75
  %76 = load double*, double** %TP, align 8
  %arrayidx94 = getelementptr inbounds double, double* %76, i64 2
  %77 = load double, double* %arrayidx94, align 8
  %mul95 = fmul double 4.000000e+00, %77
  %78 = load double*, double** %TP, align 8
  %arrayidx96 = getelementptr inbounds double, double* %78, i64 0
  %79 = load double, double* %arrayidx96, align 8
  %mul97 = fmul double %mul95, %79
  %sub98 = fsub double %mul93, %mul97
  %call99 = call double @sqrt(double %sub98) #3
  %sub100 = fsub double %sub90, %call99
  %80 = load double*, double** %TP, align 8
  %arrayidx101 = getelementptr inbounds double, double* %80, i64 2
  %81 = load double, double* %arrayidx101, align 8
  %mul102 = fmul double 2.000000e+00, %81
  %div103 = fdiv double %sub100, %mul102
  store double %div103, double* %ROOT.addr, align 8
  %82 = load double, double* %ROOT.addr, align 8
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), double %82)
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0))
  %83 = load i32, i32* %No.addr, align 4
  %84 = load double*, double** %Po.addr, align 8
  %85 = load double, double* %ROOT.addr, align 8
  %sub106 = fsub double %85, 5.000000e-01
  %86 = load double, double* %ROOT.addr, align 8
  %add107 = fadd double %86, 5.000000e-01
  %call108 = call double @newton(i32 %83, double* %84, double %sub106, double %add107)
  br label %if.end.111

if.else.109:                                      ; preds = %for.end.63
  %87 = load i32, i32* %No.addr, align 4
  %88 = load double*, double** %Po.addr, align 8
  %89 = load i32, i32* %N.addr, align 4
  %sub110 = sub nsw i32 %89, 1
  %90 = load double*, double** %TP, align 8
  call void @allroots(i32 %87, double* %88, i32 %sub110, double* %90)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.69
  %91 = load double*, double** %TP, align 8
  %92 = bitcast double* %91 to i8*
  call void @free(i8* %92) #3
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
