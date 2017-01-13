; ModuleID = './MultiSource.Benchmarks.SciMark2-C/6.FFT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"FFT: Data length is not a power of 2!: %d \00", align 1

; Function Attrs: nounwind uwtable
define double @FFT_num_flops(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  %Nd = alloca double, align 8
  %logN = alloca double, align 8
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %Nd, align 8
  %1 = load i32, i32* %N.addr, align 4
  %call = call i32 @int_log2(i32 %1)
  %conv1 = sitofp i32 %call to double
  store double %conv1, double* %logN, align 8
  %2 = load double, double* %Nd, align 8
  %mul = fmul double 5.000000e+00, %2
  %sub = fsub double %mul, 2.000000e+00
  %3 = load double, double* %logN, align 8
  %mul2 = fmul double %sub, %3
  %4 = load double, double* %Nd, align 8
  %add = fadd double %4, 1.000000e+00
  %mul3 = fmul double 2.000000e+00, %add
  %add4 = fadd double %mul2, %mul3
  ret double %add4
}

; Function Attrs: nounwind uwtable
define internal i32 @int_log2(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %log = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %k, align 4
  store i32 0, i32* %log, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %2, 2
  store i32 %mul, i32* %k, align 4
  %3 = load i32, i32* %log, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %log, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* %log, align 4
  %shl = shl i32 1, %5
  %cmp1 = icmp ne i32 %4, %shl
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %6 = load i32, i32* %n.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 %6)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %for.end
  %7 = load i32, i32* %log, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @FFT_bitreverse(i32 %N, double* %data) #0 {
entry:
  %N.addr = alloca i32, align 4
  %data.addr = alloca double*, align 8
  %n = alloca i32, align 4
  %nm1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp_real = alloca double, align 8
  %tmp_imag = alloca double, align 8
  store i32 %N, i32* %N.addr, align 4
  store double* %data, double** %data.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %nm1, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nm1, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %ii, align 4
  %5 = load i32, i32* %j, align 4
  %shl1 = shl i32 %5, 1
  store i32 %shl1, i32* %jj, align 4
  %6 = load i32, i32* %n, align 4
  %shr = ashr i32 %6, 1
  store i32 %shr, i32* %k, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %data.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  store double %11, double* %tmp_real, align 8
  %12 = load i32, i32* %ii, align 4
  %add = add nsw i32 %12, 1
  %idxprom3 = sext i32 %add to i64
  %13 = load double*, double** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %13, i64 %idxprom3
  %14 = load double, double* %arrayidx4, align 8
  store double %14, double* %tmp_imag, align 8
  %15 = load i32, i32* %jj, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load double*, double** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %16, i64 %idxprom5
  %17 = load double, double* %arrayidx6, align 8
  %18 = load i32, i32* %ii, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load double*, double** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %19, i64 %idxprom7
  store double %17, double* %arrayidx8, align 8
  %20 = load i32, i32* %jj, align 4
  %add9 = add nsw i32 %20, 1
  %idxprom10 = sext i32 %add9 to i64
  %21 = load double*, double** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %21, i64 %idxprom10
  %22 = load double, double* %arrayidx11, align 8
  %23 = load i32, i32* %ii, align 4
  %add12 = add nsw i32 %23, 1
  %idxprom13 = sext i32 %add12 to i64
  %24 = load double*, double** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 %idxprom13
  store double %22, double* %arrayidx14, align 8
  %25 = load double, double* %tmp_real, align 8
  %26 = load i32, i32* %jj, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load double*, double** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %27, i64 %idxprom15
  store double %25, double* %arrayidx16, align 8
  %28 = load double, double* %tmp_imag, align 8
  %29 = load i32, i32* %jj, align 4
  %add17 = add nsw i32 %29, 1
  %idxprom18 = sext i32 %add17 to i64
  %30 = load double*, double** %data.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %30, i64 %idxprom18
  store double %28, double* %arrayidx19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %j, align 4
  %cmp20 = icmp sle i32 %31, %32
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %k, align 4
  %34 = load i32, i32* %j, align 4
  %sub21 = sub nsw i32 %34, %33
  store i32 %sub21, i32* %j, align 4
  %35 = load i32, i32* %k, align 4
  %shr22 = ashr i32 %35, 1
  store i32 %shr22, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %37, %36
  store i32 %add23, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FFT_transform(i32 %N, double* %data) #0 {
entry:
  %N.addr = alloca i32, align 4
  %data.addr = alloca double*, align 8
  store i32 %N, i32* %N.addr, align 4
  store double* %data, double** %data.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load double*, double** %data.addr, align 8
  call void @FFT_transform_internal(i32 %0, double* %1, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FFT_transform_internal(i32 %N, double* %data, i32 %direction) #0 {
entry:
  %N.addr = alloca i32, align 4
  %data.addr = alloca double*, align 8
  %direction.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %bit = alloca i32, align 4
  %logn = alloca i32, align 4
  %dual = alloca i32, align 4
  %w_real = alloca double, align 8
  %w_imag = alloca double, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %theta = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %s2 = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %wd_real = alloca double, align 8
  %wd_imag = alloca double, align 8
  %tmp_real = alloca double, align 8
  %tmp_imag = alloca double, align 8
  %i59 = alloca i32, align 4
  %j62 = alloca i32, align 4
  %z1_real = alloca double, align 8
  %z1_imag = alloca double, align 8
  %wd_real71 = alloca double, align 8
  %wd_imag75 = alloca double, align 8
  store i32 %N, i32* %N.addr, align 4
  store double* %data, double** %data.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n, align 4
  store i32 0, i32* %bit, align 4
  store i32 1, i32* %dual, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.107

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n, align 4
  %call = call i32 @int_log2(i32 %2)
  store i32 %call, i32* %logn, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end.107

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %N.addr, align 4
  %5 = load double*, double** %data.addr, align 8
  call void @FFT_bitreverse(i32 %4, double* %5)
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %if.end.3
  %6 = load i32, i32* %bit, align 4
  %7 = load i32, i32* %logn, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  store double 1.000000e+00, double* %w_real, align 8
  store double 0.000000e+00, double* %w_imag, align 8
  %8 = load i32, i32* %direction.addr, align 4
  %conv = sitofp i32 %8 to double
  %mul = fmul double 2.000000e+00, %conv
  %mul5 = fmul double %mul, 0x400921FB54442D18
  %9 = load i32, i32* %dual, align 4
  %conv6 = sitofp i32 %9 to double
  %mul7 = fmul double 2.000000e+00, %conv6
  %div8 = fdiv double %mul5, %mul7
  store double %div8, double* %theta, align 8
  %10 = load double, double* %theta, align 8
  %call9 = call double @sin(double %10) #5
  store double %call9, double* %s, align 8
  %11 = load double, double* %theta, align 8
  %div10 = fdiv double %11, 2.000000e+00
  %call11 = call double @sin(double %div10) #5
  store double %call11, double* %t, align 8
  %12 = load double, double* %t, align 8
  %mul12 = fmul double 2.000000e+00, %12
  %13 = load double, double* %t, align 8
  %mul13 = fmul double %mul12, %13
  store double %mul13, double* %s2, align 8
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %14, %15
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %16 = load i32, i32* %b, align 4
  %mul18 = mul nsw i32 2, %16
  store i32 %mul18, i32* %i, align 4
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %dual, align 4
  %add = add nsw i32 %17, %18
  %mul19 = mul nsw i32 2, %add
  store i32 %mul19, i32* %j, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load double*, double** %data.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %20, i64 %idxprom
  %21 = load double, double* %arrayidx, align 8
  store double %21, double* %wd_real, align 8
  %22 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %22, 1
  %idxprom21 = sext i32 %add20 to i64
  %23 = load double*, double** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %23, i64 %idxprom21
  %24 = load double, double* %arrayidx22, align 8
  store double %24, double* %wd_imag, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load double*, double** %data.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %26, i64 %idxprom23
  %27 = load double, double* %arrayidx24, align 8
  %28 = load double, double* %wd_real, align 8
  %sub = fsub double %27, %28
  %29 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load double*, double** %data.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %30, i64 %idxprom25
  store double %sub, double* %arrayidx26, align 8
  %31 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %31, 1
  %idxprom28 = sext i32 %add27 to i64
  %32 = load double*, double** %data.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %32, i64 %idxprom28
  %33 = load double, double* %arrayidx29, align 8
  %34 = load double, double* %wd_imag, align 8
  %sub30 = fsub double %33, %34
  %35 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %35, 1
  %idxprom32 = sext i32 %add31 to i64
  %36 = load double*, double** %data.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %36, i64 %idxprom32
  store double %sub30, double* %arrayidx33, align 8
  %37 = load double, double* %wd_real, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load double*, double** %data.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %39, i64 %idxprom34
  %40 = load double, double* %arrayidx35, align 8
  %add36 = fadd double %40, %37
  store double %add36, double* %arrayidx35, align 8
  %41 = load double, double* %wd_imag, align 8
  %42 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %42, 1
  %idxprom38 = sext i32 %add37 to i64
  %43 = load double*, double** %data.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %43, i64 %idxprom38
  %44 = load double, double* %arrayidx39, align 8
  %add40 = fadd double %44, %41
  store double %add40, double* %arrayidx39, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %45 = load i32, i32* %dual, align 4
  %mul41 = mul nsw i32 2, %45
  %46 = load i32, i32* %b, align 4
  %add42 = add nsw i32 %46, %mul41
  store i32 %add42, i32* %b, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  store i32 1, i32* %a, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.102, %for.end
  %47 = load i32, i32* %a, align 4
  %48 = load i32, i32* %dual, align 4
  %cmp44 = icmp slt i32 %47, %48
  br i1 %cmp44, label %for.body.46, label %for.end.103

for.body.46:                                      ; preds = %for.cond.43
  %49 = load double, double* %w_real, align 8
  %50 = load double, double* %s, align 8
  %51 = load double, double* %w_imag, align 8
  %mul47 = fmul double %50, %51
  %sub48 = fsub double %49, %mul47
  %52 = load double, double* %s2, align 8
  %53 = load double, double* %w_real, align 8
  %mul49 = fmul double %52, %53
  %sub50 = fsub double %sub48, %mul49
  store double %sub50, double* %tmp_real, align 8
  %54 = load double, double* %w_imag, align 8
  %55 = load double, double* %s, align 8
  %56 = load double, double* %w_real, align 8
  %mul51 = fmul double %55, %56
  %add52 = fadd double %54, %mul51
  %57 = load double, double* %s2, align 8
  %58 = load double, double* %w_imag, align 8
  %mul53 = fmul double %57, %58
  %sub54 = fsub double %add52, %mul53
  store double %sub54, double* %tmp_imag, align 8
  %59 = load double, double* %tmp_real, align 8
  store double %59, double* %w_real, align 8
  %60 = load double, double* %tmp_imag, align 8
  store double %60, double* %w_imag, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.98, %for.body.46
  %61 = load i32, i32* %b, align 4
  %62 = load i32, i32* %n, align 4
  %cmp56 = icmp slt i32 %61, %62
  br i1 %cmp56, label %for.body.58, label %for.end.101

for.body.58:                                      ; preds = %for.cond.55
  %63 = load i32, i32* %b, align 4
  %64 = load i32, i32* %a, align 4
  %add60 = add nsw i32 %63, %64
  %mul61 = mul nsw i32 2, %add60
  store i32 %mul61, i32* %i59, align 4
  %65 = load i32, i32* %b, align 4
  %66 = load i32, i32* %a, align 4
  %add63 = add nsw i32 %65, %66
  %67 = load i32, i32* %dual, align 4
  %add64 = add nsw i32 %add63, %67
  %mul65 = mul nsw i32 2, %add64
  store i32 %mul65, i32* %j62, align 4
  %68 = load i32, i32* %j62, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load double*, double** %data.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %69, i64 %idxprom66
  %70 = load double, double* %arrayidx67, align 8
  store double %70, double* %z1_real, align 8
  %71 = load i32, i32* %j62, align 4
  %add68 = add nsw i32 %71, 1
  %idxprom69 = sext i32 %add68 to i64
  %72 = load double*, double** %data.addr, align 8
  %arrayidx70 = getelementptr inbounds double, double* %72, i64 %idxprom69
  %73 = load double, double* %arrayidx70, align 8
  store double %73, double* %z1_imag, align 8
  %74 = load double, double* %w_real, align 8
  %75 = load double, double* %z1_real, align 8
  %mul72 = fmul double %74, %75
  %76 = load double, double* %w_imag, align 8
  %77 = load double, double* %z1_imag, align 8
  %mul73 = fmul double %76, %77
  %sub74 = fsub double %mul72, %mul73
  store double %sub74, double* %wd_real71, align 8
  %78 = load double, double* %w_real, align 8
  %79 = load double, double* %z1_imag, align 8
  %mul76 = fmul double %78, %79
  %80 = load double, double* %w_imag, align 8
  %81 = load double, double* %z1_real, align 8
  %mul77 = fmul double %80, %81
  %add78 = fadd double %mul76, %mul77
  store double %add78, double* %wd_imag75, align 8
  %82 = load i32, i32* %i59, align 4
  %idxprom79 = sext i32 %82 to i64
  %83 = load double*, double** %data.addr, align 8
  %arrayidx80 = getelementptr inbounds double, double* %83, i64 %idxprom79
  %84 = load double, double* %arrayidx80, align 8
  %85 = load double, double* %wd_real71, align 8
  %sub81 = fsub double %84, %85
  %86 = load i32, i32* %j62, align 4
  %idxprom82 = sext i32 %86 to i64
  %87 = load double*, double** %data.addr, align 8
  %arrayidx83 = getelementptr inbounds double, double* %87, i64 %idxprom82
  store double %sub81, double* %arrayidx83, align 8
  %88 = load i32, i32* %i59, align 4
  %add84 = add nsw i32 %88, 1
  %idxprom85 = sext i32 %add84 to i64
  %89 = load double*, double** %data.addr, align 8
  %arrayidx86 = getelementptr inbounds double, double* %89, i64 %idxprom85
  %90 = load double, double* %arrayidx86, align 8
  %91 = load double, double* %wd_imag75, align 8
  %sub87 = fsub double %90, %91
  %92 = load i32, i32* %j62, align 4
  %add88 = add nsw i32 %92, 1
  %idxprom89 = sext i32 %add88 to i64
  %93 = load double*, double** %data.addr, align 8
  %arrayidx90 = getelementptr inbounds double, double* %93, i64 %idxprom89
  store double %sub87, double* %arrayidx90, align 8
  %94 = load double, double* %wd_real71, align 8
  %95 = load i32, i32* %i59, align 4
  %idxprom91 = sext i32 %95 to i64
  %96 = load double*, double** %data.addr, align 8
  %arrayidx92 = getelementptr inbounds double, double* %96, i64 %idxprom91
  %97 = load double, double* %arrayidx92, align 8
  %add93 = fadd double %97, %94
  store double %add93, double* %arrayidx92, align 8
  %98 = load double, double* %wd_imag75, align 8
  %99 = load i32, i32* %i59, align 4
  %add94 = add nsw i32 %99, 1
  %idxprom95 = sext i32 %add94 to i64
  %100 = load double*, double** %data.addr, align 8
  %arrayidx96 = getelementptr inbounds double, double* %100, i64 %idxprom95
  %101 = load double, double* %arrayidx96, align 8
  %add97 = fadd double %101, %98
  store double %add97, double* %arrayidx96, align 8
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.58
  %102 = load i32, i32* %dual, align 4
  %mul99 = mul nsw i32 2, %102
  %103 = load i32, i32* %b, align 4
  %add100 = add nsw i32 %103, %mul99
  store i32 %add100, i32* %b, align 4
  br label %for.cond.55

for.end.101:                                      ; preds = %for.cond.55
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %104 = load i32, i32* %a, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond.43

for.end.103:                                      ; preds = %for.cond.43
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end.103
  %105 = load i32, i32* %bit, align 4
  %inc105 = add nsw i32 %105, 1
  store i32 %inc105, i32* %bit, align 4
  %106 = load i32, i32* %dual, align 4
  %mul106 = mul nsw i32 %106, 2
  store i32 %mul106, i32* %dual, align 4
  br label %for.cond

for.end.107:                                      ; preds = %if.then, %if.then.2, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FFT_inverse(i32 %N, double* %data) #0 {
entry:
  %N.addr = alloca i32, align 4
  %data.addr = alloca double*, align 8
  %n = alloca i32, align 4
  %norm = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store double* %data, double** %data.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n, align 4
  store double 0.000000e+00, double* %norm, align 8
  store i32 0, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %2 = load double*, double** %data.addr, align 8
  call void @FFT_transform_internal(i32 %1, double* %2, i32 1)
  %3 = load i32, i32* %n, align 4
  %conv = sitofp i32 %3 to double
  %div1 = fdiv double 1.000000e+00, %conv
  store double %div1, double* %norm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double, double* %norm, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load double*, double** %data.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %mul = fmul double %9, %6
  store double %mul, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare double @sin(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
