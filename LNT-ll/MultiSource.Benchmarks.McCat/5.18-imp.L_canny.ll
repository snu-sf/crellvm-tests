; ModuleID = './MultiSource.Benchmarks.McCat/5.18-imp.L_canny.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: nounwind uwtable
define i32 @L_canny(float %sigma, float* %image, i32 %nc, i32 %nr, float** %edge, i8* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %sigma.addr = alloca float, align 4
  %image.addr = alloca float*, align 8
  %nc.addr = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %edge.addr = alloca float**, align 8
  %err.addr = alloca i8*, align 8
  %Ix = alloca float*, align 8
  %Iy = alloca float*, align 8
  %gr = alloca float*, align 8
  %gmask = alloca float*, align 8
  %dgmask = alloca float*, align 8
  %tgauss = alloca i32, align 4
  %tdgauss = alloca i32, align 4
  %i = alloca i32, align 4
  store float %sigma, float* %sigma.addr, align 4
  store float* %image, float** %image.addr, align 8
  store i32 %nc, i32* %nc.addr, align 4
  store i32 %nr, i32* %nr.addr, align 4
  store float** %edge, float*** %edge.addr, align 8
  store i8* %err, i8** %err.addr, align 8
  %0 = load float, float* %sigma.addr, align 4
  %conv = fpext float %0 to double
  %1 = load i8*, i8** %err.addr, align 8
  %call = call i32 @GaussianMask(double %conv, i32* %tgauss, float** %gmask, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %sigma.addr, align 4
  %conv1 = fpext float %2 to double
  %3 = load i8*, i8** %err.addr, align 8
  %call2 = call i32 @DGaussianMask(double %conv1, i32* %tdgauss, float** %dgmask, i8* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load float*, float** %image.addr, align 8
  %5 = load float*, float** %gmask, align 8
  %6 = load float*, float** %dgmask, align 8
  %7 = load i32, i32* %tgauss, align 4
  %8 = load i32, i32* %tdgauss, align 4
  %9 = load i32, i32* %nc.addr, align 4
  %10 = load i32, i32* %nr.addr, align 4
  %11 = load i8*, i8** %err.addr, align 8
  %call6 = call i32 @dfilter(float* %4, float* %5, float* %6, i32 %7, i32 %8, i32 %9, i32 %10, float** %Ix, i8* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %12 = load float*, float** %image.addr, align 8
  %13 = load float*, float** %dgmask, align 8
  %14 = load float*, float** %gmask, align 8
  %15 = load i32, i32* %tdgauss, align 4
  %16 = load i32, i32* %tgauss, align 4
  %17 = load i32, i32* %nc.addr, align 4
  %18 = load i32, i32* %nr.addr, align 4
  %19 = load i8*, i8** %err.addr, align 8
  %call10 = call i32 @dfilter(float* %12, float* %13, float* %14, i32 %15, i32 %16, i32 %17, i32 %18, float** %Iy, i8* %19)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %20 = load i32, i32* %nr.addr, align 4
  %21 = load i32, i32* %nc.addr, align 4
  %mul = mul nsw i32 %20, %21
  %conv14 = sext i32 %mul to i64
  %call15 = call noalias i8* @calloc(i64 %conv14, i64 4) #2
  %22 = bitcast i8* %call15 to float*
  store float* %22, float** %gr, align 8
  %23 = load float*, float** %gr, align 8
  %tobool16 = icmp ne float* %23, null
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  %24 = load i8*, i8** %err.addr, align 8
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #2
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nr.addr, align 4
  %27 = load i32, i32* %nc.addr, align 4
  %mul20 = mul nsw i32 %26, %27
  %cmp = icmp slt i32 %25, %mul20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load float*, float** %Iy, align 8
  %arrayidx = getelementptr inbounds float, float* %29, i64 %idxprom
  %30 = load float, float* %arrayidx, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load float*, float** %Iy, align 8
  %arrayidx23 = getelementptr inbounds float, float* %32, i64 %idxprom22
  %33 = load float, float* %arrayidx23, align 4
  %mul24 = fmul float %30, %33
  %34 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %34 to i64
  %35 = load float*, float** %Ix, align 8
  %arrayidx26 = getelementptr inbounds float, float* %35, i64 %idxprom25
  %36 = load float, float* %arrayidx26, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %37 to i64
  %38 = load float*, float** %Ix, align 8
  %arrayidx28 = getelementptr inbounds float, float* %38, i64 %idxprom27
  %39 = load float, float* %arrayidx28, align 4
  %mul29 = fmul float %36, %39
  %add = fadd float %mul24, %mul29
  %conv30 = fpext float %add to double
  %call31 = call double @sqrt(double %conv30) #2
  %conv32 = fptrunc double %call31 to float
  %40 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load float*, float** %gr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %41, i64 %idxprom33
  store float %conv32, float* %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load float*, float** %gr, align 8
  %44 = load float*, float** %Ix, align 8
  %45 = load float*, float** %Iy, align 8
  %46 = load i32, i32* %nc.addr, align 4
  %47 = load i32, i32* %nr.addr, align 4
  %call35 = call float* @dnon_max(float* %43, float* %44, float* %45, i32 %46, i32 %47)
  %48 = load float**, float*** %edge.addr, align 8
  store float* %call35, float** %48, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.12, %if.then.8, %if.then.4, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define i32 @GaussianMask(double, i32* %tg, float** %mask, i8* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %sigma.addr = alloca float, align 4
  %tg.addr = alloca i32*, align 8
  %mask.addr = alloca float**, align 8
  %err.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  %coeff_gauss = alloca float*, align 8
  %p = alloca float*, align 8
  %sigma = fptrunc double %0 to float
  store float %sigma, float* %sigma.addr, align 4
  store i32* %tg, i32** %tg.addr, align 8
  store float** %mask, float*** %mask.addr, align 8
  store i8* %err, i8** %err.addr, align 8
  %1 = load float, float* %sigma.addr, align 4
  %mul = fmul float 6.000000e+00, %1
  %conv = fptosi float %mul to i16
  %conv1 = sext i16 %conv to i32
  %2 = load i32*, i32** %tg.addr, align 8
  store i32 %conv1, i32* %2, align 4
  %3 = load i32*, i32** %tg.addr, align 8
  %4 = load i32, i32* %3, align 4
  %rem = srem i32 %4, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %tg.addr, align 8
  %6 = load i32, i32* %5, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32*, i32** %tg.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv3 = sext i32 %8 to i64
  %call = call noalias i8* @calloc(i64 %conv3, i64 4) #2
  %9 = bitcast i8* %call to float*
  store float* %9, float** %p, align 8
  store float* %9, float** %coeff_gauss, align 8
  %10 = load float*, float** %coeff_gauss, align 8
  %tobool = icmp ne float* %10, null
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %11 = load i8*, i8** %err.addr, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #2
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %12 = load i32*, i32** %tg.addr, align 8
  %13 = load i32, i32* %12, align 4
  %div = sdiv i32 %13, 2
  %sub = sub nsw i32 0, %div
  %conv7 = trunc i32 %sub to i16
  store i16 %conv7, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %14 = load i16, i16* %i, align 2
  %conv8 = sext i16 %14 to i32
  %15 = load i32*, i32** %tg.addr, align 8
  %16 = load i32, i32* %15, align 4
  %div9 = sdiv i32 %16, 2
  %cmp10 = icmp sle i32 %conv8, %div9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i16, i16* %i, align 2
  %conv12 = sext i16 %17 to i32
  %18 = load i32*, i32** %tg.addr, align 8
  %19 = load i32, i32* %18, align 4
  %div13 = sdiv i32 %19, 2
  %add14 = add nsw i32 %conv12, %div13
  %cmp15 = icmp eq i32 %add14, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body
  %20 = load i16, i16* %i, align 2
  %conv18 = sext i16 %20 to i32
  %conv19 = sitofp i32 %conv18 to double
  %add20 = fadd double %conv19, 5.000000e-01
  %call21 = call double @sqrt(double 2.000000e+00) #2
  %21 = load float, float* %sigma.addr, align 4
  %conv22 = fpext float %21 to double
  %mul23 = fmul double %call21, %conv22
  %div24 = fdiv double %add20, %mul23
  %call25 = call double @erf(double %div24) #2
  %add26 = fadd double %call25, 1.000000e+00
  %div27 = fdiv double %add26, 2.000000e+00
  %conv28 = fptrunc double %div27 to float
  %22 = load float*, float** %coeff_gauss, align 8
  %incdec.ptr = getelementptr inbounds float, float* %22, i32 1
  store float* %incdec.ptr, float** %coeff_gauss, align 8
  store float %conv28, float* %22, align 4
  br label %if.end.71

if.else:                                          ; preds = %for.body
  %23 = load i16, i16* %i, align 2
  %conv29 = sext i16 %23 to i32
  %24 = load i32*, i32** %tg.addr, align 8
  %25 = load i32, i32* %24, align 4
  %div30 = sdiv i32 %25, 2
  %add31 = add nsw i32 %conv29, %div30
  %26 = load i32*, i32** %tg.addr, align 8
  %27 = load i32, i32* %26, align 4
  %sub32 = sub nsw i32 %27, 1
  %cmp33 = icmp eq i32 %add31, %sub32
  br i1 %cmp33, label %if.then.35, label %if.else.49

if.then.35:                                       ; preds = %if.else
  %28 = load i16, i16* %i, align 2
  %conv36 = sext i16 %28 to i32
  %conv37 = sitofp i32 %conv36 to double
  %sub38 = fsub double %conv37, 5.000000e-01
  %call39 = call double @sqrt(double 2.000000e+00) #2
  %29 = load float, float* %sigma.addr, align 4
  %conv40 = fpext float %29 to double
  %mul41 = fmul double %call39, %conv40
  %div42 = fdiv double %sub38, %mul41
  %call43 = call double @erf(double %div42) #2
  %sub44 = fsub double -0.000000e+00, %call43
  %add45 = fadd double %sub44, 1.000000e+00
  %div46 = fdiv double %add45, 2.000000e+00
  %conv47 = fptrunc double %div46 to float
  %30 = load float*, float** %coeff_gauss, align 8
  %incdec.ptr48 = getelementptr inbounds float, float* %30, i32 1
  store float* %incdec.ptr48, float** %coeff_gauss, align 8
  store float %conv47, float* %30, align 4
  br label %if.end.70

if.else.49:                                       ; preds = %if.else
  %31 = load i16, i16* %i, align 2
  %conv50 = sext i16 %31 to i32
  %conv51 = sitofp i32 %conv50 to double
  %add52 = fadd double %conv51, 5.000000e-01
  %call53 = call double @sqrt(double 2.000000e+00) #2
  %32 = load float, float* %sigma.addr, align 4
  %conv54 = fpext float %32 to double
  %mul55 = fmul double %call53, %conv54
  %div56 = fdiv double %add52, %mul55
  %call57 = call double @erf(double %div56) #2
  %33 = load i16, i16* %i, align 2
  %conv58 = sext i16 %33 to i32
  %conv59 = sitofp i32 %conv58 to double
  %sub60 = fsub double %conv59, 5.000000e-01
  %call61 = call double @sqrt(double 2.000000e+00) #2
  %34 = load float, float* %sigma.addr, align 4
  %conv62 = fpext float %34 to double
  %mul63 = fmul double %call61, %conv62
  %div64 = fdiv double %sub60, %mul63
  %call65 = call double @erf(double %div64) #2
  %sub66 = fsub double %call57, %call65
  %mul67 = fmul double 5.000000e-01, %sub66
  %conv68 = fptrunc double %mul67 to float
  %35 = load float*, float** %coeff_gauss, align 8
  %incdec.ptr69 = getelementptr inbounds float, float* %35, i32 1
  store float* %incdec.ptr69, float** %coeff_gauss, align 8
  store float %conv68, float* %35, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.49, %if.then.35
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %36 = load i16, i16* %i, align 2
  %inc = add i16 %36, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load float*, float** %p, align 8
  %38 = load float**, float*** %mask.addr, align 8
  store float* %37, float** %38, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind
declare double @erf(double) #1

; Function Attrs: nounwind uwtable
define i32 @DGaussianMask(double, i32* %tg, float** %mask, i8* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %sigma.addr = alloca float, align 4
  %tg.addr = alloca i32*, align 8
  %mask.addr = alloca float**, align 8
  %err.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  %coeff_dgauss = alloca float*, align 8
  %p = alloca float*, align 8
  %sigma = fptrunc double %0 to float
  store float %sigma, float* %sigma.addr, align 4
  store i32* %tg, i32** %tg.addr, align 8
  store float** %mask, float*** %mask.addr, align 8
  store i8* %err, i8** %err.addr, align 8
  %call = call double @sqrt(double 2.000000e+00) #2
  %mul = fmul double 8.000000e+00, %call
  %1 = load float, float* %sigma.addr, align 4
  %conv = fpext float %1 to double
  %mul1 = fmul double %mul, %conv
  %conv2 = fptosi double %mul1 to i16
  %conv3 = sext i16 %conv2 to i32
  %2 = load i32*, i32** %tg.addr, align 8
  store i32 %conv3, i32* %2, align 4
  %3 = load i32*, i32** %tg.addr, align 8
  %4 = load i32, i32* %3, align 4
  %rem = srem i32 %4, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %tg.addr, align 8
  %6 = load i32, i32* %5, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32*, i32** %tg.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv5 = sext i32 %8 to i64
  %call6 = call noalias i8* @calloc(i64 %conv5, i64 4) #2
  %9 = bitcast i8* %call6 to float*
  store float* %9, float** %p, align 8
  store float* %9, float** %coeff_dgauss, align 8
  %10 = load float*, float** %coeff_dgauss, align 8
  %tobool = icmp ne float* %10, null
  br i1 %tobool, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %11 = load i8*, i8** %err.addr, align 8
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #2
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %12 = load i32*, i32** %tg.addr, align 8
  %13 = load i32, i32* %12, align 4
  %div = sdiv i32 %13, 2
  %sub = sub nsw i32 0, %div
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %14 = load i16, i16* %i, align 2
  %conv11 = sext i16 %14 to i32
  %15 = load i32*, i32** %tg.addr, align 8
  %16 = load i32, i32* %15, align 4
  %div12 = sdiv i32 %16, 2
  %cmp13 = icmp sle i32 %conv11, %div12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i16, i16* %i, align 2
  %conv15 = sext i16 %17 to i32
  %18 = load i32*, i32** %tg.addr, align 8
  %19 = load i32, i32* %18, align 4
  %div16 = sdiv i32 %19, 2
  %add17 = add nsw i32 %conv15, %div16
  %cmp18 = icmp eq i32 %add17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body
  %20 = load float, float* %sigma.addr, align 4
  %conv21 = fpext float %20 to double
  %call22 = call double @sqrt(double 0x401921FB54442D18) #2
  %mul23 = fmul double %conv21, %call22
  %div24 = fdiv double 1.000000e+00, %mul23
  %conv25 = fptrunc double %div24 to float
  %conv26 = fpext float %conv25 to double
  %21 = load i16, i16* %i, align 2
  %conv27 = sext i16 %21 to i32
  %conv28 = sitofp i32 %conv27 to double
  %add29 = fadd double %conv28, 5.000000e-01
  %22 = load i16, i16* %i, align 2
  %conv30 = sext i16 %22 to i32
  %conv31 = sitofp i32 %conv30 to double
  %add32 = fadd double %conv31, 5.000000e-01
  %mul33 = fmul double %add29, %add32
  %sub34 = fsub double -0.000000e+00, %mul33
  %23 = load float, float* %sigma.addr, align 4
  %conv35 = fpext float %23 to double
  %mul36 = fmul double 2.000000e+00, %conv35
  %24 = load float, float* %sigma.addr, align 4
  %conv37 = fpext float %24 to double
  %mul38 = fmul double %mul36, %conv37
  %div39 = fdiv double %sub34, %mul38
  %call40 = call double @exp(double %div39) #2
  %mul41 = fmul double %conv26, %call40
  %conv42 = fptrunc double %mul41 to float
  %25 = load float*, float** %coeff_dgauss, align 8
  %incdec.ptr = getelementptr inbounds float, float* %25, i32 1
  store float* %incdec.ptr, float** %coeff_dgauss, align 8
  store float %conv42, float* %25, align 4
  br label %if.end.111

if.else:                                          ; preds = %for.body
  %26 = load i16, i16* %i, align 2
  %conv43 = sext i16 %26 to i32
  %27 = load i32*, i32** %tg.addr, align 8
  %28 = load i32, i32* %27, align 4
  %div44 = sdiv i32 %28, 2
  %add45 = add nsw i32 %conv43, %div44
  %29 = load i32*, i32** %tg.addr, align 8
  %30 = load i32, i32* %29, align 4
  %sub46 = sub nsw i32 %30, 1
  %cmp47 = icmp eq i32 %add45, %sub46
  br i1 %cmp47, label %if.then.49, label %if.else.74

if.then.49:                                       ; preds = %if.else
  %31 = load float, float* %sigma.addr, align 4
  %conv50 = fpext float %31 to double
  %call51 = call double @sqrt(double 0x401921FB54442D18) #2
  %mul52 = fmul double %conv50, %call51
  %div53 = fdiv double 1.000000e+00, %mul52
  %sub54 = fsub double -0.000000e+00, %div53
  %conv55 = fptrunc double %sub54 to float
  %conv56 = fpext float %conv55 to double
  %32 = load i16, i16* %i, align 2
  %conv57 = sext i16 %32 to i32
  %conv58 = sitofp i32 %conv57 to double
  %sub59 = fsub double %conv58, 5.000000e-01
  %33 = load i16, i16* %i, align 2
  %conv60 = sext i16 %33 to i32
  %conv61 = sitofp i32 %conv60 to double
  %sub62 = fsub double %conv61, 5.000000e-01
  %mul63 = fmul double %sub59, %sub62
  %sub64 = fsub double -0.000000e+00, %mul63
  %34 = load float, float* %sigma.addr, align 4
  %conv65 = fpext float %34 to double
  %mul66 = fmul double 2.000000e+00, %conv65
  %35 = load float, float* %sigma.addr, align 4
  %conv67 = fpext float %35 to double
  %mul68 = fmul double %mul66, %conv67
  %div69 = fdiv double %sub64, %mul68
  %call70 = call double @exp(double %div69) #2
  %mul71 = fmul double %conv56, %call70
  %conv72 = fptrunc double %mul71 to float
  %36 = load float*, float** %coeff_dgauss, align 8
  %incdec.ptr73 = getelementptr inbounds float, float* %36, i32 1
  store float* %incdec.ptr73, float** %coeff_dgauss, align 8
  store float %conv72, float* %36, align 4
  br label %if.end.110

if.else.74:                                       ; preds = %if.else
  %37 = load i16, i16* %i, align 2
  %conv75 = sext i16 %37 to i32
  %conv76 = sitofp i32 %conv75 to double
  %add77 = fadd double %conv76, 5.000000e-01
  %38 = load i16, i16* %i, align 2
  %conv78 = sext i16 %38 to i32
  %conv79 = sitofp i32 %conv78 to double
  %add80 = fadd double %conv79, 5.000000e-01
  %mul81 = fmul double %add77, %add80
  %sub82 = fsub double -0.000000e+00, %mul81
  %39 = load float, float* %sigma.addr, align 4
  %conv83 = fpext float %39 to double
  %mul84 = fmul double 2.000000e+00, %conv83
  %40 = load float, float* %sigma.addr, align 4
  %conv85 = fpext float %40 to double
  %mul86 = fmul double %mul84, %conv85
  %div87 = fdiv double %sub82, %mul86
  %call88 = call double @exp(double %div87) #2
  %41 = load i16, i16* %i, align 2
  %conv89 = sext i16 %41 to i32
  %conv90 = sitofp i32 %conv89 to double
  %sub91 = fsub double %conv90, 5.000000e-01
  %42 = load i16, i16* %i, align 2
  %conv92 = sext i16 %42 to i32
  %conv93 = sitofp i32 %conv92 to double
  %sub94 = fsub double %conv93, 5.000000e-01
  %mul95 = fmul double %sub91, %sub94
  %sub96 = fsub double -0.000000e+00, %mul95
  %43 = load float, float* %sigma.addr, align 4
  %conv97 = fpext float %43 to double
  %mul98 = fmul double 2.000000e+00, %conv97
  %44 = load float, float* %sigma.addr, align 4
  %conv99 = fpext float %44 to double
  %mul100 = fmul double %mul98, %conv99
  %div101 = fdiv double %sub96, %mul100
  %call102 = call double @exp(double %div101) #2
  %sub103 = fsub double %call88, %call102
  %45 = load float, float* %sigma.addr, align 4
  %conv104 = fpext float %45 to double
  %call105 = call double @sqrt(double 0x401921FB54442D18) #2
  %mul106 = fmul double %conv104, %call105
  %div107 = fdiv double %sub103, %mul106
  %conv108 = fptrunc double %div107 to float
  %46 = load float*, float** %coeff_dgauss, align 8
  %incdec.ptr109 = getelementptr inbounds float, float* %46, i32 1
  store float* %incdec.ptr109, float** %coeff_dgauss, align 8
  store float %conv108, float* %46, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.74, %if.then.49
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.111
  %47 = load i16, i16* %i, align 2
  %inc = add i16 %47, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load float*, float** %p, align 8
  store float* %48, float** %coeff_dgauss, align 8
  %49 = load float*, float** %p, align 8
  %50 = load float**, float*** %mask.addr, align 8
  store float* %49, float** %50, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define i32 @dfilter(float* %image, float* %g, float* %f, i32 %tm_g, i32 %tm_f, i32 %nc, i32 %nr, float** %filt, i8* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca float*, align 8
  %g.addr = alloca float*, align 8
  %f.addr = alloca float*, align 8
  %tm_g.addr = alloca i32, align 4
  %tm_f.addr = alloca i32, align 4
  %nc.addr = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %filt.addr = alloca float**, align 8
  %err.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %l = alloca i16, align 2
  %high = alloca i16, align 2
  %larg = alloca i16, align 2
  %nv = alloca float, align 4
  %d = alloca float*, align 8
  %d1 = alloca float*, align 8
  %d2 = alloca float*, align 8
  %temp = alloca float*, align 8
  store float* %image, float** %image.addr, align 8
  store float* %g, float** %g.addr, align 8
  store float* %f, float** %f.addr, align 8
  store i32 %tm_g, i32* %tm_g.addr, align 4
  store i32 %tm_f, i32* %tm_f.addr, align 4
  store i32 %nc, i32* %nc.addr, align 4
  store i32 %nr, i32* %nr.addr, align 4
  store float** %filt, float*** %filt.addr, align 8
  store i8* %err, i8** %err.addr, align 8
  %0 = load i32, i32* %nr.addr, align 4
  %conv = trunc i32 %0 to i16
  store i16 %conv, i16* %high, align 2
  %1 = load i32, i32* %nc.addr, align 4
  %conv1 = trunc i32 %1 to i16
  store i16 %conv1, i16* %larg, align 2
  %2 = load i32, i32* %nc.addr, align 4
  %3 = load i32, i32* %nr.addr, align 4
  %mul = mul nsw i32 %2, %3
  %conv2 = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv2, i64 4) #2
  %4 = bitcast i8* %call to float*
  store float* %4, float** %d1, align 8
  store float* %4, float** %d, align 8
  %5 = load float*, float** %d, align 8
  %tobool = icmp ne float* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %err.addr, align 8
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %if.end
  %7 = load i16, i16* %i, align 2
  %conv4 = sext i16 %7 to i32
  %8 = load i16, i16* %high, align 2
  %conv5 = sext i16 %8 to i32
  %cmp = icmp slt i32 %conv4, %conv5
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.61, %for.body
  %9 = load i16, i16* %j, align 2
  %conv8 = sext i16 %9 to i32
  %10 = load i16, i16* %larg, align 2
  %conv9 = sext i16 %10 to i32
  %cmp10 = icmp slt i32 %conv8, %conv9
  br i1 %cmp10, label %for.body.12, label %for.end.63

for.body.12:                                      ; preds = %for.cond.7
  %11 = load i32, i32* %tm_g.addr, align 4
  %div = sdiv i32 %11, 2
  %sub = sub nsw i32 0, %div
  %conv13 = trunc i32 %sub to i16
  store i16 %conv13, i16* %l, align 2
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.12
  %12 = load i16, i16* %l, align 2
  %conv15 = sext i16 %12 to i32
  %13 = load i32, i32* %tm_g.addr, align 4
  %div16 = sdiv i32 %13, 2
  %cmp17 = icmp sle i32 %conv15, %div16
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.14
  %14 = load i16, i16* %j, align 2
  %conv20 = sext i16 %14 to i32
  %15 = load i16, i16* %l, align 2
  %conv21 = sext i16 %15 to i32
  %add = add nsw i32 %conv20, %conv21
  %cmp22 = icmp slt i32 %add, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body.19
  %16 = load i16, i16* %i, align 2
  %conv25 = sext i16 %16 to i32
  %17 = load i16, i16* %larg, align 2
  %conv26 = sext i16 %17 to i32
  %mul27 = mul nsw i32 %conv25, %conv26
  %idxprom = sext i32 %mul27 to i64
  %18 = load float*, float** %image.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %18, i64 %idxprom
  %19 = load float, float* %arrayidx, align 4
  store float %19, float* %nv, align 4
  br label %if.end.53

if.else:                                          ; preds = %for.body.19
  %20 = load i16, i16* %j, align 2
  %conv28 = sext i16 %20 to i32
  %21 = load i16, i16* %l, align 2
  %conv29 = sext i16 %21 to i32
  %add30 = add nsw i32 %conv28, %conv29
  %22 = load i16, i16* %larg, align 2
  %conv31 = sext i16 %22 to i32
  %cmp32 = icmp sge i32 %add30, %conv31
  br i1 %cmp32, label %if.then.34, label %if.else.42

if.then.34:                                       ; preds = %if.else
  %23 = load i16, i16* %i, align 2
  %conv35 = sext i16 %23 to i32
  %add36 = add nsw i32 %conv35, 1
  %24 = load i16, i16* %larg, align 2
  %conv37 = sext i16 %24 to i32
  %mul38 = mul nsw i32 %add36, %conv37
  %sub39 = sub nsw i32 %mul38, 1
  %idxprom40 = sext i32 %sub39 to i64
  %25 = load float*, float** %image.addr, align 8
  %arrayidx41 = getelementptr inbounds float, float* %25, i64 %idxprom40
  %26 = load float, float* %arrayidx41, align 4
  store float %26, float* %nv, align 4
  br label %if.end.52

if.else.42:                                       ; preds = %if.else
  %27 = load i16, i16* %i, align 2
  %conv43 = sext i16 %27 to i32
  %28 = load i16, i16* %larg, align 2
  %conv44 = sext i16 %28 to i32
  %mul45 = mul nsw i32 %conv43, %conv44
  %29 = load i16, i16* %j, align 2
  %conv46 = sext i16 %29 to i32
  %add47 = add nsw i32 %mul45, %conv46
  %30 = load i16, i16* %l, align 2
  %conv48 = sext i16 %30 to i32
  %add49 = add nsw i32 %add47, %conv48
  %idxprom50 = sext i32 %add49 to i64
  %31 = load float*, float** %image.addr, align 8
  %arrayidx51 = getelementptr inbounds float, float* %31, i64 %idxprom50
  %32 = load float, float* %arrayidx51, align 4
  store float %32, float* %nv, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.42, %if.then.34
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.24
  %33 = load float, float* %nv, align 4
  %34 = load i32, i32* %tm_g.addr, align 4
  %div54 = sdiv i32 %34, 2
  %35 = load i16, i16* %l, align 2
  %conv55 = sext i16 %35 to i32
  %sub56 = sub nsw i32 %div54, %conv55
  %idxprom57 = sext i32 %sub56 to i64
  %36 = load float*, float** %g.addr, align 8
  %arrayidx58 = getelementptr inbounds float, float* %36, i64 %idxprom57
  %37 = load float, float* %arrayidx58, align 4
  %mul59 = fmul float %33, %37
  %38 = load float*, float** %d, align 8
  %39 = load float, float* %38, align 4
  %add60 = fadd float %mul59, %39
  %40 = load float*, float** %d, align 8
  store float %add60, float* %40, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %41 = load i16, i16* %l, align 2
  %inc = add i16 %41, 1
  store i16 %inc, i16* %l, align 2
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %42 = load float*, float** %d, align 8
  %incdec.ptr = getelementptr inbounds float, float* %42, i32 1
  store float* %incdec.ptr, float** %d, align 8
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end
  %43 = load i16, i16* %j, align 2
  %inc62 = add i16 %43, 1
  store i16 %inc62, i16* %j, align 2
  br label %for.cond.7

for.end.63:                                       ; preds = %for.cond.7
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end.63
  %44 = load i16, i16* %i, align 2
  %inc65 = add i16 %44, 1
  store i16 %inc65, i16* %i, align 2
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  %45 = load float*, float** %d1, align 8
  store float* %45, float** %d, align 8
  %46 = load i32, i32* %nc.addr, align 4
  %47 = load i32, i32* %nr.addr, align 4
  %mul67 = mul nsw i32 %46, %47
  %conv68 = sext i32 %mul67 to i64
  %call69 = call noalias i8* @calloc(i64 %conv68, i64 4) #2
  %48 = bitcast i8* %call69 to float*
  store float* %48, float** %d2, align 8
  %49 = load float*, float** %d2, align 8
  %tobool70 = icmp ne float* %49, null
  br i1 %tobool70, label %if.end.73, label %if.then.71

if.then.71:                                       ; preds = %for.end.66
  %50 = load i8*, i8** %err.addr, align 8
  %call72 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #2
  store i32 1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %for.end.66
  store i16 0, i16* %j, align 2
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.149, %if.end.73
  %51 = load i16, i16* %j, align 2
  %conv75 = sext i16 %51 to i32
  %52 = load i16, i16* %larg, align 2
  %conv76 = sext i16 %52 to i32
  %cmp77 = icmp slt i32 %conv75, %conv76
  br i1 %cmp77, label %for.body.79, label %for.end.151

for.body.79:                                      ; preds = %for.cond.74
  store i16 0, i16* %i, align 2
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.146, %for.body.79
  %53 = load i16, i16* %i, align 2
  %conv81 = sext i16 %53 to i32
  %54 = load i16, i16* %high, align 2
  %conv82 = sext i16 %54 to i32
  %cmp83 = icmp slt i32 %conv81, %conv82
  br i1 %cmp83, label %for.body.85, label %for.end.148

for.body.85:                                      ; preds = %for.cond.80
  %55 = load i32, i32* %tm_f.addr, align 4
  %div86 = sdiv i32 %55, 2
  %sub87 = sub nsw i32 0, %div86
  %conv88 = trunc i32 %sub87 to i16
  store i16 %conv88, i16* %l, align 2
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.143, %for.body.85
  %56 = load i16, i16* %l, align 2
  %conv90 = sext i16 %56 to i32
  %57 = load i32, i32* %tm_f.addr, align 4
  %div91 = sdiv i32 %57, 2
  %cmp92 = icmp sle i32 %conv90, %div91
  br i1 %cmp92, label %for.body.94, label %for.end.145

for.body.94:                                      ; preds = %for.cond.89
  %58 = load i16, i16* %i, align 2
  %conv95 = sext i16 %58 to i32
  %59 = load i16, i16* %l, align 2
  %conv96 = sext i16 %59 to i32
  %add97 = add nsw i32 %conv95, %conv96
  %cmp98 = icmp slt i32 %add97, 0
  br i1 %cmp98, label %if.then.100, label %if.else.103

if.then.100:                                      ; preds = %for.body.94
  %60 = load i16, i16* %j, align 2
  %idxprom101 = sext i16 %60 to i64
  %61 = load float*, float** %d, align 8
  %arrayidx102 = getelementptr inbounds float, float* %61, i64 %idxprom101
  %62 = load float, float* %arrayidx102, align 4
  store float %62, float* %nv, align 4
  br label %if.end.129

if.else.103:                                      ; preds = %for.body.94
  %63 = load i16, i16* %i, align 2
  %conv104 = sext i16 %63 to i32
  %64 = load i16, i16* %l, align 2
  %conv105 = sext i16 %64 to i32
  %add106 = add nsw i32 %conv104, %conv105
  %65 = load i16, i16* %high, align 2
  %conv107 = sext i16 %65 to i32
  %cmp108 = icmp sge i32 %add106, %conv107
  br i1 %cmp108, label %if.then.110, label %if.else.118

if.then.110:                                      ; preds = %if.else.103
  %66 = load i16, i16* %high, align 2
  %conv111 = sext i16 %66 to i32
  %sub112 = sub nsw i32 %conv111, 1
  %67 = load i32, i32* %nc.addr, align 4
  %mul113 = mul nsw i32 %sub112, %67
  %68 = load i16, i16* %j, align 2
  %conv114 = sext i16 %68 to i32
  %add115 = add nsw i32 %mul113, %conv114
  %idxprom116 = sext i32 %add115 to i64
  %69 = load float*, float** %d, align 8
  %arrayidx117 = getelementptr inbounds float, float* %69, i64 %idxprom116
  %70 = load float, float* %arrayidx117, align 4
  store float %70, float* %nv, align 4
  br label %if.end.128

if.else.118:                                      ; preds = %if.else.103
  %71 = load i16, i16* %i, align 2
  %conv119 = sext i16 %71 to i32
  %72 = load i16, i16* %l, align 2
  %conv120 = sext i16 %72 to i32
  %add121 = add nsw i32 %conv119, %conv120
  %73 = load i16, i16* %larg, align 2
  %conv122 = sext i16 %73 to i32
  %mul123 = mul nsw i32 %add121, %conv122
  %74 = load i16, i16* %j, align 2
  %conv124 = sext i16 %74 to i32
  %add125 = add nsw i32 %mul123, %conv124
  %idxprom126 = sext i32 %add125 to i64
  %75 = load float*, float** %d, align 8
  %arrayidx127 = getelementptr inbounds float, float* %75, i64 %idxprom126
  %76 = load float, float* %arrayidx127, align 4
  store float %76, float* %nv, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.118, %if.then.110
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.100
  %77 = load float*, float** %d2, align 8
  %78 = load i16, i16* %i, align 2
  %conv130 = sext i16 %78 to i32
  %79 = load i16, i16* %larg, align 2
  %conv131 = sext i16 %79 to i32
  %mul132 = mul nsw i32 %conv130, %conv131
  %idx.ext = sext i32 %mul132 to i64
  %add.ptr = getelementptr inbounds float, float* %77, i64 %idx.ext
  %80 = load i16, i16* %j, align 2
  %conv133 = sext i16 %80 to i32
  %idx.ext134 = sext i32 %conv133 to i64
  %add.ptr135 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext134
  store float* %add.ptr135, float** %temp, align 8
  %81 = load float, float* %nv, align 4
  %82 = load i32, i32* %tm_f.addr, align 4
  %div136 = sdiv i32 %82, 2
  %83 = load i16, i16* %l, align 2
  %conv137 = sext i16 %83 to i32
  %sub138 = sub nsw i32 %div136, %conv137
  %idxprom139 = sext i32 %sub138 to i64
  %84 = load float*, float** %f.addr, align 8
  %arrayidx140 = getelementptr inbounds float, float* %84, i64 %idxprom139
  %85 = load float, float* %arrayidx140, align 4
  %mul141 = fmul float %81, %85
  %86 = load float*, float** %temp, align 8
  %87 = load float, float* %86, align 4
  %add142 = fadd float %mul141, %87
  %88 = load float*, float** %temp, align 8
  store float %add142, float* %88, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.129
  %89 = load i16, i16* %l, align 2
  %inc144 = add i16 %89, 1
  store i16 %inc144, i16* %l, align 2
  br label %for.cond.89

for.end.145:                                      ; preds = %for.cond.89
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %90 = load i16, i16* %i, align 2
  %inc147 = add i16 %90, 1
  store i16 %inc147, i16* %i, align 2
  br label %for.cond.80

for.end.148:                                      ; preds = %for.cond.80
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end.148
  %91 = load i16, i16* %j, align 2
  %inc150 = add i16 %91, 1
  store i16 %inc150, i16* %j, align 2
  br label %for.cond.74

for.end.151:                                      ; preds = %for.cond.74
  %92 = load float*, float** %d2, align 8
  %93 = load float**, float*** %filt.addr, align 8
  store float* %92, float** %93, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.151, %if.then.71, %if.then
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define float* @dnon_max(float* %gr, float* %Ix, float* %Iy, i32 %nc, i32 %nr) #0 {
entry:
  %gr.addr = alloca float*, align 8
  %Ix.addr = alloca float*, align 8
  %Iy.addr = alloca float*, align 8
  %nc.addr = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %maxima = alloca float*, align 8
  %R = alloca float, align 4
  %ampl1 = alloca float, align 4
  %ampl2 = alloca float, align 4
  store float* %gr, float** %gr.addr, align 8
  store float* %Ix, float** %Ix.addr, align 8
  store float* %Iy, float** %Iy.addr, align 8
  store i32 %nc, i32* %nc.addr, align 4
  store i32 %nr, i32* %nr.addr, align 4
  %0 = load i32, i32* %nc.addr, align 4
  %1 = load i32, i32* %nr.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #2
  %2 = bitcast i8* %call to float*
  store float* %2, float** %maxima, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.163, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nr.addr, align 4
  %sub = sub nsw i32 %4, 2
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %for.body, label %for.end.165

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %nc.addr, align 4
  %sub3 = sub nsw i32 %6, 2
  %cmp4 = icmp slt i32 %5, %sub3
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %nc.addr, align 4
  %mul7 = mul nsw i32 %7, %8
  %9 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul7, %9
  %idxprom = sext i32 %add to i64
  %10 = load float*, float** %Ix.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %10, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4
  %conv8 = fpext float %11 to double
  %cmp9 = fcmp ole double %conv8, 1.000000e-08
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.6
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %nc.addr, align 4
  %mul11 = mul nsw i32 %12, %13
  %14 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %mul11, %14
  %idxprom13 = sext i32 %add12 to i64
  %15 = load float*, float** %Ix.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %15, i64 %idxprom13
  %16 = load float, float* %arrayidx14, align 4
  %conv15 = fpext float %16 to double
  %cmp16 = fcmp oge double %conv15, -1.000000e-08
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %nc.addr, align 4
  %mul18 = mul nsw i32 %17, %18
  %19 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %mul18, %19
  %sub20 = sub nsw i32 %add19, 1
  %idxprom21 = sext i32 %sub20 to i64
  %20 = load float*, float** %gr.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %20, i64 %idxprom21
  %21 = load float, float* %arrayidx22, align 4
  store float %21, float* %ampl1, align 4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %nc.addr, align 4
  %mul23 = mul nsw i32 %22, %23
  %24 = load i32, i32* %j, align 4
  %add24 = add nsw i32 %mul23, %24
  %add25 = add nsw i32 %add24, 1
  %idxprom26 = sext i32 %add25 to i64
  %25 = load float*, float** %gr.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %25, i64 %idxprom26
  %26 = load float, float* %arrayidx27, align 4
  store float %26, float* %ampl2, align 4
  br label %if.end.137

if.else:                                          ; preds = %land.lhs.true, %for.body.6
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %nc.addr, align 4
  %mul28 = mul nsw i32 %27, %28
  %29 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %mul28, %29
  %idxprom30 = sext i32 %add29 to i64
  %30 = load float*, float** %Iy.addr, align 8
  %arrayidx31 = getelementptr inbounds float, float* %30, i64 %idxprom30
  %31 = load float, float* %arrayidx31, align 4
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %nc.addr, align 4
  %mul32 = mul nsw i32 %32, %33
  %34 = load i32, i32* %j, align 4
  %add33 = add nsw i32 %mul32, %34
  %idxprom34 = sext i32 %add33 to i64
  %35 = load float*, float** %Ix.addr, align 8
  %arrayidx35 = getelementptr inbounds float, float* %35, i64 %idxprom34
  %36 = load float, float* %arrayidx35, align 4
  %div = fdiv float %31, %36
  store float %div, float* %R, align 4
  %37 = load float, float* %R, align 4
  %conv36 = fpext float %37 to double
  %cmp37 = fcmp oge double %conv36, 0.000000e+00
  br i1 %cmp37, label %land.lhs.true.39, label %if.else.82

land.lhs.true.39:                                 ; preds = %if.else
  %38 = load float, float* %R, align 4
  %conv40 = fpext float %38 to double
  %cmp41 = fcmp olt double %conv40, 4.000000e-01
  br i1 %cmp41, label %if.then.43, label %if.else.82

if.then.43:                                       ; preds = %land.lhs.true.39
  %39 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %39, 1
  %40 = load i32, i32* %nc.addr, align 4
  %mul45 = mul nsw i32 %add44, %40
  %41 = load i32, i32* %j, align 4
  %add46 = add nsw i32 %mul45, %41
  %add47 = add nsw i32 %add46, 1
  %idxprom48 = sext i32 %add47 to i64
  %42 = load float*, float** %gr.addr, align 8
  %arrayidx49 = getelementptr inbounds float, float* %42, i64 %idxprom48
  %43 = load float, float* %arrayidx49, align 4
  %44 = load float, float* %R, align 4
  %mul50 = fmul float %43, %44
  %conv51 = fpext float %mul50 to double
  %45 = load float, float* %R, align 4
  %conv52 = fpext float %45 to double
  %sub53 = fsub double 1.000000e+00, %conv52
  %46 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %46, 1
  %47 = load i32, i32* %nc.addr, align 4
  %mul55 = mul nsw i32 %add54, %47
  %48 = load i32, i32* %j, align 4
  %add56 = add nsw i32 %mul55, %48
  %idxprom57 = sext i32 %add56 to i64
  %49 = load float*, float** %gr.addr, align 8
  %arrayidx58 = getelementptr inbounds float, float* %49, i64 %idxprom57
  %50 = load float, float* %arrayidx58, align 4
  %conv59 = fpext float %50 to double
  %mul60 = fmul double %sub53, %conv59
  %add61 = fadd double %conv51, %mul60
  %conv62 = fptrunc double %add61 to float
  store float %conv62, float* %ampl1, align 4
  %51 = load i32, i32* %i, align 4
  %sub63 = sub nsw i32 %51, 1
  %52 = load i32, i32* %nc.addr, align 4
  %mul64 = mul nsw i32 %sub63, %52
  %53 = load i32, i32* %j, align 4
  %add65 = add nsw i32 %mul64, %53
  %sub66 = sub nsw i32 %add65, 1
  %idxprom67 = sext i32 %sub66 to i64
  %54 = load float*, float** %gr.addr, align 8
  %arrayidx68 = getelementptr inbounds float, float* %54, i64 %idxprom67
  %55 = load float, float* %arrayidx68, align 4
  %56 = load float, float* %R, align 4
  %mul69 = fmul float %55, %56
  %conv70 = fpext float %mul69 to double
  %57 = load float, float* %R, align 4
  %conv71 = fpext float %57 to double
  %sub72 = fsub double 1.000000e+00, %conv71
  %58 = load i32, i32* %i, align 4
  %sub73 = sub nsw i32 %58, 1
  %59 = load i32, i32* %nc.addr, align 4
  %mul74 = mul nsw i32 %sub73, %59
  %60 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %mul74, %60
  %idxprom76 = sext i32 %add75 to i64
  %61 = load float*, float** %gr.addr, align 8
  %arrayidx77 = getelementptr inbounds float, float* %61, i64 %idxprom76
  %62 = load float, float* %arrayidx77, align 4
  %conv78 = fpext float %62 to double
  %mul79 = fmul double %sub72, %conv78
  %add80 = fadd double %conv70, %mul79
  %conv81 = fptrunc double %add80 to float
  store float %conv81, float* %ampl2, align 4
  br label %if.end.136

if.else.82:                                       ; preds = %land.lhs.true.39, %if.else
  %63 = load float, float* %R, align 4
  %conv83 = fpext float %63 to double
  %cmp84 = fcmp ole double %conv83, 0.000000e+00
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.131

land.lhs.true.86:                                 ; preds = %if.else.82
  %64 = load float, float* %R, align 4
  %conv87 = fpext float %64 to double
  %cmp88 = fcmp ogt double %conv87, -4.000000e-01
  br i1 %cmp88, label %if.then.90, label %if.else.131

if.then.90:                                       ; preds = %land.lhs.true.86
  %65 = load i32, i32* %i, align 4
  %add91 = add nsw i32 %65, 1
  %66 = load i32, i32* %nc.addr, align 4
  %mul92 = mul nsw i32 %add91, %66
  %67 = load i32, i32* %j, align 4
  %add93 = add nsw i32 %mul92, %67
  %sub94 = sub nsw i32 %add93, 1
  %idxprom95 = sext i32 %sub94 to i64
  %68 = load float*, float** %gr.addr, align 8
  %arrayidx96 = getelementptr inbounds float, float* %68, i64 %idxprom95
  %69 = load float, float* %arrayidx96, align 4
  %sub97 = fsub float -0.000000e+00, %69
  %70 = load float, float* %R, align 4
  %mul98 = fmul float %sub97, %70
  %conv99 = fpext float %mul98 to double
  %71 = load float, float* %R, align 4
  %conv100 = fpext float %71 to double
  %add101 = fadd double 1.000000e+00, %conv100
  %72 = load i32, i32* %i, align 4
  %add102 = add nsw i32 %72, 1
  %73 = load i32, i32* %nc.addr, align 4
  %mul103 = mul nsw i32 %add102, %73
  %74 = load i32, i32* %j, align 4
  %add104 = add nsw i32 %mul103, %74
  %idxprom105 = sext i32 %add104 to i64
  %75 = load float*, float** %gr.addr, align 8
  %arrayidx106 = getelementptr inbounds float, float* %75, i64 %idxprom105
  %76 = load float, float* %arrayidx106, align 4
  %conv107 = fpext float %76 to double
  %mul108 = fmul double %add101, %conv107
  %add109 = fadd double %conv99, %mul108
  %conv110 = fptrunc double %add109 to float
  store float %conv110, float* %ampl1, align 4
  %77 = load i32, i32* %i, align 4
  %sub111 = sub nsw i32 %77, 1
  %78 = load i32, i32* %nc.addr, align 4
  %mul112 = mul nsw i32 %sub111, %78
  %79 = load i32, i32* %j, align 4
  %add113 = add nsw i32 %mul112, %79
  %add114 = add nsw i32 %add113, 1
  %idxprom115 = sext i32 %add114 to i64
  %80 = load float*, float** %gr.addr, align 8
  %arrayidx116 = getelementptr inbounds float, float* %80, i64 %idxprom115
  %81 = load float, float* %arrayidx116, align 4
  %sub117 = fsub float -0.000000e+00, %81
  %82 = load float, float* %R, align 4
  %mul118 = fmul float %sub117, %82
  %conv119 = fpext float %mul118 to double
  %83 = load float, float* %R, align 4
  %conv120 = fpext float %83 to double
  %add121 = fadd double 1.000000e+00, %conv120
  %84 = load i32, i32* %i, align 4
  %sub122 = sub nsw i32 %84, 1
  %85 = load i32, i32* %nc.addr, align 4
  %mul123 = mul nsw i32 %sub122, %85
  %86 = load i32, i32* %j, align 4
  %add124 = add nsw i32 %mul123, %86
  %idxprom125 = sext i32 %add124 to i64
  %87 = load float*, float** %gr.addr, align 8
  %arrayidx126 = getelementptr inbounds float, float* %87, i64 %idxprom125
  %88 = load float, float* %arrayidx126, align 4
  %conv127 = fpext float %88 to double
  %mul128 = fmul double %add121, %conv127
  %add129 = fadd double %conv119, %mul128
  %conv130 = fptrunc double %add129 to float
  store float %conv130, float* %ampl2, align 4
  br label %if.end

if.else.131:                                      ; preds = %land.lhs.true.86, %if.else.82
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %nc.addr, align 4
  %mul132 = mul nsw i32 %89, %90
  %91 = load i32, i32* %j, align 4
  %add133 = add nsw i32 %mul132, %91
  %idxprom134 = sext i32 %add133 to i64
  %92 = load float*, float** %maxima, align 8
  %arrayidx135 = getelementptr inbounds float, float* %92, i64 %idxprom134
  store float 0.000000e+00, float* %arrayidx135, align 4
  br label %for.inc

if.end:                                           ; preds = %if.then.90
  br label %if.end.136

if.end.136:                                       ; preds = %if.end, %if.then.43
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %nc.addr, align 4
  %mul138 = mul nsw i32 %93, %94
  %95 = load i32, i32* %j, align 4
  %add139 = add nsw i32 %mul138, %95
  %idxprom140 = sext i32 %add139 to i64
  %96 = load float*, float** %gr.addr, align 8
  %arrayidx141 = getelementptr inbounds float, float* %96, i64 %idxprom140
  %97 = load float, float* %arrayidx141, align 4
  %conv142 = fpext float %97 to double
  %98 = load float, float* %ampl1, align 4
  %conv143 = fpext float %98 to double
  %add144 = fadd double %conv143, 1.000000e-08
  %cmp145 = fcmp ogt double %conv142, %add144
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.162

land.lhs.true.147:                                ; preds = %if.end.137
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %nc.addr, align 4
  %mul148 = mul nsw i32 %99, %100
  %101 = load i32, i32* %j, align 4
  %add149 = add nsw i32 %mul148, %101
  %idxprom150 = sext i32 %add149 to i64
  %102 = load float*, float** %gr.addr, align 8
  %arrayidx151 = getelementptr inbounds float, float* %102, i64 %idxprom150
  %103 = load float, float* %arrayidx151, align 4
  %conv152 = fpext float %103 to double
  %104 = load float, float* %ampl2, align 4
  %conv153 = fpext float %104 to double
  %add154 = fadd double %conv153, 1.000000e-08
  %cmp155 = fcmp ogt double %conv152, %add154
  br i1 %cmp155, label %if.then.157, label %if.end.162

if.then.157:                                      ; preds = %land.lhs.true.147
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %nc.addr, align 4
  %mul158 = mul nsw i32 %105, %106
  %107 = load i32, i32* %j, align 4
  %add159 = add nsw i32 %mul158, %107
  %idxprom160 = sext i32 %add159 to i64
  %108 = load float*, float** %maxima, align 8
  %arrayidx161 = getelementptr inbounds float, float* %108, i64 %idxprom160
  store float 2.550000e+02, float* %arrayidx161, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.157, %land.lhs.true.147, %if.end.137
  br label %for.inc

for.inc:                                          ; preds = %if.end.162, %if.else.131
  %109 = load i32, i32* %j, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end
  %110 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %110, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond

for.end.165:                                      ; preds = %for.cond
  %111 = load float*, float** %maxima, align 8
  ret float* %111
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
