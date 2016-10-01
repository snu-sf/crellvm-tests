; ModuleID = './SingleSource.UnitTests.Vector/7.SSE.sse.stepfft.bc'
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
  %seed = alloca float, align 4
  %error = alloca float, align 4
  %fnm1 = alloca float, align 4
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

for.cond:                                         ; preds = %for.inc.106, %entry
  %0 = load i32, i32* %icase, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.108

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
  br i1 %tobool29, label %if.then.30, label %if.else.78

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
  store float 0.000000e+00, float* %error, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.69, %if.then.30
  %29 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %29, 2048
  br i1 %cmp36, label %for.body.38, label %for.end.71

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
  %50 = load float, float* %error, align 4
  %add68 = fadd float %50, %add67
  store float %add68, float* %error, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.38
  %51 = load i32, i32* %i, align 4
  %add70 = add nsw i32 %51, 2
  store i32 %add70, i32* %i, align 4
  br label %for.cond.35

for.end.71:                                       ; preds = %for.cond.35
  %52 = load float, float* %fnm1, align 4
  %53 = load float, float* %error, align 4
  %mul72 = fmul float %52, %53
  %conv73 = fpext float %mul72 to double
  %call74 = call double @sqrt(double %conv73) #4
  %conv75 = fptrunc double %call74 to float
  store float %conv75, float* %error, align 4
  %54 = load float, float* %error, align 4
  %conv76 = fpext float %54 to double
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 1024, double %conv76)
  store i32 0, i32* %first, align 4
  br label %if.end.105

if.else.78:                                       ; preds = %if.end
  store i32 0, i32* %j, align 4
  store i32 0, i32* %it, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.85, %if.else.78
  %55 = load i32, i32* %it, align 4
  %cmp80 = icmp slt i32 %55, 20000
  br i1 %cmp80, label %for.body.82, label %for.end.86

for.body.82:                                      ; preds = %for.cond.79
  store float 1.000000e+00, float* %sign, align 4
  %56 = load i32, i32* %n, align 4
  %57 = load float, float* %sign, align 4
  %conv83 = fpext float %57 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 %56, float* getelementptr inbounds ([2048 x float], [2048 x float]* @x, i32 0, i32 0), float* getelementptr inbounds ([2048 x float], [2048 x float]* @y, i32 0, i32 0), float* getelementptr inbounds ([1024 x float], [1024 x float]* @w, i32 0, i32 0), double %conv83)
  store float -1.000000e+00, float* %sign, align 4
  %58 = load i32, i32* %n, align 4
  %59 = load float, float* %sign, align 4
  %conv84 = fpext float %59 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 %58, float* getelementptr inbounds ([2048 x float], [2048 x float]* @y, i32 0, i32 0), float* getelementptr inbounds ([2048 x float], [2048 x float]* @x, i32 0, i32 0), float* getelementptr inbounds ([1024 x float], [1024 x float]* @w, i32 0, i32 0), double %conv84)
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.82
  %60 = load i32, i32* %it, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %it, align 4
  br label %for.cond.79

for.end.86:                                       ; preds = %for.cond.79
  %61 = load i32, i32* %n, align 4
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %61)
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.102, %for.end.86
  %62 = load i32, i32* %i, align 4
  %cmp89 = icmp slt i32 %62, 1024
  br i1 %cmp89, label %for.body.91, label %for.end.104

for.body.91:                                      ; preds = %for.cond.88
  %63 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %63 to i64
  %arrayidx93 = getelementptr inbounds [1024 x float], [1024 x float]* @w, i32 0, i64 %idxprom92
  %64 = load float, float* %arrayidx93, align 4
  %conv94 = fpext float %64 to double
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), double %conv94)
  %65 = load i32, i32* %j, align 4
  %inc96 = add i32 %65, 1
  store i32 %inc96, i32* %j, align 4
  %66 = load i32, i32* %j, align 4
  %cmp97 = icmp eq i32 %66, 4
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %for.body.91
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %for.body.91
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %67 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %67, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.88

for.end.104:                                      ; preds = %for.cond.88
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.end.71
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %68 = load i32, i32* %icase, align 4
  %inc107 = add nsw i32 %68, 1
  store i32 %inc107, i32* %icase, align 4
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
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
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  %mj = alloca i32, align 4
  %tgle = alloca i32, align 4
  %sign = fptrunc double %0 to float
  store i32 %n, i32* %n.addr, align 4
  store [2 x float]* %x, [2 x float]** %x.addr, align 8
  store [2 x float]* %y, [2 x float]** %y.addr, align 8
  store [2 x float]* %w, [2 x float]** %w.addr, align 8
  store float %sign, float* %sign.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %1 to float
  %conv1 = fpext float %conv to double
  %call = call double @log(double %conv1) #4
  %call2 = call double @log(double 1.990000e+00) #4
  %div = fdiv double %call, %call2
  %conv3 = fptosi double %div to i32
  store i32 %conv3, i32* %m, align 4
  store i32 1, i32* %mj, align 4
  store i32 1, i32* %tgle, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %mj, align 4
  %4 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  %5 = load i32, i32* %n.addr, align 4
  %div5 = sdiv i32 %5, 2
  %idxprom = sext i32 %div5 to i64
  %6 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 %idxprom
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx6, i32 0, i64 0
  %7 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %7, i64 0
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx8, i32 0, i64 0
  %8 = load i32, i32* %mj, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx11, i32 0, i64 0
  %10 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %11 = load float, float* %sign.addr, align 4
  %conv13 = fpext float %11 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 %2, i32 %3, float* %arrayidx4, float* %arrayidx7, float* %arrayidx9, float* %arrayidx12, [2 x float]* %10, double %conv13)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %13, 2
  %cmp = icmp slt i32 %12, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %mj, align 4
  %mul = mul nsw i32 %14, 2
  store i32 %mul, i32* %mj, align 4
  %15 = load i32, i32* %tgle, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %n.addr, align 4
  %17 = load i32, i32* %mj, align 4
  %18 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 0
  %19 = load i32, i32* %n.addr, align 4
  %div17 = sdiv i32 %19, 2
  %idxprom18 = sext i32 %div17 to i64
  %20 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx19, i32 0, i64 0
  %21 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0
  %arrayidx22 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx21, i32 0, i64 0
  %22 = load i32, i32* %mj, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %23, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx24, i32 0, i64 0
  %24 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %25 = load float, float* %sign.addr, align 4
  %conv26 = fpext float %25 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 %16, i32 %17, float* %arrayidx16, float* %arrayidx20, float* %arrayidx22, float* %arrayidx25, [2 x float]* %24, double %conv26)
  store i32 0, i32* %tgle, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %26 = load i32, i32* %n.addr, align 4
  %27 = load i32, i32* %mj, align 4
  %28 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx27 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 0
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx27, i32 0, i64 0
  %29 = load i32, i32* %n.addr, align 4
  %div29 = sdiv i32 %29, 2
  %idxprom30 = sext i32 %div29 to i64
  %30 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx31 = getelementptr inbounds [2 x float], [2 x float]* %30, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx31, i32 0, i64 0
  %31 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx33 = getelementptr inbounds [2 x float], [2 x float]* %31, i64 0
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx33, i32 0, i64 0
  %32 = load i32, i32* %mj, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx36, i32 0, i64 0
  %34 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %35 = load float, float* %sign.addr, align 4
  %conv38 = fpext float %35 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 %26, i32 %27, float* %arrayidx28, float* %arrayidx32, float* %arrayidx34, float* %arrayidx37, [2 x float]* %34, double %conv38)
  store i32 1, i32* %tgle, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %tgle, align 4
  %tobool39 = icmp ne i32 %37, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.end
  %38 = load i32, i32* %n.addr, align 4
  %39 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %40 = load [2 x float]*, [2 x float]** %x.addr, align 8
  call void @ccopy(i32 %38, [2 x float]* %39, [2 x float]* %40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %for.end
  %41 = load i32, i32* %n.addr, align 4
  %div42 = sdiv i32 %41, 2
  store i32 %div42, i32* %mj, align 4
  %42 = load i32, i32* %n.addr, align 4
  %43 = load i32, i32* %mj, align 4
  %44 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %44, i64 0
  %arrayidx44 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx43, i32 0, i64 0
  %45 = load i32, i32* %n.addr, align 4
  %div45 = sdiv i32 %45, 2
  %idxprom46 = sext i32 %div45 to i64
  %46 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx47 = getelementptr inbounds [2 x float], [2 x float]* %46, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx47, i32 0, i64 0
  %47 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx49 = getelementptr inbounds [2 x float], [2 x float]* %47, i64 0
  %arrayidx50 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx49, i32 0, i64 0
  %48 = load i32, i32* %mj, align 4
  %idxprom51 = sext i32 %48 to i64
  %49 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx52 = getelementptr inbounds [2 x float], [2 x float]* %49, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx52, i32 0, i64 0
  %50 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %51 = load float, float* %sign.addr, align 4
  %conv54 = fpext float %51 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 %42, i32 %43, float* %arrayidx44, float* %arrayidx48, float* %arrayidx50, float* %arrayidx53, [2 x float]* %50, double %conv54)
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #1

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
define void @ccopy(i32 %n, [2 x float]* %x, [2 x float]* %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca [2 x float]*, align 8
  %y.addr = alloca [2 x float]*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [2 x float]* %x, [2 x float]** %x.addr, align 8
  store [2 x float]* %y, [2 x float]** %y.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  %4 = load float, float* %arrayidx1, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx3, i32 0, i64 0
  store float %4, float* %arrayidx4, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load [2 x float]*, [2 x float]** %x.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx6, i32 0, i64 1
  %9 = load float, float* %arrayidx7, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load [2 x float]*, [2 x float]** %y.addr, align 8
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx9, i32 0, i64 1
  store float %9, float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

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

; Function Attrs: nounwind uwtable
define void @step(i32 %n, i32 %mj, [2 x float]* %a, [2 x float]* %b, [2 x float]* %c, [2 x float]* %d, [2 x float]* %w, double) #0 {
entry:
  %n.addr = alloca i32, align 4
  %mj.addr = alloca i32, align 4
  %a.addr = alloca [2 x float]*, align 8
  %b.addr = alloca [2 x float]*, align 8
  %c.addr = alloca [2 x float]*, align 8
  %d.addr = alloca [2 x float]*, align 8
  %w.addr = alloca [2 x float]*, align 8
  %sign.addr = alloca float, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %jc = alloca i32, align 4
  %jw = alloca i32, align 4
  %l = alloca i32, align 4
  %lj = alloca i32, align 4
  %mj2 = alloca i32, align 4
  %mseg = alloca i32, align 4
  %rp = alloca float, align 4
  %up = alloca float, align 4
  %wr = alloca [4 x float], align 16
  %wu = alloca [4 x float], align 16
  %xmm0 = alloca <4 x float>, align 16
  %xmm1 = alloca <4 x float>, align 16
  %xmm2 = alloca <4 x float>, align 16
  %xmm3 = alloca <4 x float>, align 16
  %xmm4 = alloca <4 x float>, align 16
  %xmm5 = alloca <4 x float>, align 16
  %xmm6 = alloca <4 x float>, align 16
  %xmm7 = alloca <4 x float>, align 16
  %__a = alloca <4 x float>, align 16
  %__b = alloca <4 x float>, align 16
  %tmp = alloca <4 x float>, align 16
  %sign = fptrunc double %0 to float
  store i32 %n, i32* %n.addr, align 4
  store i32 %mj, i32* %mj.addr, align 4
  store [2 x float]* %a, [2 x float]** %a.addr, align 8
  store [2 x float]* %b, [2 x float]** %b.addr, align 8
  store [2 x float]* %c, [2 x float]** %c.addr, align 8
  store [2 x float]* %d, [2 x float]** %d.addr, align 8
  store [2 x float]* %w, [2 x float]** %w.addr, align 8
  store float %sign, float* %sign.addr, align 4
  %1 = load i32, i32* %mj.addr, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %mj2, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %mj2, align 4
  %div = sdiv i32 %2, %3
  store i32 %div, i32* %lj, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %lj, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.113

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %mj.addr, align 4
  %mul1 = mul nsw i32 %6, %7
  store i32 %mul1, i32* %jw, align 4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %mj2, align 4
  %mul2 = mul nsw i32 %8, %9
  store i32 %mul2, i32* %jc, align 4
  %10 = load i32, i32* %jw, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %11, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  %12 = load float, float* %arrayidx3, align 4
  store float %12, float* %rp, align 4
  %13 = load i32, i32* %jw, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load [2 x float]*, [2 x float]** %w.addr, align 8
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx5, i32 0, i64 1
  %15 = load float, float* %arrayidx6, align 4
  store float %15, float* %up, align 4
  %16 = load float, float* %sign.addr, align 4
  %conv = fpext float %16 to double
  %cmp7 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load float, float* %up, align 4
  %sub = fsub float -0.000000e+00, %17
  store float %sub, float* %up, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load i32, i32* %mj.addr, align 4
  %cmp9 = icmp slt i32 %18, 2
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %19 = load float, float* %rp, align 4
  %20 = load i32, i32* %jw, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load [2 x float]*, [2 x float]** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx13, i32 0, i64 0
  %22 = load float, float* %arrayidx14, align 4
  %23 = load i32, i32* %jw, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load [2 x float]*, [2 x float]** %b.addr, align 8
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %24, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx16, i32 0, i64 0
  %25 = load float, float* %arrayidx17, align 4
  %sub18 = fsub float %22, %25
  %mul19 = fmul float %19, %sub18
  %26 = load float, float* %up, align 4
  %27 = load i32, i32* %jw, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load [2 x float]*, [2 x float]** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx21, i32 0, i64 1
  %29 = load float, float* %arrayidx22, align 4
  %30 = load i32, i32* %jw, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load [2 x float]*, [2 x float]** %b.addr, align 8
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %31, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx24, i32 0, i64 1
  %32 = load float, float* %arrayidx25, align 4
  %sub26 = fsub float %29, %32
  %mul27 = fmul float %26, %sub26
  %sub28 = fsub float %mul19, %mul27
  %33 = load i32, i32* %jc, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load [2 x float]*, [2 x float]** %d.addr, align 8
  %arrayidx30 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx30, i32 0, i64 0
  store float %sub28, float* %arrayidx31, align 4
  %35 = load float, float* %up, align 4
  %36 = load i32, i32* %jw, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load [2 x float]*, [2 x float]** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds [2 x float], [2 x float]* %37, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx33, i32 0, i64 0
  %38 = load float, float* %arrayidx34, align 4
  %39 = load i32, i32* %jw, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load [2 x float]*, [2 x float]** %b.addr, align 8
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %40, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx36, i32 0, i64 0
  %41 = load float, float* %arrayidx37, align 4
  %sub38 = fsub float %38, %41
  %mul39 = fmul float %35, %sub38
  %42 = load float, float* %rp, align 4
  %43 = load i32, i32* %jw, align 4
  %idxprom40 = sext i32 %43 to i64
  %44 = load [2 x float]*, [2 x float]** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds [2 x float], [2 x float]* %44, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx41, i32 0, i64 1
  %45 = load float, float* %arrayidx42, align 4
  %46 = load i32, i32* %jw, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load [2 x float]*, [2 x float]** %b.addr, align 8
  %arrayidx44 = getelementptr inbounds [2 x float], [2 x float]* %47, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx44, i32 0, i64 1
  %48 = load float, float* %arrayidx45, align 4
  %sub46 = fsub float %45, %48
  %mul47 = fmul float %42, %sub46
  %add = fadd float %mul39, %mul47
  %49 = load i32, i32* %jc, align 4
  %idxprom48 = sext i32 %49 to i64
  %50 = load [2 x float]*, [2 x float]** %d.addr, align 8
  %arrayidx49 = getelementptr inbounds [2 x float], [2 x float]* %50, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx49, i32 0, i64 1
  store float %add, float* %arrayidx50, align 4
  %51 = load i32, i32* %jw, align 4
  %idxprom51 = sext i32 %51 to i64
  %52 = load [2 x float]*, [2 x float]** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds [2 x float], [2 x float]* %52, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx52, i32 0, i64 0
  %53 = load float, float* %arrayidx53, align 4
  %54 = load i32, i32* %jw, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load [2 x float]*, [2 x float]** %b.addr, align 8
  %arrayidx55 = getelementptr inbounds [2 x float], [2 x float]* %55, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx55, i32 0, i64 0
  %56 = load float, float* %arrayidx56, align 4
  %add57 = fadd float %53, %56
  %57 = load i32, i32* %jc, align 4
  %idxprom58 = sext i32 %57 to i64
  %58 = load [2 x float]*, [2 x float]** %c.addr, align 8
  %arrayidx59 = getelementptr inbounds [2 x float], [2 x float]* %58, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx59, i32 0, i64 0
  store float %add57, float* %arrayidx60, align 4
  %59 = load i32, i32* %jw, align 4
  %idxprom61 = sext i32 %59 to i64
  %60 = load [2 x float]*, [2 x float]** %a.addr, align 8
  %arrayidx62 = getelementptr inbounds [2 x float], [2 x float]* %60, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx62, i32 0, i64 1
  %61 = load float, float* %arrayidx63, align 4
  %62 = load i32, i32* %jw, align 4
  %idxprom64 = sext i32 %62 to i64
  %63 = load [2 x float]*, [2 x float]** %b.addr, align 8
  %arrayidx65 = getelementptr inbounds [2 x float], [2 x float]* %63, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx65, i32 0, i64 1
  %64 = load float, float* %arrayidx66, align 4
  %add67 = fadd float %61, %64
  %65 = load i32, i32* %jc, align 4
  %idxprom68 = sext i32 %65 to i64
  %66 = load [2 x float]*, [2 x float]** %c.addr, align 8
  %arrayidx69 = getelementptr inbounds [2 x float], [2 x float]* %66, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx69, i32 0, i64 1
  store float %add67, float* %arrayidx70, align 4
  br label %if.end.111

if.else:                                          ; preds = %if.end
  %67 = load float, float* %rp, align 4
  %arrayidx71 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 0
  store float %67, float* %arrayidx71, align 4
  %68 = load float, float* %rp, align 4
  %arrayidx72 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 1
  store float %68, float* %arrayidx72, align 4
  %69 = load float, float* %rp, align 4
  %arrayidx73 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 2
  store float %69, float* %arrayidx73, align 4
  %70 = load float, float* %rp, align 4
  %arrayidx74 = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i64 3
  store float %70, float* %arrayidx74, align 4
  %71 = load float, float* %up, align 4
  %sub75 = fsub float -0.000000e+00, %71
  %arrayidx76 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 0
  store float %sub75, float* %arrayidx76, align 4
  %72 = load float, float* %up, align 4
  %arrayidx77 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 1
  store float %72, float* %arrayidx77, align 4
  %73 = load float, float* %up, align 4
  %sub78 = fsub float -0.000000e+00, %73
  %arrayidx79 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 2
  store float %sub78, float* %arrayidx79, align 4
  %74 = load float, float* %up, align 4
  %arrayidx80 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i64 3
  store float %74, float* %arrayidx80, align 4
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %wr, i32 0, i32 0
  %call = call <4 x float> @_mm_load_ps(float* %arraydecay)
  store <4 x float> %call, <4 x float>* %xmm6, align 16
  %arraydecay81 = getelementptr inbounds [4 x float], [4 x float]* %wu, i32 0, i32 0
  %call82 = call <4 x float> @_mm_load_ps(float* %arraydecay81)
  store <4 x float> %call82, <4 x float>* %xmm7, align 16
  store i32 0, i32* %k, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc, %if.else
  %75 = load i32, i32* %k, align 4
  %76 = load i32, i32* %mj.addr, align 4
  %cmp84 = icmp slt i32 %75, %76
  br i1 %cmp84, label %for.body.86, label %for.end

for.body.86:                                      ; preds = %for.cond.83
  %77 = load i32, i32* %jw, align 4
  %78 = load i32, i32* %k, align 4
  %add87 = add nsw i32 %77, %78
  %idxprom88 = sext i32 %add87 to i64
  %79 = load [2 x float]*, [2 x float]** %a.addr, align 8
  %arrayidx89 = getelementptr inbounds [2 x float], [2 x float]* %79, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx89, i32 0, i64 0
  %call91 = call <4 x float> @_mm_load_ps(float* %arrayidx90)
  store <4 x float> %call91, <4 x float>* %xmm0, align 16
  %80 = load i32, i32* %jw, align 4
  %81 = load i32, i32* %k, align 4
  %add92 = add nsw i32 %80, %81
  %idxprom93 = sext i32 %add92 to i64
  %82 = load [2 x float]*, [2 x float]** %b.addr, align 8
  %arrayidx94 = getelementptr inbounds [2 x float], [2 x float]* %82, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx94, i32 0, i64 0
  %call96 = call <4 x float> @_mm_load_ps(float* %arrayidx95)
  store <4 x float> %call96, <4 x float>* %xmm1, align 16
  %83 = load <4 x float>, <4 x float>* %xmm0, align 16
  %84 = load <4 x float>, <4 x float>* %xmm1, align 16
  %call97 = call <4 x float> @_mm_add_ps(<4 x float> %83, <4 x float> %84)
  store <4 x float> %call97, <4 x float>* %xmm2, align 16
  %85 = load i32, i32* %jc, align 4
  %86 = load i32, i32* %k, align 4
  %add98 = add nsw i32 %85, %86
  %idxprom99 = sext i32 %add98 to i64
  %87 = load [2 x float]*, [2 x float]** %c.addr, align 8
  %arrayidx100 = getelementptr inbounds [2 x float], [2 x float]* %87, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx100, i32 0, i64 0
  %88 = load <4 x float>, <4 x float>* %xmm2, align 16
  call void @_mm_store_ps(float* %arrayidx101, <4 x float> %88)
  %89 = load <4 x float>, <4 x float>* %xmm0, align 16
  %90 = load <4 x float>, <4 x float>* %xmm1, align 16
  %call102 = call <4 x float> @_mm_sub_ps(<4 x float> %89, <4 x float> %90)
  store <4 x float> %call102, <4 x float>* %xmm3, align 16
  %91 = load <4 x float>, <4 x float>* %xmm3, align 16
  store <4 x float> %91, <4 x float>* %__a, align 16
  %92 = load <4 x float>, <4 x float>* %xmm3, align 16
  store <4 x float> %92, <4 x float>* %__b, align 16
  %93 = load <4 x float>, <4 x float>* %__a, align 16
  %94 = load <4 x float>, <4 x float>* %__b, align 16
  %shuffle = shufflevector <4 x float> %93, <4 x float> %94, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %shuffle, <4 x float>* %tmp
  %95 = load <4 x float>, <4 x float>* %tmp
  store <4 x float> %95, <4 x float>* %xmm4, align 16
  %96 = load <4 x float>, <4 x float>* %xmm6, align 16
  %97 = load <4 x float>, <4 x float>* %xmm3, align 16
  %call103 = call <4 x float> @_mm_mul_ps(<4 x float> %96, <4 x float> %97)
  store <4 x float> %call103, <4 x float>* %xmm0, align 16
  %98 = load <4 x float>, <4 x float>* %xmm7, align 16
  %99 = load <4 x float>, <4 x float>* %xmm4, align 16
  %call104 = call <4 x float> @_mm_mul_ps(<4 x float> %98, <4 x float> %99)
  store <4 x float> %call104, <4 x float>* %xmm1, align 16
  %100 = load <4 x float>, <4 x float>* %xmm0, align 16
  %101 = load <4 x float>, <4 x float>* %xmm1, align 16
  %call105 = call <4 x float> @_mm_add_ps(<4 x float> %100, <4 x float> %101)
  store <4 x float> %call105, <4 x float>* %xmm2, align 16
  %102 = load i32, i32* %jc, align 4
  %103 = load i32, i32* %k, align 4
  %add106 = add nsw i32 %102, %103
  %idxprom107 = sext i32 %add106 to i64
  %104 = load [2 x float]*, [2 x float]** %d.addr, align 8
  %arrayidx108 = getelementptr inbounds [2 x float], [2 x float]* %104, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx108, i32 0, i64 0
  %105 = load <4 x float>, <4 x float>* %xmm2, align 16
  call void @_mm_store_ps(float* %arrayidx109, <4 x float> %105)
  br label %for.inc

for.inc:                                          ; preds = %for.body.86
  %106 = load i32, i32* %k, align 4
  %add110 = add nsw i32 %106, 2
  store i32 %add110, i32* %k, align 4
  br label %for.cond.83

for.end:                                          ; preds = %for.cond.83
  br label %if.end.111

if.end.111:                                       ; preds = %for.end, %if.then.11
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %107 = load i32, i32* %j, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end.113:                                      ; preds = %for.cond
  ret void
}

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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
