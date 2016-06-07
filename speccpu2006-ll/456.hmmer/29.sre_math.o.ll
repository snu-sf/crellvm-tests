; ModuleID = 'sre_math.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Gammln.cof = internal global [11 x double] [double 0x40E6EC39B523E5C6, double 0xC1030CE42A8DE3A0, double 0x41093547A7877F7A, double 0xC100F46BD1F08565, double 0x40E891BEDA52E5F4, double 0xC0C2C0CBD1715240, double 0x408B74AF4B6E0230, double 0xC03F8D31A9F566E2, double 0x3FD29CB3C2263426, double 0xBF2E680CC2D54303, double 0x3DE133D0CA52FB5A], align 16
@.str = private unnamed_addr constant [11 x i8] c"sre_math.c\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"IncompleteGamma(): a must be > 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"IncompleteGamma(): x must be >= 0\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"IncompleteGamma(): failed to converge using continued fraction approx\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"IncompleteGamma(): failed to converge using series approx\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Linefit(float* %x, float* %y, i32 %N, float* %ret_a, float* %ret_b, float* %ret_r) #0 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %ret_a.addr = alloca float*, align 8
  %ret_b.addr = alloca float*, align 8
  %ret_r.addr = alloca float*, align 8
  %xavg = alloca float, align 4
  %yavg = alloca float, align 4
  %sxx = alloca float, align 4
  %syy = alloca float, align 4
  %sxy = alloca float, align 4
  %i = alloca i32, align 4
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store float* %ret_a, float** %ret_a.addr, align 8
  store float* %ret_b, float** %ret_b.addr, align 8
  store float* %ret_r, float** %ret_r.addr, align 8
  store float 0.000000e+00, float* %yavg, align 4
  store float 0.000000e+00, float* %xavg, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %x.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float, float* %xavg, align 4
  %add = fadd float %5, %4
  store float %add, float* %xavg, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load float*, float** %y.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  %8 = load float, float* %arrayidx2, align 4
  %9 = load float, float* %yavg, align 4
  %add3 = fadd float %9, %8
  store float %add3, float* %yavg, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %11 to float
  %12 = load float, float* %xavg, align 4
  %div = fdiv float %12, %conv
  store float %div, float* %xavg, align 4
  %13 = load i32, i32* %N.addr, align 4
  %conv4 = sitofp i32 %13 to float
  %14 = load float, float* %yavg, align 4
  %div5 = fdiv float %14, %conv4
  store float %div5, float* %yavg, align 4
  store float 0.000000e+00, float* %sxy, align 4
  store float 0.000000e+00, float* %syy, align 4
  store float 0.000000e+00, float* %sxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.32, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %N.addr, align 4
  %cmp7 = icmp slt i32 %15, %16
  br i1 %cmp7, label %for.body.9, label %for.end.34

for.body.9:                                       ; preds = %for.cond.6
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load float*, float** %x.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 %idxprom10
  %19 = load float, float* %arrayidx11, align 4
  %20 = load float, float* %xavg, align 4
  %sub = fsub float %19, %20
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load float*, float** %x.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %22, i64 %idxprom12
  %23 = load float, float* %arrayidx13, align 4
  %24 = load float, float* %xavg, align 4
  %sub14 = fsub float %23, %24
  %mul = fmul float %sub, %sub14
  %25 = load float, float* %sxx, align 4
  %add15 = fadd float %25, %mul
  store float %add15, float* %sxx, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load float*, float** %y.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %27, i64 %idxprom16
  %28 = load float, float* %arrayidx17, align 4
  %29 = load float, float* %yavg, align 4
  %sub18 = fsub float %28, %29
  %30 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load float*, float** %y.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %31, i64 %idxprom19
  %32 = load float, float* %arrayidx20, align 4
  %33 = load float, float* %xavg, align 4
  %sub21 = fsub float %32, %33
  %mul22 = fmul float %sub18, %sub21
  %34 = load float, float* %syy, align 4
  %add23 = fadd float %34, %mul22
  store float %add23, float* %syy, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load float*, float** %x.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %36, i64 %idxprom24
  %37 = load float, float* %arrayidx25, align 4
  %38 = load float, float* %xavg, align 4
  %sub26 = fsub float %37, %38
  %39 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load float*, float** %y.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %40, i64 %idxprom27
  %41 = load float, float* %arrayidx28, align 4
  %42 = load float, float* %yavg, align 4
  %sub29 = fsub float %41, %42
  %mul30 = fmul float %sub26, %sub29
  %43 = load float, float* %sxy, align 4
  %add31 = fadd float %43, %mul30
  store float %add31, float* %sxy, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.9
  %44 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %44, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.6

for.end.34:                                       ; preds = %for.cond.6
  %45 = load float, float* %sxy, align 4
  %46 = load float, float* %sxx, align 4
  %div35 = fdiv float %45, %46
  %47 = load float*, float** %ret_b.addr, align 8
  store float %div35, float* %47, align 4
  %48 = load float, float* %yavg, align 4
  %49 = load float, float* %xavg, align 4
  %50 = load float*, float** %ret_b.addr, align 8
  %51 = load float, float* %50, align 4
  %mul36 = fmul float %49, %51
  %sub37 = fsub float %48, %mul36
  %52 = load float*, float** %ret_a.addr, align 8
  store float %sub37, float* %52, align 4
  %53 = load float, float* %sxy, align 4
  %conv38 = fpext float %53 to double
  %54 = load float, float* %sxx, align 4
  %conv39 = fpext float %54 to double
  %call = call double @sqrt(double %conv39) #4
  %55 = load float, float* %syy, align 4
  %conv40 = fpext float %55 to double
  %call41 = call double @sqrt(double %conv40) #4
  %mul42 = fmul double %call, %call41
  %div43 = fdiv double %conv38, %mul42
  %conv44 = fptrunc double %div43 to float
  %56 = load float*, float** %ret_r.addr, align 8
  store float %conv44, float* %56, align 4
  ret i32 1
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define void @WeightedLinefit(float* %x, float* %y, float* %var, i32 %N, float* %ret_m, float* %ret_b) #0 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %var.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %ret_m.addr = alloca float*, align 8
  %ret_b.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %s = alloca double, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %sxx = alloca double, align 8
  %sxy = alloca double, align 8
  %delta = alloca double, align 8
  %m = alloca double, align 8
  %b = alloca double, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %var, float** %var.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store float* %ret_m, float** %ret_m.addr, align 8
  store float* %ret_b, float** %ret_b.addr, align 8
  store double 0.000000e+00, double* %sxy, align 8
  store double 0.000000e+00, double* %sxx, align 8
  store double 0.000000e+00, double* %sy, align 8
  store double 0.000000e+00, double* %sx, align 8
  store double 0.000000e+00, double* %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %var.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %div = fdiv double 1.000000e+00, %conv
  %5 = load double, double* %s, align 8
  %add = fadd double %5, %div
  store double %add, double* %s, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load float*, float** %x.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  %8 = load float, float* %arrayidx2, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load float*, float** %var.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %10, i64 %idxprom3
  %11 = load float, float* %arrayidx4, align 4
  %div5 = fdiv float %8, %11
  %conv6 = fpext float %div5 to double
  %12 = load double, double* %sx, align 8
  %add7 = fadd double %12, %conv6
  store double %add7, double* %sx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load float*, float** %y.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %15 = load float, float* %arrayidx9, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load float*, float** %var.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %17, i64 %idxprom10
  %18 = load float, float* %arrayidx11, align 4
  %div12 = fdiv float %15, %18
  %conv13 = fpext float %div12 to double
  %19 = load double, double* %sy, align 8
  %add14 = fadd double %19, %conv13
  store double %add14, double* %sy, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load float*, float** %x.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %21, i64 %idxprom15
  %22 = load float, float* %arrayidx16, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load float*, float** %x.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %24, i64 %idxprom17
  %25 = load float, float* %arrayidx18, align 4
  %mul = fmul float %22, %25
  %26 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load float*, float** %var.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %27, i64 %idxprom19
  %28 = load float, float* %arrayidx20, align 4
  %div21 = fdiv float %mul, %28
  %conv22 = fpext float %div21 to double
  %29 = load double, double* %sxx, align 8
  %add23 = fadd double %29, %conv22
  store double %add23, double* %sxx, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load float*, float** %x.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %31, i64 %idxprom24
  %32 = load float, float* %arrayidx25, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load float*, float** %y.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 %idxprom26
  %35 = load float, float* %arrayidx27, align 4
  %mul28 = fmul float %32, %35
  %36 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load float*, float** %var.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %37, i64 %idxprom29
  %38 = load float, float* %arrayidx30, align 4
  %div31 = fdiv float %mul28, %38
  %conv32 = fpext float %div31 to double
  %39 = load double, double* %sxy, align 8
  %add33 = fadd double %39, %conv32
  store double %add33, double* %sxy, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load double, double* %s, align 8
  %42 = load double, double* %sxx, align 8
  %mul34 = fmul double %41, %42
  %43 = load double, double* %sx, align 8
  %44 = load double, double* %sx, align 8
  %mul35 = fmul double %43, %44
  %sub = fsub double %mul34, %mul35
  store double %sub, double* %delta, align 8
  %45 = load double, double* %sxx, align 8
  %46 = load double, double* %sy, align 8
  %mul36 = fmul double %45, %46
  %47 = load double, double* %sx, align 8
  %48 = load double, double* %sxy, align 8
  %mul37 = fmul double %47, %48
  %sub38 = fsub double %mul36, %mul37
  %49 = load double, double* %delta, align 8
  %div39 = fdiv double %sub38, %49
  store double %div39, double* %b, align 8
  %50 = load double, double* %s, align 8
  %51 = load double, double* %sxy, align 8
  %mul40 = fmul double %50, %51
  %52 = load double, double* %sx, align 8
  %53 = load double, double* %sy, align 8
  %mul41 = fmul double %52, %53
  %sub42 = fsub double %mul40, %mul41
  %54 = load double, double* %delta, align 8
  %div43 = fdiv double %sub42, %54
  store double %div43, double* %m, align 8
  %55 = load double, double* %m, align 8
  %conv44 = fptrunc double %55 to float
  %56 = load float*, float** %ret_m.addr, align 8
  store float %conv44, float* %56, align 4
  %57 = load double, double* %b, align 8
  %conv45 = fptrunc double %57 to float
  %58 = load float*, float** %ret_b.addr, align 8
  store float %conv45, float* %58, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define double @Gammln(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %i = alloca i32, align 4
  %xx = alloca double, align 8
  %tx = alloca double, align 8
  %tmp = alloca double, align 8
  %value = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 9.999990e+05, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  store double %sub, double* %xx, align 8
  %2 = load double, double* %xx, align 8
  %add = fadd double %2, 1.100000e+01
  store double %add, double* %tmp, align 8
  store double %add, double* %tx, align 8
  store double 1.000000e+00, double* %value, align 8
  store i32 10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [11 x double], [11 x double]* @Gammln.cof, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load double, double* %tmp, align 8
  %div = fdiv double %5, %6
  %7 = load double, double* %value, align 8
  %add3 = fadd double %7, %div
  store double %add3, double* %value, align 8
  %8 = load double, double* %tmp, align 8
  %sub4 = fsub double %8, 1.000000e+00
  store double %sub4, double* %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load double, double* %value, align 8
  %call = call double @log(double %10) #4
  store double %call, double* %value, align 8
  %11 = load double, double* %tx, align 8
  %add5 = fadd double %11, 5.000000e-01
  store double %add5, double* %tx, align 8
  %12 = load double, double* %xx, align 8
  %add6 = fadd double %12, 5.000000e-01
  %13 = load double, double* %tx, align 8
  %call7 = call double @log(double %13) #4
  %mul = fmul double %add6, %call7
  %add8 = fadd double 0x3FED67F1C8489D6C, %mul
  %14 = load double, double* %tx, align 8
  %sub9 = fsub double %add8, %14
  %15 = load double, double* %value, align 8
  %add10 = fadd double %15, %sub9
  store double %add10, double* %value, align 8
  %16 = load double, double* %value, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define float** @FMX2Alloc(i32 %rows, i32 %cols) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %mx = alloca float**, align 8
  %r = alloca i32, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 172, i64 %mul)
  %1 = bitcast i8* %call to float**
  store float** %1, float*** %mx, align 8
  %2 = load i32, i32* %rows.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 4, %conv1
  %3 = load i32, i32* %cols.addr, align 4
  %conv3 = sext i32 %3 to i64
  %mul4 = mul i64 %mul2, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 173, i64 %mul4)
  %4 = bitcast i8* %call5 to float*
  %5 = load float**, float*** %mx, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 0
  store float* %4, float** %arrayidx, align 8
  store i32 1, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %r, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load float**, float*** %mx, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %8, i64 0
  %9 = load float*, float** %arrayidx7, align 8
  %10 = load i32, i32* %r, align 4
  %11 = load i32, i32* %cols.addr, align 4
  %mul8 = mul nsw i32 %10, %11
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds float, float* %9, i64 %idx.ext
  %12 = load i32, i32* %r, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load float**, float*** %mx, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %13, i64 %idxprom
  store float* %add.ptr, float** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %r, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load float**, float*** %mx, align 8
  ret float** %15
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define void @FMX2Free(float** %mx) #0 {
entry:
  %mx.addr = alloca float**, align 8
  store float** %mx, float*** %mx.addr, align 8
  %0 = load float**, float*** %mx.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = bitcast float* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load float**, float*** %mx.addr, align 8
  %4 = bitcast float** %3 to i8*
  call void @free(i8* %4) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define double** @DMX2Alloc(i32 %rows, i32 %cols) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %mx = alloca double**, align 8
  %r = alloca i32, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 190, i64 %mul)
  %1 = bitcast i8* %call to double**
  store double** %1, double*** %mx, align 8
  %2 = load i32, i32* %rows.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 8, %conv1
  %3 = load i32, i32* %cols.addr, align 4
  %conv3 = sext i32 %3 to i64
  %mul4 = mul i64 %mul2, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 191, i64 %mul4)
  %4 = bitcast i8* %call5 to double*
  %5 = load double**, double*** %mx, align 8
  %arrayidx = getelementptr inbounds double*, double** %5, i64 0
  store double* %4, double** %arrayidx, align 8
  store i32 1, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %r, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load double**, double*** %mx, align 8
  %arrayidx7 = getelementptr inbounds double*, double** %8, i64 0
  %9 = load double*, double** %arrayidx7, align 8
  %10 = load i32, i32* %r, align 4
  %11 = load i32, i32* %cols.addr, align 4
  %mul8 = mul nsw i32 %10, %11
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds double, double* %9, i64 %idx.ext
  %12 = load i32, i32* %r, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load double**, double*** %mx, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %13, i64 %idxprom
  store double* %add.ptr, double** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %r, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load double**, double*** %mx, align 8
  ret double** %15
}

; Function Attrs: nounwind uwtable
define void @DMX2Free(double** %mx) #0 {
entry:
  %mx.addr = alloca double**, align 8
  store double** %mx, double*** %mx.addr, align 8
  %0 = load double**, double*** %mx.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %0, i64 0
  %1 = load double*, double** %arrayidx, align 8
  %2 = bitcast double* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load double**, double*** %mx.addr, align 8
  %4 = bitcast double** %3 to i8*
  call void @free(i8* %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FMX2Multiply(float** %A, float** %B, float** %C, i32 %m, i32 %p, i32 %n) #0 {
entry:
  %A.addr = alloca float**, align 8
  %B.addr = alloca float**, align 8
  %C.addr = alloca float**, align 8
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store float** %A, float*** %A.addr, align 8
  store float** %B, float*** %B.addr, align 8
  store float** %C, float*** %C.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.21, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.23

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load float**, float*** %C.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %6, i64 %idxprom4
  %7 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.3
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %p.addr, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %10 = load i32, i32* %p.addr, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load float**, float*** %A.addr, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %12, i64 %idxprom10
  %13 = load float*, float** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds float, float* %13, i64 %idxprom9
  %14 = load float, float* %arrayidx12, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load i32, i32* %p.addr, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load float**, float*** %B.addr, align 8
  %arrayidx15 = getelementptr inbounds float*, float** %17, i64 %idxprom14
  %18 = load float*, float** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds float, float* %18, i64 %idxprom13
  %19 = load float, float* %arrayidx16, align 4
  %mul = fmul float %14, %19
  %20 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load float**, float*** %C.addr, align 8
  %arrayidx19 = getelementptr inbounds float*, float** %22, i64 %idxprom18
  %23 = load float*, float** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds float, float* %23, i64 %idxprom17
  %24 = load float, float* %arrayidx20, align 4
  %add = fadd float %24, %mul
  store float %add, float* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.1

for.end.23:                                       ; preds = %for.cond.1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %27 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %27, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double @IncompleteGamma(double %a, double %x) #0 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %iter = alloca i32, align 4
  %oldp = alloca double, align 8
  %nu0 = alloca double, align 8
  %nu1 = alloca double, align 8
  %de0 = alloca double, align 8
  %de1 = alloca double, align 8
  %p = alloca double, align 8
  %val = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %x.addr, align 8
  %cmp1 = fcmp olt double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %a.addr, align 8
  %add = fadd double %3, 1.000000e+00
  %cmp4 = fcmp ogt double %2, %add
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  store double 0.000000e+00, double* %nu0, align 8
  store double 1.000000e+00, double* %de0, align 8
  store double 1.000000e+00, double* %nu1, align 8
  %4 = load double, double* %x.addr, align 8
  store double %4, double* %de1, align 8
  %5 = load double, double* %nu1, align 8
  store double %5, double* %oldp, align 8
  store i32 1, i32* %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %6 = load i32, i32* %iter, align 4
  %cmp6 = icmp slt i32 %6, 100
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load double, double* %nu1, align 8
  %8 = load i32, i32* %iter, align 4
  %conv = sitofp i32 %8 to double
  %9 = load double, double* %a.addr, align 8
  %sub = fsub double %conv, %9
  %10 = load double, double* %nu0, align 8
  %mul = fmul double %sub, %10
  %add7 = fadd double %7, %mul
  store double %add7, double* %nu0, align 8
  %11 = load double, double* %de1, align 8
  %12 = load i32, i32* %iter, align 4
  %conv8 = sitofp i32 %12 to double
  %13 = load double, double* %a.addr, align 8
  %sub9 = fsub double %conv8, %13
  %14 = load double, double* %de0, align 8
  %mul10 = fmul double %sub9, %14
  %add11 = fadd double %11, %mul10
  store double %add11, double* %de0, align 8
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %nu0, align 8
  %mul12 = fmul double %15, %16
  %17 = load i32, i32* %iter, align 4
  %conv13 = sitofp i32 %17 to double
  %18 = load double, double* %nu1, align 8
  %mul14 = fmul double %conv13, %18
  %add15 = fadd double %mul12, %mul14
  store double %add15, double* %nu1, align 8
  %19 = load double, double* %x.addr, align 8
  %20 = load double, double* %de0, align 8
  %mul16 = fmul double %19, %20
  %21 = load i32, i32* %iter, align 4
  %conv17 = sitofp i32 %21 to double
  %22 = load double, double* %de1, align 8
  %mul18 = fmul double %conv17, %22
  %add19 = fadd double %mul16, %mul18
  store double %add19, double* %de1, align 8
  %23 = load double, double* %de1, align 8
  %cmp20 = fcmp une double %23, 0.000000e+00
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %for.body
  %24 = load double, double* %de1, align 8
  %25 = load double, double* %nu0, align 8
  %div = fdiv double %25, %24
  store double %div, double* %nu0, align 8
  %26 = load double, double* %de1, align 8
  %27 = load double, double* %de0, align 8
  %div23 = fdiv double %27, %26
  store double %div23, double* %de0, align 8
  %28 = load double, double* %de1, align 8
  %29 = load double, double* %nu1, align 8
  %div24 = fdiv double %29, %28
  store double %div24, double* %nu1, align 8
  store double 1.000000e+00, double* %de1, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %for.body
  %30 = load double, double* %nu1, align 8
  %31 = load double, double* %oldp, align 8
  %sub26 = fsub double %30, %31
  %32 = load double, double* %nu1, align 8
  %div27 = fdiv double %sub26, %32
  %call = call double @fabs(double %div27) #5
  %cmp28 = fcmp olt double %call, 1.000000e-07
  br i1 %cmp28, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.25
  %33 = load double, double* %nu1, align 8
  %34 = load double, double* %a.addr, align 8
  %35 = load double, double* %x.addr, align 8
  %call31 = call double @log(double %35) #4
  %mul32 = fmul double %34, %call31
  %36 = load double, double* %x.addr, align 8
  %sub33 = fsub double %mul32, %36
  %37 = load double, double* %a.addr, align 8
  %call34 = call double @Gammln(double %37)
  %sub35 = fsub double %sub33, %call34
  %call36 = call double @exp(double %sub35) #4
  %mul37 = fmul double %33, %call36
  store double %mul37, double* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.25
  %38 = load double, double* %nu1, align 8
  store double %38, double* %oldp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %39 = load i32, i32* %iter, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %iter, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.66

if.else:                                          ; preds = %if.end.3
  %40 = load double, double* %a.addr, align 8
  %div39 = fdiv double 1.000000e+00, %40
  store double %div39, double* %val, align 8
  store double %div39, double* %p, align 8
  store i32 1, i32* %iter, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.63, %if.else
  %41 = load i32, i32* %iter, align 4
  %cmp41 = icmp slt i32 %41, 10000
  br i1 %cmp41, label %for.body.43, label %for.end.65

for.body.43:                                      ; preds = %for.cond.40
  %42 = load double, double* %x.addr, align 8
  %43 = load double, double* %a.addr, align 8
  %44 = load i32, i32* %iter, align 4
  %conv44 = sitofp i32 %44 to double
  %add45 = fadd double %43, %conv44
  %div46 = fdiv double %42, %add45
  %45 = load double, double* %val, align 8
  %mul47 = fmul double %45, %div46
  store double %mul47, double* %val, align 8
  %46 = load double, double* %val, align 8
  %47 = load double, double* %p, align 8
  %add48 = fadd double %47, %46
  store double %add48, double* %p, align 8
  %48 = load double, double* %val, align 8
  %49 = load double, double* %p, align 8
  %div49 = fdiv double %48, %49
  %call50 = call double @fabs(double %div49) #5
  %cmp51 = fcmp olt double %call50, 1.000000e-07
  br i1 %cmp51, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %for.body.43
  %50 = load double, double* %p, align 8
  %51 = load double, double* %a.addr, align 8
  %52 = load double, double* %x.addr, align 8
  %call54 = call double @log(double %52) #4
  %mul55 = fmul double %51, %call54
  %53 = load double, double* %x.addr, align 8
  %sub56 = fsub double %mul55, %53
  %54 = load double, double* %a.addr, align 8
  %call57 = call double @Gammln(double %54)
  %sub58 = fsub double %sub56, %call57
  %call59 = call double @exp(double %sub58) #4
  %mul60 = fmul double %50, %call59
  %sub61 = fsub double 1.000000e+00, %mul60
  store double %sub61, double* %retval
  br label %return

if.end.62:                                        ; preds = %for.body.43
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %55 = load i32, i32* %iter, align 4
  %inc64 = add nsw i32 %55, 1
  store i32 %inc64, i32* %iter, align 4
  br label %for.cond.40

for.end.65:                                       ; preds = %for.cond.40
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %for.end
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.53, %if.then.30
  %56 = load double, double* %retval
  ret double %56
}

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @exp(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
