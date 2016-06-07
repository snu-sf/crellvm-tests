; ModuleID = 'vectorops.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @DSet(double* %vec, i32 %n, double %value) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %x = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double %value, double* %value.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %value.addr, align 8
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double %2, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FSet(float* %vec, i32 %n, float %value) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %x = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float %value, float* %value.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float, float* %value.addr, align 4
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %2, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DScale(double* %vec, i32 %n, double %scale) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %x = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %scale.addr, align 8
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %mul = fmul double %5, %2
  store double %mul, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FScale(float* %vec, i32 %n, float %scale) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %scale.addr = alloca float, align 4
  %x = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float %scale, float* %scale.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float, float* %scale.addr, align 4
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %mul = fmul float %5, %2
  store float %mul, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double @DSum(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %sum = alloca double, align 8
  %x = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double, double* %sum, align 8
  %add = fadd double %5, %4
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double, double* %sum, align 8
  ret double %7
}

; Function Attrs: nounwind uwtable
define float @FSum(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %sum = alloca float, align 4
  %x = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float, float* %sum, align 4
  %add = fadd float %5, %4
  store float %add, float* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load float, float* %sum, align 4
  ret float %7
}

; Function Attrs: nounwind uwtable
define void @DAdd(double* %vec1, double* %vec2, i32 %n) #0 {
entry:
  %vec1.addr = alloca double*, align 8
  %vec2.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store double* %vec1, double** %vec1.addr, align 8
  store double* %vec2, double** %vec2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec2.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %vec1.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  %add = fadd double %7, %4
  store double %add, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %x, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FAdd(float* %vec1, float* %vec2, i32 %n) #0 {
entry:
  %vec1.addr = alloca float*, align 8
  %vec2.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store float* %vec1, float** %vec1.addr, align 8
  store float* %vec2, float** %vec2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec2.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %vec1.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %add = fadd float %7, %4
  store float %add, float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %x, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DCopy(double* %vec1, double* %vec2, i32 %n) #0 {
entry:
  %vec1.addr = alloca double*, align 8
  %vec2.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store double* %vec1, double** %vec1.addr, align 8
  store double* %vec2, double** %vec2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec2.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %vec1.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  store double %4, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FCopy(float* %vec1, float* %vec2, i32 %n) #0 {
entry:
  %vec1.addr = alloca float*, align 8
  %vec2.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store float* %vec1, float** %vec1.addr, align 8
  store float* %vec2, float** %vec2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec2.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %vec1.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  store float %4, float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double @DDot(double* %vec1, double* %vec2, i32 %n) #0 {
entry:
  %vec1.addr = alloca double*, align 8
  %vec2.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %result = alloca double, align 8
  %x = alloca i32, align 4
  store double* %vec1, double** %vec1.addr, align 8
  store double* %vec2, double** %vec2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double 0.000000e+00, double* %result, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec1.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %vec2.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  %mul = fmul double %4, %7
  %8 = load double, double* %result, align 8
  %add = fadd double %8, %mul
  store double %add, double* %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load double, double* %result, align 8
  ret double %10
}

; Function Attrs: nounwind uwtable
define float @FDot(float* %vec1, float* %vec2, i32 %n) #0 {
entry:
  %vec1.addr = alloca float*, align 8
  %vec2.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %result = alloca float, align 4
  %x = alloca i32, align 4
  store float* %vec1, float** %vec1.addr, align 8
  store float* %vec2, float** %vec2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float 0.000000e+00, float* %result, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec1.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %vec2.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %mul = fmul float %4, %7
  %8 = load float, float* %result, align 4
  %add = fadd float %8, %mul
  store float %add, float* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load float, float* %result, align 4
  ret float %10
}

; Function Attrs: nounwind uwtable
define double @DMax(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca double, align 8
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %best, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %vec.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx1, align 8
  %7 = load double, double* %best, align 8
  %cmp2 = fcmp ogt double %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load double*, double** %vec.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 %idxprom3
  %10 = load double, double* %arrayidx4, align 8
  store double %10, double* %best, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load double, double* %best, align 8
  ret double %12
}

; Function Attrs: nounwind uwtable
define float @FMax(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca float, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4
  store float %1, float* %best, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load float*, float** %vec.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx1, align 4
  %7 = load float, float* %best, align 4
  %cmp2 = fcmp ogt float %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load float*, float** %vec.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %9, i64 %idxprom3
  %10 = load float, float* %arrayidx4, align 4
  store float %10, float* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load float, float* %best, align 4
  ret float %12
}

; Function Attrs: nounwind uwtable
define double @DMin(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca double, align 8
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %best, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %vec.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx1, align 8
  %7 = load double, double* %best, align 8
  %cmp2 = fcmp olt double %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load double*, double** %vec.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 %idxprom3
  %10 = load double, double* %arrayidx4, align 8
  store double %10, double* %best, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load double, double* %best, align 8
  ret double %12
}

; Function Attrs: nounwind uwtable
define float @FMin(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca float, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4
  store float %1, float* %best, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load float*, float** %vec.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx1, align 4
  %7 = load float, float* %best, align 4
  %cmp2 = fcmp olt float %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load float*, float** %vec.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %9, i64 %idxprom3
  %10 = load float, float* %arrayidx4, align 4
  store float %10, float* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load float, float* %best, align 4
  ret float %12
}

; Function Attrs: nounwind uwtable
define i32 @DArgMax(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %best, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %best, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %vec.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  %cmp3 = fcmp ogt double %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %best, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @FArgMax(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %best, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %best, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %vec.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp ogt float %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %best, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @DArgMin(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %best, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %best, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %vec.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  %cmp3 = fcmp olt double %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %best, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @FArgMin(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %best, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %best, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %vec.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp olt float %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %best, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @DNorm(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %sum = alloca double, align 8
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load double*, double** %vec.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call double @DSum(double* %0, i32 %1)
  store double %call, double* %sum, align 8
  %2 = load double, double* %sum, align 8
  %cmp = fcmp une double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double, double* %sum, align 8
  %6 = load i32, i32* %x, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8
  %div = fdiv double %8, %5
  store double %div, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.8, %if.else
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.2
  %12 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %12 to double
  %div5 = fdiv double 1.000000e+00, %conv
  %13 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load double*, double** %vec.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 %idxprom6
  store double %div5, double* %arrayidx7, align 8
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.4
  %15 = load i32, i32* %x, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %x, align 4
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  br label %if.end

if.end:                                           ; preds = %for.end.10, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @FNorm(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %sum = alloca float, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load float*, float** %vec.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call float @FSum(float* %0, i32 %1)
  store float %call, float* %sum, align 4
  %2 = load float, float* %sum, align 4
  %conv = fpext float %2 to double
  %cmp = fcmp une double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float, float* %sum, align 4
  %6 = load i32, i32* %x, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4
  %div = fdiv float %8, %5
  store float %div, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %if.else
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body.7, label %for.end.16

for.body.7:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %n.addr, align 4
  %conv8 = sitofp i32 %12 to float
  %conv9 = fpext float %conv8 to double
  %div10 = fdiv double 1.000000e+00, %conv9
  %conv11 = fptrunc double %div10 to float
  %13 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load float*, float** %vec.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %14, i64 %idxprom12
  store float %conv11, float* %arrayidx13, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.7
  %15 = load i32, i32* %x, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %x, align 4
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  br label %if.end

if.end:                                           ; preds = %for.end.16, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @DLog(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %cmp1 = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load double*, double** %vec.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8
  %call = call double @log(double %7) #2
  %8 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %vec.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  store double %call, double* %arrayidx5, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load double*, double** %vec.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 %idxprom6
  store double 0xFFEFFFFFFFFFFFFF, double* %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define void @FLog(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load float*, float** %vec.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 %idxprom3
  %7 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %7 to double
  %call = call double @log(double %conv5) #2
  %conv6 = fptrunc double %call to float
  %8 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load float*, float** %vec.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %9, i64 %idxprom7
  store float %conv6, float* %arrayidx8, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load float*, float** %vec.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 %idxprom9
  store float 0xC7EFFFFFE0000000, float* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DExp(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %call = call double @exp(double %4) #2
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %vec.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  store double %call, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define void @FExp(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %call = call double @exp(double %conv) #2
  %conv1 = fptrunc double %call to float
  %5 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load float*, float** %vec.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %6, i64 %idxprom2
  store float %conv1, float* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double @DLogSum(double* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %max = alloca double, align 8
  %sum = alloca double, align 8
  store double* %vec, double** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load double*, double** %vec.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call double @DMax(double* %0, i32 %1)
  store double %call, double* %max, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %max, align 8
  %sub = fsub double %7, 5.000000e+01
  %cmp1 = fcmp ogt double %6, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load double*, double** %vec.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %9, i64 %idxprom2
  %10 = load double, double* %arrayidx3, align 8
  %11 = load double, double* %max, align 8
  %sub4 = fsub double %10, %11
  %call5 = call double @exp(double %sub4) #2
  %12 = load double, double* %sum, align 8
  %add = fadd double %12, %call5
  store double %add, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %x, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load double, double* %sum, align 8
  %call6 = call double @log(double %14) #2
  %15 = load double, double* %max, align 8
  %add7 = fadd double %call6, %15
  store double %add7, double* %sum, align 8
  %16 = load double, double* %sum, align 8
  ret double %16
}

; Function Attrs: nounwind uwtable
define float @FLogSum(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %max = alloca float, align 4
  %sum = alloca float, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load float*, float** %vec.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call float @FMax(float* %0, i32 %1)
  store float %call, float* %max, align 4
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %conv = fpext float %6 to double
  %7 = load float, float* %max, align 4
  %conv1 = fpext float %7 to double
  %sub = fsub double %conv1, 5.000000e+01
  %cmp2 = fcmp ogt double %conv, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load float*, float** %vec.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom4
  %10 = load float, float* %arrayidx5, align 4
  %11 = load float, float* %max, align 4
  %sub6 = fsub float %10, %11
  %conv7 = fpext float %sub6 to double
  %call8 = call double @exp(double %conv7) #2
  %12 = load float, float* %sum, align 4
  %conv9 = fpext float %12 to double
  %add = fadd double %conv9, %call8
  %conv10 = fptrunc double %add to float
  store float %conv10, float* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %x, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load float, float* %sum, align 4
  %conv11 = fpext float %14 to double
  %call12 = call double @log(double %conv11) #2
  %15 = load float, float* %max, align 4
  %conv13 = fpext float %15 to double
  %add14 = fadd double %call12, %conv13
  %conv15 = fptrunc double %add14 to float
  store float %conv15, float* %sum, align 4
  %16 = load float, float* %sum, align 4
  ret float %16
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
