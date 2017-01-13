; ModuleID = './SingleSource.UnitTests.Vector/8.SSE.sse.expandfft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = common global [2048 x float] zeroinitializer, align 16
@z = common global [2048 x float] zeroinitializer, align 16
@w = common global [1024 x float] zeroinitializer, align 16
@y = common global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c" for n=%d, fwd/bck error=%e\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" for n=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%g  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %first = alloca i32, align 4
  %i = alloca i32, align 4
  %icase = alloca i32, align 4
  %it = alloca i32, align 4
  %n = alloca i32, align 4
  %error = alloca double, align 8
  %fnm1 = alloca float, align 4
  %seed = alloca float, align 4
  %sign = alloca float, align 4
  %z0 = alloca float, align 4
  %z1 = alloca float, align 4
  %t1 = alloca float, align 4
  %ln2 = alloca float, align 4
  %mflops = alloca float, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 1, i32* %first, align 4
  store float 3.310000e+02, float* %seed, align 4
  store i32 0, i32* %icase, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %entry
  %0 = load i32, i32* %icase, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 2048
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call = call float @ggl(float* %seed)
  store float %call, float* %z0, align 4
  %call4 = call float @ggl(float* %seed)
  store float %call4, float* %z1, align 4
  %3 = load float, float* %z0, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom
  store float %3, float* %arrayidx, align 4
  %5 = load float, float* %z0, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom5
  store float %5, float* %arrayidx6, align 4
  %7 = load float, float* %z1, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom7
  store float %7, float* %arrayidx8, align 4
  %9 = load float, float* %z1, align 4
  %10 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %10, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom10
  store float %9, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %11 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %11, 2
  store i32 %add12, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.26, %if.else
  %12 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %12, 2048
  br i1 %cmp14, label %for.body.15, label %for.end.28

for.body.15:                                      ; preds = %for.cond.13
  store float 0.000000e+00, float* %z0, align 4
  store float 0.000000e+00, float* %z1, align 4
  %13 = load float, float* %z0, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom16
  store float %13, float* %arrayidx17, align 4
  %15 = load float, float* %z0, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom18
  store float %15, float* %arrayidx19, align 4
  %17 = load float, float* %z1, align 4
  %18 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %18, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom21
  store float %17, float* %arrayidx22, align 4
  %19 = load float, float* %z1, align 4
  %20 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %20, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom24
  store float %19, float* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.15
  %21 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %21, 2
  store i32 %add27, i32* %i, align 4
  br label %for.cond.13

for.end.28:                                       ; preds = %for.cond.13
  br label %if.end

if.end:                                           ; preds = %for.end.28, %for.end
  store i32 1024, i32* %n, align 4
  %22 = load i32, i32* %n, align 4
  call void (i32, float*, ...) bitcast (void (i32, [2 x float]*)* @cffti to void (i32, float*, ...)*)(i32 %22, float* getelementptr inbounds ([1024 x float], [1024 x float]* @w, i32 0, i32 0))
  %23 = load i32, i32* %first, align 4
  %tobool29 = icmp ne i32 %23, 0
  br i1 %tobool29, label %if.then.30, label %if.else.77

if.then.30:                                       ; preds = %if.end
  store float 1.000000e+00, float* %sign, align 4
  %24 = load i32, i32* %n, align 4
  %25 = load float, float* %sign, align 4
  %conv = fpext float %25 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 %24, float* getelementptr inbounds ([2048 x float], [2048 x float]* @x, i32 0, i32 0), float* getelementptr inbounds ([2048 x float], [2048 x float]* @y, i32 0, i32 0), float* getelementptr inbounds ([1024 x float], [1024 x float]* @w, i32 0, i32 0), double %conv)
  store float -1.000000e+00, float* %sign, align 4
  %26 = load i32, i32* %n, align 4
  %27 = load float, float* %sign, align 4
  %conv31 = fpext float %27 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 %26, float* getelementptr inbounds ([2048 x float], [2048 x float]* @y, i32 0, i32 0), float* getelementptr inbounds ([2048 x float], [2048 x float]* @x, i32 0, i32 0), float* getelementptr inbounds ([1024 x float], [1024 x float]* @w, i32 0, i32 0), double %conv31)
  %28 = load i32, i32* %n, align 4
  %conv32 = sitofp i32 %28 to float
  %conv33 = fpext float %conv32 to double
  %div = fdiv double 1.000000e+00, %conv33
  %conv34 = fptrunc double %div to float
  store float %conv34, float* %fnm1, align 4
  store double 0.000000e+00, double* %error, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.70, %if.then.30
  %29 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %29, 2048
  br i1 %cmp36, label %for.body.38, label %for.end.72

for.body.38:                                      ; preds = %for.cond.35
  %30 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom39
  %31 = load float, float* %arrayidx40, align 4
  %32 = load float, float* %fnm1, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom41
  %34 = load float, float* %arrayidx42, align 4
  %mul = fmul float %32, %34
  %sub = fsub float %31, %mul
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom43
  %36 = load float, float* %arrayidx44, align 4
  %37 = load float, float* %fnm1, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %38 to i64
  %arrayidx46 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom45
  %39 = load float, float* %arrayidx46, align 4
  %mul47 = fmul float %37, %39
  %sub48 = fsub float %36, %mul47
  %mul49 = fmul float %sub, %sub48
  %40 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %40, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom51
  %41 = load float, float* %arrayidx52, align 4
  %42 = load float, float* %fnm1, align 4
  %43 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %43, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom54
  %44 = load float, float* %arrayidx55, align 4
  %mul56 = fmul float %42, %44
  %sub57 = fsub float %41, %mul56
  %45 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %45, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i32 0, i64 %idxprom59
  %46 = load float, float* %arrayidx60, align 4
  %47 = load float, float* %fnm1, align 4
  %48 = load i32, i32* %i, align 4
  %add61 = add nsw i32 %48, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i32 0, i64 %idxprom62
  %49 = load float, float* %arrayidx63, align 4
  %mul64 = fmul float %47, %49
  %sub65 = fsub float %46, %mul64
  %mul66 = fmul float %sub57, %sub65
  %add67 = fadd float %mul49, %mul66
  %conv68 = fpext float %add67 to double
  %50 = load double, double* %error, align 8
  %add69 = fadd double %50, %conv68
  store double %add69, double* %error, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.38
  %51 = load i32, i32* %i, align 4
  %add71 = add nsw i32 %51, 2
  store i32 %add71, i32* %i, align 4
  br label %for.cond.35

for.end.72:                                       ; preds = %for.cond.35
  %52 = load float, float* %fnm1, align 4
  %conv73 = fpext float %52 to double
  %53 = load double, double* %error, align 8
  %mul74 = fmul double %conv73, %53
  %call75 = call double @sqrt(double %mul74) #4
  store double %call75, double* %error, align 8
  %54 = load double, double* %error, align 8
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 1024, double %54)
  store i32 0, i32* %first, align 4
  br label %if.end.104

if.else.77:                                       ; preds = %if.end
  store i32 0, i32* %j, align 4
  store i32 0, i32* %it, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.84, %if.else.77
  %55 = load i32, i32* %it, align 4
  %cmp79 = icmp slt i32 %55, 20000
  br i1 %cmp79, label %for.body.81, label %for.end.85

for.body.81:                                      ; preds = %for.cond.78
  store float 1.000000e+00, float* %sign, align 4
  %56 = load i32, i32* %n, align 4
  %57 = load float, float* %sign, align 4
  %conv82 = fpext float %57 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 %56, float* getelementptr inbounds ([2048 x float], [2048 x float]* @x, i32 0, i32 0), float* getelementptr inbounds ([2048 x float], [2048 x float]* @y, i32 0, i32 0), float* getelementptr inbounds ([1024 x float], [1024 x float]* @w, i32 0, i32 0), double %conv82)
  store float -1.000000e+00, float* %sign, align 4
  %58 = load i32, i32* %n, align 4
  %59 = load float, float* %sign, align 4
  %conv83 = fpext float %59 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 %58, float* getelementptr inbounds ([2048 x float], [2048 x float]* @y, i32 0, i32 0), float* getelementptr inbounds ([2048 x float], [2048 x float]* @x, i32 0, i32 0), float* getelementptr inbounds ([1024 x float], [1024 x float]* @w, i32 0, i32 0), double %conv83)
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.81
  %60 = load i32, i32* %it, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %it, align 4
  br label %for.cond.78

for.end.85:                                       ; preds = %for.cond.78
  %61 = load i32, i32* %n, align 4
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %61)
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.101, %for.end.85
  %62 = load i32, i32* %i, align 4
  %cmp88 = icmp slt i32 %62, 1024
  br i1 %cmp88, label %for.body.90, label %for.end.103

for.body.90:                                      ; preds = %for.cond.87
  %63 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %63 to i64
  %arrayidx92 = getelementptr inbounds [1024 x float], [1024 x float]* @w, i32 0, i64 %idxprom91
  %64 = load float, float* %arrayidx92, align 4
  %conv93 = fpext float %64 to double
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), double %conv93)
  %65 = load i32, i32* %j, align 4
  %inc95 = add i32 %65, 1
  store i32 %inc95, i32* %j, align 4
  %66 = load i32, i32* %j, align 4
  %cmp96 = icmp eq i32 %66, 4
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %for.body.90
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %for.body.90
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %67 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %67, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.87

for.end.103:                                      ; preds = %for.cond.87
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %for.end.72
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %68 = load i32, i32* %icase, align 4
  %inc106 = add nsw i32 %68, 1
  store i32 %inc106, i32* %icase, align 4
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @cfft2(i32 %n, [2 x float]* %x, [2 x float]* %y, [2 x float]* %w, double) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca [2 x float]*, align 8
  %y.addr = alloca [2 x float]*, align 8
  %w.addr = alloca [2 x float]*, align 8
  %sign.addr = alloca float, align 4
  %jb = alloca i32, align 4
  %jc = alloca i32, align 4
  %jw = alloca i32, align 4
  %k = alloca i32, align 4
  %k2 = alloca i32, align 4
  %lj = alloca i32, align 4
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  %mj = alloca i32, align 4
  %mj2 = alloca i32, align 4
  %pass = alloca i32, align 4
  %tgle = alloca i32, align 4
  %a = alloca [2 x float]*, align 8
  %b = alloca [2 x float]*, align 8
  %c = alloca [2 x float]*, align 8
  %d = alloca [2 x float]*, align 8
  %aa = alloca [2 x float]*, align 8
  %bb = alloca [2 x float]*, align 8
  %cb = alloca [2 x float]*, align 8
  %dd = alloca [2 x float]*, align 8
  %rp = alloca float, align 4
  %up = alloca float, align 4
  %wr = alloca [4 x float], align 16
  %wu = alloca [4 x float], align 16
  %V0 = alloca <4 x float>, align 16
  %V1 = alloca <4 x float>, align 16
  %V2 = alloca <4 x float>, align 16
  %V3 = alloca <4 x float>, align 16
  %V4 = alloca <4 x float>, align 16
  %V5 = alloca <4 x float>, align 16
  %V6 = alloca <4 x float>, align 16
  %V7 = alloca <4 x float>, align 16
  %V8 = alloca <4 x float>, align 16
  %V9 = alloca <4 x float>, align 16
  %V10 = alloca <4 x float>, align 16
  %V11 = alloca <4 x float>, align 16
  %V12 = alloca <4 x float>, align 16
  %V13 = alloca <4 x float>, align 16
  %V14 = alloca <4 x float>, align 16
  %V15 = alloca <4 x float>, align 16
  %__a = alloca <4 x float>, align 16
  %__b = alloca <4 x float>, align 16
  %tmp = alloca <4 x float>, align 16
  %__a261 = alloca <4 x float>, align 16
  %__b263 = alloca <4 x float>, align 16
  %tmp264 = alloca <4 x float>, align 16
  %__a290 = alloca <4 x float>, align 16
  %__b292 = alloca <4 x float>, align 16
  %tmp293 = alloca <4 x float>, align 16
  %sign = fptrunc double %0 to float
  store i32 %n, i32* %n.addr, align 4
  store [2 x float]* %x, [2 x float]** %x.addr, align 8
  store [2 x float]* %y, [2 x float]** %y.addr, align 8
  store [2 x float]* %w, [2 x float]** %w.addr, align 8
  store float %sign, float* %sign.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  %3 = load float, float* %arrayidx1, align 4
  %4 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx2, i32 0, i64 0
  store float %3, float* %arrayidx3, align 4
  %5 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx4, i32 0, i64 1
  %6 = load float, float* %arrayidx5, align 4
  %7 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %7, i64 0
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx6, i32 0, i64 1
  store float %6, float* %arrayidx7, align 4
  br label %for.end.376

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %8 to float
  %conv8 = fpext float %conv to double
  %call = call double @log(double %conv8) #4
  %call9 = call double @log(double 1.990000e+00) #4
  %div = fdiv double %call, %call9
  %conv10 = fptosi double %div to i32
  store i32 %conv10, i32* %m, align 4
  store i32 1, i32* %mj, align 4
  store i32 2, i32* %mj2, align 4
  %9 = load i32, i32* %n.addr, align 4
  %div11 = sdiv i32 %9, 2
  store i32 %div11, i32* %lj, align 4
  %10 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx12, i32 0, i64 0
  %11 = bitcast float* %arrayidx13 to i8*
  %12 = bitcast i8* %11 to [2 x float]*
  store [2 x float]* %12, [2 x float]** %a, align 8
  %13 = load i32, i32* %n.addr, align 4
  %div14 = sdiv i32 %13, 2
  %idxprom = sext i32 %div14 to i64
  %14 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 %idxprom
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 0
  %15 = bitcast float* %arrayidx16 to i8*
  %16 = bitcast i8* %15 to [2 x float]*
  store [2 x float]* %16, [2 x float]** %b, align 8
  %17 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %17, i64 0
  %arrayidx18 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx17, i32 0, i64 0
  %18 = bitcast float* %arrayidx18 to i8*
  %19 = bitcast i8* %18 to [2 x float]*
  store [2 x float]* %19, [2 x float]** %c, align 8
  %20 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 1
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx19, i32 0, i64 0
  %21 = bitcast float* %arrayidx20 to i8*
  %22 = bitcast i8* %21 to [2 x float]*
  store [2 x float]* %22, [2 x float]** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %lj, align 4
  %cmp21 = icmp slt i32 %23, %24
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %mj2, align 4
  %mul = mul nsw i32 %25, %26
  store i32 %mul, i32* %jc, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx24, i32 0, i64 0
  %29 = load float, float* %arrayidx25, align 4
  store float %29, float* %rp, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx27 = getelementptr inbounds [2 x float], [2 x float]* %31, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx27, i32 0, i64 1
  %32 = load float, float* %arrayidx28, align 4
  store float %32, float* %up, align 4
  %33 = load float, float* %sign.addr, align 4
  %conv29 = fpext float %33 to double
  %cmp30 = fcmp olt double %conv29, 0.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  %34 = load float, float* %up, align 4
  %sub = fsub float -0.000000e+00, %34
  store float %sub, float* %up, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.body
  %35 = load float, float* %rp, align 4
  %36 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx35 = getelementptr inbounds [2 x float], [2 x float]* %37, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx35, i32 0, i64 0
  %38 = load float, float* %arrayidx36, align 4
  %39 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx38 = getelementptr inbounds [2 x float], [2 x float]* %40, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx38, i32 0, i64 0
  %41 = load float, float* %arrayidx39, align 4
  %sub40 = fsub float %38, %41
  %mul41 = fmul float %35, %sub40
  %42 = load float, float* %up, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %44, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx43, i32 0, i64 1
  %45 = load float, float* %arrayidx44, align 4
  %46 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %46 to i64
  %47 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx46 = getelementptr inbounds [2 x float], [2 x float]* %47, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx46, i32 0, i64 1
  %48 = load float, float* %arrayidx47, align 4
  %sub48 = fsub float %45, %48
  %mul49 = fmul float %42, %sub48
  %sub50 = fsub float %mul41, %mul49
  %49 = load i32, i32* %jc, align 4
  %idxprom51 = sext i32 %49 to i64
  %50 = load [2 x float]*, [2 x float]** %d, align 8
  %arrayidx52 = getelementptr inbounds [2 x float], [2 x float]* %50, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx52, i32 0, i64 0
  store float %sub50, float* %arrayidx53, align 4
  %51 = load float, float* %up, align 4
  %52 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %52 to i64
  %53 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx55 = getelementptr inbounds [2 x float], [2 x float]* %53, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx55, i32 0, i64 0
  %54 = load float, float* %arrayidx56, align 4
  %55 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %55 to i64
  %56 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx58 = getelementptr inbounds [2 x float], [2 x float]* %56, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx58, i32 0, i64 0
  %57 = load float, float* %arrayidx59, align 4
  %sub60 = fsub float %54, %57
  %mul61 = fmul float %51, %sub60
  %58 = load float, float* %rp, align 4
  %59 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %59 to i64
  %60 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx63 = getelementptr inbounds [2 x float], [2 x float]* %60, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx63, i32 0, i64 1
  %61 = load float, float* %arrayidx64, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %62 to i64
  %63 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx66 = getelementptr inbounds [2 x float], [2 x float]* %63, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx66, i32 0, i64 1
  %64 = load float, float* %arrayidx67, align 4
  %sub68 = fsub float %61, %64
  %mul69 = fmul float %58, %sub68
  %add = fadd float %mul61, %mul69
  %65 = load i32, i32* %jc, align 4
  %idxprom70 = sext i32 %65 to i64
  %66 = load [2 x float]*, [2 x float]** %d, align 8
  %arrayidx71 = getelementptr inbounds [2 x float], [2 x float]* %66, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx71, i32 0, i64 1
  store float %add, float* %arrayidx72, align 4
  %67 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %67 to i64
  %68 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx74 = getelementptr inbounds [2 x float], [2 x float]* %68, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx74, i32 0, i64 0
  %69 = load float, float* %arrayidx75, align 4
  %70 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %70 to i64
  %71 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx77 = getelementptr inbounds [2 x float], [2 x float]* %71, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx77, i32 0, i64 0
  %72 = load float, float* %arrayidx78, align 4
  %add79 = fadd float %69, %72
  %73 = load i32, i32* %jc, align 4
  %idxprom80 = sext i32 %73 to i64
  %74 = load [2 x float]*, [2 x float]** %c, align 8
  %arrayidx81 = getelementptr inbounds [2 x float], [2 x float]* %74, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx81, i32 0, i64 0
  store float %add79, float* %arrayidx82, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %75 to i64
  %76 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx84 = getelementptr inbounds [2 x float], [2 x float]* %76, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx84, i32 0, i64 1
  %77 = load float, float* %arrayidx85, align 4
  %78 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %78 to i64
  %79 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx87 = getelementptr inbounds [2 x float], [2 x float]* %79, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx87, i32 0, i64 1
  %80 = load float, float* %arrayidx88, align 4
  %add89 = fadd float %77, %80
  %81 = load i32, i32* %jc, align 4
  %idxprom90 = sext i32 %81 to i64
  %82 = load [2 x float]*, [2 x float]** %c, align 8
  %arrayidx91 = getelementptr inbounds [2 x float], [2 x float]* %82, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx91, i32 0, i64 1
  store float %add89, float* %arrayidx92, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %83 = load i32, i32* %j, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %84 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp eq i32 %84, 2
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.end
  br label %for.end.376

if.end.96:                                        ; preds = %for.end
  store i32 2, i32* %mj, align 4
  store i32 4, i32* %mj2, align 4
  %85 = load i32, i32* %n.addr, align 4
  %div97 = sdiv i32 %85, 4
  store i32 %div97, i32* %lj, align 4
  %86 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx98 = getelementptr inbounds [2 x float], [2 x float]* %86, i64 0
  %arrayidx99 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx98, i32 0, i64 0
  %87 = bitcast float* %arrayidx99 to i8*
  %88 = bitcast i8* %87 to [2 x float]*
  store [2 x float]* %88, [2 x float]** %a, align 8
  %89 = load i32, i32* %n.addr, align 4
  %div100 = sdiv i32 %89, 2
  %idxprom101 = sext i32 %div100 to i64
  %90 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx102 = getelementptr inbounds [2 x float], [2 x float]* %90, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx102, i32 0, i64 0
  %91 = bitcast float* %arrayidx103 to i8*
  %92 = bitcast i8* %91 to [2 x float]*
  store [2 x float]* %92, [2 x float]** %b, align 8
  %93 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx104 = getelementptr inbounds [2 x float], [2 x float]* %93, i64 0
  %arrayidx105 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx104, i32 0, i64 0
  %94 = bitcast float* %arrayidx105 to i8*
  %95 = bitcast i8* %94 to [2 x float]*
  store [2 x float]* %95, [2 x float]** %c, align 8
  %96 = load i32, i32* %mj, align 4
  %idxprom106 = sext i32 %96 to i64
  %97 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx107 = getelementptr inbounds [2 x float], [2 x float]* %97, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx107, i32 0, i64 0
  %98 = bitcast float* %arrayidx108 to i8*
  %99 = bitcast i8* %98 to [2 x float]*
  store [2 x float]* %99, [2 x float]** %d, align 8
  %100 = load i32, i32* %n.addr, align 4
  %cmp109 = icmp eq i32 %100, 4
  br i1 %cmp109, label %if.then.111, label %if.end.117

if.then.111:                                      ; preds = %if.end.96
  %101 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx112 = getelementptr inbounds [2 x float], [2 x float]* %101, i64 0
  %arrayidx113 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx112, i32 0, i64 0
  %102 = bitcast float* %arrayidx113 to i8*
  %103 = bitcast i8* %102 to [2 x float]*
  store [2 x float]* %103, [2 x float]** %c, align 8
  %104 = load i32, i32* %mj, align 4
  %idxprom114 = sext i32 %104 to i64
  %105 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx115 = getelementptr inbounds [2 x float], [2 x float]* %105, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx115, i32 0, i64 0
  %106 = bitcast float* %arrayidx116 to i8*
  %107 = bitcast i8* %106 to [2 x float]*
  store [2 x float]* %107, [2 x float]** %d, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.111, %if.end.96
  store i32 0, i32* %j, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.168, %if.end.117
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %lj, align 4
  %cmp119 = icmp slt i32 %108, %109
  br i1 %cmp119, label %for.body.121, label %for.end.170

for.body.121:                                     ; preds = %for.cond.118
  %110 = load i32, i32* %j, align 4
  %111 = load i32, i32* %mj, align 4
  %mul122 = mul nsw i32 %110, %111
  store i32 %mul122, i32* %jw, align 4
  %112 = load i32, i32* %j, align 4
  %113 = load i32, i32* %mj2, align 4
  %mul123 = mul nsw i32 %112, %113
  store i32 %mul123, i32* %jc, align 4
  %114 = load i32, i32* %jw, align 4
  %idxprom124 = sext i32 %114 to i64
  %115 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx125 = getelementptr inbounds [2 x float], [2 x float]* %115, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx125, i32 0, i64 0
  %116 = load float, float* %arrayidx126, align 4
  store float %116, float* %rp, align 4
  %117 = load i32, i32* %jw, align 4
  %idxprom127 = sext i32 %117 to i64
  %118 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx128 = getelementptr inbounds [2 x float], [2 x float]* %118, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx128, i32 0, i64 1
  %119 = load float, float* %arrayidx129, align 4
  store float %119, float* %up, align 4
  %120 = load float, float* %sign.addr, align 4
  %conv130 = fpext float %120 to double
  %cmp131 = fcmp olt double %conv130, 0.000000e+00
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %for.body.121
  %121 = load float, float* %up, align 4
  %sub134 = fsub float -0.000000e+00, %121
  store float %sub134, float* %up, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %for.body.121
  %122 = load float, float* %rp, align 4
  %arrayidx136 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 0
  store float %122, float* %arrayidx136, align 4
  %123 = load float, float* %rp, align 4
  %arrayidx137 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 1
  store float %123, float* %arrayidx137, align 4
  %124 = load float, float* %rp, align 4
  %arrayidx138 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 2
  store float %124, float* %arrayidx138, align 4
  %125 = load float, float* %rp, align 4
  %arrayidx139 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 3
  store float %125, float* %arrayidx139, align 4
  %126 = load float, float* %up, align 4
  %sub140 = fsub float -0.000000e+00, %126
  %arrayidx141 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 0
  store float %sub140, float* %arrayidx141, align 4
  %127 = load float, float* %up, align 4
  %arrayidx142 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 1
  store float %127, float* %arrayidx142, align 4
  %128 = load float, float* %up, align 4
  %sub143 = fsub float -0.000000e+00, %128
  %arrayidx144 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 2
  store float %sub143, float* %arrayidx144, align 4
  %129 = load float, float* %up, align 4
  %arrayidx145 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 3
  store float %129, float* %arrayidx145, align 4
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i32 0
  %call146 = call <4 x float> @_mm_load_ps(float* %arraydecay)
  store <4 x float> %call146, <4 x float>* %V6, align 16
  %arraydecay147 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i32 0
  %call148 = call <4 x float> @_mm_load_ps(float* %arraydecay147)
  store <4 x float> %call148, <4 x float>* %V7, align 16
  %130 = load i32, i32* %jw, align 4
  %idxprom149 = sext i32 %130 to i64
  %131 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx150 = getelementptr inbounds [2 x float], [2 x float]* %131, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx150, i32 0, i64 0
  %call152 = call <4 x float> @_mm_load_ps(float* %arrayidx151)
  store <4 x float> %call152, <4 x float>* %V0, align 16
  %132 = load i32, i32* %jw, align 4
  %idxprom153 = sext i32 %132 to i64
  %133 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx154 = getelementptr inbounds [2 x float], [2 x float]* %133, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx154, i32 0, i64 0
  %call156 = call <4 x float> @_mm_load_ps(float* %arrayidx155)
  store <4 x float> %call156, <4 x float>* %V1, align 16
  %134 = load <4 x float>, <4 x float>* %V0, align 16
  %135 = load <4 x float>, <4 x float>* %V1, align 16
  %call157 = call <4 x float> @_mm_add_ps(<4 x float> %134, <4 x float> %135)
  store <4 x float> %call157, <4 x float>* %V2, align 16
  %136 = load i32, i32* %jc, align 4
  %idxprom158 = sext i32 %136 to i64
  %137 = load [2 x float]*, [2 x float]** %c, align 8
  %arrayidx159 = getelementptr inbounds [2 x float], [2 x float]* %137, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx159, i32 0, i64 0
  %138 = load <4 x float>, <4 x float>* %V2, align 16
  call void @_mm_store_ps(float* %arrayidx160, <4 x float> %138)
  %139 = load <4 x float>, <4 x float>* %V0, align 16
  %140 = load <4 x float>, <4 x float>* %V1, align 16
  %call161 = call <4 x float> @_mm_sub_ps(<4 x float> %139, <4 x float> %140)
  store <4 x float> %call161, <4 x float>* %V3, align 16
  %141 = load <4 x float>, <4 x float>* %V3, align 16
  store <4 x float> %141, <4 x float>* %__a, align 16
  %142 = load <4 x float>, <4 x float>* %V3, align 16
  store <4 x float> %142, <4 x float>* %__b, align 16
  %143 = load <4 x float>, <4 x float>* %__a, align 16
  %144 = load <4 x float>, <4 x float>* %__b, align 16
  %shuffle = shufflevector <4 x float> %143, <4 x float> %144, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %shuffle, <4 x float>* %tmp
  %145 = load <4 x float>, <4 x float>* %tmp
  store <4 x float> %145, <4 x float>* %V4, align 16
  %146 = load <4 x float>, <4 x float>* %V6, align 16
  %147 = load <4 x float>, <4 x float>* %V3, align 16
  %call162 = call <4 x float> @_mm_mul_ps(<4 x float> %146, <4 x float> %147)
  store <4 x float> %call162, <4 x float>* %V0, align 16
  %148 = load <4 x float>, <4 x float>* %V7, align 16
  %149 = load <4 x float>, <4 x float>* %V4, align 16
  %call163 = call <4 x float> @_mm_mul_ps(<4 x float> %148, <4 x float> %149)
  store <4 x float> %call163, <4 x float>* %V1, align 16
  %150 = load <4 x float>, <4 x float>* %V0, align 16
  %151 = load <4 x float>, <4 x float>* %V1, align 16
  %call164 = call <4 x float> @_mm_add_ps(<4 x float> %150, <4 x float> %151)
  store <4 x float> %call164, <4 x float>* %V2, align 16
  %152 = load i32, i32* %jc, align 4
  %idxprom165 = sext i32 %152 to i64
  %153 = load [2 x float]*, [2 x float]** %d, align 8
  %arrayidx166 = getelementptr inbounds [2 x float], [2 x float]* %153, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx166, i32 0, i64 0
  %154 = load <4 x float>, <4 x float>* %V2, align 16
  call void @_mm_store_ps(float* %arrayidx167, <4 x float> %154)
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.135
  %155 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %155, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.118

for.end.170:                                      ; preds = %for.cond.118
  %156 = load i32, i32* %n.addr, align 4
  %cmp171 = icmp eq i32 %156, 4
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %for.end.170
  br label %for.end.376

if.end.174:                                       ; preds = %for.end.170
  %157 = load i32, i32* %mj, align 4
  %mul175 = mul nsw i32 %157, 2
  store i32 %mul175, i32* %mj, align 4
  %158 = load i32, i32* %mj, align 4
  %mul176 = mul nsw i32 2, %158
  store i32 %mul176, i32* %mj2, align 4
  %159 = load i32, i32* %n.addr, align 4
  %160 = load i32, i32* %mj2, align 4
  %div177 = sdiv i32 %159, %160
  store i32 %div177, i32* %lj, align 4
  store i32 0, i32* %tgle, align 4
  store i32 2, i32* %pass, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.311, %if.end.174
  %161 = load i32, i32* %pass, align 4
  %162 = load i32, i32* %m, align 4
  %sub179 = sub nsw i32 %162, 1
  %cmp180 = icmp slt i32 %161, %sub179
  br i1 %cmp180, label %for.body.182, label %for.end.313

for.body.182:                                     ; preds = %for.cond.178
  %163 = load i32, i32* %tgle, align 4
  %tobool = icmp ne i32 %163, 0
  br i1 %tobool, label %if.then.183, label %if.else

if.then.183:                                      ; preds = %for.body.182
  %164 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx184 = getelementptr inbounds [2 x float], [2 x float]* %164, i64 0
  %arrayidx185 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx184, i32 0, i64 0
  %165 = bitcast float* %arrayidx185 to i8*
  %166 = bitcast i8* %165 to [2 x float]*
  store [2 x float]* %166, [2 x float]** %a, align 8
  %167 = load i32, i32* %n.addr, align 4
  %div186 = sdiv i32 %167, 2
  %idxprom187 = sext i32 %div186 to i64
  %168 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx188 = getelementptr inbounds [2 x float], [2 x float]* %168, i64 %idxprom187
  %arrayidx189 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx188, i32 0, i64 0
  %169 = bitcast float* %arrayidx189 to i8*
  %170 = bitcast i8* %169 to [2 x float]*
  store [2 x float]* %170, [2 x float]** %b, align 8
  %171 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx190 = getelementptr inbounds [2 x float], [2 x float]* %171, i64 0
  %arrayidx191 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx190, i32 0, i64 0
  %172 = bitcast float* %arrayidx191 to i8*
  %173 = bitcast i8* %172 to [2 x float]*
  store [2 x float]* %173, [2 x float]** %c, align 8
  %174 = load i32, i32* %mj, align 4
  %idxprom192 = sext i32 %174 to i64
  %175 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx193 = getelementptr inbounds [2 x float], [2 x float]* %175, i64 %idxprom192
  %arrayidx194 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx193, i32 0, i64 0
  %176 = bitcast float* %arrayidx194 to i8*
  %177 = bitcast i8* %176 to [2 x float]*
  store [2 x float]* %177, [2 x float]** %d, align 8
  store i32 0, i32* %tgle, align 4
  br label %if.end.206

if.else:                                          ; preds = %for.body.182
  %178 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx195 = getelementptr inbounds [2 x float], [2 x float]* %178, i64 0
  %arrayidx196 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx195, i32 0, i64 0
  %179 = bitcast float* %arrayidx196 to i8*
  %180 = bitcast i8* %179 to [2 x float]*
  store [2 x float]* %180, [2 x float]** %a, align 8
  %181 = load i32, i32* %n.addr, align 4
  %div197 = sdiv i32 %181, 2
  %idxprom198 = sext i32 %div197 to i64
  %182 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx199 = getelementptr inbounds [2 x float], [2 x float]* %182, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx199, i32 0, i64 0
  %183 = bitcast float* %arrayidx200 to i8*
  %184 = bitcast i8* %183 to [2 x float]*
  store [2 x float]* %184, [2 x float]** %b, align 8
  %185 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx201 = getelementptr inbounds [2 x float], [2 x float]* %185, i64 0
  %arrayidx202 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx201, i32 0, i64 0
  %186 = bitcast float* %arrayidx202 to i8*
  %187 = bitcast i8* %186 to [2 x float]*
  store [2 x float]* %187, [2 x float]** %c, align 8
  %188 = load i32, i32* %mj, align 4
  %idxprom203 = sext i32 %188 to i64
  %189 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx204 = getelementptr inbounds [2 x float], [2 x float]* %189, i64 %idxprom203
  %arrayidx205 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx204, i32 0, i64 0
  %190 = bitcast float* %arrayidx205 to i8*
  %191 = bitcast i8* %190 to [2 x float]*
  store [2 x float]* %191, [2 x float]** %d, align 8
  store i32 1, i32* %tgle, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.else, %if.then.183
  store i32 0, i32* %j, align 4
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.305, %if.end.206
  %192 = load i32, i32* %j, align 4
  %193 = load i32, i32* %lj, align 4
  %cmp208 = icmp slt i32 %192, %193
  br i1 %cmp208, label %for.body.210, label %for.end.307

for.body.210:                                     ; preds = %for.cond.207
  %194 = load i32, i32* %j, align 4
  %195 = load i32, i32* %mj, align 4
  %mul211 = mul nsw i32 %194, %195
  store i32 %mul211, i32* %jw, align 4
  %196 = load i32, i32* %j, align 4
  %197 = load i32, i32* %mj2, align 4
  %mul212 = mul nsw i32 %196, %197
  store i32 %mul212, i32* %jc, align 4
  %198 = load i32, i32* %jw, align 4
  %idxprom213 = sext i32 %198 to i64
  %199 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx214 = getelementptr inbounds [2 x float], [2 x float]* %199, i64 %idxprom213
  %arrayidx215 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx214, i32 0, i64 0
  %200 = load float, float* %arrayidx215, align 4
  store float %200, float* %rp, align 4
  %201 = load i32, i32* %jw, align 4
  %idxprom216 = sext i32 %201 to i64
  %202 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx217 = getelementptr inbounds [2 x float], [2 x float]* %202, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx217, i32 0, i64 1
  %203 = load float, float* %arrayidx218, align 4
  store float %203, float* %up, align 4
  %204 = load float, float* %sign.addr, align 4
  %conv219 = fpext float %204 to double
  %cmp220 = fcmp olt double %conv219, 0.000000e+00
  br i1 %cmp220, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %for.body.210
  %205 = load float, float* %up, align 4
  %sub223 = fsub float -0.000000e+00, %205
  store float %sub223, float* %up, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.222, %for.body.210
  %206 = load float, float* %rp, align 4
  %arrayidx225 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 0
  store float %206, float* %arrayidx225, align 4
  %207 = load float, float* %rp, align 4
  %arrayidx226 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 1
  store float %207, float* %arrayidx226, align 4
  %208 = load float, float* %rp, align 4
  %arrayidx227 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 2
  store float %208, float* %arrayidx227, align 4
  %209 = load float, float* %rp, align 4
  %arrayidx228 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 3
  store float %209, float* %arrayidx228, align 4
  %210 = load float, float* %up, align 4
  %sub229 = fsub float -0.000000e+00, %210
  %arrayidx230 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 0
  store float %sub229, float* %arrayidx230, align 4
  %211 = load float, float* %up, align 4
  %arrayidx231 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 1
  store float %211, float* %arrayidx231, align 4
  %212 = load float, float* %up, align 4
  %sub232 = fsub float -0.000000e+00, %212
  %arrayidx233 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 2
  store float %sub232, float* %arrayidx233, align 4
  %213 = load float, float* %up, align 4
  %arrayidx234 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 3
  store float %213, float* %arrayidx234, align 4
  %arraydecay235 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i32 0
  %call236 = call <4 x float> @_mm_load_ps(float* %arraydecay235)
  store <4 x float> %call236, <4 x float>* %V6, align 16
  %arraydecay237 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i32 0
  %call238 = call <4 x float> @_mm_load_ps(float* %arraydecay237)
  store <4 x float> %call238, <4 x float>* %V7, align 16
  store i32 0, i32* %k, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.302, %if.end.224
  %214 = load i32, i32* %k, align 4
  %215 = load i32, i32* %mj, align 4
  %cmp240 = icmp slt i32 %214, %215
  br i1 %cmp240, label %for.body.242, label %for.end.304

for.body.242:                                     ; preds = %for.cond.239
  %216 = load i32, i32* %k, align 4
  %add243 = add nsw i32 %216, 2
  store i32 %add243, i32* %k2, align 4
  %217 = load i32, i32* %jw, align 4
  %218 = load i32, i32* %k, align 4
  %add244 = add nsw i32 %217, %218
  %idxprom245 = sext i32 %add244 to i64
  %219 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx246 = getelementptr inbounds [2 x float], [2 x float]* %219, i64 %idxprom245
  %arrayidx247 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx246, i32 0, i64 0
  %call248 = call <4 x float> @_mm_load_ps(float* %arrayidx247)
  store <4 x float> %call248, <4 x float>* %V0, align 16
  %220 = load i32, i32* %jw, align 4
  %221 = load i32, i32* %k, align 4
  %add249 = add nsw i32 %220, %221
  %idxprom250 = sext i32 %add249 to i64
  %222 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx251 = getelementptr inbounds [2 x float], [2 x float]* %222, i64 %idxprom250
  %arrayidx252 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx251, i32 0, i64 0
  %call253 = call <4 x float> @_mm_load_ps(float* %arrayidx252)
  store <4 x float> %call253, <4 x float>* %V1, align 16
  %223 = load <4 x float>, <4 x float>* %V0, align 16
  %224 = load <4 x float>, <4 x float>* %V1, align 16
  %call254 = call <4 x float> @_mm_add_ps(<4 x float> %223, <4 x float> %224)
  store <4 x float> %call254, <4 x float>* %V2, align 16
  %225 = load i32, i32* %jc, align 4
  %226 = load i32, i32* %k, align 4
  %add255 = add nsw i32 %225, %226
  %idxprom256 = sext i32 %add255 to i64
  %227 = load [2 x float]*, [2 x float]** %c, align 8
  %arrayidx257 = getelementptr inbounds [2 x float], [2 x float]* %227, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx257, i32 0, i64 0
  %228 = load <4 x float>, <4 x float>* %V2, align 16
  call void @_mm_store_ps(float* %arrayidx258, <4 x float> %228)
  %229 = load <4 x float>, <4 x float>* %V0, align 16
  %230 = load <4 x float>, <4 x float>* %V1, align 16
  %call259 = call <4 x float> @_mm_sub_ps(<4 x float> %229, <4 x float> %230)
  store <4 x float> %call259, <4 x float>* %V3, align 16
  %231 = load <4 x float>, <4 x float>* %V3, align 16
  store <4 x float> %231, <4 x float>* %__a261, align 16
  %232 = load <4 x float>, <4 x float>* %V3, align 16
  store <4 x float> %232, <4 x float>* %__b263, align 16
  %233 = load <4 x float>, <4 x float>* %__a261, align 16
  %234 = load <4 x float>, <4 x float>* %__b263, align 16
  %shuffle265 = shufflevector <4 x float> %233, <4 x float> %234, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %shuffle265, <4 x float>* %tmp264
  %235 = load <4 x float>, <4 x float>* %tmp264
  store <4 x float> %235, <4 x float>* %V4, align 16
  %236 = load <4 x float>, <4 x float>* %V6, align 16
  %237 = load <4 x float>, <4 x float>* %V3, align 16
  %call266 = call <4 x float> @_mm_mul_ps(<4 x float> %236, <4 x float> %237)
  store <4 x float> %call266, <4 x float>* %V0, align 16
  %238 = load <4 x float>, <4 x float>* %V7, align 16
  %239 = load <4 x float>, <4 x float>* %V4, align 16
  %call267 = call <4 x float> @_mm_mul_ps(<4 x float> %238, <4 x float> %239)
  store <4 x float> %call267, <4 x float>* %V1, align 16
  %240 = load <4 x float>, <4 x float>* %V0, align 16
  %241 = load <4 x float>, <4 x float>* %V1, align 16
  %call268 = call <4 x float> @_mm_add_ps(<4 x float> %240, <4 x float> %241)
  store <4 x float> %call268, <4 x float>* %V2, align 16
  %242 = load i32, i32* %jc, align 4
  %243 = load i32, i32* %k, align 4
  %add269 = add nsw i32 %242, %243
  %idxprom270 = sext i32 %add269 to i64
  %244 = load [2 x float]*, [2 x float]** %d, align 8
  %arrayidx271 = getelementptr inbounds [2 x float], [2 x float]* %244, i64 %idxprom270
  %arrayidx272 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx271, i32 0, i64 0
  %245 = load <4 x float>, <4 x float>* %V2, align 16
  call void @_mm_store_ps(float* %arrayidx272, <4 x float> %245)
  %246 = load i32, i32* %jw, align 4
  %247 = load i32, i32* %k2, align 4
  %add273 = add nsw i32 %246, %247
  %idxprom274 = sext i32 %add273 to i64
  %248 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx275 = getelementptr inbounds [2 x float], [2 x float]* %248, i64 %idxprom274
  %arrayidx276 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx275, i32 0, i64 0
  %call277 = call <4 x float> @_mm_load_ps(float* %arrayidx276)
  store <4 x float> %call277, <4 x float>* %V8, align 16
  %249 = load i32, i32* %jw, align 4
  %250 = load i32, i32* %k2, align 4
  %add278 = add nsw i32 %249, %250
  %idxprom279 = sext i32 %add278 to i64
  %251 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx280 = getelementptr inbounds [2 x float], [2 x float]* %251, i64 %idxprom279
  %arrayidx281 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx280, i32 0, i64 0
  %call282 = call <4 x float> @_mm_load_ps(float* %arrayidx281)
  store <4 x float> %call282, <4 x float>* %V9, align 16
  %252 = load <4 x float>, <4 x float>* %V8, align 16
  %253 = load <4 x float>, <4 x float>* %V9, align 16
  %call283 = call <4 x float> @_mm_add_ps(<4 x float> %252, <4 x float> %253)
  store <4 x float> %call283, <4 x float>* %V10, align 16
  %254 = load i32, i32* %jc, align 4
  %255 = load i32, i32* %k2, align 4
  %add284 = add nsw i32 %254, %255
  %idxprom285 = sext i32 %add284 to i64
  %256 = load [2 x float]*, [2 x float]** %c, align 8
  %arrayidx286 = getelementptr inbounds [2 x float], [2 x float]* %256, i64 %idxprom285
  %arrayidx287 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx286, i32 0, i64 0
  %257 = load <4 x float>, <4 x float>* %V10, align 16
  call void @_mm_store_ps(float* %arrayidx287, <4 x float> %257)
  %258 = load <4 x float>, <4 x float>* %V8, align 16
  %259 = load <4 x float>, <4 x float>* %V9, align 16
  %call288 = call <4 x float> @_mm_sub_ps(<4 x float> %258, <4 x float> %259)
  store <4 x float> %call288, <4 x float>* %V11, align 16
  %260 = load <4 x float>, <4 x float>* %V11, align 16
  store <4 x float> %260, <4 x float>* %__a290, align 16
  %261 = load <4 x float>, <4 x float>* %V11, align 16
  store <4 x float> %261, <4 x float>* %__b292, align 16
  %262 = load <4 x float>, <4 x float>* %__a290, align 16
  %263 = load <4 x float>, <4 x float>* %__b292, align 16
  %shuffle294 = shufflevector <4 x float> %262, <4 x float> %263, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %shuffle294, <4 x float>* %tmp293
  %264 = load <4 x float>, <4 x float>* %tmp293
  store <4 x float> %264, <4 x float>* %V12, align 16
  %265 = load <4 x float>, <4 x float>* %V6, align 16
  %266 = load <4 x float>, <4 x float>* %V11, align 16
  %call295 = call <4 x float> @_mm_mul_ps(<4 x float> %265, <4 x float> %266)
  store <4 x float> %call295, <4 x float>* %V8, align 16
  %267 = load <4 x float>, <4 x float>* %V7, align 16
  %268 = load <4 x float>, <4 x float>* %V12, align 16
  %call296 = call <4 x float> @_mm_mul_ps(<4 x float> %267, <4 x float> %268)
  store <4 x float> %call296, <4 x float>* %V9, align 16
  %269 = load <4 x float>, <4 x float>* %V8, align 16
  %270 = load <4 x float>, <4 x float>* %V9, align 16
  %call297 = call <4 x float> @_mm_add_ps(<4 x float> %269, <4 x float> %270)
  store <4 x float> %call297, <4 x float>* %V10, align 16
  %271 = load i32, i32* %jc, align 4
  %272 = load i32, i32* %k2, align 4
  %add298 = add nsw i32 %271, %272
  %idxprom299 = sext i32 %add298 to i64
  %273 = load [2 x float]*, [2 x float]** %d, align 8
  %arrayidx300 = getelementptr inbounds [2 x float], [2 x float]* %273, i64 %idxprom299
  %arrayidx301 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx300, i32 0, i64 0
  %274 = load <4 x float>, <4 x float>* %V10, align 16
  call void @_mm_store_ps(float* %arrayidx301, <4 x float> %274)
  br label %for.inc.302

for.inc.302:                                      ; preds = %for.body.242
  %275 = load i32, i32* %k, align 4
  %add303 = add nsw i32 %275, 4
  store i32 %add303, i32* %k, align 4
  br label %for.cond.239

for.end.304:                                      ; preds = %for.cond.239
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.end.304
  %276 = load i32, i32* %j, align 4
  %inc306 = add nsw i32 %276, 1
  store i32 %inc306, i32* %j, align 4
  br label %for.cond.207

for.end.307:                                      ; preds = %for.cond.207
  %277 = load i32, i32* %mj, align 4
  %mul308 = mul nsw i32 %277, 2
  store i32 %mul308, i32* %mj, align 4
  %278 = load i32, i32* %mj, align 4
  %mul309 = mul nsw i32 2, %278
  store i32 %mul309, i32* %mj2, align 4
  %279 = load i32, i32* %n.addr, align 4
  %280 = load i32, i32* %mj2, align 4
  %div310 = sdiv i32 %279, %280
  store i32 %div310, i32* %lj, align 4
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.307
  %281 = load i32, i32* %pass, align 4
  %inc312 = add nsw i32 %281, 1
  store i32 %inc312, i32* %pass, align 4
  br label %for.cond.178

for.end.313:                                      ; preds = %for.cond.178
  %282 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx314 = getelementptr inbounds [2 x float], [2 x float]* %282, i64 0
  %arrayidx315 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx314, i32 0, i64 0
  %283 = bitcast float* %arrayidx315 to i8*
  %284 = bitcast i8* %283 to [2 x float]*
  store [2 x float]* %284, [2 x float]** %c, align 8
  %285 = load i32, i32* %n.addr, align 4
  %div316 = sdiv i32 %285, 2
  %idxprom317 = sext i32 %div316 to i64
  %286 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx318 = getelementptr inbounds [2 x float], [2 x float]* %286, i64 %idxprom317
  %arrayidx319 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx318, i32 0, i64 0
  %287 = bitcast float* %arrayidx319 to i8*
  %288 = bitcast i8* %287 to [2 x float]*
  store [2 x float]* %288, [2 x float]** %d, align 8
  %289 = load i32, i32* %tgle, align 4
  %tobool320 = icmp ne i32 %289, 0
  br i1 %tobool320, label %if.then.321, label %if.else.328

if.then.321:                                      ; preds = %for.end.313
  %290 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx322 = getelementptr inbounds [2 x float], [2 x float]* %290, i64 0
  %arrayidx323 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx322, i32 0, i64 0
  %291 = bitcast float* %arrayidx323 to i8*
  %292 = bitcast i8* %291 to [2 x float]*
  store [2 x float]* %292, [2 x float]** %a, align 8
  %293 = load i32, i32* %n.addr, align 4
  %div324 = sdiv i32 %293, 2
  %idxprom325 = sext i32 %div324 to i64
  %294 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx326 = getelementptr inbounds [2 x float], [2 x float]* %294, i64 %idxprom325
  %arrayidx327 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx326, i32 0, i64 0
  %295 = bitcast float* %arrayidx327 to i8*
  %296 = bitcast i8* %295 to [2 x float]*
  store [2 x float]* %296, [2 x float]** %b, align 8
  br label %if.end.335

if.else.328:                                      ; preds = %for.end.313
  %297 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx329 = getelementptr inbounds [2 x float], [2 x float]* %297, i64 0
  %arrayidx330 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx329, i32 0, i64 0
  %298 = bitcast float* %arrayidx330 to i8*
  %299 = bitcast i8* %298 to [2 x float]*
  store [2 x float]* %299, [2 x float]** %a, align 8
  %300 = load i32, i32* %n.addr, align 4
  %div331 = sdiv i32 %300, 2
  %idxprom332 = sext i32 %div331 to i64
  %301 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx333 = getelementptr inbounds [2 x float], [2 x float]* %301, i64 %idxprom332
  %arrayidx334 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx333, i32 0, i64 0
  %302 = bitcast float* %arrayidx334 to i8*
  %303 = bitcast i8* %302 to [2 x float]*
  store [2 x float]* %303, [2 x float]** %b, align 8
  br label %if.end.335

if.end.335:                                       ; preds = %if.else.328, %if.then.321
  store i32 0, i32* %k, align 4
  br label %for.cond.336

for.cond.336:                                     ; preds = %for.inc.374, %if.end.335
  %304 = load i32, i32* %k, align 4
  %305 = load i32, i32* %n.addr, align 4
  %div337 = sdiv i32 %305, 2
  %cmp338 = icmp slt i32 %304, %div337
  br i1 %cmp338, label %for.body.340, label %for.end.376

for.body.340:                                     ; preds = %for.cond.336
  %306 = load i32, i32* %k, align 4
  %add341 = add nsw i32 %306, 2
  store i32 %add341, i32* %k2, align 4
  %307 = load i32, i32* %k, align 4
  %idxprom342 = sext i32 %307 to i64
  %308 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx343 = getelementptr inbounds [2 x float], [2 x float]* %308, i64 %idxprom342
  %arrayidx344 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx343, i32 0, i64 0
  %call345 = call <4 x float> @_mm_load_ps(float* %arrayidx344)
  store <4 x float> %call345, <4 x float>* %V0, align 16
  %309 = load i32, i32* %k, align 4
  %idxprom346 = sext i32 %309 to i64
  %310 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx347 = getelementptr inbounds [2 x float], [2 x float]* %310, i64 %idxprom346
  %arrayidx348 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx347, i32 0, i64 0
  %call349 = call <4 x float> @_mm_load_ps(float* %arrayidx348)
  store <4 x float> %call349, <4 x float>* %V1, align 16
  %311 = load <4 x float>, <4 x float>* %V0, align 16
  %312 = load <4 x float>, <4 x float>* %V1, align 16
  %call350 = call <4 x float> @_mm_add_ps(<4 x float> %311, <4 x float> %312)
  store <4 x float> %call350, <4 x float>* %V2, align 16
  %313 = load i32, i32* %k, align 4
  %idxprom351 = sext i32 %313 to i64
  %314 = load [2 x float]*, [2 x float]** %c, align 8
  %arrayidx352 = getelementptr inbounds [2 x float], [2 x float]* %314, i64 %idxprom351
  %arrayidx353 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx352, i32 0, i64 0
  %315 = load <4 x float>, <4 x float>* %V2, align 16
  call void @_mm_store_ps(float* %arrayidx353, <4 x float> %315)
  %316 = load <4 x float>, <4 x float>* %V0, align 16
  %317 = load <4 x float>, <4 x float>* %V1, align 16
  %call354 = call <4 x float> @_mm_sub_ps(<4 x float> %316, <4 x float> %317)
  store <4 x float> %call354, <4 x float>* %V3, align 16
  %318 = load i32, i32* %k, align 4
  %idxprom355 = sext i32 %318 to i64
  %319 = load [2 x float]*, [2 x float]** %d, align 8
  %arrayidx356 = getelementptr inbounds [2 x float], [2 x float]* %319, i64 %idxprom355
  %arrayidx357 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx356, i32 0, i64 0
  %320 = load <4 x float>, <4 x float>* %V3, align 16
  call void @_mm_store_ps(float* %arrayidx357, <4 x float> %320)
  %321 = load i32, i32* %k2, align 4
  %idxprom358 = sext i32 %321 to i64
  %322 = load [2 x float]*, [2 x float]** %a, align 8
  %arrayidx359 = getelementptr inbounds [2 x float], [2 x float]* %322, i64 %idxprom358
  %arrayidx360 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx359, i32 0, i64 0
  %call361 = call <4 x float> @_mm_load_ps(float* %arrayidx360)
  store <4 x float> %call361, <4 x float>* %V4, align 16
  %323 = load i32, i32* %k2, align 4
  %idxprom362 = sext i32 %323 to i64
  %324 = load [2 x float]*, [2 x float]** %b, align 8
  %arrayidx363 = getelementptr inbounds [2 x float], [2 x float]* %324, i64 %idxprom362
  %arrayidx364 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx363, i32 0, i64 0
  %call365 = call <4 x float> @_mm_load_ps(float* %arrayidx364)
  store <4 x float> %call365, <4 x float>* %V5, align 16
  %325 = load <4 x float>, <4 x float>* %V4, align 16
  %326 = load <4 x float>, <4 x float>* %V5, align 16
  %call366 = call <4 x float> @_mm_add_ps(<4 x float> %325, <4 x float> %326)
  store <4 x float> %call366, <4 x float>* %V6, align 16
  %327 = load i32, i32* %k2, align 4
  %idxprom367 = sext i32 %327 to i64
  %328 = load [2 x float]*, [2 x float]** %c, align 8
  %arrayidx368 = getelementptr inbounds [2 x float], [2 x float]* %328, i64 %idxprom367
  %arrayidx369 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx368, i32 0, i64 0
  %329 = load <4 x float>, <4 x float>* %V6, align 16
  call void @_mm_store_ps(float* %arrayidx369, <4 x float> %329)
  %330 = load <4 x float>, <4 x float>* %V4, align 16
  %331 = load <4 x float>, <4 x float>* %V5, align 16
  %call370 = call <4 x float> @_mm_sub_ps(<4 x float> %330, <4 x float> %331)
  store <4 x float> %call370, <4 x float>* %V7, align 16
  %332 = load i32, i32* %k2, align 4
  %idxprom371 = sext i32 %332 to i64
  %333 = load [2 x float]*, [2 x float]** %d, align 8
  %arrayidx372 = getelementptr inbounds [2 x float], [2 x float]* %333, i64 %idxprom371
  %arrayidx373 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx372, i32 0, i64 0
  %334 = load <4 x float>, <4 x float>* %V7, align 16
  call void @_mm_store_ps(float* %arrayidx373, <4 x float> %334)
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.body.340
  %335 = load i32, i32* %k, align 4
  %add375 = add nsw i32 %335, 4
  store i32 %add375, i32* %k, align 4
  br label %for.cond.336

for.end.376:                                      ; preds = %if.then, %if.then.95, %if.then.173, %for.cond.336
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_load_ps(float* %__p) #3 {
entry:
  %__p.addr = alloca float*, align 8
  store float* %__p, float** %__p.addr, align 8
  %0 = load float*, float** %__p.addr, align 8
  %1 = bitcast float* %0 to <4 x float>*
  %2 = load <4 x float>, <4 x float>* %1, align 16
  ret <4 x float> %2
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @_mm_store_ps(float* %__p, <4 x float> %__a) #3 {
entry:
  %__p.addr = alloca float*, align 8
  %__a.addr = alloca <4 x float>, align 16
  store float* %__p, float** %__p.addr, align 8
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load float*, float** %__p.addr, align 8
  %2 = bitcast float* %1 to <4 x float>*
  store <4 x float> %0, <4 x float>* %2, align 16
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_sub_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %sub = fsub <4 x float> %0, %1
  ret <4 x float> %sub
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: nounwind uwtable
define void @cffti(i32 %n, [2 x float]* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca [2 x float]*, align 8
  %i = alloca i32, align 4
  %n2 = alloca i32, align 4
  %aw = alloca float, align 4
  %arg = alloca float, align 4
  %pi = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store [2 x float]* %w, [2 x float]** %w.addr, align 8
  store float 0x400921FB60000000, float* %pi, align 4
  %0 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n2, align 4
  %1 = load float, float* %pi, align 4
  %conv = fpext float %1 to double
  %mul = fmul double 2.000000e+00, %conv
  %2 = load i32, i32* %n.addr, align 4
  %conv1 = sitofp i32 %2 to float
  %conv2 = fpext float %conv1 to double
  %div3 = fdiv double %mul, %conv2
  %conv4 = fptrunc double %div3 to float
  store float %conv4, float* %aw, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n2, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float, float* %aw, align 4
  %6 = load i32, i32* %i, align 4
  %conv6 = sitofp i32 %6 to float
  %mul7 = fmul float %5, %conv6
  store float %mul7, float* %arg, align 4
  %7 = load float, float* %arg, align 4
  %conv8 = fpext float %7 to double
  %call = call double @cos(double %conv8) #4
  %conv9 = fptrunc double %call to float
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %9, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %conv9, float* %arrayidx10, align 4
  %10 = load float, float* %arg, align 4
  %conv11 = fpext float %10 to double
  %call12 = call double @sin(double %conv11) #4
  %conv13 = fptrunc double %call12 to float
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 1
  store float %conv13, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind uwtable
define float @ggl(float* %ds) #0 {
entry:
  %ds.addr = alloca float*, align 8
  %t = alloca double, align 8
  %d2 = alloca double, align 8
  store float* %ds, float** %ds.addr, align 8
  store double 0x41DFFFFFFFC00000, double* %d2, align 8
  %0 = load float*, float** %ds.addr, align 8
  %1 = load float, float* %0, align 4
  %conv = fpext float %1 to double
  store double %conv, double* %t, align 8
  %2 = load double, double* %t, align 8
  %mul = fmul double 1.680700e+04, %2
  %3 = load double, double* %d2, align 8
  %call = call double @fmod(double %mul, double %3) #4
  store double %call, double* %t, align 8
  %4 = load double, double* %t, align 8
  %conv1 = fptrunc double %4 to float
  %5 = load float*, float** %ds.addr, align 8
  store float %conv1, float* %5, align 4
  %6 = load double, double* %t, align 8
  %sub = fsub double %6, 1.000000e+00
  %7 = load double, double* %d2, align 8
  %sub2 = fsub double %7, 1.000000e+00
  %div = fdiv double %sub, %sub2
  %conv3 = fptrunc double %div to float
  ret float %conv3
}

; Function Attrs: nounwind
declare double @fmod(double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
