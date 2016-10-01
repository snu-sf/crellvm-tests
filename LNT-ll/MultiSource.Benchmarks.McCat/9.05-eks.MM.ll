; ModuleID = './MultiSource.Benchmarks.McCat/9.05-eks.MM.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double** @MakeMatrix(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %M = alloca double**, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call double** @newMatrix()
  store double** %call, double*** %M, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  store i32 %1, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %2, 51
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %3, %4
  %call4 = call i32 @abs(i32 %sub) #3
  %5 = load i32, i32* %i.addr, align 4
  %cmp5 = icmp sgt i32 %call4, %5
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load double**, double*** %M, align 8
  %arrayidx = getelementptr inbounds double*, double** %8, i64 %idxprom6
  %9 = load double*, double** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds double, double* %9, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx7, align 8
  %10 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load double**, double*** %M, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %12, i64 %idxprom9
  %13 = load double*, double** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds double, double* %13, i64 %idxprom8
  store double 0.000000e+00, double* %arrayidx11, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %call12 = call double @sqrt(double 0x401921FB54442D18) #4
  %mul = fmul double 5.000000e+00, %call12
  %div = fdiv double 4.000000e+00, %mul
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %k, align 4
  %sub13 = sub nsw i32 %14, %15
  %conv = sitofp i32 %sub13 to double
  %mul14 = fmul double -3.200000e-01, %conv
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %k, align 4
  %sub15 = sub nsw i32 %16, %17
  %conv16 = sitofp i32 %sub15 to double
  %mul17 = fmul double %mul14, %conv16
  %call18 = call double @exp(double %mul17) #4
  %mul19 = fmul double %div, %call18
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load double**, double*** %M, align 8
  %arrayidx22 = getelementptr inbounds double*, double** %20, i64 %idxprom21
  %21 = load double*, double** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds double, double* %21, i64 %idxprom20
  store double %mul19, double* %arrayidx23, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load double**, double*** %M, align 8
  %arrayidx26 = getelementptr inbounds double*, double** %24, i64 %idxprom25
  %25 = load double*, double** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds double, double* %25, i64 %idxprom24
  store double %mul19, double* %arrayidx27, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %27 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %27, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %28 = load double**, double*** %M, align 8
  ret double** %28
}

; Function Attrs: nounwind uwtable
define double** @newMatrix() #0 {
entry:
  %M = alloca double**, align 8
  %i = alloca i32, align 4
  %call = call noalias i8* @malloc(i64 408) #4
  %0 = bitcast i8* %call to double**
  store double** %0, double*** %M, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 51
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noalias i8* @malloc(i64 408) #4
  %2 = bitcast i8* %call1 to double*
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double**, double*** %M, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom
  store double* %2, double** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load double**, double*** %M, align 8
  ret double** %6
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define double* @newVector() #0 {
entry:
  %v = alloca double*, align 8
  %call = call noalias i8* @malloc(i64 408) #4
  %0 = bitcast i8* %call to double*
  store double* %0, double** %v, align 8
  %1 = load double*, double** %v, align 8
  ret double* %1
}

; Function Attrs: nounwind uwtable
define void @matrixMult(double** %C, double** %A, double** %B) #0 {
entry:
  %C.addr = alloca double**, align 8
  %A.addr = alloca double**, align 8
  %B.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store double** %C, double*** %C.addr, align 8
  store double** %A, double*** %A.addr, align 8
  store double** %B, double*** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.21, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 51
  br i1 %cmp2, label %for.body.3, label %for.end.23

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load double**, double*** %C.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom4
  %5 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %5, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx5, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.3
  %6 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %6, 51
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %7 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load double**, double*** %A.addr, align 8
  %arrayidx11 = getelementptr inbounds double*, double** %9, i64 %idxprom10
  %10 = load double*, double** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds double, double* %10, i64 %idxprom9
  %11 = load double, double* %arrayidx12, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load double**, double*** %B.addr, align 8
  %arrayidx15 = getelementptr inbounds double*, double** %14, i64 %idxprom14
  %15 = load double*, double** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds double, double* %15, i64 %idxprom13
  %16 = load double, double* %arrayidx16, align 8
  %mul = fmul double %11, %16
  %17 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load double**, double*** %C.addr, align 8
  %arrayidx19 = getelementptr inbounds double*, double** %19, i64 %idxprom18
  %20 = load double*, double** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds double, double* %20, i64 %idxprom17
  %21 = load double, double* %arrayidx20, align 8
  %add = fadd double %21, %mul
  store double %add, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.1

for.end.23:                                       ; preds = %for.cond.1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %24 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @matrixTranspose(double** %A) #0 {
entry:
  %A.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca double, align 8
  store double** %A, double*** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 51
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %5, i64 %idxprom4
  %6 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx5, align 8
  store double %7, double* %a, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load double**, double*** %A.addr, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %10, i64 %idxprom7
  %11 = load double*, double** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds double, double* %11, i64 %idxprom6
  %12 = load double, double* %arrayidx9, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load double**, double*** %A.addr, align 8
  %arrayidx12 = getelementptr inbounds double*, double** %15, i64 %idxprom11
  %16 = load double*, double** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds double, double* %16, i64 %idxprom10
  store double %12, double* %arrayidx13, align 8
  %17 = load double, double* %a, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load double**, double*** %A.addr, align 8
  %arrayidx16 = getelementptr inbounds double*, double** %20, i64 %idxprom15
  %21 = load double*, double** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds double, double* %21, i64 %idxprom14
  store double %17, double* %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %23, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double** @newIdMatrix() #0 {
entry:
  %C = alloca double**, align 8
  %call = call double** @newMatrix()
  store double** %call, double*** %C, align 8
  %0 = load double**, double*** %C, align 8
  call void @MakeID(double** %0)
  %1 = load double**, double*** %C, align 8
  ret double** %1
}

; Function Attrs: nounwind uwtable
define void @MakeID(double** %A) #0 {
entry:
  %A.addr = alloca double**, align 8
  %l = alloca i32, align 4
  %j = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  store i32 %1, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %l, align 4
  %cmp2 = icmp slt i32 %2, 51
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %l, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %5 = load i32, i32* %l, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %7, i64 %idxprom5
  %8 = load double*, double** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds double, double* %8, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx6, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32, i32* %l, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load double**, double*** %A.addr, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %11, i64 %idxprom8
  %12 = load double*, double** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds double, double* %12, i64 %idxprom7
  store double 0.000000e+00, double* %arrayidx10, align 8
  %13 = load i32, i32* %l, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load double**, double*** %A.addr, align 8
  %arrayidx13 = getelementptr inbounds double*, double** %15, i64 %idxprom12
  %16 = load double*, double** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds double, double* %16, i64 %idxprom11
  store double 0.000000e+00, double* %arrayidx14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %l, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @freeMatrix(double** %A) #0 {
entry:
  %A.addr = alloca double**, align 8
  %i = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %2, i64 %idxprom
  %3 = load double*, double** %arrayidx, align 8
  %4 = bitcast double* %3 to i8*
  call void @free(i8* %4) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load double**, double*** %A.addr, align 8
  %7 = bitcast double** %6 to i8*
  call void @free(i8* %7) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define double @NormInf(double** %A) #0 {
entry:
  %A.addr = alloca double**, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store double 0.000000e+00, double* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %b, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 51
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom4
  %5 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx5, align 8
  %call = call double @fabs(double %6) #3
  %7 = load double, double* %b, align 8
  %add = fadd double %7, %call
  store double %add, double* %b, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %9 = load double, double* %b, align 8
  %10 = load double, double* %a, align 8
  %cmp6 = fcmp ogt double %9, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %11 = load double, double* %b, align 8
  store double %11, double* %a, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %13 = load double, double* %a, align 8
  ret double %13
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define double @NormOne(double** %A) #0 {
entry:
  %A.addr = alloca double**, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store double 0.000000e+00, double* %a, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 51
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom4
  %5 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx5, align 8
  %call = call double @fabs(double %6) #3
  %7 = load double, double* %b, align 8
  %add = fadd double %7, %call
  store double %add, double* %b, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %9 = load double, double* %b, align 8
  %10 = load double, double* %a, align 8
  %cmp6 = fcmp ogt double %9, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %11 = load double, double* %b, align 8
  store double %11, double* %a, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %13 = load double, double* %a, align 8
  ret double %13
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
