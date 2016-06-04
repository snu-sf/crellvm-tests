; ModuleID = 'sre_random.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sre_random.rnd1 = internal global i64 0, align 8
@sre_random.rnd2 = internal global i64 0, align 8
@sre_random.rnd = internal global i64 0, align 8
@sre_random.tbl = internal global [64 x i64] zeroinitializer, align 16
@sre_randseed = internal global i32 42, align 4
@Gaussrandom.a = internal global [32 x double] [double 0.000000e+00, double 3.917609e-02, double 7.841241e-02, double 1.177700e-01, double 1.573107e-01, double 1.970991e-01, double 2.372021e-01, double 2.776904e-01, double 3.186394e-01, double 3.601300e-01, double 4.022501e-01, double 4.450965e-01, double 4.887764e-01, double 5.334097e-01, double 5.791322e-01, double 6.260990e-01, double 6.744898e-01, double 7.245144e-01, double 7.764218e-01, double 8.305109e-01, double 8.871466e-01, double 9.467818e-01, double 1.009990e+00, double 1.077516e+00, double 1.150349e+00, double 1.229859e+00, double 1.318011e+00, double 1.417797e+00, double 1.534121e+00, double 1.675940e+00, double 1.862732e+00, double 2.153875e+00], align 16
@Gaussrandom.d = internal global [31 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.636843e-01, double 2.425085e-01, double 2.255674e-01, double 2.116342e-01, double 1.999243e-01, double 1.899108e-01, double 1.812252e-01, double 1.736014e-01, double 1.668419e-01, double 1.607967e-01, double 1.553497e-01, double 1.504094e-01, double 1.459026e-01, double 1.417700e-01, double 1.379632e-01, double 1.344418e-01, double 1.311722e-01, double 1.281260e-01, double 1.252791e-01, double 1.226109e-01, double 1.201036e-01, double 1.177417e-01, double 1.155119e-01, double 1.134023e-01, double 1.114027e-01, double 1.095039e-01], align 16
@Gaussrandom.t = internal global [31 x double] [double 7.673828e-04, double 2.306870e-03, double 3.860618e-03, double 5.438454e-03, double 7.050700e-03, double 8.708396e-03, double 1.042357e-02, double 1.220953e-02, double 1.408125e-02, double 1.605579e-02, double 1.815290e-02, double 2.039573e-02, double 2.281177e-02, double 2.543407e-02, double 2.830296e-02, double 3.146822e-02, double 3.499233e-02, double 3.895483e-02, double 4.345878e-02, double 4.864035e-02, double 5.468334e-02, double 6.184222e-02, double 7.047983e-02, double 8.113195e-02, double 9.462444e-02, double 1.123001e-01, double 1.364980e-01, double 1.716886e-01, double 2.276241e-01, double 3.304980e-01, double 5.847031e-01], align 16
@Gaussrandom.h = internal global [31 x double] [double 3.920617e-02, double 3.932705e-02, double 3.951000e-02, double 3.975703e-02, double 4.007093e-02, double 4.045533e-02, double 4.091481e-02, double 4.145507e-02, double 4.208311e-02, double 4.280748e-02, double 4.363863e-02, double 4.458932e-02, double 4.567523e-02, double 4.691571e-02, double 4.833487e-02, double 4.996298e-02, double 5.183859e-02, double 5.401138e-02, double 5.654656e-02, double 5.953130e-02, double 6.308489e-02, double 6.737503e-02, double 7.264544e-02, double 7.926471e-02, double 8.781922e-02, double 9.930398e-02, double 1.155600e-01, double 1.404344e-01, double 1.836142e-01, double 2.790016e-01, double 7.010474e-01], align 16
@Gaussrandom.i = internal global i64 0, align 8
@Gaussrandom.snorm = internal global double 0.000000e+00, align 8
@Gaussrandom.u = internal global double 0.000000e+00, align 8
@Gaussrandom.s = internal global double 0.000000e+00, align 8
@Gaussrandom.ustar = internal global double 0.000000e+00, align 8
@Gaussrandom.aa = internal global double 0.000000e+00, align 8
@Gaussrandom.w = internal global double 0.000000e+00, align 8
@Gaussrandom.y = internal global double 0.000000e+00, align 8
@Gaussrandom.tt = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define double @sre_random() #0 {
entry:
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %i = alloca i32, align 4
  %a1 = alloca i64, align 8
  %m1 = alloca i64, align 8
  %q1 = alloca i64, align 8
  %r1 = alloca i64, align 8
  %a2 = alloca i64, align 8
  %m2 = alloca i64, align 8
  %q2 = alloca i64, align 8
  %r2 = alloca i64, align 8
  store i64 40014, i64* %a1, align 8
  store i64 2147483563, i64* %m1, align 8
  store i64 53668, i64* %q1, align 8
  store i64 12211, i64* %r1, align 8
  store i64 40692, i64* %a2, align 8
  store i64 2147483399, i64* %m2, align 8
  store i64 52774, i64* %q2, align 8
  store i64 3791, i64* %r2, align 8
  %0 = load i32, i32* @sre_randseed, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @sre_randseed, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* @sre_random.rnd1, align 8
  %2 = load i32, i32* @sre_randseed, align 4
  %conv1 = sext i32 %2 to i64
  store i64 %conv1, i64* @sre_random.rnd2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 64
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %a1, align 8
  %5 = load i64, i64* @sre_random.rnd1, align 8
  %6 = load i64, i64* %q1, align 8
  %rem = srem i64 %5, %6
  %mul = mul nsw i64 %4, %rem
  store i64 %mul, i64* %x, align 8
  %7 = load i64, i64* %r1, align 8
  %8 = load i64, i64* @sre_random.rnd1, align 8
  %9 = load i64, i64* %q1, align 8
  %div = sdiv i64 %8, %9
  %mul4 = mul nsw i64 %7, %div
  store i64 %mul4, i64* %y, align 8
  %10 = load i64, i64* %x, align 8
  %11 = load i64, i64* %y, align 8
  %sub = sub nsw i64 %10, %11
  store i64 %sub, i64* @sre_random.rnd1, align 8
  %12 = load i64, i64* @sre_random.rnd1, align 8
  %cmp5 = icmp slt i64 %12, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %13 = load i64, i64* %m1, align 8
  %14 = load i64, i64* @sre_random.rnd1, align 8
  %add = add nsw i64 %14, %13
  store i64 %add, i64* @sre_random.rnd1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  %15 = load i64, i64* %a2, align 8
  %16 = load i64, i64* @sre_random.rnd2, align 8
  %17 = load i64, i64* %q2, align 8
  %rem8 = srem i64 %16, %17
  %mul9 = mul nsw i64 %15, %rem8
  store i64 %mul9, i64* %x, align 8
  %18 = load i64, i64* %r2, align 8
  %19 = load i64, i64* @sre_random.rnd2, align 8
  %20 = load i64, i64* %q2, align 8
  %div10 = sdiv i64 %19, %20
  %mul11 = mul nsw i64 %18, %div10
  store i64 %mul11, i64* %y, align 8
  %21 = load i64, i64* %x, align 8
  %22 = load i64, i64* %y, align 8
  %sub12 = sub nsw i64 %21, %22
  store i64 %sub12, i64* @sre_random.rnd2, align 8
  %23 = load i64, i64* @sre_random.rnd2, align 8
  %cmp13 = icmp slt i64 %23, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %24 = load i64, i64* %m2, align 8
  %25 = load i64, i64* @sre_random.rnd2, align 8
  %add16 = add nsw i64 %25, %24
  store i64 %add16, i64* @sre_random.rnd2, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  %26 = load i64, i64* @sre_random.rnd1, align 8
  %27 = load i64, i64* @sre_random.rnd2, align 8
  %sub18 = sub nsw i64 %26, %27
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i32 0, i64 %idxprom
  store i64 %sub18, i64* %arrayidx, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i32 0, i64 %idxprom19
  %30 = load i64, i64* %arrayidx20, align 8
  %cmp21 = icmp slt i64 %30, 0
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.17
  %31 = load i64, i64* %m1, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i32 0, i64 %idxprom24
  %33 = load i64, i64* %arrayidx25, align 8
  %add26 = add nsw i64 %33, %31
  store i64 %add26, i64* %arrayidx25, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @sre_randseed, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %entry
  %35 = load i64, i64* %a1, align 8
  %36 = load i64, i64* @sre_random.rnd1, align 8
  %37 = load i64, i64* %q1, align 8
  %rem29 = srem i64 %36, %37
  %mul30 = mul nsw i64 %35, %rem29
  store i64 %mul30, i64* %x, align 8
  %38 = load i64, i64* %r1, align 8
  %39 = load i64, i64* @sre_random.rnd1, align 8
  %40 = load i64, i64* %q1, align 8
  %div31 = sdiv i64 %39, %40
  %mul32 = mul nsw i64 %38, %div31
  store i64 %mul32, i64* %y, align 8
  %41 = load i64, i64* %x, align 8
  %42 = load i64, i64* %y, align 8
  %sub33 = sub nsw i64 %41, %42
  store i64 %sub33, i64* @sre_random.rnd1, align 8
  %43 = load i64, i64* @sre_random.rnd1, align 8
  %cmp34 = icmp slt i64 %43, 0
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.28
  %44 = load i64, i64* %m1, align 8
  %45 = load i64, i64* @sre_random.rnd1, align 8
  %add37 = add nsw i64 %45, %44
  store i64 %add37, i64* @sre_random.rnd1, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.28
  %46 = load i64, i64* %a2, align 8
  %47 = load i64, i64* @sre_random.rnd2, align 8
  %48 = load i64, i64* %q2, align 8
  %rem39 = srem i64 %47, %48
  %mul40 = mul nsw i64 %46, %rem39
  store i64 %mul40, i64* %x, align 8
  %49 = load i64, i64* %r2, align 8
  %50 = load i64, i64* @sre_random.rnd2, align 8
  %51 = load i64, i64* %q2, align 8
  %div41 = sdiv i64 %50, %51
  %mul42 = mul nsw i64 %49, %div41
  store i64 %mul42, i64* %y, align 8
  %52 = load i64, i64* %x, align 8
  %53 = load i64, i64* %y, align 8
  %sub43 = sub nsw i64 %52, %53
  store i64 %sub43, i64* @sre_random.rnd2, align 8
  %54 = load i64, i64* @sre_random.rnd2, align 8
  %cmp44 = icmp slt i64 %54, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.38
  %55 = load i64, i64* %m2, align 8
  %56 = load i64, i64* @sre_random.rnd2, align 8
  %add47 = add nsw i64 %56, %55
  store i64 %add47, i64* @sre_random.rnd2, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.38
  %57 = load i64, i64* @sre_random.rnd, align 8
  %conv49 = sitofp i64 %57 to double
  %58 = load i64, i64* %m1, align 8
  %conv50 = sitofp i64 %58 to double
  %div51 = fdiv double %conv49, %conv50
  %mul52 = fmul double %div51, 6.400000e+01
  %conv53 = fptosi double %mul52 to i32
  store i32 %conv53, i32* %i, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %59 to i64
  %arrayidx55 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i32 0, i64 %idxprom54
  %60 = load i64, i64* %arrayidx55, align 8
  store i64 %60, i64* @sre_random.rnd, align 8
  %61 = load i64, i64* @sre_random.rnd1, align 8
  %62 = load i64, i64* @sre_random.rnd2, align 8
  %sub56 = sub nsw i64 %61, %62
  %63 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %63 to i64
  %arrayidx58 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i32 0, i64 %idxprom57
  store i64 %sub56, i64* %arrayidx58, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %64 to i64
  %arrayidx60 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i32 0, i64 %idxprom59
  %65 = load i64, i64* %arrayidx60, align 8
  %cmp61 = icmp slt i64 %65, 0
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.48
  %66 = load i64, i64* %m1, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %67 to i64
  %arrayidx65 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i32 0, i64 %idxprom64
  %68 = load i64, i64* %arrayidx65, align 8
  %add66 = add nsw i64 %68, %66
  store i64 %add66, i64* %arrayidx65, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.end.48
  %69 = load i64, i64* @sre_random.rnd, align 8
  %conv68 = sitofp i64 %69 to double
  %70 = load i64, i64* %m1, align 8
  %conv69 = sitofp i64 %70 to double
  %div70 = fdiv double %conv68, %conv69
  ret double %div70
}

; Function Attrs: nounwind uwtable
define void @sre_srandom(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %seed.addr, align 4
  %mul = mul nsw i32 -1, %1
  store i32 %mul, i32* %seed.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %seed.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 42, i32* %seed.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %seed.addr, align 4
  store i32 %3, i32* @sre_randseed, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define double @sre_random_positive() #0 {
entry:
  %x = alloca double, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call double @sre_random()
  store double %call, double* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load double, double* %x, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %1 = load double, double* %x, align 8
  ret double %1
}

; Function Attrs: nounwind uwtable
define double @ExponentialRandom() #0 {
entry:
  %x = alloca double, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call double @sre_random()
  store double %call, double* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load double, double* %x, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %1 = load double, double* %x, align 8
  %call1 = call double @log(double %1) #2
  %sub = fsub double -0.000000e+00, %call1
  ret double %sub
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define double @Gaussrandom(double %mean, double %stddev) #0 {
entry:
  %mean.addr = alloca double, align 8
  %stddev.addr = alloca double, align 8
  store double %mean, double* %mean.addr, align 8
  store double %stddev, double* %stddev.addr, align 8
  %call = call double @sre_random()
  store double %call, double* @Gaussrandom.u, align 8
  store double 0.000000e+00, double* @Gaussrandom.s, align 8
  %0 = load double, double* @Gaussrandom.u, align 8
  %cmp = fcmp ogt double %0, 5.000000e-01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* @Gaussrandom.s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* @Gaussrandom.u, align 8
  %2 = load double, double* @Gaussrandom.s, align 8
  %sub = fsub double %1, %2
  %3 = load double, double* @Gaussrandom.u, align 8
  %add = fadd double %3, %sub
  store double %add, double* @Gaussrandom.u, align 8
  %4 = load double, double* @Gaussrandom.u, align 8
  %mul = fmul double 3.200000e+01, %4
  store double %mul, double* @Gaussrandom.u, align 8
  %5 = load double, double* @Gaussrandom.u, align 8
  %conv = fptosi double %5 to i64
  store i64 %conv, i64* @Gaussrandom.i, align 8
  %6 = load i64, i64* @Gaussrandom.i, align 8
  %cmp1 = icmp eq i64 %6, 32
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 31, i64* @Gaussrandom.i, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %7 = load i64, i64* @Gaussrandom.i, align 8
  %cmp5 = icmp eq i64 %7, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %S100

if.end.8:                                         ; preds = %if.end.4
  %8 = load double, double* @Gaussrandom.u, align 8
  %9 = load i64, i64* @Gaussrandom.i, align 8
  %conv9 = sitofp i64 %9 to double
  %sub10 = fsub double %8, %conv9
  store double %sub10, double* @Gaussrandom.ustar, align 8
  %10 = load i64, i64* @Gaussrandom.i, align 8
  %add.ptr = getelementptr inbounds double, double* getelementptr inbounds ([32 x double], [32 x double]* @Gaussrandom.a, i32 0, i32 0), i64 %10
  %add.ptr11 = getelementptr inbounds double, double* %add.ptr, i64 -1
  %11 = load double, double* %add.ptr11, align 8
  store double %11, double* @Gaussrandom.aa, align 8
  br label %S40

S40:                                              ; preds = %if.end.48, %if.end.8
  %12 = load double, double* @Gaussrandom.ustar, align 8
  %13 = load i64, i64* @Gaussrandom.i, align 8
  %add.ptr12 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.t, i32 0, i32 0), i64 %13
  %add.ptr13 = getelementptr inbounds double, double* %add.ptr12, i64 -1
  %14 = load double, double* %add.ptr13, align 8
  %cmp14 = fcmp ole double %12, %14
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %S40
  br label %S60

if.end.17:                                        ; preds = %S40
  %15 = load double, double* @Gaussrandom.ustar, align 8
  %16 = load i64, i64* @Gaussrandom.i, align 8
  %add.ptr18 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.t, i32 0, i32 0), i64 %16
  %add.ptr19 = getelementptr inbounds double, double* %add.ptr18, i64 -1
  %17 = load double, double* %add.ptr19, align 8
  %sub20 = fsub double %15, %17
  %18 = load i64, i64* @Gaussrandom.i, align 8
  %add.ptr21 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.h, i32 0, i32 0), i64 %18
  %add.ptr22 = getelementptr inbounds double, double* %add.ptr21, i64 -1
  %19 = load double, double* %add.ptr22, align 8
  %mul23 = fmul double %sub20, %19
  store double %mul23, double* @Gaussrandom.w, align 8
  br label %S50

S50:                                              ; preds = %if.then.69, %if.then.42, %if.end.17
  %20 = load double, double* @Gaussrandom.aa, align 8
  %21 = load double, double* @Gaussrandom.w, align 8
  %add24 = fadd double %20, %21
  store double %add24, double* @Gaussrandom.y, align 8
  %22 = load double, double* @Gaussrandom.y, align 8
  store double %22, double* @Gaussrandom.snorm, align 8
  %23 = load double, double* @Gaussrandom.s, align 8
  %cmp25 = fcmp oeq double %23, 1.000000e+00
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %S50
  %24 = load double, double* @Gaussrandom.y, align 8
  %sub28 = fsub double -0.000000e+00, %24
  store double %sub28, double* @Gaussrandom.snorm, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %S50
  %25 = load double, double* %stddev.addr, align 8
  %26 = load double, double* @Gaussrandom.snorm, align 8
  %mul30 = fmul double %25, %26
  %27 = load double, double* %mean.addr, align 8
  %add31 = fadd double %mul30, %27
  ret double %add31

S60:                                              ; preds = %if.then.16
  %call32 = call double @sre_random()
  store double %call32, double* @Gaussrandom.u, align 8
  %28 = load double, double* @Gaussrandom.u, align 8
  %29 = load i64, i64* @Gaussrandom.i, align 8
  %add.ptr33 = getelementptr inbounds double, double* getelementptr inbounds ([32 x double], [32 x double]* @Gaussrandom.a, i32 0, i32 0), i64 %29
  %30 = load double, double* %add.ptr33, align 8
  %31 = load double, double* @Gaussrandom.aa, align 8
  %sub34 = fsub double %30, %31
  %mul35 = fmul double %28, %sub34
  store double %mul35, double* @Gaussrandom.w, align 8
  %32 = load double, double* @Gaussrandom.w, align 8
  %mul36 = fmul double 5.000000e-01, %32
  %33 = load double, double* @Gaussrandom.aa, align 8
  %add37 = fadd double %mul36, %33
  %34 = load double, double* @Gaussrandom.w, align 8
  %mul38 = fmul double %add37, %34
  store double %mul38, double* @Gaussrandom.tt, align 8
  br label %S80

S70:                                              ; preds = %if.then.47
  %35 = load double, double* @Gaussrandom.u, align 8
  store double %35, double* @Gaussrandom.tt, align 8
  %call39 = call double @sre_random()
  store double %call39, double* @Gaussrandom.ustar, align 8
  br label %S80

S80:                                              ; preds = %S70, %S60
  %36 = load double, double* @Gaussrandom.ustar, align 8
  %37 = load double, double* @Gaussrandom.tt, align 8
  %cmp40 = fcmp ogt double %36, %37
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %S80
  br label %S50

if.end.43:                                        ; preds = %S80
  %call44 = call double @sre_random()
  store double %call44, double* @Gaussrandom.u, align 8
  %38 = load double, double* @Gaussrandom.ustar, align 8
  %39 = load double, double* @Gaussrandom.u, align 8
  %cmp45 = fcmp oge double %38, %39
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.43
  br label %S70

if.end.48:                                        ; preds = %if.end.43
  %call49 = call double @sre_random()
  store double %call49, double* @Gaussrandom.ustar, align 8
  br label %S40

S100:                                             ; preds = %if.then.7
  store i64 6, i64* @Gaussrandom.i, align 8
  %40 = load double, double* getelementptr inbounds ([32 x double], [32 x double]* @Gaussrandom.a, i32 0, i64 31), align 8
  store double %40, double* @Gaussrandom.aa, align 8
  br label %S120

S110:                                             ; preds = %if.then.57
  %41 = load i64, i64* @Gaussrandom.i, align 8
  %add.ptr50 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.d, i32 0, i32 0), i64 %41
  %add.ptr51 = getelementptr inbounds double, double* %add.ptr50, i64 -1
  %42 = load double, double* %add.ptr51, align 8
  %43 = load double, double* @Gaussrandom.aa, align 8
  %add52 = fadd double %43, %42
  store double %add52, double* @Gaussrandom.aa, align 8
  %44 = load i64, i64* @Gaussrandom.i, align 8
  %add53 = add nsw i64 %44, 1
  store i64 %add53, i64* @Gaussrandom.i, align 8
  br label %S120

S120:                                             ; preds = %S110, %S100
  %45 = load double, double* @Gaussrandom.u, align 8
  %46 = load double, double* @Gaussrandom.u, align 8
  %add54 = fadd double %46, %45
  store double %add54, double* @Gaussrandom.u, align 8
  %47 = load double, double* @Gaussrandom.u, align 8
  %cmp55 = fcmp olt double %47, 1.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %S120
  br label %S110

if.end.58:                                        ; preds = %S120
  %48 = load double, double* @Gaussrandom.u, align 8
  %sub59 = fsub double %48, 1.000000e+00
  store double %sub59, double* @Gaussrandom.u, align 8
  br label %S140

S140:                                             ; preds = %if.end.75, %if.end.58
  %49 = load double, double* @Gaussrandom.u, align 8
  %50 = load i64, i64* @Gaussrandom.i, align 8
  %add.ptr60 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.d, i32 0, i32 0), i64 %50
  %add.ptr61 = getelementptr inbounds double, double* %add.ptr60, i64 -1
  %51 = load double, double* %add.ptr61, align 8
  %mul62 = fmul double %49, %51
  store double %mul62, double* @Gaussrandom.w, align 8
  %52 = load double, double* @Gaussrandom.w, align 8
  %mul63 = fmul double 5.000000e-01, %52
  %53 = load double, double* @Gaussrandom.aa, align 8
  %add64 = fadd double %mul63, %53
  %54 = load double, double* @Gaussrandom.w, align 8
  %mul65 = fmul double %add64, %54
  store double %mul65, double* @Gaussrandom.tt, align 8
  br label %S160

S150:                                             ; preds = %if.then.74
  %55 = load double, double* @Gaussrandom.u, align 8
  store double %55, double* @Gaussrandom.tt, align 8
  br label %S160

S160:                                             ; preds = %S150, %S140
  %call66 = call double @sre_random()
  store double %call66, double* @Gaussrandom.ustar, align 8
  %56 = load double, double* @Gaussrandom.ustar, align 8
  %57 = load double, double* @Gaussrandom.tt, align 8
  %cmp67 = fcmp ogt double %56, %57
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %S160
  br label %S50

if.end.70:                                        ; preds = %S160
  %call71 = call double @sre_random()
  store double %call71, double* @Gaussrandom.u, align 8
  %58 = load double, double* @Gaussrandom.ustar, align 8
  %59 = load double, double* @Gaussrandom.u, align 8
  %cmp72 = fcmp oge double %58, %59
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.70
  br label %S150

if.end.75:                                        ; preds = %if.end.70
  %call76 = call double @sre_random()
  store double %call76, double* @Gaussrandom.u, align 8
  br label %S140
}

; Function Attrs: nounwind uwtable
define i32 @DChoose(double* %p, i32 %N) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca double*, align 8
  %N.addr = alloca i32, align 4
  %roll = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store double* %p, double** %p.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %call = call double @sre_random()
  store double %call, double* %roll, align 8
  store double 0.000000e+00, double* %sum, align 8
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
  %3 = load double*, double** %p.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double, double* %sum, align 8
  %add = fadd double %5, %4
  store double %add, double* %sum, align 8
  %6 = load double, double* %roll, align 8
  %7 = load double, double* %sum, align 8
  %cmp1 = fcmp olt double %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call double @sre_random()
  %10 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %10 to double
  %mul = fmul double %call2, %conv
  %conv3 = fptosi double %mul to i32
  store i32 %conv3, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @FChoose(float* %p, i32 %N) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %roll = alloca float, align 4
  %sum = alloca float, align 4
  %i = alloca i32, align 4
  store float* %p, float** %p.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %call = call double @sre_random()
  %conv = fptrunc double %call to float
  store float %conv, float* %roll, align 4
  store float 0.000000e+00, float* %sum, align 4
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
  %3 = load float*, float** %p.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float, float* %sum, align 4
  %add = fadd float %5, %4
  store float %add, float* %sum, align 4
  %6 = load float, float* %roll, align 4
  %7 = load float, float* %sum, align 4
  %cmp2 = fcmp olt float %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call double @sre_random()
  %10 = load i32, i32* %N.addr, align 4
  %conv5 = sitofp i32 %10 to double
  %mul = fmul double %call4, %conv5
  %conv6 = fptosi double %mul to i32
  store i32 %conv6, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
