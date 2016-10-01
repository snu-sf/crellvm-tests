; ModuleID = './MultiSource.Benchmarks.FreeBench/10.pifft.fftsg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @cdft(i32 %n, i32 %isgn, double* %a, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %isgn.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %nw = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %isgn, i32* %isgn.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %nw, align 4
  %shl = shl i32 %3, 2
  %cmp = icmp sgt i32 %2, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %4, 2
  store i32 %shr, i32* %nw, align 4
  %5 = load i32, i32* %nw, align 4
  %6 = load i32*, i32** %ip.addr, align 8
  %7 = load double*, double** %w.addr, align 8
  call void @makewt(i32 %5, i32* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %isgn.addr, align 4
  %cmp1 = icmp sge i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %n.addr, align 4
  %10 = load double*, double** %a.addr, align 8
  %11 = load i32*, i32** %ip.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 2
  %12 = load i32, i32* %nw, align 4
  %13 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %9, double* %10, i32* %add.ptr, i32 %12, double* %13)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %n.addr, align 4
  %15 = load double*, double** %a.addr, align 8
  %16 = load i32*, i32** %ip.addr, align 8
  %add.ptr3 = getelementptr inbounds i32, i32* %16, i64 2
  %17 = load i32, i32* %nw, align 4
  %18 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %14, double* %15, i32* %add.ptr3, i32 %17, double* %18)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @makewt(i32 %nw, i32* %ip, double* %w) #0 {
entry:
  %nw.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %nwh = alloca i32, align 4
  %nw0 = alloca i32, align 4
  %nw1 = alloca i32, align 4
  %delta = alloca double, align 8
  %wn4r = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %nw.addr, align 4
  %1 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32*, i32** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %3 = load i32, i32* %nw.addr, align 4
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end.111

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %nw.addr, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %nwh, align 4
  %call = call double @atan(double 1.000000e+00) #2
  %5 = load i32, i32* %nwh, align 4
  %conv = sitofp i32 %5 to double
  %div = fdiv double %call, %conv
  store double %div, double* %delta, align 8
  %6 = load double, double* %delta, align 8
  %7 = load i32, i32* %nwh, align 4
  %conv2 = sitofp i32 %7 to double
  %mul = fmul double %6, %conv2
  %call3 = call double @cos(double %mul) #2
  store double %call3, double* %wn4r, align 8
  %8 = load double*, double** %w.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 0
  store double 1.000000e+00, double* %arrayidx4, align 8
  %9 = load double, double* %wn4r, align 8
  %10 = load double*, double** %w.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 1
  store double %9, double* %arrayidx5, align 8
  %11 = load i32, i32* %nwh, align 4
  %cmp6 = icmp sge i32 %11, 4
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %12 = load double, double* %delta, align 8
  %mul9 = fmul double %12, 2.000000e+00
  %call10 = call double @cos(double %mul9) #2
  %div11 = fdiv double 5.000000e-01, %call10
  %13 = load double*, double** %w.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %13, i64 2
  store double %div11, double* %arrayidx12, align 8
  %14 = load double, double* %delta, align 8
  %mul13 = fmul double %14, 6.000000e+00
  %call14 = call double @cos(double %mul13) #2
  %div15 = fdiv double 5.000000e-01, %call14
  %15 = load double*, double** %w.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %15, i64 3
  store double %div15, double* %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  store i32 4, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %nwh, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load double, double* %delta, align 8
  %19 = load i32, i32* %j, align 4
  %conv19 = sitofp i32 %19 to double
  %mul20 = fmul double %18, %conv19
  %call21 = call double @cos(double %mul20) #2
  %20 = load i32, i32* %j, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load double*, double** %w.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %21, i64 %idxprom
  store double %call21, double* %arrayidx22, align 8
  %22 = load double, double* %delta, align 8
  %23 = load i32, i32* %j, align 4
  %conv23 = sitofp i32 %23 to double
  %mul24 = fmul double %22, %conv23
  %call25 = call double @sin(double %mul24) #2
  %24 = load i32, i32* %j, align 4
  %add = add nsw i32 %24, 1
  %idxprom26 = sext i32 %add to i64
  %25 = load double*, double** %w.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %25, i64 %idxprom26
  store double %call25, double* %arrayidx27, align 8
  %26 = load double, double* %delta, align 8
  %mul28 = fmul double 3.000000e+00, %26
  %27 = load i32, i32* %j, align 4
  %conv29 = sitofp i32 %27 to double
  %mul30 = fmul double %mul28, %conv29
  %call31 = call double @cos(double %mul30) #2
  %28 = load i32, i32* %j, align 4
  %add32 = add nsw i32 %28, 2
  %idxprom33 = sext i32 %add32 to i64
  %29 = load double*, double** %w.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %29, i64 %idxprom33
  store double %call31, double* %arrayidx34, align 8
  %30 = load double, double* %delta, align 8
  %mul35 = fmul double 3.000000e+00, %30
  %31 = load i32, i32* %j, align 4
  %conv36 = sitofp i32 %31 to double
  %mul37 = fmul double %mul35, %conv36
  %call38 = call double @sin(double %mul37) #2
  %32 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %32, 3
  %idxprom40 = sext i32 %add39 to i64
  %33 = load double*, double** %w.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %33, i64 %idxprom40
  store double %call38, double* %arrayidx41, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %j, align 4
  %add42 = add nsw i32 %34, 4
  store i32 %add42, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %nw0, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.110, %for.end
  %35 = load i32, i32* %nwh, align 4
  %cmp43 = icmp sgt i32 %35, 2
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %nw0, align 4
  %37 = load i32, i32* %nwh, align 4
  %add45 = add nsw i32 %36, %37
  store i32 %add45, i32* %nw1, align 4
  %38 = load i32, i32* %nwh, align 4
  %shr46 = ashr i32 %38, 1
  store i32 %shr46, i32* %nwh, align 4
  %39 = load i32, i32* %nw1, align 4
  %idxprom47 = sext i32 %39 to i64
  %40 = load double*, double** %w.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %40, i64 %idxprom47
  store double 1.000000e+00, double* %arrayidx48, align 8
  %41 = load double, double* %wn4r, align 8
  %42 = load i32, i32* %nw1, align 4
  %add49 = add nsw i32 %42, 1
  %idxprom50 = sext i32 %add49 to i64
  %43 = load double*, double** %w.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %43, i64 %idxprom50
  store double %41, double* %arrayidx51, align 8
  %44 = load i32, i32* %nwh, align 4
  %cmp52 = icmp sge i32 %44, 4
  br i1 %cmp52, label %if.then.54, label %if.end.69

if.then.54:                                       ; preds = %while.body
  %45 = load i32, i32* %nw0, align 4
  %add55 = add nsw i32 %45, 4
  %idxprom56 = sext i32 %add55 to i64
  %46 = load double*, double** %w.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %46, i64 %idxprom56
  %47 = load double, double* %arrayidx57, align 8
  store double %47, double* %wk1r, align 8
  %48 = load i32, i32* %nw0, align 4
  %add58 = add nsw i32 %48, 6
  %idxprom59 = sext i32 %add58 to i64
  %49 = load double*, double** %w.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %49, i64 %idxprom59
  %50 = load double, double* %arrayidx60, align 8
  store double %50, double* %wk3r, align 8
  %51 = load double, double* %wk1r, align 8
  %div61 = fdiv double 5.000000e-01, %51
  %52 = load i32, i32* %nw1, align 4
  %add62 = add nsw i32 %52, 2
  %idxprom63 = sext i32 %add62 to i64
  %53 = load double*, double** %w.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %53, i64 %idxprom63
  store double %div61, double* %arrayidx64, align 8
  %54 = load double, double* %wk3r, align 8
  %div65 = fdiv double 5.000000e-01, %54
  %55 = load i32, i32* %nw1, align 4
  %add66 = add nsw i32 %55, 3
  %idxprom67 = sext i32 %add66 to i64
  %56 = load double*, double** %w.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %56, i64 %idxprom67
  store double %div65, double* %arrayidx68, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.54, %while.body
  store i32 4, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.108, %if.end.69
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %nwh, align 4
  %cmp71 = icmp slt i32 %57, %58
  br i1 %cmp71, label %for.body.73, label %for.end.110

for.body.73:                                      ; preds = %for.cond.70
  %59 = load i32, i32* %nw0, align 4
  %60 = load i32, i32* %j, align 4
  %mul74 = mul nsw i32 2, %60
  %add75 = add nsw i32 %59, %mul74
  %idxprom76 = sext i32 %add75 to i64
  %61 = load double*, double** %w.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %61, i64 %idxprom76
  %62 = load double, double* %arrayidx77, align 8
  store double %62, double* %wk1r, align 8
  %63 = load i32, i32* %nw0, align 4
  %64 = load i32, i32* %j, align 4
  %mul78 = mul nsw i32 2, %64
  %add79 = add nsw i32 %63, %mul78
  %add80 = add nsw i32 %add79, 1
  %idxprom81 = sext i32 %add80 to i64
  %65 = load double*, double** %w.addr, align 8
  %arrayidx82 = getelementptr inbounds double, double* %65, i64 %idxprom81
  %66 = load double, double* %arrayidx82, align 8
  store double %66, double* %wk1i, align 8
  %67 = load i32, i32* %nw0, align 4
  %68 = load i32, i32* %j, align 4
  %mul83 = mul nsw i32 2, %68
  %add84 = add nsw i32 %67, %mul83
  %add85 = add nsw i32 %add84, 2
  %idxprom86 = sext i32 %add85 to i64
  %69 = load double*, double** %w.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %69, i64 %idxprom86
  %70 = load double, double* %arrayidx87, align 8
  store double %70, double* %wk3r, align 8
  %71 = load i32, i32* %nw0, align 4
  %72 = load i32, i32* %j, align 4
  %mul88 = mul nsw i32 2, %72
  %add89 = add nsw i32 %71, %mul88
  %add90 = add nsw i32 %add89, 3
  %idxprom91 = sext i32 %add90 to i64
  %73 = load double*, double** %w.addr, align 8
  %arrayidx92 = getelementptr inbounds double, double* %73, i64 %idxprom91
  %74 = load double, double* %arrayidx92, align 8
  store double %74, double* %wk3i, align 8
  %75 = load double, double* %wk1r, align 8
  %76 = load i32, i32* %nw1, align 4
  %77 = load i32, i32* %j, align 4
  %add93 = add nsw i32 %76, %77
  %idxprom94 = sext i32 %add93 to i64
  %78 = load double*, double** %w.addr, align 8
  %arrayidx95 = getelementptr inbounds double, double* %78, i64 %idxprom94
  store double %75, double* %arrayidx95, align 8
  %79 = load double, double* %wk1i, align 8
  %80 = load i32, i32* %nw1, align 4
  %81 = load i32, i32* %j, align 4
  %add96 = add nsw i32 %80, %81
  %add97 = add nsw i32 %add96, 1
  %idxprom98 = sext i32 %add97 to i64
  %82 = load double*, double** %w.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %82, i64 %idxprom98
  store double %79, double* %arrayidx99, align 8
  %83 = load double, double* %wk3r, align 8
  %84 = load i32, i32* %nw1, align 4
  %85 = load i32, i32* %j, align 4
  %add100 = add nsw i32 %84, %85
  %add101 = add nsw i32 %add100, 2
  %idxprom102 = sext i32 %add101 to i64
  %86 = load double*, double** %w.addr, align 8
  %arrayidx103 = getelementptr inbounds double, double* %86, i64 %idxprom102
  store double %83, double* %arrayidx103, align 8
  %87 = load double, double* %wk3i, align 8
  %88 = load i32, i32* %nw1, align 4
  %89 = load i32, i32* %j, align 4
  %add104 = add nsw i32 %88, %89
  %add105 = add nsw i32 %add104, 3
  %idxprom106 = sext i32 %add105 to i64
  %90 = load double*, double** %w.addr, align 8
  %arrayidx107 = getelementptr inbounds double, double* %90, i64 %idxprom106
  store double %87, double* %arrayidx107, align 8
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.73
  %91 = load i32, i32* %j, align 4
  %add109 = add nsw i32 %91, 4
  store i32 %add109, i32* %j, align 4
  br label %for.cond.70

for.end.110:                                      ; preds = %for.cond.70
  %92 = load i32, i32* %nw1, align 4
  store i32 %92, i32* %nw0, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.111

if.end.111:                                       ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftfsub(i32 %n, double* %a, i32* %ip, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 32
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %1, 2
  store i32 %shr, i32* %m, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load double*, double** %a.addr, align 8
  %4 = load i32, i32* %nw.addr, align 4
  %5 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %4, %5
  %idxprom = sext i32 %sub to i64
  %6 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  call void @cftf1st(i32 %2, double* %3, double* %arrayidx)
  %7 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %7, 512
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %8 = load i32, i32* %m, align 4
  %9 = load double*, double** %a.addr, align 8
  %10 = load i32, i32* %nw.addr, align 4
  %11 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %8, double* %9, i32 %10, double* %11)
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* %m, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %14, i64 %idxprom3
  %15 = load i32, i32* %nw.addr, align 4
  %16 = load double*, double** %w.addr, align 8
  call void @cftrec2(i32 %12, double* %arrayidx4, i32 %15, double* %16)
  %17 = load i32, i32* %m, align 4
  %18 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %18
  %idxprom5 = sext i32 %mul to i64
  %19 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %19, i64 %idxprom5
  %20 = load i32, i32* %nw.addr, align 4
  %21 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %17, double* %arrayidx6, i32 %20, double* %21)
  %22 = load i32, i32* %m, align 4
  %23 = load i32, i32* %m, align 4
  %mul7 = mul nsw i32 3, %23
  %idxprom8 = sext i32 %mul7 to i64
  %24 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %24, i64 %idxprom8
  %25 = load i32, i32* %nw.addr, align 4
  %26 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %22, double* %arrayidx9, i32 %25, double* %26)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %27 = load i32, i32* %m, align 4
  %cmp10 = icmp sgt i32 %27, 32
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %28 = load i32, i32* %n.addr, align 4
  %29 = load double*, double** %a.addr, align 8
  %30 = load i32, i32* %nw.addr, align 4
  %31 = load double*, double** %w.addr, align 8
  call void @cftexp1(i32 %28, double* %29, i32 %30, double* %31)
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %32 = load i32, i32* %n.addr, align 4
  %33 = load double*, double** %a.addr, align 8
  %34 = load i32, i32* %nw.addr, align 4
  %35 = load double*, double** %w.addr, align 8
  call void @cftfx41(i32 %32, double* %33, i32 %34, double* %35)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.2
  %36 = load i32, i32* %n.addr, align 4
  %37 = load i32*, i32** %ip.addr, align 8
  %38 = load double*, double** %a.addr, align 8
  call void @bitrv2(i32 %36, i32* %37, double* %38)
  br label %if.end.33

if.else.14:                                       ; preds = %entry
  %39 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp sgt i32 %39, 8
  br i1 %cmp15, label %if.then.16, label %if.else.24

if.then.16:                                       ; preds = %if.else.14
  %40 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp eq i32 %40, 32
  br i1 %cmp17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %if.then.16
  %41 = load double*, double** %a.addr, align 8
  %42 = load i32, i32* %nw.addr, align 4
  %sub19 = sub nsw i32 %42, 8
  %idxprom20 = sext i32 %sub19 to i64
  %43 = load double*, double** %w.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %43, i64 %idxprom20
  call void @cftf161(double* %41, double* %arrayidx21)
  %44 = load double*, double** %a.addr, align 8
  call void @bitrv216(double* %44)
  br label %if.end.23

if.else.22:                                       ; preds = %if.then.16
  %45 = load double*, double** %a.addr, align 8
  %46 = load double*, double** %w.addr, align 8
  call void @cftf081(double* %45, double* %46)
  %47 = load double*, double** %a.addr, align 8
  call void @bitrv208(double* %47)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.18
  br label %if.end.32

if.else.24:                                       ; preds = %if.else.14
  %48 = load i32, i32* %n.addr, align 4
  %cmp25 = icmp eq i32 %48, 8
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.24
  %49 = load double*, double** %a.addr, align 8
  call void @cftf040(double* %49)
  br label %if.end.31

if.else.27:                                       ; preds = %if.else.24
  %50 = load i32, i32* %n.addr, align 4
  %cmp28 = icmp eq i32 %50, 4
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.27
  %51 = load double*, double** %a.addr, align 8
  call void @cftx020(double* %51)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.23
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftbsub(i32 %n, double* %a, i32* %ip, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 32
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %1, 2
  store i32 %shr, i32* %m, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load double*, double** %a.addr, align 8
  %4 = load i32, i32* %nw.addr, align 4
  %5 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %4, %5
  %idxprom = sext i32 %sub to i64
  %6 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  call void @cftb1st(i32 %2, double* %3, double* %arrayidx)
  %7 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %7, 512
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %8 = load i32, i32* %m, align 4
  %9 = load double*, double** %a.addr, align 8
  %10 = load i32, i32* %nw.addr, align 4
  %11 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %8, double* %9, i32 %10, double* %11)
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* %m, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %14, i64 %idxprom3
  %15 = load i32, i32* %nw.addr, align 4
  %16 = load double*, double** %w.addr, align 8
  call void @cftrec2(i32 %12, double* %arrayidx4, i32 %15, double* %16)
  %17 = load i32, i32* %m, align 4
  %18 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %18
  %idxprom5 = sext i32 %mul to i64
  %19 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %19, i64 %idxprom5
  %20 = load i32, i32* %nw.addr, align 4
  %21 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %17, double* %arrayidx6, i32 %20, double* %21)
  %22 = load i32, i32* %m, align 4
  %23 = load i32, i32* %m, align 4
  %mul7 = mul nsw i32 3, %23
  %idxprom8 = sext i32 %mul7 to i64
  %24 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %24, i64 %idxprom8
  %25 = load i32, i32* %nw.addr, align 4
  %26 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %22, double* %arrayidx9, i32 %25, double* %26)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %27 = load i32, i32* %m, align 4
  %cmp10 = icmp sgt i32 %27, 32
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %28 = load i32, i32* %n.addr, align 4
  %29 = load double*, double** %a.addr, align 8
  %30 = load i32, i32* %nw.addr, align 4
  %31 = load double*, double** %w.addr, align 8
  call void @cftexp1(i32 %28, double* %29, i32 %30, double* %31)
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %32 = load i32, i32* %n.addr, align 4
  %33 = load double*, double** %a.addr, align 8
  %34 = load i32, i32* %nw.addr, align 4
  %35 = load double*, double** %w.addr, align 8
  call void @cftfx41(i32 %32, double* %33, i32 %34, double* %35)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.2
  %36 = load i32, i32* %n.addr, align 4
  %37 = load i32*, i32** %ip.addr, align 8
  %38 = load double*, double** %a.addr, align 8
  call void @bitrv2conj(i32 %36, i32* %37, double* %38)
  br label %if.end.33

if.else.14:                                       ; preds = %entry
  %39 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp sgt i32 %39, 8
  br i1 %cmp15, label %if.then.16, label %if.else.24

if.then.16:                                       ; preds = %if.else.14
  %40 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp eq i32 %40, 32
  br i1 %cmp17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %if.then.16
  %41 = load double*, double** %a.addr, align 8
  %42 = load i32, i32* %nw.addr, align 4
  %sub19 = sub nsw i32 %42, 8
  %idxprom20 = sext i32 %sub19 to i64
  %43 = load double*, double** %w.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %43, i64 %idxprom20
  call void @cftf161(double* %41, double* %arrayidx21)
  %44 = load double*, double** %a.addr, align 8
  call void @bitrv216neg(double* %44)
  br label %if.end.23

if.else.22:                                       ; preds = %if.then.16
  %45 = load double*, double** %a.addr, align 8
  %46 = load double*, double** %w.addr, align 8
  call void @cftf081(double* %45, double* %46)
  %47 = load double*, double** %a.addr, align 8
  call void @bitrv208neg(double* %47)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.18
  br label %if.end.32

if.else.24:                                       ; preds = %if.else.14
  %48 = load i32, i32* %n.addr, align 4
  %cmp25 = icmp eq i32 %48, 8
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.24
  %49 = load double*, double** %a.addr, align 8
  call void @cftb040(double* %49)
  br label %if.end.31

if.else.27:                                       ; preds = %if.else.24
  %50 = load i32, i32* %n.addr, align 4
  %cmp28 = icmp eq i32 %50, 4
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.27
  %51 = load double*, double** %a.addr, align 8
  call void @cftx020(double* %51)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.23
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @rdft(i32 %n, i32 %isgn, double* %a, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %isgn.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %nw = alloca i32, align 4
  %nc = alloca i32, align 4
  %xi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %isgn, i32* %isgn.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %nw, align 4
  %shl = shl i32 %3, 2
  %cmp = icmp sgt i32 %2, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %4, 2
  store i32 %shr, i32* %nw, align 4
  %5 = load i32, i32* %nw, align 4
  %6 = load i32*, i32** %ip.addr, align 8
  %7 = load double*, double** %w.addr, align 8
  call void @makewt(i32 %5, i32* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx1, align 4
  store i32 %9, i32* %nc, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* %nc, align 4
  %shl2 = shl i32 %11, 2
  %cmp3 = icmp sgt i32 %10, %shl2
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %12 = load i32, i32* %n.addr, align 4
  %shr5 = ashr i32 %12, 2
  store i32 %shr5, i32* %nc, align 4
  %13 = load i32, i32* %nc, align 4
  %14 = load i32*, i32** %ip.addr, align 8
  %15 = load double*, double** %w.addr, align 8
  %16 = load i32, i32* %nw, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  call void @makect(i32 %13, i32* %14, double* %add.ptr)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load i32, i32* %isgn.addr, align 4
  %cmp7 = icmp sge i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.else.24

if.then.8:                                        ; preds = %if.end.6
  %18 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp sgt i32 %18, 4
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %19 = load i32, i32* %n.addr, align 4
  %20 = load double*, double** %a.addr, align 8
  %21 = load i32*, i32** %ip.addr, align 8
  %add.ptr11 = getelementptr inbounds i32, i32* %21, i64 2
  %22 = load i32, i32* %nw, align 4
  %23 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %19, double* %20, i32* %add.ptr11, i32 %22, double* %23)
  %24 = load i32, i32* %n.addr, align 4
  %25 = load double*, double** %a.addr, align 8
  %26 = load i32, i32* %nc, align 4
  %27 = load double*, double** %w.addr, align 8
  %28 = load i32, i32* %nw, align 4
  %idx.ext12 = sext i32 %28 to i64
  %add.ptr13 = getelementptr inbounds double, double* %27, i64 %idx.ext12
  call void @rftfsub(i32 %24, double* %25, i32 %26, double* %add.ptr13)
  br label %if.end.18

if.else:                                          ; preds = %if.then.8
  %29 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp eq i32 %29, 4
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else
  %30 = load i32, i32* %n.addr, align 4
  %31 = load double*, double** %a.addr, align 8
  %32 = load i32*, i32** %ip.addr, align 8
  %add.ptr16 = getelementptr inbounds i32, i32* %32, i64 2
  %33 = load i32, i32* %nw, align 4
  %34 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %30, double* %31, i32* %add.ptr16, i32 %33, double* %34)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %35 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %35, i64 0
  %36 = load double, double* %arrayidx19, align 8
  %37 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %37, i64 1
  %38 = load double, double* %arrayidx20, align 8
  %sub = fsub double %36, %38
  store double %sub, double* %xi, align 8
  %39 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %39, i64 1
  %40 = load double, double* %arrayidx21, align 8
  %41 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %41, i64 0
  %42 = load double, double* %arrayidx22, align 8
  %add = fadd double %42, %40
  store double %add, double* %arrayidx22, align 8
  %43 = load double, double* %xi, align 8
  %44 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %44, i64 1
  store double %43, double* %arrayidx23, align 8
  br label %if.end.43

if.else.24:                                       ; preds = %if.end.6
  %45 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %45, i64 0
  %46 = load double, double* %arrayidx25, align 8
  %47 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %47, i64 1
  %48 = load double, double* %arrayidx26, align 8
  %sub27 = fsub double %46, %48
  %mul = fmul double 5.000000e-01, %sub27
  %49 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %49, i64 1
  store double %mul, double* %arrayidx28, align 8
  %50 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %50, i64 1
  %51 = load double, double* %arrayidx29, align 8
  %52 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %52, i64 0
  %53 = load double, double* %arrayidx30, align 8
  %sub31 = fsub double %53, %51
  store double %sub31, double* %arrayidx30, align 8
  %54 = load i32, i32* %n.addr, align 4
  %cmp32 = icmp sgt i32 %54, 4
  br i1 %cmp32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %if.else.24
  %55 = load i32, i32* %n.addr, align 4
  %56 = load double*, double** %a.addr, align 8
  %57 = load i32, i32* %nc, align 4
  %58 = load double*, double** %w.addr, align 8
  %59 = load i32, i32* %nw, align 4
  %idx.ext34 = sext i32 %59 to i64
  %add.ptr35 = getelementptr inbounds double, double* %58, i64 %idx.ext34
  call void @rftbsub(i32 %55, double* %56, i32 %57, double* %add.ptr35)
  %60 = load i32, i32* %n.addr, align 4
  %61 = load double*, double** %a.addr, align 8
  %62 = load i32*, i32** %ip.addr, align 8
  %add.ptr36 = getelementptr inbounds i32, i32* %62, i64 2
  %63 = load i32, i32* %nw, align 4
  %64 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %60, double* %61, i32* %add.ptr36, i32 %63, double* %64)
  br label %if.end.42

if.else.37:                                       ; preds = %if.else.24
  %65 = load i32, i32* %n.addr, align 4
  %cmp38 = icmp eq i32 %65, 4
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else.37
  %66 = load i32, i32* %n.addr, align 4
  %67 = load double*, double** %a.addr, align 8
  %68 = load i32*, i32** %ip.addr, align 8
  %add.ptr40 = getelementptr inbounds i32, i32* %68, i64 2
  %69 = load i32, i32* %nw, align 4
  %70 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %66, double* %67, i32* %add.ptr40, i32 %69, double* %70)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define void @makect(i32 %nc, i32* %ip, double* %c) #0 {
entry:
  %nc.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %c.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %nch = alloca i32, align 4
  %delta = alloca double, align 8
  store i32 %nc, i32* %nc.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %c, double** %c.addr, align 8
  %0 = load i32, i32* %nc.addr, align 4
  %1 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 1
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32, i32* %nc.addr, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %nc.addr, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, i32* %nch, align 4
  %call = call double @atan(double 1.000000e+00) #2
  %4 = load i32, i32* %nch, align 4
  %conv = sitofp i32 %4 to double
  %div = fdiv double %call, %conv
  store double %div, double* %delta, align 8
  %5 = load double, double* %delta, align 8
  %6 = load i32, i32* %nch, align 4
  %conv1 = sitofp i32 %6 to double
  %mul = fmul double %5, %conv1
  %call2 = call double @cos(double %mul) #2
  %7 = load double*, double** %c.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %7, i64 0
  store double %call2, double* %arrayidx3, align 8
  %8 = load double*, double** %c.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx4, align 8
  %mul5 = fmul double 5.000000e-01, %9
  %10 = load i32, i32* %nch, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load double*, double** %c.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %mul5, double* %arrayidx6, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nch, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load double, double* %delta, align 8
  %15 = load i32, i32* %j, align 4
  %conv9 = sitofp i32 %15 to double
  %mul10 = fmul double %14, %conv9
  %call11 = call double @cos(double %mul10) #2
  %mul12 = fmul double 5.000000e-01, %call11
  %16 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load double*, double** %c.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 %idxprom13
  store double %mul12, double* %arrayidx14, align 8
  %18 = load double, double* %delta, align 8
  %19 = load i32, i32* %j, align 4
  %conv15 = sitofp i32 %19 to double
  %mul16 = fmul double %18, %conv15
  %call17 = call double @sin(double %mul16) #2
  %mul18 = fmul double 5.000000e-01, %call17
  %20 = load i32, i32* %nc.addr, align 4
  %21 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %20, %21
  %idxprom19 = sext i32 %sub to i64
  %22 = load double*, double** %c.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %22, i64 %idxprom19
  store double %mul18, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @rftfsub(i32 %n, double* %a, i32 %nc, double* %c) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nc.addr = alloca i32, align 4
  %c.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kk = alloca i32, align 4
  %ks = alloca i32, align 4
  %m = alloca i32, align 4
  %wkr = alloca double, align 8
  %wki = alloca double, align 8
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nc, i32* %nc.addr, align 4
  store double* %c, double** %c.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %m, align 4
  %1 = load i32, i32* %nc.addr, align 4
  %mul = mul nsw i32 2, %1
  %2 = load i32, i32* %m, align 4
  %div = sdiv i32 %mul, %2
  store i32 %div, i32* %ks, align 4
  store i32 0, i32* %kk, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %k, align 4
  %7 = load i32, i32* %ks, align 4
  %8 = load i32, i32* %kk, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %kk, align 4
  %9 = load i32, i32* %nc.addr, align 4
  %10 = load i32, i32* %kk, align 4
  %sub1 = sub nsw i32 %9, %10
  %idxprom = sext i32 %sub1 to i64
  %11 = load double*, double** %c.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8
  %sub2 = fsub double 5.000000e-01, %12
  store double %sub2, double* %wkr, align 8
  %13 = load i32, i32* %kk, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load double*, double** %c.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %14, i64 %idxprom3
  %15 = load double, double* %arrayidx4, align 8
  store double %15, double* %wki, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %17, i64 %idxprom5
  %18 = load double, double* %arrayidx6, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %20, i64 %idxprom7
  %21 = load double, double* %arrayidx8, align 8
  %sub9 = fsub double %18, %21
  store double %sub9, double* %xr, align 8
  %22 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %22, 1
  %idxprom11 = sext i32 %add10 to i64
  %23 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %23, i64 %idxprom11
  %24 = load double, double* %arrayidx12, align 8
  %25 = load i32, i32* %k, align 4
  %add13 = add nsw i32 %25, 1
  %idxprom14 = sext i32 %add13 to i64
  %26 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %26, i64 %idxprom14
  %27 = load double, double* %arrayidx15, align 8
  %add16 = fadd double %24, %27
  store double %add16, double* %xi, align 8
  %28 = load double, double* %wkr, align 8
  %29 = load double, double* %xr, align 8
  %mul17 = fmul double %28, %29
  %30 = load double, double* %wki, align 8
  %31 = load double, double* %xi, align 8
  %mul18 = fmul double %30, %31
  %sub19 = fsub double %mul17, %mul18
  store double %sub19, double* %yr, align 8
  %32 = load double, double* %wkr, align 8
  %33 = load double, double* %xi, align 8
  %mul20 = fmul double %32, %33
  %34 = load double, double* %wki, align 8
  %35 = load double, double* %xr, align 8
  %mul21 = fmul double %34, %35
  %add22 = fadd double %mul20, %mul21
  store double %add22, double* %yi, align 8
  %36 = load double, double* %yr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %38, i64 %idxprom23
  %39 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double %39, %36
  store double %sub25, double* %arrayidx24, align 8
  %40 = load double, double* %yi, align 8
  %41 = load i32, i32* %j, align 4
  %add26 = add nsw i32 %41, 1
  %idxprom27 = sext i32 %add26 to i64
  %42 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %42, i64 %idxprom27
  %43 = load double, double* %arrayidx28, align 8
  %sub29 = fsub double %43, %40
  store double %sub29, double* %arrayidx28, align 8
  %44 = load double, double* %yr, align 8
  %45 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %45 to i64
  %46 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %46, i64 %idxprom30
  %47 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %47, %44
  store double %add32, double* %arrayidx31, align 8
  %48 = load double, double* %yi, align 8
  %49 = load i32, i32* %k, align 4
  %add33 = add nsw i32 %49, 1
  %idxprom34 = sext i32 %add33 to i64
  %50 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %50, i64 %idxprom34
  %51 = load double, double* %arrayidx35, align 8
  %sub36 = fsub double %51, %48
  store double %sub36, double* %arrayidx35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %j, align 4
  %add37 = add nsw i32 %52, 2
  store i32 %add37, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @rftbsub(i32 %n, double* %a, i32 %nc, double* %c) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nc.addr = alloca i32, align 4
  %c.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kk = alloca i32, align 4
  %ks = alloca i32, align 4
  %m = alloca i32, align 4
  %wkr = alloca double, align 8
  %wki = alloca double, align 8
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nc, i32* %nc.addr, align 4
  store double* %c, double** %c.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %m, align 4
  %1 = load i32, i32* %nc.addr, align 4
  %mul = mul nsw i32 2, %1
  %2 = load i32, i32* %m, align 4
  %div = sdiv i32 %mul, %2
  store i32 %div, i32* %ks, align 4
  store i32 0, i32* %kk, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %k, align 4
  %7 = load i32, i32* %ks, align 4
  %8 = load i32, i32* %kk, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %kk, align 4
  %9 = load i32, i32* %nc.addr, align 4
  %10 = load i32, i32* %kk, align 4
  %sub1 = sub nsw i32 %9, %10
  %idxprom = sext i32 %sub1 to i64
  %11 = load double*, double** %c.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8
  %sub2 = fsub double 5.000000e-01, %12
  store double %sub2, double* %wkr, align 8
  %13 = load i32, i32* %kk, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load double*, double** %c.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %14, i64 %idxprom3
  %15 = load double, double* %arrayidx4, align 8
  store double %15, double* %wki, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %17, i64 %idxprom5
  %18 = load double, double* %arrayidx6, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %20, i64 %idxprom7
  %21 = load double, double* %arrayidx8, align 8
  %sub9 = fsub double %18, %21
  store double %sub9, double* %xr, align 8
  %22 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %22, 1
  %idxprom11 = sext i32 %add10 to i64
  %23 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %23, i64 %idxprom11
  %24 = load double, double* %arrayidx12, align 8
  %25 = load i32, i32* %k, align 4
  %add13 = add nsw i32 %25, 1
  %idxprom14 = sext i32 %add13 to i64
  %26 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %26, i64 %idxprom14
  %27 = load double, double* %arrayidx15, align 8
  %add16 = fadd double %24, %27
  store double %add16, double* %xi, align 8
  %28 = load double, double* %wkr, align 8
  %29 = load double, double* %xr, align 8
  %mul17 = fmul double %28, %29
  %30 = load double, double* %wki, align 8
  %31 = load double, double* %xi, align 8
  %mul18 = fmul double %30, %31
  %add19 = fadd double %mul17, %mul18
  store double %add19, double* %yr, align 8
  %32 = load double, double* %wkr, align 8
  %33 = load double, double* %xi, align 8
  %mul20 = fmul double %32, %33
  %34 = load double, double* %wki, align 8
  %35 = load double, double* %xr, align 8
  %mul21 = fmul double %34, %35
  %sub22 = fsub double %mul20, %mul21
  store double %sub22, double* %yi, align 8
  %36 = load double, double* %yr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %38, i64 %idxprom23
  %39 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double %39, %36
  store double %sub25, double* %arrayidx24, align 8
  %40 = load double, double* %yi, align 8
  %41 = load i32, i32* %j, align 4
  %add26 = add nsw i32 %41, 1
  %idxprom27 = sext i32 %add26 to i64
  %42 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %42, i64 %idxprom27
  %43 = load double, double* %arrayidx28, align 8
  %sub29 = fsub double %43, %40
  store double %sub29, double* %arrayidx28, align 8
  %44 = load double, double* %yr, align 8
  %45 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %45 to i64
  %46 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %46, i64 %idxprom30
  %47 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %47, %44
  store double %add32, double* %arrayidx31, align 8
  %48 = load double, double* %yi, align 8
  %49 = load i32, i32* %k, align 4
  %add33 = add nsw i32 %49, 1
  %idxprom34 = sext i32 %add33 to i64
  %50 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %50, i64 %idxprom34
  %51 = load double, double* %arrayidx35, align 8
  %sub36 = fsub double %51, %48
  store double %sub36, double* %arrayidx35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %j, align 4
  %add37 = add nsw i32 %52, 2
  store i32 %add37, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ddct(i32 %n, i32 %isgn, double* %a, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %isgn.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %nw = alloca i32, align 4
  %nc = alloca i32, align 4
  %xr = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %isgn, i32* %isgn.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %nw, align 4
  %shl = shl i32 %3, 2
  %cmp = icmp sgt i32 %2, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %4, 2
  store i32 %shr, i32* %nw, align 4
  %5 = load i32, i32* %nw, align 4
  %6 = load i32*, i32** %ip.addr, align 8
  %7 = load double*, double** %w.addr, align 8
  call void @makewt(i32 %5, i32* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx1, align 4
  store i32 %9, i32* %nc, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* %nc, align 4
  %cmp2 = icmp sgt i32 %10, %11
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %n.addr, align 4
  store i32 %12, i32* %nc, align 4
  %13 = load i32, i32* %nc, align 4
  %14 = load i32*, i32** %ip.addr, align 8
  %15 = load double*, double** %w.addr, align 8
  %16 = load i32, i32* %nw, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  call void @makect(i32 %13, i32* %14, double* %add.ptr)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %17 = load i32, i32* %isgn.addr, align 4
  %cmp5 = icmp slt i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.40

if.then.6:                                        ; preds = %if.end.4
  %18 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %18, 1
  %idxprom = sext i32 %sub to i64
  %19 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %19, i64 %idxprom
  %20 = load double, double* %arrayidx7, align 8
  store double %20, double* %xr, align 8
  %21 = load i32, i32* %n.addr, align 4
  %sub8 = sub nsw i32 %21, 2
  store i32 %sub8, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %22 = load i32, i32* %j, align 4
  %cmp9 = icmp sge i32 %22, 2
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %24, i64 %idxprom10
  %25 = load double, double* %arrayidx11, align 8
  %26 = load i32, i32* %j, align 4
  %sub12 = sub nsw i32 %26, 1
  %idxprom13 = sext i32 %sub12 to i64
  %27 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %27, i64 %idxprom13
  %28 = load double, double* %arrayidx14, align 8
  %sub15 = fsub double %25, %28
  %29 = load i32, i32* %j, align 4
  %add = add nsw i32 %29, 1
  %idxprom16 = sext i32 %add to i64
  %30 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %30, i64 %idxprom16
  store double %sub15, double* %arrayidx17, align 8
  %31 = load i32, i32* %j, align 4
  %sub18 = sub nsw i32 %31, 1
  %idxprom19 = sext i32 %sub18 to i64
  %32 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %32, i64 %idxprom19
  %33 = load double, double* %arrayidx20, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %35, i64 %idxprom21
  %36 = load double, double* %arrayidx22, align 8
  %add23 = fadd double %36, %33
  store double %add23, double* %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %j, align 4
  %sub24 = sub nsw i32 %37, 2
  store i32 %sub24, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %38, i64 0
  %39 = load double, double* %arrayidx25, align 8
  %40 = load double, double* %xr, align 8
  %sub26 = fsub double %39, %40
  %41 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %41, i64 1
  store double %sub26, double* %arrayidx27, align 8
  %42 = load double, double* %xr, align 8
  %43 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %43, i64 0
  %44 = load double, double* %arrayidx28, align 8
  %add29 = fadd double %44, %42
  store double %add29, double* %arrayidx28, align 8
  %45 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp sgt i32 %45, 4
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.end
  %46 = load i32, i32* %n.addr, align 4
  %47 = load double*, double** %a.addr, align 8
  %48 = load i32, i32* %nc, align 4
  %49 = load double*, double** %w.addr, align 8
  %50 = load i32, i32* %nw, align 4
  %idx.ext32 = sext i32 %50 to i64
  %add.ptr33 = getelementptr inbounds double, double* %49, i64 %idx.ext32
  call void @rftbsub(i32 %46, double* %47, i32 %48, double* %add.ptr33)
  %51 = load i32, i32* %n.addr, align 4
  %52 = load double*, double** %a.addr, align 8
  %53 = load i32*, i32** %ip.addr, align 8
  %add.ptr34 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32, i32* %nw, align 4
  %55 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %51, double* %52, i32* %add.ptr34, i32 %54, double* %55)
  br label %if.end.39

if.else:                                          ; preds = %for.end
  %56 = load i32, i32* %n.addr, align 4
  %cmp35 = icmp eq i32 %56, 4
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.else
  %57 = load i32, i32* %n.addr, align 4
  %58 = load double*, double** %a.addr, align 8
  %59 = load i32*, i32** %ip.addr, align 8
  %add.ptr37 = getelementptr inbounds i32, i32* %59, i64 2
  %60 = load i32, i32* %nw, align 4
  %61 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %57, double* %58, i32* %add.ptr37, i32 %60, double* %61)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.31
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.4
  %62 = load i32, i32* %n.addr, align 4
  %63 = load double*, double** %a.addr, align 8
  %64 = load i32, i32* %nc, align 4
  %65 = load double*, double** %w.addr, align 8
  %66 = load i32, i32* %nw, align 4
  %idx.ext41 = sext i32 %66 to i64
  %add.ptr42 = getelementptr inbounds double, double* %65, i64 %idx.ext41
  call void @dctsub(i32 %62, double* %63, i32 %64, double* %add.ptr42)
  %67 = load i32, i32* %isgn.addr, align 4
  %cmp43 = icmp sge i32 %67, 0
  br i1 %cmp43, label %if.then.44, label %if.end.86

if.then.44:                                       ; preds = %if.end.40
  %68 = load i32, i32* %n.addr, align 4
  %cmp45 = icmp sgt i32 %68, 4
  br i1 %cmp45, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %if.then.44
  %69 = load i32, i32* %n.addr, align 4
  %70 = load double*, double** %a.addr, align 8
  %71 = load i32*, i32** %ip.addr, align 8
  %add.ptr47 = getelementptr inbounds i32, i32* %71, i64 2
  %72 = load i32, i32* %nw, align 4
  %73 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %69, double* %70, i32* %add.ptr47, i32 %72, double* %73)
  %74 = load i32, i32* %n.addr, align 4
  %75 = load double*, double** %a.addr, align 8
  %76 = load i32, i32* %nc, align 4
  %77 = load double*, double** %w.addr, align 8
  %78 = load i32, i32* %nw, align 4
  %idx.ext48 = sext i32 %78 to i64
  %add.ptr49 = getelementptr inbounds double, double* %77, i64 %idx.ext48
  call void @rftfsub(i32 %74, double* %75, i32 %76, double* %add.ptr49)
  br label %if.end.55

if.else.50:                                       ; preds = %if.then.44
  %79 = load i32, i32* %n.addr, align 4
  %cmp51 = icmp eq i32 %79, 4
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.else.50
  %80 = load i32, i32* %n.addr, align 4
  %81 = load double*, double** %a.addr, align 8
  %82 = load i32*, i32** %ip.addr, align 8
  %add.ptr53 = getelementptr inbounds i32, i32* %82, i64 2
  %83 = load i32, i32* %nw, align 4
  %84 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %80, double* %81, i32* %add.ptr53, i32 %83, double* %84)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.else.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.46
  %85 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %85, i64 0
  %86 = load double, double* %arrayidx56, align 8
  %87 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %87, i64 1
  %88 = load double, double* %arrayidx57, align 8
  %sub58 = fsub double %86, %88
  store double %sub58, double* %xr, align 8
  %89 = load double*, double** %a.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %89, i64 1
  %90 = load double, double* %arrayidx59, align 8
  %91 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %91, i64 0
  %92 = load double, double* %arrayidx60, align 8
  %add61 = fadd double %92, %90
  store double %add61, double* %arrayidx60, align 8
  store i32 2, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.80, %if.end.55
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %n.addr, align 4
  %cmp63 = icmp slt i32 %93, %94
  br i1 %cmp63, label %for.body.64, label %for.end.82

for.body.64:                                      ; preds = %for.cond.62
  %95 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %95 to i64
  %96 = load double*, double** %a.addr, align 8
  %arrayidx66 = getelementptr inbounds double, double* %96, i64 %idxprom65
  %97 = load double, double* %arrayidx66, align 8
  %98 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %98, 1
  %idxprom68 = sext i32 %add67 to i64
  %99 = load double*, double** %a.addr, align 8
  %arrayidx69 = getelementptr inbounds double, double* %99, i64 %idxprom68
  %100 = load double, double* %arrayidx69, align 8
  %sub70 = fsub double %97, %100
  %101 = load i32, i32* %j, align 4
  %sub71 = sub nsw i32 %101, 1
  %idxprom72 = sext i32 %sub71 to i64
  %102 = load double*, double** %a.addr, align 8
  %arrayidx73 = getelementptr inbounds double, double* %102, i64 %idxprom72
  store double %sub70, double* %arrayidx73, align 8
  %103 = load i32, i32* %j, align 4
  %add74 = add nsw i32 %103, 1
  %idxprom75 = sext i32 %add74 to i64
  %104 = load double*, double** %a.addr, align 8
  %arrayidx76 = getelementptr inbounds double, double* %104, i64 %idxprom75
  %105 = load double, double* %arrayidx76, align 8
  %106 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %106 to i64
  %107 = load double*, double** %a.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %107, i64 %idxprom77
  %108 = load double, double* %arrayidx78, align 8
  %add79 = fadd double %108, %105
  store double %add79, double* %arrayidx78, align 8
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.64
  %109 = load i32, i32* %j, align 4
  %add81 = add nsw i32 %109, 2
  store i32 %add81, i32* %j, align 4
  br label %for.cond.62

for.end.82:                                       ; preds = %for.cond.62
  %110 = load double, double* %xr, align 8
  %111 = load i32, i32* %n.addr, align 4
  %sub83 = sub nsw i32 %111, 1
  %idxprom84 = sext i32 %sub83 to i64
  %112 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %112, i64 %idxprom84
  store double %110, double* %arrayidx85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %for.end.82, %if.end.40
  ret void
}

; Function Attrs: nounwind uwtable
define void @dctsub(i32 %n, double* %a, i32 %nc, double* %c) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nc.addr = alloca i32, align 4
  %c.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kk = alloca i32, align 4
  %ks = alloca i32, align 4
  %m = alloca i32, align 4
  %wkr = alloca double, align 8
  %wki = alloca double, align 8
  %xr = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nc, i32* %nc.addr, align 4
  store double* %c, double** %c.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %m, align 4
  %1 = load i32, i32* %nc.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %1, %2
  store i32 %div, i32* %ks, align 4
  store i32 0, i32* %kk, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %k, align 4
  %7 = load i32, i32* %ks, align 4
  %8 = load i32, i32* %kk, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %kk, align 4
  %9 = load i32, i32* %kk, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %c.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %12 = load i32, i32* %nc.addr, align 4
  %13 = load i32, i32* %kk, align 4
  %sub1 = sub nsw i32 %12, %13
  %idxprom2 = sext i32 %sub1 to i64
  %14 = load double*, double** %c.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %14, i64 %idxprom2
  %15 = load double, double* %arrayidx3, align 8
  %sub4 = fsub double %11, %15
  store double %sub4, double* %wkr, align 8
  %16 = load i32, i32* %kk, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load double*, double** %c.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %17, i64 %idxprom5
  %18 = load double, double* %arrayidx6, align 8
  %19 = load i32, i32* %nc.addr, align 4
  %20 = load i32, i32* %kk, align 4
  %sub7 = sub nsw i32 %19, %20
  %idxprom8 = sext i32 %sub7 to i64
  %21 = load double*, double** %c.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %21, i64 %idxprom8
  %22 = load double, double* %arrayidx9, align 8
  %add10 = fadd double %18, %22
  store double %add10, double* %wki, align 8
  %23 = load double, double* %wki, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %25, i64 %idxprom11
  %26 = load double, double* %arrayidx12, align 8
  %mul = fmul double %23, %26
  %27 = load double, double* %wkr, align 8
  %28 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %28 to i64
  %29 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 %idxprom13
  %30 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %27, %30
  %sub16 = fsub double %mul, %mul15
  store double %sub16, double* %xr, align 8
  %31 = load double, double* %wkr, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %33, i64 %idxprom17
  %34 = load double, double* %arrayidx18, align 8
  %mul19 = fmul double %31, %34
  %35 = load double, double* %wki, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %37, i64 %idxprom20
  %38 = load double, double* %arrayidx21, align 8
  %mul22 = fmul double %35, %38
  %add23 = fadd double %mul19, %mul22
  %39 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %39 to i64
  %40 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %40, i64 %idxprom24
  store double %add23, double* %arrayidx25, align 8
  %41 = load double, double* %xr, align 8
  %42 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %42 to i64
  %43 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %43, i64 %idxprom26
  store double %41, double* %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %j, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load double*, double** %c.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %45, i64 0
  %46 = load double, double* %arrayidx28, align 8
  %47 = load i32, i32* %m, align 4
  %idxprom29 = sext i32 %47 to i64
  %48 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %48, i64 %idxprom29
  %49 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %49, %46
  store double %mul31, double* %arrayidx30, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ddst(i32 %n, i32 %isgn, double* %a, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %isgn.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %nw = alloca i32, align 4
  %nc = alloca i32, align 4
  %xr = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %isgn, i32* %isgn.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %nw, align 4
  %shl = shl i32 %3, 2
  %cmp = icmp sgt i32 %2, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %4, 2
  store i32 %shr, i32* %nw, align 4
  %5 = load i32, i32* %nw, align 4
  %6 = load i32*, i32** %ip.addr, align 8
  %7 = load double*, double** %w.addr, align 8
  call void @makewt(i32 %5, i32* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx1, align 4
  store i32 %9, i32* %nc, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* %nc, align 4
  %cmp2 = icmp sgt i32 %10, %11
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %n.addr, align 4
  store i32 %12, i32* %nc, align 4
  %13 = load i32, i32* %nc, align 4
  %14 = load i32*, i32** %ip.addr, align 8
  %15 = load double*, double** %w.addr, align 8
  %16 = load i32, i32* %nw, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  call void @makect(i32 %13, i32* %14, double* %add.ptr)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %17 = load i32, i32* %isgn.addr, align 4
  %cmp5 = icmp slt i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.41

if.then.6:                                        ; preds = %if.end.4
  %18 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %18, 1
  %idxprom = sext i32 %sub to i64
  %19 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %19, i64 %idxprom
  %20 = load double, double* %arrayidx7, align 8
  store double %20, double* %xr, align 8
  %21 = load i32, i32* %n.addr, align 4
  %sub8 = sub nsw i32 %21, 2
  store i32 %sub8, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %22 = load i32, i32* %j, align 4
  %cmp9 = icmp sge i32 %22, 2
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %24, i64 %idxprom10
  %25 = load double, double* %arrayidx11, align 8
  %sub12 = fsub double -0.000000e+00, %25
  %26 = load i32, i32* %j, align 4
  %sub13 = sub nsw i32 %26, 1
  %idxprom14 = sext i32 %sub13 to i64
  %27 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %27, i64 %idxprom14
  %28 = load double, double* %arrayidx15, align 8
  %sub16 = fsub double %sub12, %28
  %29 = load i32, i32* %j, align 4
  %add = add nsw i32 %29, 1
  %idxprom17 = sext i32 %add to i64
  %30 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %30, i64 %idxprom17
  store double %sub16, double* %arrayidx18, align 8
  %31 = load i32, i32* %j, align 4
  %sub19 = sub nsw i32 %31, 1
  %idxprom20 = sext i32 %sub19 to i64
  %32 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %32, i64 %idxprom20
  %33 = load double, double* %arrayidx21, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %35, i64 %idxprom22
  %36 = load double, double* %arrayidx23, align 8
  %sub24 = fsub double %36, %33
  store double %sub24, double* %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %j, align 4
  %sub25 = sub nsw i32 %37, 2
  store i32 %sub25, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %38, i64 0
  %39 = load double, double* %arrayidx26, align 8
  %40 = load double, double* %xr, align 8
  %add27 = fadd double %39, %40
  %41 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %41, i64 1
  store double %add27, double* %arrayidx28, align 8
  %42 = load double, double* %xr, align 8
  %43 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %43, i64 0
  %44 = load double, double* %arrayidx29, align 8
  %sub30 = fsub double %44, %42
  store double %sub30, double* %arrayidx29, align 8
  %45 = load i32, i32* %n.addr, align 4
  %cmp31 = icmp sgt i32 %45, 4
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.end
  %46 = load i32, i32* %n.addr, align 4
  %47 = load double*, double** %a.addr, align 8
  %48 = load i32, i32* %nc, align 4
  %49 = load double*, double** %w.addr, align 8
  %50 = load i32, i32* %nw, align 4
  %idx.ext33 = sext i32 %50 to i64
  %add.ptr34 = getelementptr inbounds double, double* %49, i64 %idx.ext33
  call void @rftbsub(i32 %46, double* %47, i32 %48, double* %add.ptr34)
  %51 = load i32, i32* %n.addr, align 4
  %52 = load double*, double** %a.addr, align 8
  %53 = load i32*, i32** %ip.addr, align 8
  %add.ptr35 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32, i32* %nw, align 4
  %55 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %51, double* %52, i32* %add.ptr35, i32 %54, double* %55)
  br label %if.end.40

if.else:                                          ; preds = %for.end
  %56 = load i32, i32* %n.addr, align 4
  %cmp36 = icmp eq i32 %56, 4
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.else
  %57 = load i32, i32* %n.addr, align 4
  %58 = load double*, double** %a.addr, align 8
  %59 = load i32*, i32** %ip.addr, align 8
  %add.ptr38 = getelementptr inbounds i32, i32* %59, i64 2
  %60 = load i32, i32* %nw, align 4
  %61 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %57, double* %58, i32* %add.ptr38, i32 %60, double* %61)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.4
  %62 = load i32, i32* %n.addr, align 4
  %63 = load double*, double** %a.addr, align 8
  %64 = load i32, i32* %nc, align 4
  %65 = load double*, double** %w.addr, align 8
  %66 = load i32, i32* %nw, align 4
  %idx.ext42 = sext i32 %66 to i64
  %add.ptr43 = getelementptr inbounds double, double* %65, i64 %idx.ext42
  call void @dstsub(i32 %62, double* %63, i32 %64, double* %add.ptr43)
  %67 = load i32, i32* %isgn.addr, align 4
  %cmp44 = icmp sge i32 %67, 0
  br i1 %cmp44, label %if.then.45, label %if.end.89

if.then.45:                                       ; preds = %if.end.41
  %68 = load i32, i32* %n.addr, align 4
  %cmp46 = icmp sgt i32 %68, 4
  br i1 %cmp46, label %if.then.47, label %if.else.51

if.then.47:                                       ; preds = %if.then.45
  %69 = load i32, i32* %n.addr, align 4
  %70 = load double*, double** %a.addr, align 8
  %71 = load i32*, i32** %ip.addr, align 8
  %add.ptr48 = getelementptr inbounds i32, i32* %71, i64 2
  %72 = load i32, i32* %nw, align 4
  %73 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %69, double* %70, i32* %add.ptr48, i32 %72, double* %73)
  %74 = load i32, i32* %n.addr, align 4
  %75 = load double*, double** %a.addr, align 8
  %76 = load i32, i32* %nc, align 4
  %77 = load double*, double** %w.addr, align 8
  %78 = load i32, i32* %nw, align 4
  %idx.ext49 = sext i32 %78 to i64
  %add.ptr50 = getelementptr inbounds double, double* %77, i64 %idx.ext49
  call void @rftfsub(i32 %74, double* %75, i32 %76, double* %add.ptr50)
  br label %if.end.56

if.else.51:                                       ; preds = %if.then.45
  %79 = load i32, i32* %n.addr, align 4
  %cmp52 = icmp eq i32 %79, 4
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.else.51
  %80 = load i32, i32* %n.addr, align 4
  %81 = load double*, double** %a.addr, align 8
  %82 = load i32*, i32** %ip.addr, align 8
  %add.ptr54 = getelementptr inbounds i32, i32* %82, i64 2
  %83 = load i32, i32* %nw, align 4
  %84 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %80, double* %81, i32* %add.ptr54, i32 %83, double* %84)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.else.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.47
  %85 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %85, i64 0
  %86 = load double, double* %arrayidx57, align 8
  %87 = load double*, double** %a.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %87, i64 1
  %88 = load double, double* %arrayidx58, align 8
  %sub59 = fsub double %86, %88
  store double %sub59, double* %xr, align 8
  %89 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %89, i64 1
  %90 = load double, double* %arrayidx60, align 8
  %91 = load double*, double** %a.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %91, i64 0
  %92 = load double, double* %arrayidx61, align 8
  %add62 = fadd double %92, %90
  store double %add62, double* %arrayidx61, align 8
  store i32 2, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.82, %if.end.56
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %n.addr, align 4
  %cmp64 = icmp slt i32 %93, %94
  br i1 %cmp64, label %for.body.65, label %for.end.84

for.body.65:                                      ; preds = %for.cond.63
  %95 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %95 to i64
  %96 = load double*, double** %a.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %96, i64 %idxprom66
  %97 = load double, double* %arrayidx67, align 8
  %sub68 = fsub double -0.000000e+00, %97
  %98 = load i32, i32* %j, align 4
  %add69 = add nsw i32 %98, 1
  %idxprom70 = sext i32 %add69 to i64
  %99 = load double*, double** %a.addr, align 8
  %arrayidx71 = getelementptr inbounds double, double* %99, i64 %idxprom70
  %100 = load double, double* %arrayidx71, align 8
  %sub72 = fsub double %sub68, %100
  %101 = load i32, i32* %j, align 4
  %sub73 = sub nsw i32 %101, 1
  %idxprom74 = sext i32 %sub73 to i64
  %102 = load double*, double** %a.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %102, i64 %idxprom74
  store double %sub72, double* %arrayidx75, align 8
  %103 = load i32, i32* %j, align 4
  %add76 = add nsw i32 %103, 1
  %idxprom77 = sext i32 %add76 to i64
  %104 = load double*, double** %a.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %104, i64 %idxprom77
  %105 = load double, double* %arrayidx78, align 8
  %106 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %106 to i64
  %107 = load double*, double** %a.addr, align 8
  %arrayidx80 = getelementptr inbounds double, double* %107, i64 %idxprom79
  %108 = load double, double* %arrayidx80, align 8
  %sub81 = fsub double %108, %105
  store double %sub81, double* %arrayidx80, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.65
  %109 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %109, 2
  store i32 %add83, i32* %j, align 4
  br label %for.cond.63

for.end.84:                                       ; preds = %for.cond.63
  %110 = load double, double* %xr, align 8
  %sub85 = fsub double -0.000000e+00, %110
  %111 = load i32, i32* %n.addr, align 4
  %sub86 = sub nsw i32 %111, 1
  %idxprom87 = sext i32 %sub86 to i64
  %112 = load double*, double** %a.addr, align 8
  %arrayidx88 = getelementptr inbounds double, double* %112, i64 %idxprom87
  store double %sub85, double* %arrayidx88, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.84, %if.end.41
  ret void
}

; Function Attrs: nounwind uwtable
define void @dstsub(i32 %n, double* %a, i32 %nc, double* %c) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nc.addr = alloca i32, align 4
  %c.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kk = alloca i32, align 4
  %ks = alloca i32, align 4
  %m = alloca i32, align 4
  %wkr = alloca double, align 8
  %wki = alloca double, align 8
  %xr = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nc, i32* %nc.addr, align 4
  store double* %c, double** %c.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %m, align 4
  %1 = load i32, i32* %nc.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %1, %2
  store i32 %div, i32* %ks, align 4
  store i32 0, i32* %kk, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %k, align 4
  %7 = load i32, i32* %ks, align 4
  %8 = load i32, i32* %kk, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %kk, align 4
  %9 = load i32, i32* %kk, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %c.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %12 = load i32, i32* %nc.addr, align 4
  %13 = load i32, i32* %kk, align 4
  %sub1 = sub nsw i32 %12, %13
  %idxprom2 = sext i32 %sub1 to i64
  %14 = load double*, double** %c.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %14, i64 %idxprom2
  %15 = load double, double* %arrayidx3, align 8
  %sub4 = fsub double %11, %15
  store double %sub4, double* %wkr, align 8
  %16 = load i32, i32* %kk, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load double*, double** %c.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %17, i64 %idxprom5
  %18 = load double, double* %arrayidx6, align 8
  %19 = load i32, i32* %nc.addr, align 4
  %20 = load i32, i32* %kk, align 4
  %sub7 = sub nsw i32 %19, %20
  %idxprom8 = sext i32 %sub7 to i64
  %21 = load double*, double** %c.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %21, i64 %idxprom8
  %22 = load double, double* %arrayidx9, align 8
  %add10 = fadd double %18, %22
  store double %add10, double* %wki, align 8
  %23 = load double, double* %wki, align 8
  %24 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %25, i64 %idxprom11
  %26 = load double, double* %arrayidx12, align 8
  %mul = fmul double %23, %26
  %27 = load double, double* %wkr, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %28 to i64
  %29 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 %idxprom13
  %30 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %27, %30
  %sub16 = fsub double %mul, %mul15
  store double %sub16, double* %xr, align 8
  %31 = load double, double* %wkr, align 8
  %32 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %33, i64 %idxprom17
  %34 = load double, double* %arrayidx18, align 8
  %mul19 = fmul double %31, %34
  %35 = load double, double* %wki, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %37, i64 %idxprom20
  %38 = load double, double* %arrayidx21, align 8
  %mul22 = fmul double %35, %38
  %add23 = fadd double %mul19, %mul22
  %39 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %39 to i64
  %40 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %40, i64 %idxprom24
  store double %add23, double* %arrayidx25, align 8
  %41 = load double, double* %xr, align 8
  %42 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %42 to i64
  %43 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %43, i64 %idxprom26
  store double %41, double* %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %j, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load double*, double** %c.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %45, i64 0
  %46 = load double, double* %arrayidx28, align 8
  %47 = load i32, i32* %m, align 4
  %idxprom29 = sext i32 %47 to i64
  %48 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %48, i64 %idxprom29
  %49 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %49, %46
  store double %mul31, double* %arrayidx30, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @dfct(i32 %n, double* %a, double* %t, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %t.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %mh = alloca i32, align 4
  %nw = alloca i32, align 4
  %nc = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %t, double** %t.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %nw, align 4
  %shl = shl i32 %3, 3
  %cmp = icmp sgt i32 %2, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %nw, align 4
  %5 = load i32, i32* %nw, align 4
  %6 = load i32*, i32** %ip.addr, align 8
  %7 = load double*, double** %w.addr, align 8
  call void @makewt(i32 %5, i32* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx1, align 4
  store i32 %9, i32* %nc, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* %nc, align 4
  %shl2 = shl i32 %11, 1
  %cmp3 = icmp sgt i32 %10, %shl2
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %12 = load i32, i32* %n.addr, align 4
  %shr5 = ashr i32 %12, 1
  store i32 %shr5, i32* %nc, align 4
  %13 = load i32, i32* %nc, align 4
  %14 = load i32*, i32** %ip.addr, align 8
  %15 = load double*, double** %w.addr, align 8
  %16 = load i32, i32* %nw, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  call void @makect(i32 %13, i32* %14, double* %add.ptr)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load i32, i32* %n.addr, align 4
  %shr7 = ashr i32 %17, 1
  store i32 %shr7, i32* %m, align 4
  %18 = load i32, i32* %m, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %19, i64 %idxprom
  %20 = load double, double* %arrayidx8, align 8
  store double %20, double* %yi, align 8
  %21 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %21, i64 0
  %22 = load double, double* %arrayidx9, align 8
  %23 = load i32, i32* %n.addr, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %24, i64 %idxprom10
  %25 = load double, double* %arrayidx11, align 8
  %add = fadd double %22, %25
  store double %add, double* %xi, align 8
  %26 = load i32, i32* %n.addr, align 4
  %idxprom12 = sext i32 %26 to i64
  %27 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %27, i64 %idxprom12
  %28 = load double, double* %arrayidx13, align 8
  %29 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 0
  %30 = load double, double* %arrayidx14, align 8
  %sub = fsub double %30, %28
  store double %sub, double* %arrayidx14, align 8
  %31 = load double, double* %xi, align 8
  %32 = load double, double* %yi, align 8
  %sub15 = fsub double %31, %32
  %33 = load double*, double** %t.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %33, i64 0
  store double %sub15, double* %arrayidx16, align 8
  %34 = load double, double* %xi, align 8
  %35 = load double, double* %yi, align 8
  %add17 = fadd double %34, %35
  %36 = load i32, i32* %m, align 4
  %idxprom18 = sext i32 %36 to i64
  %37 = load double*, double** %t.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %37, i64 %idxprom18
  store double %add17, double* %arrayidx19, align 8
  %38 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp sgt i32 %38, 2
  br i1 %cmp20, label %if.then.21, label %if.else.216

if.then.21:                                       ; preds = %if.end.6
  %39 = load i32, i32* %m, align 4
  %shr22 = ashr i32 %39, 1
  store i32 %shr22, i32* %mh, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %mh, align 4
  %cmp23 = icmp slt i32 %40, %41
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %m, align 4
  %43 = load i32, i32* %j, align 4
  %sub24 = sub nsw i32 %42, %43
  store i32 %sub24, i32* %k, align 4
  %44 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %44 to i64
  %45 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %45, i64 %idxprom25
  %46 = load double, double* %arrayidx26, align 8
  %47 = load i32, i32* %n.addr, align 4
  %48 = load i32, i32* %j, align 4
  %sub27 = sub nsw i32 %47, %48
  %idxprom28 = sext i32 %sub27 to i64
  %49 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %49, i64 %idxprom28
  %50 = load double, double* %arrayidx29, align 8
  %sub30 = fsub double %46, %50
  store double %sub30, double* %xr, align 8
  %51 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %51 to i64
  %52 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %52, i64 %idxprom31
  %53 = load double, double* %arrayidx32, align 8
  %54 = load i32, i32* %n.addr, align 4
  %55 = load i32, i32* %j, align 4
  %sub33 = sub nsw i32 %54, %55
  %idxprom34 = sext i32 %sub33 to i64
  %56 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %56, i64 %idxprom34
  %57 = load double, double* %arrayidx35, align 8
  %add36 = fadd double %53, %57
  store double %add36, double* %xi, align 8
  %58 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %58 to i64
  %59 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %59, i64 %idxprom37
  %60 = load double, double* %arrayidx38, align 8
  %61 = load i32, i32* %n.addr, align 4
  %62 = load i32, i32* %k, align 4
  %sub39 = sub nsw i32 %61, %62
  %idxprom40 = sext i32 %sub39 to i64
  %63 = load double*, double** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %63, i64 %idxprom40
  %64 = load double, double* %arrayidx41, align 8
  %sub42 = fsub double %60, %64
  store double %sub42, double* %yr, align 8
  %65 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %65 to i64
  %66 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %66, i64 %idxprom43
  %67 = load double, double* %arrayidx44, align 8
  %68 = load i32, i32* %n.addr, align 4
  %69 = load i32, i32* %k, align 4
  %sub45 = sub nsw i32 %68, %69
  %idxprom46 = sext i32 %sub45 to i64
  %70 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %70, i64 %idxprom46
  %71 = load double, double* %arrayidx47, align 8
  %add48 = fadd double %67, %71
  store double %add48, double* %yi, align 8
  %72 = load double, double* %xr, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %73 to i64
  %74 = load double*, double** %a.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %74, i64 %idxprom49
  store double %72, double* %arrayidx50, align 8
  %75 = load double, double* %yr, align 8
  %76 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %76 to i64
  %77 = load double*, double** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %77, i64 %idxprom51
  store double %75, double* %arrayidx52, align 8
  %78 = load double, double* %xi, align 8
  %79 = load double, double* %yi, align 8
  %sub53 = fsub double %78, %79
  %80 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %80 to i64
  %81 = load double*, double** %t.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %81, i64 %idxprom54
  store double %sub53, double* %arrayidx55, align 8
  %82 = load double, double* %xi, align 8
  %83 = load double, double* %yi, align 8
  %add56 = fadd double %82, %83
  %84 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %84 to i64
  %85 = load double*, double** %t.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %85, i64 %idxprom57
  store double %add56, double* %arrayidx58, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, i32* %j, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load i32, i32* %mh, align 4
  %idxprom59 = sext i32 %87 to i64
  %88 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %88, i64 %idxprom59
  %89 = load double, double* %arrayidx60, align 8
  %90 = load i32, i32* %n.addr, align 4
  %91 = load i32, i32* %mh, align 4
  %sub61 = sub nsw i32 %90, %91
  %idxprom62 = sext i32 %sub61 to i64
  %92 = load double*, double** %a.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %92, i64 %idxprom62
  %93 = load double, double* %arrayidx63, align 8
  %add64 = fadd double %89, %93
  %94 = load i32, i32* %mh, align 4
  %idxprom65 = sext i32 %94 to i64
  %95 = load double*, double** %t.addr, align 8
  %arrayidx66 = getelementptr inbounds double, double* %95, i64 %idxprom65
  store double %add64, double* %arrayidx66, align 8
  %96 = load i32, i32* %n.addr, align 4
  %97 = load i32, i32* %mh, align 4
  %sub67 = sub nsw i32 %96, %97
  %idxprom68 = sext i32 %sub67 to i64
  %98 = load double*, double** %a.addr, align 8
  %arrayidx69 = getelementptr inbounds double, double* %98, i64 %idxprom68
  %99 = load double, double* %arrayidx69, align 8
  %100 = load i32, i32* %mh, align 4
  %idxprom70 = sext i32 %100 to i64
  %101 = load double*, double** %a.addr, align 8
  %arrayidx71 = getelementptr inbounds double, double* %101, i64 %idxprom70
  %102 = load double, double* %arrayidx71, align 8
  %sub72 = fsub double %102, %99
  store double %sub72, double* %arrayidx71, align 8
  %103 = load i32, i32* %m, align 4
  %104 = load double*, double** %a.addr, align 8
  %105 = load i32, i32* %nc, align 4
  %106 = load double*, double** %w.addr, align 8
  %107 = load i32, i32* %nw, align 4
  %idx.ext73 = sext i32 %107 to i64
  %add.ptr74 = getelementptr inbounds double, double* %106, i64 %idx.ext73
  call void @dctsub(i32 %103, double* %104, i32 %105, double* %add.ptr74)
  %108 = load i32, i32* %m, align 4
  %cmp75 = icmp sgt i32 %108, 4
  br i1 %cmp75, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %for.end
  %109 = load i32, i32* %m, align 4
  %110 = load double*, double** %a.addr, align 8
  %111 = load i32*, i32** %ip.addr, align 8
  %add.ptr77 = getelementptr inbounds i32, i32* %111, i64 2
  %112 = load i32, i32* %nw, align 4
  %113 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %109, double* %110, i32* %add.ptr77, i32 %112, double* %113)
  %114 = load i32, i32* %m, align 4
  %115 = load double*, double** %a.addr, align 8
  %116 = load i32, i32* %nc, align 4
  %117 = load double*, double** %w.addr, align 8
  %118 = load i32, i32* %nw, align 4
  %idx.ext78 = sext i32 %118 to i64
  %add.ptr79 = getelementptr inbounds double, double* %117, i64 %idx.ext78
  call void @rftfsub(i32 %114, double* %115, i32 %116, double* %add.ptr79)
  br label %if.end.84

if.else:                                          ; preds = %for.end
  %119 = load i32, i32* %m, align 4
  %cmp80 = icmp eq i32 %119, 4
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.else
  %120 = load i32, i32* %m, align 4
  %121 = load double*, double** %a.addr, align 8
  %122 = load i32*, i32** %ip.addr, align 8
  %add.ptr82 = getelementptr inbounds i32, i32* %122, i64 2
  %123 = load i32, i32* %nw, align 4
  %124 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %120, double* %121, i32* %add.ptr82, i32 %123, double* %124)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.else
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.76
  %125 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %125, i64 0
  %126 = load double, double* %arrayidx85, align 8
  %127 = load double*, double** %a.addr, align 8
  %arrayidx86 = getelementptr inbounds double, double* %127, i64 1
  %128 = load double, double* %arrayidx86, align 8
  %sub87 = fsub double %126, %128
  %129 = load i32, i32* %n.addr, align 4
  %sub88 = sub nsw i32 %129, 1
  %idxprom89 = sext i32 %sub88 to i64
  %130 = load double*, double** %a.addr, align 8
  %arrayidx90 = getelementptr inbounds double, double* %130, i64 %idxprom89
  store double %sub87, double* %arrayidx90, align 8
  %131 = load double*, double** %a.addr, align 8
  %arrayidx91 = getelementptr inbounds double, double* %131, i64 0
  %132 = load double, double* %arrayidx91, align 8
  %133 = load double*, double** %a.addr, align 8
  %arrayidx92 = getelementptr inbounds double, double* %133, i64 1
  %134 = load double, double* %arrayidx92, align 8
  %add93 = fadd double %132, %134
  %135 = load double*, double** %a.addr, align 8
  %arrayidx94 = getelementptr inbounds double, double* %135, i64 1
  store double %add93, double* %arrayidx94, align 8
  %136 = load i32, i32* %m, align 4
  %sub95 = sub nsw i32 %136, 2
  store i32 %sub95, i32* %j, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.118, %if.end.84
  %137 = load i32, i32* %j, align 4
  %cmp97 = icmp sge i32 %137, 2
  br i1 %cmp97, label %for.body.98, label %for.end.120

for.body.98:                                      ; preds = %for.cond.96
  %138 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %138 to i64
  %139 = load double*, double** %a.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %139, i64 %idxprom99
  %140 = load double, double* %arrayidx100, align 8
  %141 = load i32, i32* %j, align 4
  %add101 = add nsw i32 %141, 1
  %idxprom102 = sext i32 %add101 to i64
  %142 = load double*, double** %a.addr, align 8
  %arrayidx103 = getelementptr inbounds double, double* %142, i64 %idxprom102
  %143 = load double, double* %arrayidx103, align 8
  %add104 = fadd double %140, %143
  %144 = load i32, i32* %j, align 4
  %mul = mul nsw i32 2, %144
  %add105 = add nsw i32 %mul, 1
  %idxprom106 = sext i32 %add105 to i64
  %145 = load double*, double** %a.addr, align 8
  %arrayidx107 = getelementptr inbounds double, double* %145, i64 %idxprom106
  store double %add104, double* %arrayidx107, align 8
  %146 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %146 to i64
  %147 = load double*, double** %a.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %147, i64 %idxprom108
  %148 = load double, double* %arrayidx109, align 8
  %149 = load i32, i32* %j, align 4
  %add110 = add nsw i32 %149, 1
  %idxprom111 = sext i32 %add110 to i64
  %150 = load double*, double** %a.addr, align 8
  %arrayidx112 = getelementptr inbounds double, double* %150, i64 %idxprom111
  %151 = load double, double* %arrayidx112, align 8
  %sub113 = fsub double %148, %151
  %152 = load i32, i32* %j, align 4
  %mul114 = mul nsw i32 2, %152
  %sub115 = sub nsw i32 %mul114, 1
  %idxprom116 = sext i32 %sub115 to i64
  %153 = load double*, double** %a.addr, align 8
  %arrayidx117 = getelementptr inbounds double, double* %153, i64 %idxprom116
  store double %sub113, double* %arrayidx117, align 8
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.98
  %154 = load i32, i32* %j, align 4
  %sub119 = sub nsw i32 %154, 2
  store i32 %sub119, i32* %j, align 4
  br label %for.cond.96

for.end.120:                                      ; preds = %for.cond.96
  store i32 2, i32* %l, align 4
  %155 = load i32, i32* %mh, align 4
  store i32 %155, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.198, %for.end.120
  %156 = load i32, i32* %m, align 4
  %cmp121 = icmp sge i32 %156, 2
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %157 = load i32, i32* %m, align 4
  %158 = load double*, double** %t.addr, align 8
  %159 = load i32, i32* %nc, align 4
  %160 = load double*, double** %w.addr, align 8
  %161 = load i32, i32* %nw, align 4
  %idx.ext122 = sext i32 %161 to i64
  %add.ptr123 = getelementptr inbounds double, double* %160, i64 %idx.ext122
  call void @dctsub(i32 %157, double* %158, i32 %159, double* %add.ptr123)
  %162 = load i32, i32* %m, align 4
  %cmp124 = icmp sgt i32 %162, 4
  br i1 %cmp124, label %if.then.125, label %if.else.129

if.then.125:                                      ; preds = %while.body
  %163 = load i32, i32* %m, align 4
  %164 = load double*, double** %t.addr, align 8
  %165 = load i32*, i32** %ip.addr, align 8
  %add.ptr126 = getelementptr inbounds i32, i32* %165, i64 2
  %166 = load i32, i32* %nw, align 4
  %167 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %163, double* %164, i32* %add.ptr126, i32 %166, double* %167)
  %168 = load i32, i32* %m, align 4
  %169 = load double*, double** %t.addr, align 8
  %170 = load i32, i32* %nc, align 4
  %171 = load double*, double** %w.addr, align 8
  %172 = load i32, i32* %nw, align 4
  %idx.ext127 = sext i32 %172 to i64
  %add.ptr128 = getelementptr inbounds double, double* %171, i64 %idx.ext127
  call void @rftfsub(i32 %168, double* %169, i32 %170, double* %add.ptr128)
  br label %if.end.134

if.else.129:                                      ; preds = %while.body
  %173 = load i32, i32* %m, align 4
  %cmp130 = icmp eq i32 %173, 4
  br i1 %cmp130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.else.129
  %174 = load i32, i32* %m, align 4
  %175 = load double*, double** %t.addr, align 8
  %176 = load i32*, i32** %ip.addr, align 8
  %add.ptr132 = getelementptr inbounds i32, i32* %176, i64 2
  %177 = load i32, i32* %nw, align 4
  %178 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %174, double* %175, i32* %add.ptr132, i32 %177, double* %178)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.else.129
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.125
  %179 = load double*, double** %t.addr, align 8
  %arrayidx135 = getelementptr inbounds double, double* %179, i64 0
  %180 = load double, double* %arrayidx135, align 8
  %181 = load double*, double** %t.addr, align 8
  %arrayidx136 = getelementptr inbounds double, double* %181, i64 1
  %182 = load double, double* %arrayidx136, align 8
  %sub137 = fsub double %180, %182
  %183 = load i32, i32* %n.addr, align 4
  %184 = load i32, i32* %l, align 4
  %sub138 = sub nsw i32 %183, %184
  %idxprom139 = sext i32 %sub138 to i64
  %185 = load double*, double** %a.addr, align 8
  %arrayidx140 = getelementptr inbounds double, double* %185, i64 %idxprom139
  store double %sub137, double* %arrayidx140, align 8
  %186 = load double*, double** %t.addr, align 8
  %arrayidx141 = getelementptr inbounds double, double* %186, i64 0
  %187 = load double, double* %arrayidx141, align 8
  %188 = load double*, double** %t.addr, align 8
  %arrayidx142 = getelementptr inbounds double, double* %188, i64 1
  %189 = load double, double* %arrayidx142, align 8
  %add143 = fadd double %187, %189
  %190 = load i32, i32* %l, align 4
  %idxprom144 = sext i32 %190 to i64
  %191 = load double*, double** %a.addr, align 8
  %arrayidx145 = getelementptr inbounds double, double* %191, i64 %idxprom144
  store double %add143, double* %arrayidx145, align 8
  store i32 0, i32* %k, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.169, %if.end.134
  %192 = load i32, i32* %j, align 4
  %193 = load i32, i32* %m, align 4
  %cmp147 = icmp slt i32 %192, %193
  br i1 %cmp147, label %for.body.148, label %for.end.171

for.body.148:                                     ; preds = %for.cond.146
  %194 = load i32, i32* %l, align 4
  %shl149 = shl i32 %194, 2
  %195 = load i32, i32* %k, align 4
  %add150 = add nsw i32 %195, %shl149
  store i32 %add150, i32* %k, align 4
  %196 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %196 to i64
  %197 = load double*, double** %t.addr, align 8
  %arrayidx152 = getelementptr inbounds double, double* %197, i64 %idxprom151
  %198 = load double, double* %arrayidx152, align 8
  %199 = load i32, i32* %j, align 4
  %add153 = add nsw i32 %199, 1
  %idxprom154 = sext i32 %add153 to i64
  %200 = load double*, double** %t.addr, align 8
  %arrayidx155 = getelementptr inbounds double, double* %200, i64 %idxprom154
  %201 = load double, double* %arrayidx155, align 8
  %sub156 = fsub double %198, %201
  %202 = load i32, i32* %k, align 4
  %203 = load i32, i32* %l, align 4
  %sub157 = sub nsw i32 %202, %203
  %idxprom158 = sext i32 %sub157 to i64
  %204 = load double*, double** %a.addr, align 8
  %arrayidx159 = getelementptr inbounds double, double* %204, i64 %idxprom158
  store double %sub156, double* %arrayidx159, align 8
  %205 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %205 to i64
  %206 = load double*, double** %t.addr, align 8
  %arrayidx161 = getelementptr inbounds double, double* %206, i64 %idxprom160
  %207 = load double, double* %arrayidx161, align 8
  %208 = load i32, i32* %j, align 4
  %add162 = add nsw i32 %208, 1
  %idxprom163 = sext i32 %add162 to i64
  %209 = load double*, double** %t.addr, align 8
  %arrayidx164 = getelementptr inbounds double, double* %209, i64 %idxprom163
  %210 = load double, double* %arrayidx164, align 8
  %add165 = fadd double %207, %210
  %211 = load i32, i32* %k, align 4
  %212 = load i32, i32* %l, align 4
  %add166 = add nsw i32 %211, %212
  %idxprom167 = sext i32 %add166 to i64
  %213 = load double*, double** %a.addr, align 8
  %arrayidx168 = getelementptr inbounds double, double* %213, i64 %idxprom167
  store double %add165, double* %arrayidx168, align 8
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body.148
  %214 = load i32, i32* %j, align 4
  %add170 = add nsw i32 %214, 2
  store i32 %add170, i32* %j, align 4
  br label %for.cond.146

for.end.171:                                      ; preds = %for.cond.146
  %215 = load i32, i32* %l, align 4
  %shl172 = shl i32 %215, 1
  store i32 %shl172, i32* %l, align 4
  %216 = load i32, i32* %m, align 4
  %shr173 = ashr i32 %216, 1
  store i32 %shr173, i32* %mh, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.196, %for.end.171
  %217 = load i32, i32* %j, align 4
  %218 = load i32, i32* %mh, align 4
  %cmp175 = icmp slt i32 %217, %218
  br i1 %cmp175, label %for.body.176, label %for.end.198

for.body.176:                                     ; preds = %for.cond.174
  %219 = load i32, i32* %m, align 4
  %220 = load i32, i32* %j, align 4
  %sub177 = sub nsw i32 %219, %220
  store i32 %sub177, i32* %k, align 4
  %221 = load i32, i32* %m, align 4
  %222 = load i32, i32* %k, align 4
  %add178 = add nsw i32 %221, %222
  %idxprom179 = sext i32 %add178 to i64
  %223 = load double*, double** %t.addr, align 8
  %arrayidx180 = getelementptr inbounds double, double* %223, i64 %idxprom179
  %224 = load double, double* %arrayidx180, align 8
  %225 = load i32, i32* %m, align 4
  %226 = load i32, i32* %j, align 4
  %add181 = add nsw i32 %225, %226
  %idxprom182 = sext i32 %add181 to i64
  %227 = load double*, double** %t.addr, align 8
  %arrayidx183 = getelementptr inbounds double, double* %227, i64 %idxprom182
  %228 = load double, double* %arrayidx183, align 8
  %sub184 = fsub double %224, %228
  %229 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %229 to i64
  %230 = load double*, double** %t.addr, align 8
  %arrayidx186 = getelementptr inbounds double, double* %230, i64 %idxprom185
  store double %sub184, double* %arrayidx186, align 8
  %231 = load i32, i32* %m, align 4
  %232 = load i32, i32* %k, align 4
  %add187 = add nsw i32 %231, %232
  %idxprom188 = sext i32 %add187 to i64
  %233 = load double*, double** %t.addr, align 8
  %arrayidx189 = getelementptr inbounds double, double* %233, i64 %idxprom188
  %234 = load double, double* %arrayidx189, align 8
  %235 = load i32, i32* %m, align 4
  %236 = load i32, i32* %j, align 4
  %add190 = add nsw i32 %235, %236
  %idxprom191 = sext i32 %add190 to i64
  %237 = load double*, double** %t.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %237, i64 %idxprom191
  %238 = load double, double* %arrayidx192, align 8
  %add193 = fadd double %234, %238
  %239 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %239 to i64
  %240 = load double*, double** %t.addr, align 8
  %arrayidx195 = getelementptr inbounds double, double* %240, i64 %idxprom194
  store double %add193, double* %arrayidx195, align 8
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.176
  %241 = load i32, i32* %j, align 4
  %inc197 = add nsw i32 %241, 1
  store i32 %inc197, i32* %j, align 4
  br label %for.cond.174

for.end.198:                                      ; preds = %for.cond.174
  %242 = load i32, i32* %m, align 4
  %243 = load i32, i32* %mh, align 4
  %add199 = add nsw i32 %242, %243
  %idxprom200 = sext i32 %add199 to i64
  %244 = load double*, double** %t.addr, align 8
  %arrayidx201 = getelementptr inbounds double, double* %244, i64 %idxprom200
  %245 = load double, double* %arrayidx201, align 8
  %246 = load i32, i32* %mh, align 4
  %idxprom202 = sext i32 %246 to i64
  %247 = load double*, double** %t.addr, align 8
  %arrayidx203 = getelementptr inbounds double, double* %247, i64 %idxprom202
  store double %245, double* %arrayidx203, align 8
  %248 = load i32, i32* %mh, align 4
  store i32 %248, i32* %m, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %249 = load double*, double** %t.addr, align 8
  %arrayidx204 = getelementptr inbounds double, double* %249, i64 0
  %250 = load double, double* %arrayidx204, align 8
  %251 = load i32, i32* %l, align 4
  %idxprom205 = sext i32 %251 to i64
  %252 = load double*, double** %a.addr, align 8
  %arrayidx206 = getelementptr inbounds double, double* %252, i64 %idxprom205
  store double %250, double* %arrayidx206, align 8
  %253 = load double*, double** %t.addr, align 8
  %arrayidx207 = getelementptr inbounds double, double* %253, i64 2
  %254 = load double, double* %arrayidx207, align 8
  %255 = load double*, double** %t.addr, align 8
  %arrayidx208 = getelementptr inbounds double, double* %255, i64 1
  %256 = load double, double* %arrayidx208, align 8
  %sub209 = fsub double %254, %256
  %257 = load i32, i32* %n.addr, align 4
  %idxprom210 = sext i32 %257 to i64
  %258 = load double*, double** %a.addr, align 8
  %arrayidx211 = getelementptr inbounds double, double* %258, i64 %idxprom210
  store double %sub209, double* %arrayidx211, align 8
  %259 = load double*, double** %t.addr, align 8
  %arrayidx212 = getelementptr inbounds double, double* %259, i64 2
  %260 = load double, double* %arrayidx212, align 8
  %261 = load double*, double** %t.addr, align 8
  %arrayidx213 = getelementptr inbounds double, double* %261, i64 1
  %262 = load double, double* %arrayidx213, align 8
  %add214 = fadd double %260, %262
  %263 = load double*, double** %a.addr, align 8
  %arrayidx215 = getelementptr inbounds double, double* %263, i64 0
  store double %add214, double* %arrayidx215, align 8
  br label %if.end.223

if.else.216:                                      ; preds = %if.end.6
  %264 = load double*, double** %a.addr, align 8
  %arrayidx217 = getelementptr inbounds double, double* %264, i64 0
  %265 = load double, double* %arrayidx217, align 8
  %266 = load double*, double** %a.addr, align 8
  %arrayidx218 = getelementptr inbounds double, double* %266, i64 1
  store double %265, double* %arrayidx218, align 8
  %267 = load double*, double** %t.addr, align 8
  %arrayidx219 = getelementptr inbounds double, double* %267, i64 0
  %268 = load double, double* %arrayidx219, align 8
  %269 = load double*, double** %a.addr, align 8
  %arrayidx220 = getelementptr inbounds double, double* %269, i64 2
  store double %268, double* %arrayidx220, align 8
  %270 = load double*, double** %t.addr, align 8
  %arrayidx221 = getelementptr inbounds double, double* %270, i64 1
  %271 = load double, double* %arrayidx221, align 8
  %272 = load double*, double** %a.addr, align 8
  %arrayidx222 = getelementptr inbounds double, double* %272, i64 0
  store double %271, double* %arrayidx222, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.216, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @dfst(i32 %n, double* %a, double* %t, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %t.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %mh = alloca i32, align 4
  %nw = alloca i32, align 4
  %nc = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %t, double** %t.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %nw, align 4
  %shl = shl i32 %3, 3
  %cmp = icmp sgt i32 %2, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %nw, align 4
  %5 = load i32, i32* %nw, align 4
  %6 = load i32*, i32** %ip.addr, align 8
  %7 = load double*, double** %w.addr, align 8
  call void @makewt(i32 %5, i32* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx1, align 4
  store i32 %9, i32* %nc, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* %nc, align 4
  %shl2 = shl i32 %11, 1
  %cmp3 = icmp sgt i32 %10, %shl2
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %12 = load i32, i32* %n.addr, align 4
  %shr5 = ashr i32 %12, 1
  store i32 %shr5, i32* %nc, align 4
  %13 = load i32, i32* %nc, align 4
  %14 = load i32*, i32** %ip.addr, align 8
  %15 = load double*, double** %w.addr, align 8
  %16 = load i32, i32* %nw, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  call void @makect(i32 %13, i32* %14, double* %add.ptr)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp sgt i32 %17, 2
  br i1 %cmp7, label %if.then.8, label %if.end.195

if.then.8:                                        ; preds = %if.end.6
  %18 = load i32, i32* %n.addr, align 4
  %shr9 = ashr i32 %18, 1
  store i32 %shr9, i32* %m, align 4
  %19 = load i32, i32* %m, align 4
  %shr10 = ashr i32 %19, 1
  store i32 %shr10, i32* %mh, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %mh, align 4
  %cmp11 = icmp slt i32 %20, %21
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %m, align 4
  %23 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %22, %23
  store i32 %sub, i32* %k, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %25, i64 %idxprom
  %26 = load double, double* %arrayidx12, align 8
  %27 = load i32, i32* %n.addr, align 4
  %28 = load i32, i32* %j, align 4
  %sub13 = sub nsw i32 %27, %28
  %idxprom14 = sext i32 %sub13 to i64
  %29 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %29, i64 %idxprom14
  %30 = load double, double* %arrayidx15, align 8
  %add = fadd double %26, %30
  store double %add, double* %xr, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %32, i64 %idxprom16
  %33 = load double, double* %arrayidx17, align 8
  %34 = load i32, i32* %n.addr, align 4
  %35 = load i32, i32* %j, align 4
  %sub18 = sub nsw i32 %34, %35
  %idxprom19 = sext i32 %sub18 to i64
  %36 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %36, i64 %idxprom19
  %37 = load double, double* %arrayidx20, align 8
  %sub21 = fsub double %33, %37
  store double %sub21, double* %xi, align 8
  %38 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %38 to i64
  %39 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %39, i64 %idxprom22
  %40 = load double, double* %arrayidx23, align 8
  %41 = load i32, i32* %n.addr, align 4
  %42 = load i32, i32* %k, align 4
  %sub24 = sub nsw i32 %41, %42
  %idxprom25 = sext i32 %sub24 to i64
  %43 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %43, i64 %idxprom25
  %44 = load double, double* %arrayidx26, align 8
  %add27 = fadd double %40, %44
  store double %add27, double* %yr, align 8
  %45 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %45 to i64
  %46 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %46, i64 %idxprom28
  %47 = load double, double* %arrayidx29, align 8
  %48 = load i32, i32* %n.addr, align 4
  %49 = load i32, i32* %k, align 4
  %sub30 = sub nsw i32 %48, %49
  %idxprom31 = sext i32 %sub30 to i64
  %50 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %50, i64 %idxprom31
  %51 = load double, double* %arrayidx32, align 8
  %sub33 = fsub double %47, %51
  store double %sub33, double* %yi, align 8
  %52 = load double, double* %xr, align 8
  %53 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %53 to i64
  %54 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %54, i64 %idxprom34
  store double %52, double* %arrayidx35, align 8
  %55 = load double, double* %yr, align 8
  %56 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %56 to i64
  %57 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %57, i64 %idxprom36
  store double %55, double* %arrayidx37, align 8
  %58 = load double, double* %xi, align 8
  %59 = load double, double* %yi, align 8
  %add38 = fadd double %58, %59
  %60 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %60 to i64
  %61 = load double*, double** %t.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %61, i64 %idxprom39
  store double %add38, double* %arrayidx40, align 8
  %62 = load double, double* %xi, align 8
  %63 = load double, double* %yi, align 8
  %sub41 = fsub double %62, %63
  %64 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %64 to i64
  %65 = load double*, double** %t.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %65, i64 %idxprom42
  store double %sub41, double* %arrayidx43, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %j, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load i32, i32* %mh, align 4
  %idxprom44 = sext i32 %67 to i64
  %68 = load double*, double** %a.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %68, i64 %idxprom44
  %69 = load double, double* %arrayidx45, align 8
  %70 = load i32, i32* %n.addr, align 4
  %71 = load i32, i32* %mh, align 4
  %sub46 = sub nsw i32 %70, %71
  %idxprom47 = sext i32 %sub46 to i64
  %72 = load double*, double** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %72, i64 %idxprom47
  %73 = load double, double* %arrayidx48, align 8
  %sub49 = fsub double %69, %73
  %74 = load double*, double** %t.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %74, i64 0
  store double %sub49, double* %arrayidx50, align 8
  %75 = load i32, i32* %n.addr, align 4
  %76 = load i32, i32* %mh, align 4
  %sub51 = sub nsw i32 %75, %76
  %idxprom52 = sext i32 %sub51 to i64
  %77 = load double*, double** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %77, i64 %idxprom52
  %78 = load double, double* %arrayidx53, align 8
  %79 = load i32, i32* %mh, align 4
  %idxprom54 = sext i32 %79 to i64
  %80 = load double*, double** %a.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %80, i64 %idxprom54
  %81 = load double, double* %arrayidx55, align 8
  %add56 = fadd double %81, %78
  store double %add56, double* %arrayidx55, align 8
  %82 = load i32, i32* %m, align 4
  %idxprom57 = sext i32 %82 to i64
  %83 = load double*, double** %a.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %83, i64 %idxprom57
  %84 = load double, double* %arrayidx58, align 8
  %85 = load double*, double** %a.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %85, i64 0
  store double %84, double* %arrayidx59, align 8
  %86 = load i32, i32* %m, align 4
  %87 = load double*, double** %a.addr, align 8
  %88 = load i32, i32* %nc, align 4
  %89 = load double*, double** %w.addr, align 8
  %90 = load i32, i32* %nw, align 4
  %idx.ext60 = sext i32 %90 to i64
  %add.ptr61 = getelementptr inbounds double, double* %89, i64 %idx.ext60
  call void @dstsub(i32 %86, double* %87, i32 %88, double* %add.ptr61)
  %91 = load i32, i32* %m, align 4
  %cmp62 = icmp sgt i32 %91, 4
  br i1 %cmp62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.end
  %92 = load i32, i32* %m, align 4
  %93 = load double*, double** %a.addr, align 8
  %94 = load i32*, i32** %ip.addr, align 8
  %add.ptr64 = getelementptr inbounds i32, i32* %94, i64 2
  %95 = load i32, i32* %nw, align 4
  %96 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %92, double* %93, i32* %add.ptr64, i32 %95, double* %96)
  %97 = load i32, i32* %m, align 4
  %98 = load double*, double** %a.addr, align 8
  %99 = load i32, i32* %nc, align 4
  %100 = load double*, double** %w.addr, align 8
  %101 = load i32, i32* %nw, align 4
  %idx.ext65 = sext i32 %101 to i64
  %add.ptr66 = getelementptr inbounds double, double* %100, i64 %idx.ext65
  call void @rftfsub(i32 %97, double* %98, i32 %99, double* %add.ptr66)
  br label %if.end.71

if.else:                                          ; preds = %for.end
  %102 = load i32, i32* %m, align 4
  %cmp67 = icmp eq i32 %102, 4
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.else
  %103 = load i32, i32* %m, align 4
  %104 = load double*, double** %a.addr, align 8
  %105 = load i32*, i32** %ip.addr, align 8
  %add.ptr69 = getelementptr inbounds i32, i32* %105, i64 2
  %106 = load i32, i32* %nw, align 4
  %107 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %103, double* %104, i32* %add.ptr69, i32 %106, double* %107)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.else
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.63
  %108 = load double*, double** %a.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %108, i64 1
  %109 = load double, double* %arrayidx72, align 8
  %110 = load double*, double** %a.addr, align 8
  %arrayidx73 = getelementptr inbounds double, double* %110, i64 0
  %111 = load double, double* %arrayidx73, align 8
  %sub74 = fsub double %109, %111
  %112 = load i32, i32* %n.addr, align 4
  %sub75 = sub nsw i32 %112, 1
  %idxprom76 = sext i32 %sub75 to i64
  %113 = load double*, double** %a.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %113, i64 %idxprom76
  store double %sub74, double* %arrayidx77, align 8
  %114 = load double*, double** %a.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %114, i64 0
  %115 = load double, double* %arrayidx78, align 8
  %116 = load double*, double** %a.addr, align 8
  %arrayidx79 = getelementptr inbounds double, double* %116, i64 1
  %117 = load double, double* %arrayidx79, align 8
  %add80 = fadd double %115, %117
  %118 = load double*, double** %a.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %118, i64 1
  store double %add80, double* %arrayidx81, align 8
  %119 = load i32, i32* %m, align 4
  %sub82 = sub nsw i32 %119, 2
  store i32 %sub82, i32* %j, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.106, %if.end.71
  %120 = load i32, i32* %j, align 4
  %cmp84 = icmp sge i32 %120, 2
  br i1 %cmp84, label %for.body.85, label %for.end.108

for.body.85:                                      ; preds = %for.cond.83
  %121 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %121 to i64
  %122 = load double*, double** %a.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %122, i64 %idxprom86
  %123 = load double, double* %arrayidx87, align 8
  %124 = load i32, i32* %j, align 4
  %add88 = add nsw i32 %124, 1
  %idxprom89 = sext i32 %add88 to i64
  %125 = load double*, double** %a.addr, align 8
  %arrayidx90 = getelementptr inbounds double, double* %125, i64 %idxprom89
  %126 = load double, double* %arrayidx90, align 8
  %sub91 = fsub double %123, %126
  %127 = load i32, i32* %j, align 4
  %mul = mul nsw i32 2, %127
  %add92 = add nsw i32 %mul, 1
  %idxprom93 = sext i32 %add92 to i64
  %128 = load double*, double** %a.addr, align 8
  %arrayidx94 = getelementptr inbounds double, double* %128, i64 %idxprom93
  store double %sub91, double* %arrayidx94, align 8
  %129 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %129 to i64
  %130 = load double*, double** %a.addr, align 8
  %arrayidx96 = getelementptr inbounds double, double* %130, i64 %idxprom95
  %131 = load double, double* %arrayidx96, align 8
  %sub97 = fsub double -0.000000e+00, %131
  %132 = load i32, i32* %j, align 4
  %add98 = add nsw i32 %132, 1
  %idxprom99 = sext i32 %add98 to i64
  %133 = load double*, double** %a.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %133, i64 %idxprom99
  %134 = load double, double* %arrayidx100, align 8
  %sub101 = fsub double %sub97, %134
  %135 = load i32, i32* %j, align 4
  %mul102 = mul nsw i32 2, %135
  %sub103 = sub nsw i32 %mul102, 1
  %idxprom104 = sext i32 %sub103 to i64
  %136 = load double*, double** %a.addr, align 8
  %arrayidx105 = getelementptr inbounds double, double* %136, i64 %idxprom104
  store double %sub101, double* %arrayidx105, align 8
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.85
  %137 = load i32, i32* %j, align 4
  %sub107 = sub nsw i32 %137, 2
  store i32 %sub107, i32* %j, align 4
  br label %for.cond.83

for.end.108:                                      ; preds = %for.cond.83
  store i32 2, i32* %l, align 4
  %138 = load i32, i32* %mh, align 4
  store i32 %138, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.187, %for.end.108
  %139 = load i32, i32* %m, align 4
  %cmp109 = icmp sge i32 %139, 2
  br i1 %cmp109, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %140 = load i32, i32* %m, align 4
  %141 = load double*, double** %t.addr, align 8
  %142 = load i32, i32* %nc, align 4
  %143 = load double*, double** %w.addr, align 8
  %144 = load i32, i32* %nw, align 4
  %idx.ext110 = sext i32 %144 to i64
  %add.ptr111 = getelementptr inbounds double, double* %143, i64 %idx.ext110
  call void @dstsub(i32 %140, double* %141, i32 %142, double* %add.ptr111)
  %145 = load i32, i32* %m, align 4
  %cmp112 = icmp sgt i32 %145, 4
  br i1 %cmp112, label %if.then.113, label %if.else.117

if.then.113:                                      ; preds = %while.body
  %146 = load i32, i32* %m, align 4
  %147 = load double*, double** %t.addr, align 8
  %148 = load i32*, i32** %ip.addr, align 8
  %add.ptr114 = getelementptr inbounds i32, i32* %148, i64 2
  %149 = load i32, i32* %nw, align 4
  %150 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %146, double* %147, i32* %add.ptr114, i32 %149, double* %150)
  %151 = load i32, i32* %m, align 4
  %152 = load double*, double** %t.addr, align 8
  %153 = load i32, i32* %nc, align 4
  %154 = load double*, double** %w.addr, align 8
  %155 = load i32, i32* %nw, align 4
  %idx.ext115 = sext i32 %155 to i64
  %add.ptr116 = getelementptr inbounds double, double* %154, i64 %idx.ext115
  call void @rftfsub(i32 %151, double* %152, i32 %153, double* %add.ptr116)
  br label %if.end.122

if.else.117:                                      ; preds = %while.body
  %156 = load i32, i32* %m, align 4
  %cmp118 = icmp eq i32 %156, 4
  br i1 %cmp118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.else.117
  %157 = load i32, i32* %m, align 4
  %158 = load double*, double** %t.addr, align 8
  %159 = load i32*, i32** %ip.addr, align 8
  %add.ptr120 = getelementptr inbounds i32, i32* %159, i64 2
  %160 = load i32, i32* %nw, align 4
  %161 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %157, double* %158, i32* %add.ptr120, i32 %160, double* %161)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.else.117
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.113
  %162 = load double*, double** %t.addr, align 8
  %arrayidx123 = getelementptr inbounds double, double* %162, i64 1
  %163 = load double, double* %arrayidx123, align 8
  %164 = load double*, double** %t.addr, align 8
  %arrayidx124 = getelementptr inbounds double, double* %164, i64 0
  %165 = load double, double* %arrayidx124, align 8
  %sub125 = fsub double %163, %165
  %166 = load i32, i32* %n.addr, align 4
  %167 = load i32, i32* %l, align 4
  %sub126 = sub nsw i32 %166, %167
  %idxprom127 = sext i32 %sub126 to i64
  %168 = load double*, double** %a.addr, align 8
  %arrayidx128 = getelementptr inbounds double, double* %168, i64 %idxprom127
  store double %sub125, double* %arrayidx128, align 8
  %169 = load double*, double** %t.addr, align 8
  %arrayidx129 = getelementptr inbounds double, double* %169, i64 0
  %170 = load double, double* %arrayidx129, align 8
  %171 = load double*, double** %t.addr, align 8
  %arrayidx130 = getelementptr inbounds double, double* %171, i64 1
  %172 = load double, double* %arrayidx130, align 8
  %add131 = fadd double %170, %172
  %173 = load i32, i32* %l, align 4
  %idxprom132 = sext i32 %173 to i64
  %174 = load double*, double** %a.addr, align 8
  %arrayidx133 = getelementptr inbounds double, double* %174, i64 %idxprom132
  store double %add131, double* %arrayidx133, align 8
  store i32 0, i32* %k, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.158, %if.end.122
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %m, align 4
  %cmp135 = icmp slt i32 %175, %176
  br i1 %cmp135, label %for.body.136, label %for.end.160

for.body.136:                                     ; preds = %for.cond.134
  %177 = load i32, i32* %l, align 4
  %shl137 = shl i32 %177, 2
  %178 = load i32, i32* %k, align 4
  %add138 = add nsw i32 %178, %shl137
  store i32 %add138, i32* %k, align 4
  %179 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %179 to i64
  %180 = load double*, double** %t.addr, align 8
  %arrayidx140 = getelementptr inbounds double, double* %180, i64 %idxprom139
  %181 = load double, double* %arrayidx140, align 8
  %sub141 = fsub double -0.000000e+00, %181
  %182 = load i32, i32* %j, align 4
  %add142 = add nsw i32 %182, 1
  %idxprom143 = sext i32 %add142 to i64
  %183 = load double*, double** %t.addr, align 8
  %arrayidx144 = getelementptr inbounds double, double* %183, i64 %idxprom143
  %184 = load double, double* %arrayidx144, align 8
  %sub145 = fsub double %sub141, %184
  %185 = load i32, i32* %k, align 4
  %186 = load i32, i32* %l, align 4
  %sub146 = sub nsw i32 %185, %186
  %idxprom147 = sext i32 %sub146 to i64
  %187 = load double*, double** %a.addr, align 8
  %arrayidx148 = getelementptr inbounds double, double* %187, i64 %idxprom147
  store double %sub145, double* %arrayidx148, align 8
  %188 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %188 to i64
  %189 = load double*, double** %t.addr, align 8
  %arrayidx150 = getelementptr inbounds double, double* %189, i64 %idxprom149
  %190 = load double, double* %arrayidx150, align 8
  %191 = load i32, i32* %j, align 4
  %add151 = add nsw i32 %191, 1
  %idxprom152 = sext i32 %add151 to i64
  %192 = load double*, double** %t.addr, align 8
  %arrayidx153 = getelementptr inbounds double, double* %192, i64 %idxprom152
  %193 = load double, double* %arrayidx153, align 8
  %sub154 = fsub double %190, %193
  %194 = load i32, i32* %k, align 4
  %195 = load i32, i32* %l, align 4
  %add155 = add nsw i32 %194, %195
  %idxprom156 = sext i32 %add155 to i64
  %196 = load double*, double** %a.addr, align 8
  %arrayidx157 = getelementptr inbounds double, double* %196, i64 %idxprom156
  store double %sub154, double* %arrayidx157, align 8
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.136
  %197 = load i32, i32* %j, align 4
  %add159 = add nsw i32 %197, 2
  store i32 %add159, i32* %j, align 4
  br label %for.cond.134

for.end.160:                                      ; preds = %for.cond.134
  %198 = load i32, i32* %l, align 4
  %shl161 = shl i32 %198, 1
  store i32 %shl161, i32* %l, align 4
  %199 = load i32, i32* %m, align 4
  %shr162 = ashr i32 %199, 1
  store i32 %shr162, i32* %mh, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.185, %for.end.160
  %200 = load i32, i32* %j, align 4
  %201 = load i32, i32* %mh, align 4
  %cmp164 = icmp slt i32 %200, %201
  br i1 %cmp164, label %for.body.165, label %for.end.187

for.body.165:                                     ; preds = %for.cond.163
  %202 = load i32, i32* %m, align 4
  %203 = load i32, i32* %j, align 4
  %sub166 = sub nsw i32 %202, %203
  store i32 %sub166, i32* %k, align 4
  %204 = load i32, i32* %m, align 4
  %205 = load i32, i32* %k, align 4
  %add167 = add nsw i32 %204, %205
  %idxprom168 = sext i32 %add167 to i64
  %206 = load double*, double** %t.addr, align 8
  %arrayidx169 = getelementptr inbounds double, double* %206, i64 %idxprom168
  %207 = load double, double* %arrayidx169, align 8
  %208 = load i32, i32* %m, align 4
  %209 = load i32, i32* %j, align 4
  %add170 = add nsw i32 %208, %209
  %idxprom171 = sext i32 %add170 to i64
  %210 = load double*, double** %t.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %210, i64 %idxprom171
  %211 = load double, double* %arrayidx172, align 8
  %add173 = fadd double %207, %211
  %212 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %212 to i64
  %213 = load double*, double** %t.addr, align 8
  %arrayidx175 = getelementptr inbounds double, double* %213, i64 %idxprom174
  store double %add173, double* %arrayidx175, align 8
  %214 = load i32, i32* %m, align 4
  %215 = load i32, i32* %k, align 4
  %add176 = add nsw i32 %214, %215
  %idxprom177 = sext i32 %add176 to i64
  %216 = load double*, double** %t.addr, align 8
  %arrayidx178 = getelementptr inbounds double, double* %216, i64 %idxprom177
  %217 = load double, double* %arrayidx178, align 8
  %218 = load i32, i32* %m, align 4
  %219 = load i32, i32* %j, align 4
  %add179 = add nsw i32 %218, %219
  %idxprom180 = sext i32 %add179 to i64
  %220 = load double*, double** %t.addr, align 8
  %arrayidx181 = getelementptr inbounds double, double* %220, i64 %idxprom180
  %221 = load double, double* %arrayidx181, align 8
  %sub182 = fsub double %217, %221
  %222 = load i32, i32* %k, align 4
  %idxprom183 = sext i32 %222 to i64
  %223 = load double*, double** %t.addr, align 8
  %arrayidx184 = getelementptr inbounds double, double* %223, i64 %idxprom183
  store double %sub182, double* %arrayidx184, align 8
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.165
  %224 = load i32, i32* %j, align 4
  %inc186 = add nsw i32 %224, 1
  store i32 %inc186, i32* %j, align 4
  br label %for.cond.163

for.end.187:                                      ; preds = %for.cond.163
  %225 = load i32, i32* %m, align 4
  %226 = load i32, i32* %mh, align 4
  %add188 = add nsw i32 %225, %226
  %idxprom189 = sext i32 %add188 to i64
  %227 = load double*, double** %t.addr, align 8
  %arrayidx190 = getelementptr inbounds double, double* %227, i64 %idxprom189
  %228 = load double, double* %arrayidx190, align 8
  %229 = load double*, double** %t.addr, align 8
  %arrayidx191 = getelementptr inbounds double, double* %229, i64 0
  store double %228, double* %arrayidx191, align 8
  %230 = load i32, i32* %mh, align 4
  store i32 %230, i32* %m, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %231 = load double*, double** %t.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %231, i64 0
  %232 = load double, double* %arrayidx192, align 8
  %233 = load i32, i32* %l, align 4
  %idxprom193 = sext i32 %233 to i64
  %234 = load double*, double** %a.addr, align 8
  %arrayidx194 = getelementptr inbounds double, double* %234, i64 %idxprom193
  store double %232, double* %arrayidx194, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %while.end, %if.end.6
  %235 = load double*, double** %a.addr, align 8
  %arrayidx196 = getelementptr inbounds double, double* %235, i64 0
  store double 0.000000e+00, double* %arrayidx196, align 8
  ret void
}

; Function Attrs: nounwind
declare double @atan(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind uwtable
define void @cftf1st(i32 %n, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %mh = alloca i32, align 4
  %wn4r = alloca double, align 8
  %csc1 = alloca double, align 8
  %csc3 = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  %wd1r = alloca double, align 8
  %wd1i = alloca double, align 8
  %wd3r = alloca double, align 8
  %wd3i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %y0r = alloca double, align 8
  %y0i = alloca double, align 8
  %y1r = alloca double, align 8
  %y1i = alloca double, align 8
  %y2r = alloca double, align 8
  %y2i = alloca double, align 8
  %y3r = alloca double, align 8
  %y3i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 3
  store i32 %shr, i32* %mh, align 4
  %1 = load i32, i32* %mh, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %m, align 4
  %2 = load i32, i32* %m, align 4
  store i32 %2, i32* %j1, align 4
  %3 = load i32, i32* %j1, align 4
  %4 = load i32, i32* %m, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %j2, align 4
  %5 = load i32, i32* %j2, align 4
  %6 = load i32, i32* %m, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %j3, align 4
  %7 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 0
  %8 = load double, double* %arrayidx, align 8
  %9 = load i32, i32* %j2, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx2, align 8
  %add3 = fadd double %8, %11
  store double %add3, double* %x0r, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx4, align 8
  %14 = load i32, i32* %j2, align 4
  %add5 = add nsw i32 %14, 1
  %idxprom6 = sext i32 %add5 to i64
  %15 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %15, i64 %idxprom6
  %16 = load double, double* %arrayidx7, align 8
  %add8 = fadd double %13, %16
  store double %add8, double* %x0i, align 8
  %17 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx9, align 8
  %19 = load i32, i32* %j2, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %20, i64 %idxprom10
  %21 = load double, double* %arrayidx11, align 8
  %sub = fsub double %18, %21
  store double %sub, double* %x1r, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %22, i64 1
  %23 = load double, double* %arrayidx12, align 8
  %24 = load i32, i32* %j2, align 4
  %add13 = add nsw i32 %24, 1
  %idxprom14 = sext i32 %add13 to i64
  %25 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %25, i64 %idxprom14
  %26 = load double, double* %arrayidx15, align 8
  %sub16 = fsub double %23, %26
  store double %sub16, double* %x1i, align 8
  %27 = load i32, i32* %j1, align 4
  %idxprom17 = sext i32 %27 to i64
  %28 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %28, i64 %idxprom17
  %29 = load double, double* %arrayidx18, align 8
  %30 = load i32, i32* %j3, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %31, i64 %idxprom19
  %32 = load double, double* %arrayidx20, align 8
  %add21 = fadd double %29, %32
  store double %add21, double* %x2r, align 8
  %33 = load i32, i32* %j1, align 4
  %add22 = add nsw i32 %33, 1
  %idxprom23 = sext i32 %add22 to i64
  %34 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %34, i64 %idxprom23
  %35 = load double, double* %arrayidx24, align 8
  %36 = load i32, i32* %j3, align 4
  %add25 = add nsw i32 %36, 1
  %idxprom26 = sext i32 %add25 to i64
  %37 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %37, i64 %idxprom26
  %38 = load double, double* %arrayidx27, align 8
  %add28 = fadd double %35, %38
  store double %add28, double* %x2i, align 8
  %39 = load i32, i32* %j1, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %40, i64 %idxprom29
  %41 = load double, double* %arrayidx30, align 8
  %42 = load i32, i32* %j3, align 4
  %idxprom31 = sext i32 %42 to i64
  %43 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %43, i64 %idxprom31
  %44 = load double, double* %arrayidx32, align 8
  %sub33 = fsub double %41, %44
  store double %sub33, double* %x3r, align 8
  %45 = load i32, i32* %j1, align 4
  %add34 = add nsw i32 %45, 1
  %idxprom35 = sext i32 %add34 to i64
  %46 = load double*, double** %a.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %46, i64 %idxprom35
  %47 = load double, double* %arrayidx36, align 8
  %48 = load i32, i32* %j3, align 4
  %add37 = add nsw i32 %48, 1
  %idxprom38 = sext i32 %add37 to i64
  %49 = load double*, double** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %49, i64 %idxprom38
  %50 = load double, double* %arrayidx39, align 8
  %sub40 = fsub double %47, %50
  store double %sub40, double* %x3i, align 8
  %51 = load double, double* %x0r, align 8
  %52 = load double, double* %x2r, align 8
  %add41 = fadd double %51, %52
  %53 = load double*, double** %a.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %53, i64 0
  store double %add41, double* %arrayidx42, align 8
  %54 = load double, double* %x0i, align 8
  %55 = load double, double* %x2i, align 8
  %add43 = fadd double %54, %55
  %56 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %56, i64 1
  store double %add43, double* %arrayidx44, align 8
  %57 = load double, double* %x0r, align 8
  %58 = load double, double* %x2r, align 8
  %sub45 = fsub double %57, %58
  %59 = load i32, i32* %j1, align 4
  %idxprom46 = sext i32 %59 to i64
  %60 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %60, i64 %idxprom46
  store double %sub45, double* %arrayidx47, align 8
  %61 = load double, double* %x0i, align 8
  %62 = load double, double* %x2i, align 8
  %sub48 = fsub double %61, %62
  %63 = load i32, i32* %j1, align 4
  %add49 = add nsw i32 %63, 1
  %idxprom50 = sext i32 %add49 to i64
  %64 = load double*, double** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %64, i64 %idxprom50
  store double %sub48, double* %arrayidx51, align 8
  %65 = load double, double* %x1r, align 8
  %66 = load double, double* %x3i, align 8
  %sub52 = fsub double %65, %66
  %67 = load i32, i32* %j2, align 4
  %idxprom53 = sext i32 %67 to i64
  %68 = load double*, double** %a.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %68, i64 %idxprom53
  store double %sub52, double* %arrayidx54, align 8
  %69 = load double, double* %x1i, align 8
  %70 = load double, double* %x3r, align 8
  %add55 = fadd double %69, %70
  %71 = load i32, i32* %j2, align 4
  %add56 = add nsw i32 %71, 1
  %idxprom57 = sext i32 %add56 to i64
  %72 = load double*, double** %a.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %72, i64 %idxprom57
  store double %add55, double* %arrayidx58, align 8
  %73 = load double, double* %x1r, align 8
  %74 = load double, double* %x3i, align 8
  %add59 = fadd double %73, %74
  %75 = load i32, i32* %j3, align 4
  %idxprom60 = sext i32 %75 to i64
  %76 = load double*, double** %a.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %76, i64 %idxprom60
  store double %add59, double* %arrayidx61, align 8
  %77 = load double, double* %x1i, align 8
  %78 = load double, double* %x3r, align 8
  %sub62 = fsub double %77, %78
  %79 = load i32, i32* %j3, align 4
  %add63 = add nsw i32 %79, 1
  %idxprom64 = sext i32 %add63 to i64
  %80 = load double*, double** %a.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %80, i64 %idxprom64
  store double %sub62, double* %arrayidx65, align 8
  %81 = load double*, double** %w.addr, align 8
  %arrayidx66 = getelementptr inbounds double, double* %81, i64 1
  %82 = load double, double* %arrayidx66, align 8
  store double %82, double* %wn4r, align 8
  %83 = load double*, double** %w.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %83, i64 2
  %84 = load double, double* %arrayidx67, align 8
  store double %84, double* %csc1, align 8
  %85 = load double*, double** %w.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %85, i64 3
  %86 = load double, double* %arrayidx68, align 8
  store double %86, double* %csc3, align 8
  store double 1.000000e+00, double* %wd1r, align 8
  store double 0.000000e+00, double* %wd1i, align 8
  store double 1.000000e+00, double* %wd3r, align 8
  store double 0.000000e+00, double* %wd3i, align 8
  store i32 0, i32* %k, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* %mh, align 4
  %sub69 = sub nsw i32 %88, 2
  %cmp = icmp slt i32 %87, %sub69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i32, i32* %k, align 4
  %add70 = add nsw i32 %89, 4
  store i32 %add70, i32* %k, align 4
  %90 = load double, double* %csc1, align 8
  %91 = load double, double* %wd1r, align 8
  %92 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %92 to i64
  %93 = load double*, double** %w.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %93, i64 %idxprom71
  %94 = load double, double* %arrayidx72, align 8
  %add73 = fadd double %91, %94
  %mul74 = fmul double %90, %add73
  store double %mul74, double* %wk1r, align 8
  %95 = load double, double* %csc1, align 8
  %96 = load double, double* %wd1i, align 8
  %97 = load i32, i32* %k, align 4
  %add75 = add nsw i32 %97, 1
  %idxprom76 = sext i32 %add75 to i64
  %98 = load double*, double** %w.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %98, i64 %idxprom76
  %99 = load double, double* %arrayidx77, align 8
  %add78 = fadd double %96, %99
  %mul79 = fmul double %95, %add78
  store double %mul79, double* %wk1i, align 8
  %100 = load double, double* %csc3, align 8
  %101 = load double, double* %wd3r, align 8
  %102 = load i32, i32* %k, align 4
  %add80 = add nsw i32 %102, 2
  %idxprom81 = sext i32 %add80 to i64
  %103 = load double*, double** %w.addr, align 8
  %arrayidx82 = getelementptr inbounds double, double* %103, i64 %idxprom81
  %104 = load double, double* %arrayidx82, align 8
  %add83 = fadd double %101, %104
  %mul84 = fmul double %100, %add83
  store double %mul84, double* %wk3r, align 8
  %105 = load double, double* %csc3, align 8
  %106 = load double, double* %wd3i, align 8
  %107 = load i32, i32* %k, align 4
  %add85 = add nsw i32 %107, 3
  %idxprom86 = sext i32 %add85 to i64
  %108 = load double*, double** %w.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %108, i64 %idxprom86
  %109 = load double, double* %arrayidx87, align 8
  %sub88 = fsub double %106, %109
  %mul89 = fmul double %105, %sub88
  store double %mul89, double* %wk3i, align 8
  %110 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %110 to i64
  %111 = load double*, double** %w.addr, align 8
  %arrayidx91 = getelementptr inbounds double, double* %111, i64 %idxprom90
  %112 = load double, double* %arrayidx91, align 8
  store double %112, double* %wd1r, align 8
  %113 = load i32, i32* %k, align 4
  %add92 = add nsw i32 %113, 1
  %idxprom93 = sext i32 %add92 to i64
  %114 = load double*, double** %w.addr, align 8
  %arrayidx94 = getelementptr inbounds double, double* %114, i64 %idxprom93
  %115 = load double, double* %arrayidx94, align 8
  store double %115, double* %wd1i, align 8
  %116 = load i32, i32* %k, align 4
  %add95 = add nsw i32 %116, 2
  %idxprom96 = sext i32 %add95 to i64
  %117 = load double*, double** %w.addr, align 8
  %arrayidx97 = getelementptr inbounds double, double* %117, i64 %idxprom96
  %118 = load double, double* %arrayidx97, align 8
  store double %118, double* %wd3r, align 8
  %119 = load i32, i32* %k, align 4
  %add98 = add nsw i32 %119, 3
  %idxprom99 = sext i32 %add98 to i64
  %120 = load double*, double** %w.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %120, i64 %idxprom99
  %121 = load double, double* %arrayidx100, align 8
  %sub101 = fsub double -0.000000e+00, %121
  store double %sub101, double* %wd3i, align 8
  %122 = load i32, i32* %j, align 4
  %123 = load i32, i32* %m, align 4
  %add102 = add nsw i32 %122, %123
  store i32 %add102, i32* %j1, align 4
  %124 = load i32, i32* %j1, align 4
  %125 = load i32, i32* %m, align 4
  %add103 = add nsw i32 %124, %125
  store i32 %add103, i32* %j2, align 4
  %126 = load i32, i32* %j2, align 4
  %127 = load i32, i32* %m, align 4
  %add104 = add nsw i32 %126, %127
  store i32 %add104, i32* %j3, align 4
  %128 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %128 to i64
  %129 = load double*, double** %a.addr, align 8
  %arrayidx106 = getelementptr inbounds double, double* %129, i64 %idxprom105
  %130 = load double, double* %arrayidx106, align 8
  %131 = load i32, i32* %j2, align 4
  %idxprom107 = sext i32 %131 to i64
  %132 = load double*, double** %a.addr, align 8
  %arrayidx108 = getelementptr inbounds double, double* %132, i64 %idxprom107
  %133 = load double, double* %arrayidx108, align 8
  %add109 = fadd double %130, %133
  store double %add109, double* %x0r, align 8
  %134 = load i32, i32* %j, align 4
  %add110 = add nsw i32 %134, 1
  %idxprom111 = sext i32 %add110 to i64
  %135 = load double*, double** %a.addr, align 8
  %arrayidx112 = getelementptr inbounds double, double* %135, i64 %idxprom111
  %136 = load double, double* %arrayidx112, align 8
  %137 = load i32, i32* %j2, align 4
  %add113 = add nsw i32 %137, 1
  %idxprom114 = sext i32 %add113 to i64
  %138 = load double*, double** %a.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %138, i64 %idxprom114
  %139 = load double, double* %arrayidx115, align 8
  %add116 = fadd double %136, %139
  store double %add116, double* %x0i, align 8
  %140 = load i32, i32* %j, align 4
  %idxprom117 = sext i32 %140 to i64
  %141 = load double*, double** %a.addr, align 8
  %arrayidx118 = getelementptr inbounds double, double* %141, i64 %idxprom117
  %142 = load double, double* %arrayidx118, align 8
  %143 = load i32, i32* %j2, align 4
  %idxprom119 = sext i32 %143 to i64
  %144 = load double*, double** %a.addr, align 8
  %arrayidx120 = getelementptr inbounds double, double* %144, i64 %idxprom119
  %145 = load double, double* %arrayidx120, align 8
  %sub121 = fsub double %142, %145
  store double %sub121, double* %x1r, align 8
  %146 = load i32, i32* %j, align 4
  %add122 = add nsw i32 %146, 1
  %idxprom123 = sext i32 %add122 to i64
  %147 = load double*, double** %a.addr, align 8
  %arrayidx124 = getelementptr inbounds double, double* %147, i64 %idxprom123
  %148 = load double, double* %arrayidx124, align 8
  %149 = load i32, i32* %j2, align 4
  %add125 = add nsw i32 %149, 1
  %idxprom126 = sext i32 %add125 to i64
  %150 = load double*, double** %a.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %150, i64 %idxprom126
  %151 = load double, double* %arrayidx127, align 8
  %sub128 = fsub double %148, %151
  store double %sub128, double* %x1i, align 8
  %152 = load i32, i32* %j, align 4
  %add129 = add nsw i32 %152, 2
  %idxprom130 = sext i32 %add129 to i64
  %153 = load double*, double** %a.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %153, i64 %idxprom130
  %154 = load double, double* %arrayidx131, align 8
  %155 = load i32, i32* %j2, align 4
  %add132 = add nsw i32 %155, 2
  %idxprom133 = sext i32 %add132 to i64
  %156 = load double*, double** %a.addr, align 8
  %arrayidx134 = getelementptr inbounds double, double* %156, i64 %idxprom133
  %157 = load double, double* %arrayidx134, align 8
  %add135 = fadd double %154, %157
  store double %add135, double* %y0r, align 8
  %158 = load i32, i32* %j, align 4
  %add136 = add nsw i32 %158, 3
  %idxprom137 = sext i32 %add136 to i64
  %159 = load double*, double** %a.addr, align 8
  %arrayidx138 = getelementptr inbounds double, double* %159, i64 %idxprom137
  %160 = load double, double* %arrayidx138, align 8
  %161 = load i32, i32* %j2, align 4
  %add139 = add nsw i32 %161, 3
  %idxprom140 = sext i32 %add139 to i64
  %162 = load double*, double** %a.addr, align 8
  %arrayidx141 = getelementptr inbounds double, double* %162, i64 %idxprom140
  %163 = load double, double* %arrayidx141, align 8
  %add142 = fadd double %160, %163
  store double %add142, double* %y0i, align 8
  %164 = load i32, i32* %j, align 4
  %add143 = add nsw i32 %164, 2
  %idxprom144 = sext i32 %add143 to i64
  %165 = load double*, double** %a.addr, align 8
  %arrayidx145 = getelementptr inbounds double, double* %165, i64 %idxprom144
  %166 = load double, double* %arrayidx145, align 8
  %167 = load i32, i32* %j2, align 4
  %add146 = add nsw i32 %167, 2
  %idxprom147 = sext i32 %add146 to i64
  %168 = load double*, double** %a.addr, align 8
  %arrayidx148 = getelementptr inbounds double, double* %168, i64 %idxprom147
  %169 = load double, double* %arrayidx148, align 8
  %sub149 = fsub double %166, %169
  store double %sub149, double* %y1r, align 8
  %170 = load i32, i32* %j, align 4
  %add150 = add nsw i32 %170, 3
  %idxprom151 = sext i32 %add150 to i64
  %171 = load double*, double** %a.addr, align 8
  %arrayidx152 = getelementptr inbounds double, double* %171, i64 %idxprom151
  %172 = load double, double* %arrayidx152, align 8
  %173 = load i32, i32* %j2, align 4
  %add153 = add nsw i32 %173, 3
  %idxprom154 = sext i32 %add153 to i64
  %174 = load double*, double** %a.addr, align 8
  %arrayidx155 = getelementptr inbounds double, double* %174, i64 %idxprom154
  %175 = load double, double* %arrayidx155, align 8
  %sub156 = fsub double %172, %175
  store double %sub156, double* %y1i, align 8
  %176 = load i32, i32* %j1, align 4
  %idxprom157 = sext i32 %176 to i64
  %177 = load double*, double** %a.addr, align 8
  %arrayidx158 = getelementptr inbounds double, double* %177, i64 %idxprom157
  %178 = load double, double* %arrayidx158, align 8
  %179 = load i32, i32* %j3, align 4
  %idxprom159 = sext i32 %179 to i64
  %180 = load double*, double** %a.addr, align 8
  %arrayidx160 = getelementptr inbounds double, double* %180, i64 %idxprom159
  %181 = load double, double* %arrayidx160, align 8
  %add161 = fadd double %178, %181
  store double %add161, double* %x2r, align 8
  %182 = load i32, i32* %j1, align 4
  %add162 = add nsw i32 %182, 1
  %idxprom163 = sext i32 %add162 to i64
  %183 = load double*, double** %a.addr, align 8
  %arrayidx164 = getelementptr inbounds double, double* %183, i64 %idxprom163
  %184 = load double, double* %arrayidx164, align 8
  %185 = load i32, i32* %j3, align 4
  %add165 = add nsw i32 %185, 1
  %idxprom166 = sext i32 %add165 to i64
  %186 = load double*, double** %a.addr, align 8
  %arrayidx167 = getelementptr inbounds double, double* %186, i64 %idxprom166
  %187 = load double, double* %arrayidx167, align 8
  %add168 = fadd double %184, %187
  store double %add168, double* %x2i, align 8
  %188 = load i32, i32* %j1, align 4
  %idxprom169 = sext i32 %188 to i64
  %189 = load double*, double** %a.addr, align 8
  %arrayidx170 = getelementptr inbounds double, double* %189, i64 %idxprom169
  %190 = load double, double* %arrayidx170, align 8
  %191 = load i32, i32* %j3, align 4
  %idxprom171 = sext i32 %191 to i64
  %192 = load double*, double** %a.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %192, i64 %idxprom171
  %193 = load double, double* %arrayidx172, align 8
  %sub173 = fsub double %190, %193
  store double %sub173, double* %x3r, align 8
  %194 = load i32, i32* %j1, align 4
  %add174 = add nsw i32 %194, 1
  %idxprom175 = sext i32 %add174 to i64
  %195 = load double*, double** %a.addr, align 8
  %arrayidx176 = getelementptr inbounds double, double* %195, i64 %idxprom175
  %196 = load double, double* %arrayidx176, align 8
  %197 = load i32, i32* %j3, align 4
  %add177 = add nsw i32 %197, 1
  %idxprom178 = sext i32 %add177 to i64
  %198 = load double*, double** %a.addr, align 8
  %arrayidx179 = getelementptr inbounds double, double* %198, i64 %idxprom178
  %199 = load double, double* %arrayidx179, align 8
  %sub180 = fsub double %196, %199
  store double %sub180, double* %x3i, align 8
  %200 = load i32, i32* %j1, align 4
  %add181 = add nsw i32 %200, 2
  %idxprom182 = sext i32 %add181 to i64
  %201 = load double*, double** %a.addr, align 8
  %arrayidx183 = getelementptr inbounds double, double* %201, i64 %idxprom182
  %202 = load double, double* %arrayidx183, align 8
  %203 = load i32, i32* %j3, align 4
  %add184 = add nsw i32 %203, 2
  %idxprom185 = sext i32 %add184 to i64
  %204 = load double*, double** %a.addr, align 8
  %arrayidx186 = getelementptr inbounds double, double* %204, i64 %idxprom185
  %205 = load double, double* %arrayidx186, align 8
  %add187 = fadd double %202, %205
  store double %add187, double* %y2r, align 8
  %206 = load i32, i32* %j1, align 4
  %add188 = add nsw i32 %206, 3
  %idxprom189 = sext i32 %add188 to i64
  %207 = load double*, double** %a.addr, align 8
  %arrayidx190 = getelementptr inbounds double, double* %207, i64 %idxprom189
  %208 = load double, double* %arrayidx190, align 8
  %209 = load i32, i32* %j3, align 4
  %add191 = add nsw i32 %209, 3
  %idxprom192 = sext i32 %add191 to i64
  %210 = load double*, double** %a.addr, align 8
  %arrayidx193 = getelementptr inbounds double, double* %210, i64 %idxprom192
  %211 = load double, double* %arrayidx193, align 8
  %add194 = fadd double %208, %211
  store double %add194, double* %y2i, align 8
  %212 = load i32, i32* %j1, align 4
  %add195 = add nsw i32 %212, 2
  %idxprom196 = sext i32 %add195 to i64
  %213 = load double*, double** %a.addr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %213, i64 %idxprom196
  %214 = load double, double* %arrayidx197, align 8
  %215 = load i32, i32* %j3, align 4
  %add198 = add nsw i32 %215, 2
  %idxprom199 = sext i32 %add198 to i64
  %216 = load double*, double** %a.addr, align 8
  %arrayidx200 = getelementptr inbounds double, double* %216, i64 %idxprom199
  %217 = load double, double* %arrayidx200, align 8
  %sub201 = fsub double %214, %217
  store double %sub201, double* %y3r, align 8
  %218 = load i32, i32* %j1, align 4
  %add202 = add nsw i32 %218, 3
  %idxprom203 = sext i32 %add202 to i64
  %219 = load double*, double** %a.addr, align 8
  %arrayidx204 = getelementptr inbounds double, double* %219, i64 %idxprom203
  %220 = load double, double* %arrayidx204, align 8
  %221 = load i32, i32* %j3, align 4
  %add205 = add nsw i32 %221, 3
  %idxprom206 = sext i32 %add205 to i64
  %222 = load double*, double** %a.addr, align 8
  %arrayidx207 = getelementptr inbounds double, double* %222, i64 %idxprom206
  %223 = load double, double* %arrayidx207, align 8
  %sub208 = fsub double %220, %223
  store double %sub208, double* %y3i, align 8
  %224 = load double, double* %x0r, align 8
  %225 = load double, double* %x2r, align 8
  %add209 = fadd double %224, %225
  %226 = load i32, i32* %j, align 4
  %idxprom210 = sext i32 %226 to i64
  %227 = load double*, double** %a.addr, align 8
  %arrayidx211 = getelementptr inbounds double, double* %227, i64 %idxprom210
  store double %add209, double* %arrayidx211, align 8
  %228 = load double, double* %x0i, align 8
  %229 = load double, double* %x2i, align 8
  %add212 = fadd double %228, %229
  %230 = load i32, i32* %j, align 4
  %add213 = add nsw i32 %230, 1
  %idxprom214 = sext i32 %add213 to i64
  %231 = load double*, double** %a.addr, align 8
  %arrayidx215 = getelementptr inbounds double, double* %231, i64 %idxprom214
  store double %add212, double* %arrayidx215, align 8
  %232 = load double, double* %y0r, align 8
  %233 = load double, double* %y2r, align 8
  %add216 = fadd double %232, %233
  %234 = load i32, i32* %j, align 4
  %add217 = add nsw i32 %234, 2
  %idxprom218 = sext i32 %add217 to i64
  %235 = load double*, double** %a.addr, align 8
  %arrayidx219 = getelementptr inbounds double, double* %235, i64 %idxprom218
  store double %add216, double* %arrayidx219, align 8
  %236 = load double, double* %y0i, align 8
  %237 = load double, double* %y2i, align 8
  %add220 = fadd double %236, %237
  %238 = load i32, i32* %j, align 4
  %add221 = add nsw i32 %238, 3
  %idxprom222 = sext i32 %add221 to i64
  %239 = load double*, double** %a.addr, align 8
  %arrayidx223 = getelementptr inbounds double, double* %239, i64 %idxprom222
  store double %add220, double* %arrayidx223, align 8
  %240 = load double, double* %x0r, align 8
  %241 = load double, double* %x2r, align 8
  %sub224 = fsub double %240, %241
  %242 = load i32, i32* %j1, align 4
  %idxprom225 = sext i32 %242 to i64
  %243 = load double*, double** %a.addr, align 8
  %arrayidx226 = getelementptr inbounds double, double* %243, i64 %idxprom225
  store double %sub224, double* %arrayidx226, align 8
  %244 = load double, double* %x0i, align 8
  %245 = load double, double* %x2i, align 8
  %sub227 = fsub double %244, %245
  %246 = load i32, i32* %j1, align 4
  %add228 = add nsw i32 %246, 1
  %idxprom229 = sext i32 %add228 to i64
  %247 = load double*, double** %a.addr, align 8
  %arrayidx230 = getelementptr inbounds double, double* %247, i64 %idxprom229
  store double %sub227, double* %arrayidx230, align 8
  %248 = load double, double* %y0r, align 8
  %249 = load double, double* %y2r, align 8
  %sub231 = fsub double %248, %249
  %250 = load i32, i32* %j1, align 4
  %add232 = add nsw i32 %250, 2
  %idxprom233 = sext i32 %add232 to i64
  %251 = load double*, double** %a.addr, align 8
  %arrayidx234 = getelementptr inbounds double, double* %251, i64 %idxprom233
  store double %sub231, double* %arrayidx234, align 8
  %252 = load double, double* %y0i, align 8
  %253 = load double, double* %y2i, align 8
  %sub235 = fsub double %252, %253
  %254 = load i32, i32* %j1, align 4
  %add236 = add nsw i32 %254, 3
  %idxprom237 = sext i32 %add236 to i64
  %255 = load double*, double** %a.addr, align 8
  %arrayidx238 = getelementptr inbounds double, double* %255, i64 %idxprom237
  store double %sub235, double* %arrayidx238, align 8
  %256 = load double, double* %x1r, align 8
  %257 = load double, double* %x3i, align 8
  %sub239 = fsub double %256, %257
  store double %sub239, double* %x0r, align 8
  %258 = load double, double* %x1i, align 8
  %259 = load double, double* %x3r, align 8
  %add240 = fadd double %258, %259
  store double %add240, double* %x0i, align 8
  %260 = load double, double* %wk1r, align 8
  %261 = load double, double* %x0r, align 8
  %mul241 = fmul double %260, %261
  %262 = load double, double* %wk1i, align 8
  %263 = load double, double* %x0i, align 8
  %mul242 = fmul double %262, %263
  %sub243 = fsub double %mul241, %mul242
  %264 = load i32, i32* %j2, align 4
  %idxprom244 = sext i32 %264 to i64
  %265 = load double*, double** %a.addr, align 8
  %arrayidx245 = getelementptr inbounds double, double* %265, i64 %idxprom244
  store double %sub243, double* %arrayidx245, align 8
  %266 = load double, double* %wk1r, align 8
  %267 = load double, double* %x0i, align 8
  %mul246 = fmul double %266, %267
  %268 = load double, double* %wk1i, align 8
  %269 = load double, double* %x0r, align 8
  %mul247 = fmul double %268, %269
  %add248 = fadd double %mul246, %mul247
  %270 = load i32, i32* %j2, align 4
  %add249 = add nsw i32 %270, 1
  %idxprom250 = sext i32 %add249 to i64
  %271 = load double*, double** %a.addr, align 8
  %arrayidx251 = getelementptr inbounds double, double* %271, i64 %idxprom250
  store double %add248, double* %arrayidx251, align 8
  %272 = load double, double* %y1r, align 8
  %273 = load double, double* %y3i, align 8
  %sub252 = fsub double %272, %273
  store double %sub252, double* %x0r, align 8
  %274 = load double, double* %y1i, align 8
  %275 = load double, double* %y3r, align 8
  %add253 = fadd double %274, %275
  store double %add253, double* %x0i, align 8
  %276 = load double, double* %wd1r, align 8
  %277 = load double, double* %x0r, align 8
  %mul254 = fmul double %276, %277
  %278 = load double, double* %wd1i, align 8
  %279 = load double, double* %x0i, align 8
  %mul255 = fmul double %278, %279
  %sub256 = fsub double %mul254, %mul255
  %280 = load i32, i32* %j2, align 4
  %add257 = add nsw i32 %280, 2
  %idxprom258 = sext i32 %add257 to i64
  %281 = load double*, double** %a.addr, align 8
  %arrayidx259 = getelementptr inbounds double, double* %281, i64 %idxprom258
  store double %sub256, double* %arrayidx259, align 8
  %282 = load double, double* %wd1r, align 8
  %283 = load double, double* %x0i, align 8
  %mul260 = fmul double %282, %283
  %284 = load double, double* %wd1i, align 8
  %285 = load double, double* %x0r, align 8
  %mul261 = fmul double %284, %285
  %add262 = fadd double %mul260, %mul261
  %286 = load i32, i32* %j2, align 4
  %add263 = add nsw i32 %286, 3
  %idxprom264 = sext i32 %add263 to i64
  %287 = load double*, double** %a.addr, align 8
  %arrayidx265 = getelementptr inbounds double, double* %287, i64 %idxprom264
  store double %add262, double* %arrayidx265, align 8
  %288 = load double, double* %x1r, align 8
  %289 = load double, double* %x3i, align 8
  %add266 = fadd double %288, %289
  store double %add266, double* %x0r, align 8
  %290 = load double, double* %x1i, align 8
  %291 = load double, double* %x3r, align 8
  %sub267 = fsub double %290, %291
  store double %sub267, double* %x0i, align 8
  %292 = load double, double* %wk3r, align 8
  %293 = load double, double* %x0r, align 8
  %mul268 = fmul double %292, %293
  %294 = load double, double* %wk3i, align 8
  %295 = load double, double* %x0i, align 8
  %mul269 = fmul double %294, %295
  %add270 = fadd double %mul268, %mul269
  %296 = load i32, i32* %j3, align 4
  %idxprom271 = sext i32 %296 to i64
  %297 = load double*, double** %a.addr, align 8
  %arrayidx272 = getelementptr inbounds double, double* %297, i64 %idxprom271
  store double %add270, double* %arrayidx272, align 8
  %298 = load double, double* %wk3r, align 8
  %299 = load double, double* %x0i, align 8
  %mul273 = fmul double %298, %299
  %300 = load double, double* %wk3i, align 8
  %301 = load double, double* %x0r, align 8
  %mul274 = fmul double %300, %301
  %sub275 = fsub double %mul273, %mul274
  %302 = load i32, i32* %j3, align 4
  %add276 = add nsw i32 %302, 1
  %idxprom277 = sext i32 %add276 to i64
  %303 = load double*, double** %a.addr, align 8
  %arrayidx278 = getelementptr inbounds double, double* %303, i64 %idxprom277
  store double %sub275, double* %arrayidx278, align 8
  %304 = load double, double* %y1r, align 8
  %305 = load double, double* %y3i, align 8
  %add279 = fadd double %304, %305
  store double %add279, double* %x0r, align 8
  %306 = load double, double* %y1i, align 8
  %307 = load double, double* %y3r, align 8
  %sub280 = fsub double %306, %307
  store double %sub280, double* %x0i, align 8
  %308 = load double, double* %wd3r, align 8
  %309 = load double, double* %x0r, align 8
  %mul281 = fmul double %308, %309
  %310 = load double, double* %wd3i, align 8
  %311 = load double, double* %x0i, align 8
  %mul282 = fmul double %310, %311
  %add283 = fadd double %mul281, %mul282
  %312 = load i32, i32* %j3, align 4
  %add284 = add nsw i32 %312, 2
  %idxprom285 = sext i32 %add284 to i64
  %313 = load double*, double** %a.addr, align 8
  %arrayidx286 = getelementptr inbounds double, double* %313, i64 %idxprom285
  store double %add283, double* %arrayidx286, align 8
  %314 = load double, double* %wd3r, align 8
  %315 = load double, double* %x0i, align 8
  %mul287 = fmul double %314, %315
  %316 = load double, double* %wd3i, align 8
  %317 = load double, double* %x0r, align 8
  %mul288 = fmul double %316, %317
  %sub289 = fsub double %mul287, %mul288
  %318 = load i32, i32* %j3, align 4
  %add290 = add nsw i32 %318, 3
  %idxprom291 = sext i32 %add290 to i64
  %319 = load double*, double** %a.addr, align 8
  %arrayidx292 = getelementptr inbounds double, double* %319, i64 %idxprom291
  store double %sub289, double* %arrayidx292, align 8
  %320 = load i32, i32* %m, align 4
  %321 = load i32, i32* %j, align 4
  %sub293 = sub nsw i32 %320, %321
  store i32 %sub293, i32* %j0, align 4
  %322 = load i32, i32* %j0, align 4
  %323 = load i32, i32* %m, align 4
  %add294 = add nsw i32 %322, %323
  store i32 %add294, i32* %j1, align 4
  %324 = load i32, i32* %j1, align 4
  %325 = load i32, i32* %m, align 4
  %add295 = add nsw i32 %324, %325
  store i32 %add295, i32* %j2, align 4
  %326 = load i32, i32* %j2, align 4
  %327 = load i32, i32* %m, align 4
  %add296 = add nsw i32 %326, %327
  store i32 %add296, i32* %j3, align 4
  %328 = load i32, i32* %j0, align 4
  %idxprom297 = sext i32 %328 to i64
  %329 = load double*, double** %a.addr, align 8
  %arrayidx298 = getelementptr inbounds double, double* %329, i64 %idxprom297
  %330 = load double, double* %arrayidx298, align 8
  %331 = load i32, i32* %j2, align 4
  %idxprom299 = sext i32 %331 to i64
  %332 = load double*, double** %a.addr, align 8
  %arrayidx300 = getelementptr inbounds double, double* %332, i64 %idxprom299
  %333 = load double, double* %arrayidx300, align 8
  %add301 = fadd double %330, %333
  store double %add301, double* %x0r, align 8
  %334 = load i32, i32* %j0, align 4
  %add302 = add nsw i32 %334, 1
  %idxprom303 = sext i32 %add302 to i64
  %335 = load double*, double** %a.addr, align 8
  %arrayidx304 = getelementptr inbounds double, double* %335, i64 %idxprom303
  %336 = load double, double* %arrayidx304, align 8
  %337 = load i32, i32* %j2, align 4
  %add305 = add nsw i32 %337, 1
  %idxprom306 = sext i32 %add305 to i64
  %338 = load double*, double** %a.addr, align 8
  %arrayidx307 = getelementptr inbounds double, double* %338, i64 %idxprom306
  %339 = load double, double* %arrayidx307, align 8
  %add308 = fadd double %336, %339
  store double %add308, double* %x0i, align 8
  %340 = load i32, i32* %j0, align 4
  %idxprom309 = sext i32 %340 to i64
  %341 = load double*, double** %a.addr, align 8
  %arrayidx310 = getelementptr inbounds double, double* %341, i64 %idxprom309
  %342 = load double, double* %arrayidx310, align 8
  %343 = load i32, i32* %j2, align 4
  %idxprom311 = sext i32 %343 to i64
  %344 = load double*, double** %a.addr, align 8
  %arrayidx312 = getelementptr inbounds double, double* %344, i64 %idxprom311
  %345 = load double, double* %arrayidx312, align 8
  %sub313 = fsub double %342, %345
  store double %sub313, double* %x1r, align 8
  %346 = load i32, i32* %j0, align 4
  %add314 = add nsw i32 %346, 1
  %idxprom315 = sext i32 %add314 to i64
  %347 = load double*, double** %a.addr, align 8
  %arrayidx316 = getelementptr inbounds double, double* %347, i64 %idxprom315
  %348 = load double, double* %arrayidx316, align 8
  %349 = load i32, i32* %j2, align 4
  %add317 = add nsw i32 %349, 1
  %idxprom318 = sext i32 %add317 to i64
  %350 = load double*, double** %a.addr, align 8
  %arrayidx319 = getelementptr inbounds double, double* %350, i64 %idxprom318
  %351 = load double, double* %arrayidx319, align 8
  %sub320 = fsub double %348, %351
  store double %sub320, double* %x1i, align 8
  %352 = load i32, i32* %j0, align 4
  %sub321 = sub nsw i32 %352, 2
  %idxprom322 = sext i32 %sub321 to i64
  %353 = load double*, double** %a.addr, align 8
  %arrayidx323 = getelementptr inbounds double, double* %353, i64 %idxprom322
  %354 = load double, double* %arrayidx323, align 8
  %355 = load i32, i32* %j2, align 4
  %sub324 = sub nsw i32 %355, 2
  %idxprom325 = sext i32 %sub324 to i64
  %356 = load double*, double** %a.addr, align 8
  %arrayidx326 = getelementptr inbounds double, double* %356, i64 %idxprom325
  %357 = load double, double* %arrayidx326, align 8
  %add327 = fadd double %354, %357
  store double %add327, double* %y0r, align 8
  %358 = load i32, i32* %j0, align 4
  %sub328 = sub nsw i32 %358, 1
  %idxprom329 = sext i32 %sub328 to i64
  %359 = load double*, double** %a.addr, align 8
  %arrayidx330 = getelementptr inbounds double, double* %359, i64 %idxprom329
  %360 = load double, double* %arrayidx330, align 8
  %361 = load i32, i32* %j2, align 4
  %sub331 = sub nsw i32 %361, 1
  %idxprom332 = sext i32 %sub331 to i64
  %362 = load double*, double** %a.addr, align 8
  %arrayidx333 = getelementptr inbounds double, double* %362, i64 %idxprom332
  %363 = load double, double* %arrayidx333, align 8
  %add334 = fadd double %360, %363
  store double %add334, double* %y0i, align 8
  %364 = load i32, i32* %j0, align 4
  %sub335 = sub nsw i32 %364, 2
  %idxprom336 = sext i32 %sub335 to i64
  %365 = load double*, double** %a.addr, align 8
  %arrayidx337 = getelementptr inbounds double, double* %365, i64 %idxprom336
  %366 = load double, double* %arrayidx337, align 8
  %367 = load i32, i32* %j2, align 4
  %sub338 = sub nsw i32 %367, 2
  %idxprom339 = sext i32 %sub338 to i64
  %368 = load double*, double** %a.addr, align 8
  %arrayidx340 = getelementptr inbounds double, double* %368, i64 %idxprom339
  %369 = load double, double* %arrayidx340, align 8
  %sub341 = fsub double %366, %369
  store double %sub341, double* %y1r, align 8
  %370 = load i32, i32* %j0, align 4
  %sub342 = sub nsw i32 %370, 1
  %idxprom343 = sext i32 %sub342 to i64
  %371 = load double*, double** %a.addr, align 8
  %arrayidx344 = getelementptr inbounds double, double* %371, i64 %idxprom343
  %372 = load double, double* %arrayidx344, align 8
  %373 = load i32, i32* %j2, align 4
  %sub345 = sub nsw i32 %373, 1
  %idxprom346 = sext i32 %sub345 to i64
  %374 = load double*, double** %a.addr, align 8
  %arrayidx347 = getelementptr inbounds double, double* %374, i64 %idxprom346
  %375 = load double, double* %arrayidx347, align 8
  %sub348 = fsub double %372, %375
  store double %sub348, double* %y1i, align 8
  %376 = load i32, i32* %j1, align 4
  %idxprom349 = sext i32 %376 to i64
  %377 = load double*, double** %a.addr, align 8
  %arrayidx350 = getelementptr inbounds double, double* %377, i64 %idxprom349
  %378 = load double, double* %arrayidx350, align 8
  %379 = load i32, i32* %j3, align 4
  %idxprom351 = sext i32 %379 to i64
  %380 = load double*, double** %a.addr, align 8
  %arrayidx352 = getelementptr inbounds double, double* %380, i64 %idxprom351
  %381 = load double, double* %arrayidx352, align 8
  %add353 = fadd double %378, %381
  store double %add353, double* %x2r, align 8
  %382 = load i32, i32* %j1, align 4
  %add354 = add nsw i32 %382, 1
  %idxprom355 = sext i32 %add354 to i64
  %383 = load double*, double** %a.addr, align 8
  %arrayidx356 = getelementptr inbounds double, double* %383, i64 %idxprom355
  %384 = load double, double* %arrayidx356, align 8
  %385 = load i32, i32* %j3, align 4
  %add357 = add nsw i32 %385, 1
  %idxprom358 = sext i32 %add357 to i64
  %386 = load double*, double** %a.addr, align 8
  %arrayidx359 = getelementptr inbounds double, double* %386, i64 %idxprom358
  %387 = load double, double* %arrayidx359, align 8
  %add360 = fadd double %384, %387
  store double %add360, double* %x2i, align 8
  %388 = load i32, i32* %j1, align 4
  %idxprom361 = sext i32 %388 to i64
  %389 = load double*, double** %a.addr, align 8
  %arrayidx362 = getelementptr inbounds double, double* %389, i64 %idxprom361
  %390 = load double, double* %arrayidx362, align 8
  %391 = load i32, i32* %j3, align 4
  %idxprom363 = sext i32 %391 to i64
  %392 = load double*, double** %a.addr, align 8
  %arrayidx364 = getelementptr inbounds double, double* %392, i64 %idxprom363
  %393 = load double, double* %arrayidx364, align 8
  %sub365 = fsub double %390, %393
  store double %sub365, double* %x3r, align 8
  %394 = load i32, i32* %j1, align 4
  %add366 = add nsw i32 %394, 1
  %idxprom367 = sext i32 %add366 to i64
  %395 = load double*, double** %a.addr, align 8
  %arrayidx368 = getelementptr inbounds double, double* %395, i64 %idxprom367
  %396 = load double, double* %arrayidx368, align 8
  %397 = load i32, i32* %j3, align 4
  %add369 = add nsw i32 %397, 1
  %idxprom370 = sext i32 %add369 to i64
  %398 = load double*, double** %a.addr, align 8
  %arrayidx371 = getelementptr inbounds double, double* %398, i64 %idxprom370
  %399 = load double, double* %arrayidx371, align 8
  %sub372 = fsub double %396, %399
  store double %sub372, double* %x3i, align 8
  %400 = load i32, i32* %j1, align 4
  %sub373 = sub nsw i32 %400, 2
  %idxprom374 = sext i32 %sub373 to i64
  %401 = load double*, double** %a.addr, align 8
  %arrayidx375 = getelementptr inbounds double, double* %401, i64 %idxprom374
  %402 = load double, double* %arrayidx375, align 8
  %403 = load i32, i32* %j3, align 4
  %sub376 = sub nsw i32 %403, 2
  %idxprom377 = sext i32 %sub376 to i64
  %404 = load double*, double** %a.addr, align 8
  %arrayidx378 = getelementptr inbounds double, double* %404, i64 %idxprom377
  %405 = load double, double* %arrayidx378, align 8
  %add379 = fadd double %402, %405
  store double %add379, double* %y2r, align 8
  %406 = load i32, i32* %j1, align 4
  %sub380 = sub nsw i32 %406, 1
  %idxprom381 = sext i32 %sub380 to i64
  %407 = load double*, double** %a.addr, align 8
  %arrayidx382 = getelementptr inbounds double, double* %407, i64 %idxprom381
  %408 = load double, double* %arrayidx382, align 8
  %409 = load i32, i32* %j3, align 4
  %sub383 = sub nsw i32 %409, 1
  %idxprom384 = sext i32 %sub383 to i64
  %410 = load double*, double** %a.addr, align 8
  %arrayidx385 = getelementptr inbounds double, double* %410, i64 %idxprom384
  %411 = load double, double* %arrayidx385, align 8
  %add386 = fadd double %408, %411
  store double %add386, double* %y2i, align 8
  %412 = load i32, i32* %j1, align 4
  %sub387 = sub nsw i32 %412, 2
  %idxprom388 = sext i32 %sub387 to i64
  %413 = load double*, double** %a.addr, align 8
  %arrayidx389 = getelementptr inbounds double, double* %413, i64 %idxprom388
  %414 = load double, double* %arrayidx389, align 8
  %415 = load i32, i32* %j3, align 4
  %sub390 = sub nsw i32 %415, 2
  %idxprom391 = sext i32 %sub390 to i64
  %416 = load double*, double** %a.addr, align 8
  %arrayidx392 = getelementptr inbounds double, double* %416, i64 %idxprom391
  %417 = load double, double* %arrayidx392, align 8
  %sub393 = fsub double %414, %417
  store double %sub393, double* %y3r, align 8
  %418 = load i32, i32* %j1, align 4
  %sub394 = sub nsw i32 %418, 1
  %idxprom395 = sext i32 %sub394 to i64
  %419 = load double*, double** %a.addr, align 8
  %arrayidx396 = getelementptr inbounds double, double* %419, i64 %idxprom395
  %420 = load double, double* %arrayidx396, align 8
  %421 = load i32, i32* %j3, align 4
  %sub397 = sub nsw i32 %421, 1
  %idxprom398 = sext i32 %sub397 to i64
  %422 = load double*, double** %a.addr, align 8
  %arrayidx399 = getelementptr inbounds double, double* %422, i64 %idxprom398
  %423 = load double, double* %arrayidx399, align 8
  %sub400 = fsub double %420, %423
  store double %sub400, double* %y3i, align 8
  %424 = load double, double* %x0r, align 8
  %425 = load double, double* %x2r, align 8
  %add401 = fadd double %424, %425
  %426 = load i32, i32* %j0, align 4
  %idxprom402 = sext i32 %426 to i64
  %427 = load double*, double** %a.addr, align 8
  %arrayidx403 = getelementptr inbounds double, double* %427, i64 %idxprom402
  store double %add401, double* %arrayidx403, align 8
  %428 = load double, double* %x0i, align 8
  %429 = load double, double* %x2i, align 8
  %add404 = fadd double %428, %429
  %430 = load i32, i32* %j0, align 4
  %add405 = add nsw i32 %430, 1
  %idxprom406 = sext i32 %add405 to i64
  %431 = load double*, double** %a.addr, align 8
  %arrayidx407 = getelementptr inbounds double, double* %431, i64 %idxprom406
  store double %add404, double* %arrayidx407, align 8
  %432 = load double, double* %y0r, align 8
  %433 = load double, double* %y2r, align 8
  %add408 = fadd double %432, %433
  %434 = load i32, i32* %j0, align 4
  %sub409 = sub nsw i32 %434, 2
  %idxprom410 = sext i32 %sub409 to i64
  %435 = load double*, double** %a.addr, align 8
  %arrayidx411 = getelementptr inbounds double, double* %435, i64 %idxprom410
  store double %add408, double* %arrayidx411, align 8
  %436 = load double, double* %y0i, align 8
  %437 = load double, double* %y2i, align 8
  %add412 = fadd double %436, %437
  %438 = load i32, i32* %j0, align 4
  %sub413 = sub nsw i32 %438, 1
  %idxprom414 = sext i32 %sub413 to i64
  %439 = load double*, double** %a.addr, align 8
  %arrayidx415 = getelementptr inbounds double, double* %439, i64 %idxprom414
  store double %add412, double* %arrayidx415, align 8
  %440 = load double, double* %x0r, align 8
  %441 = load double, double* %x2r, align 8
  %sub416 = fsub double %440, %441
  %442 = load i32, i32* %j1, align 4
  %idxprom417 = sext i32 %442 to i64
  %443 = load double*, double** %a.addr, align 8
  %arrayidx418 = getelementptr inbounds double, double* %443, i64 %idxprom417
  store double %sub416, double* %arrayidx418, align 8
  %444 = load double, double* %x0i, align 8
  %445 = load double, double* %x2i, align 8
  %sub419 = fsub double %444, %445
  %446 = load i32, i32* %j1, align 4
  %add420 = add nsw i32 %446, 1
  %idxprom421 = sext i32 %add420 to i64
  %447 = load double*, double** %a.addr, align 8
  %arrayidx422 = getelementptr inbounds double, double* %447, i64 %idxprom421
  store double %sub419, double* %arrayidx422, align 8
  %448 = load double, double* %y0r, align 8
  %449 = load double, double* %y2r, align 8
  %sub423 = fsub double %448, %449
  %450 = load i32, i32* %j1, align 4
  %sub424 = sub nsw i32 %450, 2
  %idxprom425 = sext i32 %sub424 to i64
  %451 = load double*, double** %a.addr, align 8
  %arrayidx426 = getelementptr inbounds double, double* %451, i64 %idxprom425
  store double %sub423, double* %arrayidx426, align 8
  %452 = load double, double* %y0i, align 8
  %453 = load double, double* %y2i, align 8
  %sub427 = fsub double %452, %453
  %454 = load i32, i32* %j1, align 4
  %sub428 = sub nsw i32 %454, 1
  %idxprom429 = sext i32 %sub428 to i64
  %455 = load double*, double** %a.addr, align 8
  %arrayidx430 = getelementptr inbounds double, double* %455, i64 %idxprom429
  store double %sub427, double* %arrayidx430, align 8
  %456 = load double, double* %x1r, align 8
  %457 = load double, double* %x3i, align 8
  %sub431 = fsub double %456, %457
  store double %sub431, double* %x0r, align 8
  %458 = load double, double* %x1i, align 8
  %459 = load double, double* %x3r, align 8
  %add432 = fadd double %458, %459
  store double %add432, double* %x0i, align 8
  %460 = load double, double* %wk1i, align 8
  %461 = load double, double* %x0r, align 8
  %mul433 = fmul double %460, %461
  %462 = load double, double* %wk1r, align 8
  %463 = load double, double* %x0i, align 8
  %mul434 = fmul double %462, %463
  %sub435 = fsub double %mul433, %mul434
  %464 = load i32, i32* %j2, align 4
  %idxprom436 = sext i32 %464 to i64
  %465 = load double*, double** %a.addr, align 8
  %arrayidx437 = getelementptr inbounds double, double* %465, i64 %idxprom436
  store double %sub435, double* %arrayidx437, align 8
  %466 = load double, double* %wk1i, align 8
  %467 = load double, double* %x0i, align 8
  %mul438 = fmul double %466, %467
  %468 = load double, double* %wk1r, align 8
  %469 = load double, double* %x0r, align 8
  %mul439 = fmul double %468, %469
  %add440 = fadd double %mul438, %mul439
  %470 = load i32, i32* %j2, align 4
  %add441 = add nsw i32 %470, 1
  %idxprom442 = sext i32 %add441 to i64
  %471 = load double*, double** %a.addr, align 8
  %arrayidx443 = getelementptr inbounds double, double* %471, i64 %idxprom442
  store double %add440, double* %arrayidx443, align 8
  %472 = load double, double* %y1r, align 8
  %473 = load double, double* %y3i, align 8
  %sub444 = fsub double %472, %473
  store double %sub444, double* %x0r, align 8
  %474 = load double, double* %y1i, align 8
  %475 = load double, double* %y3r, align 8
  %add445 = fadd double %474, %475
  store double %add445, double* %x0i, align 8
  %476 = load double, double* %wd1i, align 8
  %477 = load double, double* %x0r, align 8
  %mul446 = fmul double %476, %477
  %478 = load double, double* %wd1r, align 8
  %479 = load double, double* %x0i, align 8
  %mul447 = fmul double %478, %479
  %sub448 = fsub double %mul446, %mul447
  %480 = load i32, i32* %j2, align 4
  %sub449 = sub nsw i32 %480, 2
  %idxprom450 = sext i32 %sub449 to i64
  %481 = load double*, double** %a.addr, align 8
  %arrayidx451 = getelementptr inbounds double, double* %481, i64 %idxprom450
  store double %sub448, double* %arrayidx451, align 8
  %482 = load double, double* %wd1i, align 8
  %483 = load double, double* %x0i, align 8
  %mul452 = fmul double %482, %483
  %484 = load double, double* %wd1r, align 8
  %485 = load double, double* %x0r, align 8
  %mul453 = fmul double %484, %485
  %add454 = fadd double %mul452, %mul453
  %486 = load i32, i32* %j2, align 4
  %sub455 = sub nsw i32 %486, 1
  %idxprom456 = sext i32 %sub455 to i64
  %487 = load double*, double** %a.addr, align 8
  %arrayidx457 = getelementptr inbounds double, double* %487, i64 %idxprom456
  store double %add454, double* %arrayidx457, align 8
  %488 = load double, double* %x1r, align 8
  %489 = load double, double* %x3i, align 8
  %add458 = fadd double %488, %489
  store double %add458, double* %x0r, align 8
  %490 = load double, double* %x1i, align 8
  %491 = load double, double* %x3r, align 8
  %sub459 = fsub double %490, %491
  store double %sub459, double* %x0i, align 8
  %492 = load double, double* %wk3i, align 8
  %493 = load double, double* %x0r, align 8
  %mul460 = fmul double %492, %493
  %494 = load double, double* %wk3r, align 8
  %495 = load double, double* %x0i, align 8
  %mul461 = fmul double %494, %495
  %add462 = fadd double %mul460, %mul461
  %496 = load i32, i32* %j3, align 4
  %idxprom463 = sext i32 %496 to i64
  %497 = load double*, double** %a.addr, align 8
  %arrayidx464 = getelementptr inbounds double, double* %497, i64 %idxprom463
  store double %add462, double* %arrayidx464, align 8
  %498 = load double, double* %wk3i, align 8
  %499 = load double, double* %x0i, align 8
  %mul465 = fmul double %498, %499
  %500 = load double, double* %wk3r, align 8
  %501 = load double, double* %x0r, align 8
  %mul466 = fmul double %500, %501
  %sub467 = fsub double %mul465, %mul466
  %502 = load i32, i32* %j3, align 4
  %add468 = add nsw i32 %502, 1
  %idxprom469 = sext i32 %add468 to i64
  %503 = load double*, double** %a.addr, align 8
  %arrayidx470 = getelementptr inbounds double, double* %503, i64 %idxprom469
  store double %sub467, double* %arrayidx470, align 8
  %504 = load double, double* %y1r, align 8
  %505 = load double, double* %y3i, align 8
  %add471 = fadd double %504, %505
  store double %add471, double* %x0r, align 8
  %506 = load double, double* %y1i, align 8
  %507 = load double, double* %y3r, align 8
  %sub472 = fsub double %506, %507
  store double %sub472, double* %x0i, align 8
  %508 = load double, double* %wd3i, align 8
  %509 = load double, double* %x0r, align 8
  %mul473 = fmul double %508, %509
  %510 = load double, double* %wd3r, align 8
  %511 = load double, double* %x0i, align 8
  %mul474 = fmul double %510, %511
  %add475 = fadd double %mul473, %mul474
  %512 = load i32, i32* %j3, align 4
  %sub476 = sub nsw i32 %512, 2
  %idxprom477 = sext i32 %sub476 to i64
  %513 = load double*, double** %a.addr, align 8
  %arrayidx478 = getelementptr inbounds double, double* %513, i64 %idxprom477
  store double %add475, double* %arrayidx478, align 8
  %514 = load double, double* %wd3i, align 8
  %515 = load double, double* %x0i, align 8
  %mul479 = fmul double %514, %515
  %516 = load double, double* %wd3r, align 8
  %517 = load double, double* %x0r, align 8
  %mul480 = fmul double %516, %517
  %sub481 = fsub double %mul479, %mul480
  %518 = load i32, i32* %j3, align 4
  %sub482 = sub nsw i32 %518, 1
  %idxprom483 = sext i32 %sub482 to i64
  %519 = load double*, double** %a.addr, align 8
  %arrayidx484 = getelementptr inbounds double, double* %519, i64 %idxprom483
  store double %sub481, double* %arrayidx484, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %520 = load i32, i32* %j, align 4
  %add485 = add nsw i32 %520, 4
  store i32 %add485, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %521 = load double, double* %csc1, align 8
  %522 = load double, double* %wd1r, align 8
  %523 = load double, double* %wn4r, align 8
  %add486 = fadd double %522, %523
  %mul487 = fmul double %521, %add486
  store double %mul487, double* %wk1r, align 8
  %524 = load double, double* %csc1, align 8
  %525 = load double, double* %wd1i, align 8
  %526 = load double, double* %wn4r, align 8
  %add488 = fadd double %525, %526
  %mul489 = fmul double %524, %add488
  store double %mul489, double* %wk1i, align 8
  %527 = load double, double* %csc3, align 8
  %528 = load double, double* %wd3r, align 8
  %529 = load double, double* %wn4r, align 8
  %sub490 = fsub double %528, %529
  %mul491 = fmul double %527, %sub490
  store double %mul491, double* %wk3r, align 8
  %530 = load double, double* %csc3, align 8
  %531 = load double, double* %wd3i, align 8
  %532 = load double, double* %wn4r, align 8
  %sub492 = fsub double %531, %532
  %mul493 = fmul double %530, %sub492
  store double %mul493, double* %wk3i, align 8
  %533 = load i32, i32* %mh, align 4
  store i32 %533, i32* %j0, align 4
  %534 = load i32, i32* %j0, align 4
  %535 = load i32, i32* %m, align 4
  %add494 = add nsw i32 %534, %535
  store i32 %add494, i32* %j1, align 4
  %536 = load i32, i32* %j1, align 4
  %537 = load i32, i32* %m, align 4
  %add495 = add nsw i32 %536, %537
  store i32 %add495, i32* %j2, align 4
  %538 = load i32, i32* %j2, align 4
  %539 = load i32, i32* %m, align 4
  %add496 = add nsw i32 %538, %539
  store i32 %add496, i32* %j3, align 4
  %540 = load i32, i32* %j0, align 4
  %sub497 = sub nsw i32 %540, 2
  %idxprom498 = sext i32 %sub497 to i64
  %541 = load double*, double** %a.addr, align 8
  %arrayidx499 = getelementptr inbounds double, double* %541, i64 %idxprom498
  %542 = load double, double* %arrayidx499, align 8
  %543 = load i32, i32* %j2, align 4
  %sub500 = sub nsw i32 %543, 2
  %idxprom501 = sext i32 %sub500 to i64
  %544 = load double*, double** %a.addr, align 8
  %arrayidx502 = getelementptr inbounds double, double* %544, i64 %idxprom501
  %545 = load double, double* %arrayidx502, align 8
  %add503 = fadd double %542, %545
  store double %add503, double* %x0r, align 8
  %546 = load i32, i32* %j0, align 4
  %sub504 = sub nsw i32 %546, 1
  %idxprom505 = sext i32 %sub504 to i64
  %547 = load double*, double** %a.addr, align 8
  %arrayidx506 = getelementptr inbounds double, double* %547, i64 %idxprom505
  %548 = load double, double* %arrayidx506, align 8
  %549 = load i32, i32* %j2, align 4
  %sub507 = sub nsw i32 %549, 1
  %idxprom508 = sext i32 %sub507 to i64
  %550 = load double*, double** %a.addr, align 8
  %arrayidx509 = getelementptr inbounds double, double* %550, i64 %idxprom508
  %551 = load double, double* %arrayidx509, align 8
  %add510 = fadd double %548, %551
  store double %add510, double* %x0i, align 8
  %552 = load i32, i32* %j0, align 4
  %sub511 = sub nsw i32 %552, 2
  %idxprom512 = sext i32 %sub511 to i64
  %553 = load double*, double** %a.addr, align 8
  %arrayidx513 = getelementptr inbounds double, double* %553, i64 %idxprom512
  %554 = load double, double* %arrayidx513, align 8
  %555 = load i32, i32* %j2, align 4
  %sub514 = sub nsw i32 %555, 2
  %idxprom515 = sext i32 %sub514 to i64
  %556 = load double*, double** %a.addr, align 8
  %arrayidx516 = getelementptr inbounds double, double* %556, i64 %idxprom515
  %557 = load double, double* %arrayidx516, align 8
  %sub517 = fsub double %554, %557
  store double %sub517, double* %x1r, align 8
  %558 = load i32, i32* %j0, align 4
  %sub518 = sub nsw i32 %558, 1
  %idxprom519 = sext i32 %sub518 to i64
  %559 = load double*, double** %a.addr, align 8
  %arrayidx520 = getelementptr inbounds double, double* %559, i64 %idxprom519
  %560 = load double, double* %arrayidx520, align 8
  %561 = load i32, i32* %j2, align 4
  %sub521 = sub nsw i32 %561, 1
  %idxprom522 = sext i32 %sub521 to i64
  %562 = load double*, double** %a.addr, align 8
  %arrayidx523 = getelementptr inbounds double, double* %562, i64 %idxprom522
  %563 = load double, double* %arrayidx523, align 8
  %sub524 = fsub double %560, %563
  store double %sub524, double* %x1i, align 8
  %564 = load i32, i32* %j1, align 4
  %sub525 = sub nsw i32 %564, 2
  %idxprom526 = sext i32 %sub525 to i64
  %565 = load double*, double** %a.addr, align 8
  %arrayidx527 = getelementptr inbounds double, double* %565, i64 %idxprom526
  %566 = load double, double* %arrayidx527, align 8
  %567 = load i32, i32* %j3, align 4
  %sub528 = sub nsw i32 %567, 2
  %idxprom529 = sext i32 %sub528 to i64
  %568 = load double*, double** %a.addr, align 8
  %arrayidx530 = getelementptr inbounds double, double* %568, i64 %idxprom529
  %569 = load double, double* %arrayidx530, align 8
  %add531 = fadd double %566, %569
  store double %add531, double* %x2r, align 8
  %570 = load i32, i32* %j1, align 4
  %sub532 = sub nsw i32 %570, 1
  %idxprom533 = sext i32 %sub532 to i64
  %571 = load double*, double** %a.addr, align 8
  %arrayidx534 = getelementptr inbounds double, double* %571, i64 %idxprom533
  %572 = load double, double* %arrayidx534, align 8
  %573 = load i32, i32* %j3, align 4
  %sub535 = sub nsw i32 %573, 1
  %idxprom536 = sext i32 %sub535 to i64
  %574 = load double*, double** %a.addr, align 8
  %arrayidx537 = getelementptr inbounds double, double* %574, i64 %idxprom536
  %575 = load double, double* %arrayidx537, align 8
  %add538 = fadd double %572, %575
  store double %add538, double* %x2i, align 8
  %576 = load i32, i32* %j1, align 4
  %sub539 = sub nsw i32 %576, 2
  %idxprom540 = sext i32 %sub539 to i64
  %577 = load double*, double** %a.addr, align 8
  %arrayidx541 = getelementptr inbounds double, double* %577, i64 %idxprom540
  %578 = load double, double* %arrayidx541, align 8
  %579 = load i32, i32* %j3, align 4
  %sub542 = sub nsw i32 %579, 2
  %idxprom543 = sext i32 %sub542 to i64
  %580 = load double*, double** %a.addr, align 8
  %arrayidx544 = getelementptr inbounds double, double* %580, i64 %idxprom543
  %581 = load double, double* %arrayidx544, align 8
  %sub545 = fsub double %578, %581
  store double %sub545, double* %x3r, align 8
  %582 = load i32, i32* %j1, align 4
  %sub546 = sub nsw i32 %582, 1
  %idxprom547 = sext i32 %sub546 to i64
  %583 = load double*, double** %a.addr, align 8
  %arrayidx548 = getelementptr inbounds double, double* %583, i64 %idxprom547
  %584 = load double, double* %arrayidx548, align 8
  %585 = load i32, i32* %j3, align 4
  %sub549 = sub nsw i32 %585, 1
  %idxprom550 = sext i32 %sub549 to i64
  %586 = load double*, double** %a.addr, align 8
  %arrayidx551 = getelementptr inbounds double, double* %586, i64 %idxprom550
  %587 = load double, double* %arrayidx551, align 8
  %sub552 = fsub double %584, %587
  store double %sub552, double* %x3i, align 8
  %588 = load double, double* %x0r, align 8
  %589 = load double, double* %x2r, align 8
  %add553 = fadd double %588, %589
  %590 = load i32, i32* %j0, align 4
  %sub554 = sub nsw i32 %590, 2
  %idxprom555 = sext i32 %sub554 to i64
  %591 = load double*, double** %a.addr, align 8
  %arrayidx556 = getelementptr inbounds double, double* %591, i64 %idxprom555
  store double %add553, double* %arrayidx556, align 8
  %592 = load double, double* %x0i, align 8
  %593 = load double, double* %x2i, align 8
  %add557 = fadd double %592, %593
  %594 = load i32, i32* %j0, align 4
  %sub558 = sub nsw i32 %594, 1
  %idxprom559 = sext i32 %sub558 to i64
  %595 = load double*, double** %a.addr, align 8
  %arrayidx560 = getelementptr inbounds double, double* %595, i64 %idxprom559
  store double %add557, double* %arrayidx560, align 8
  %596 = load double, double* %x0r, align 8
  %597 = load double, double* %x2r, align 8
  %sub561 = fsub double %596, %597
  %598 = load i32, i32* %j1, align 4
  %sub562 = sub nsw i32 %598, 2
  %idxprom563 = sext i32 %sub562 to i64
  %599 = load double*, double** %a.addr, align 8
  %arrayidx564 = getelementptr inbounds double, double* %599, i64 %idxprom563
  store double %sub561, double* %arrayidx564, align 8
  %600 = load double, double* %x0i, align 8
  %601 = load double, double* %x2i, align 8
  %sub565 = fsub double %600, %601
  %602 = load i32, i32* %j1, align 4
  %sub566 = sub nsw i32 %602, 1
  %idxprom567 = sext i32 %sub566 to i64
  %603 = load double*, double** %a.addr, align 8
  %arrayidx568 = getelementptr inbounds double, double* %603, i64 %idxprom567
  store double %sub565, double* %arrayidx568, align 8
  %604 = load double, double* %x1r, align 8
  %605 = load double, double* %x3i, align 8
  %sub569 = fsub double %604, %605
  store double %sub569, double* %x0r, align 8
  %606 = load double, double* %x1i, align 8
  %607 = load double, double* %x3r, align 8
  %add570 = fadd double %606, %607
  store double %add570, double* %x0i, align 8
  %608 = load double, double* %wk1r, align 8
  %609 = load double, double* %x0r, align 8
  %mul571 = fmul double %608, %609
  %610 = load double, double* %wk1i, align 8
  %611 = load double, double* %x0i, align 8
  %mul572 = fmul double %610, %611
  %sub573 = fsub double %mul571, %mul572
  %612 = load i32, i32* %j2, align 4
  %sub574 = sub nsw i32 %612, 2
  %idxprom575 = sext i32 %sub574 to i64
  %613 = load double*, double** %a.addr, align 8
  %arrayidx576 = getelementptr inbounds double, double* %613, i64 %idxprom575
  store double %sub573, double* %arrayidx576, align 8
  %614 = load double, double* %wk1r, align 8
  %615 = load double, double* %x0i, align 8
  %mul577 = fmul double %614, %615
  %616 = load double, double* %wk1i, align 8
  %617 = load double, double* %x0r, align 8
  %mul578 = fmul double %616, %617
  %add579 = fadd double %mul577, %mul578
  %618 = load i32, i32* %j2, align 4
  %sub580 = sub nsw i32 %618, 1
  %idxprom581 = sext i32 %sub580 to i64
  %619 = load double*, double** %a.addr, align 8
  %arrayidx582 = getelementptr inbounds double, double* %619, i64 %idxprom581
  store double %add579, double* %arrayidx582, align 8
  %620 = load double, double* %x1r, align 8
  %621 = load double, double* %x3i, align 8
  %add583 = fadd double %620, %621
  store double %add583, double* %x0r, align 8
  %622 = load double, double* %x1i, align 8
  %623 = load double, double* %x3r, align 8
  %sub584 = fsub double %622, %623
  store double %sub584, double* %x0i, align 8
  %624 = load double, double* %wk3r, align 8
  %625 = load double, double* %x0r, align 8
  %mul585 = fmul double %624, %625
  %626 = load double, double* %wk3i, align 8
  %627 = load double, double* %x0i, align 8
  %mul586 = fmul double %626, %627
  %add587 = fadd double %mul585, %mul586
  %628 = load i32, i32* %j3, align 4
  %sub588 = sub nsw i32 %628, 2
  %idxprom589 = sext i32 %sub588 to i64
  %629 = load double*, double** %a.addr, align 8
  %arrayidx590 = getelementptr inbounds double, double* %629, i64 %idxprom589
  store double %add587, double* %arrayidx590, align 8
  %630 = load double, double* %wk3r, align 8
  %631 = load double, double* %x0i, align 8
  %mul591 = fmul double %630, %631
  %632 = load double, double* %wk3i, align 8
  %633 = load double, double* %x0r, align 8
  %mul592 = fmul double %632, %633
  %sub593 = fsub double %mul591, %mul592
  %634 = load i32, i32* %j3, align 4
  %sub594 = sub nsw i32 %634, 1
  %idxprom595 = sext i32 %sub594 to i64
  %635 = load double*, double** %a.addr, align 8
  %arrayidx596 = getelementptr inbounds double, double* %635, i64 %idxprom595
  store double %sub593, double* %arrayidx596, align 8
  %636 = load i32, i32* %j0, align 4
  %idxprom597 = sext i32 %636 to i64
  %637 = load double*, double** %a.addr, align 8
  %arrayidx598 = getelementptr inbounds double, double* %637, i64 %idxprom597
  %638 = load double, double* %arrayidx598, align 8
  %639 = load i32, i32* %j2, align 4
  %idxprom599 = sext i32 %639 to i64
  %640 = load double*, double** %a.addr, align 8
  %arrayidx600 = getelementptr inbounds double, double* %640, i64 %idxprom599
  %641 = load double, double* %arrayidx600, align 8
  %add601 = fadd double %638, %641
  store double %add601, double* %x0r, align 8
  %642 = load i32, i32* %j0, align 4
  %add602 = add nsw i32 %642, 1
  %idxprom603 = sext i32 %add602 to i64
  %643 = load double*, double** %a.addr, align 8
  %arrayidx604 = getelementptr inbounds double, double* %643, i64 %idxprom603
  %644 = load double, double* %arrayidx604, align 8
  %645 = load i32, i32* %j2, align 4
  %add605 = add nsw i32 %645, 1
  %idxprom606 = sext i32 %add605 to i64
  %646 = load double*, double** %a.addr, align 8
  %arrayidx607 = getelementptr inbounds double, double* %646, i64 %idxprom606
  %647 = load double, double* %arrayidx607, align 8
  %add608 = fadd double %644, %647
  store double %add608, double* %x0i, align 8
  %648 = load i32, i32* %j0, align 4
  %idxprom609 = sext i32 %648 to i64
  %649 = load double*, double** %a.addr, align 8
  %arrayidx610 = getelementptr inbounds double, double* %649, i64 %idxprom609
  %650 = load double, double* %arrayidx610, align 8
  %651 = load i32, i32* %j2, align 4
  %idxprom611 = sext i32 %651 to i64
  %652 = load double*, double** %a.addr, align 8
  %arrayidx612 = getelementptr inbounds double, double* %652, i64 %idxprom611
  %653 = load double, double* %arrayidx612, align 8
  %sub613 = fsub double %650, %653
  store double %sub613, double* %x1r, align 8
  %654 = load i32, i32* %j0, align 4
  %add614 = add nsw i32 %654, 1
  %idxprom615 = sext i32 %add614 to i64
  %655 = load double*, double** %a.addr, align 8
  %arrayidx616 = getelementptr inbounds double, double* %655, i64 %idxprom615
  %656 = load double, double* %arrayidx616, align 8
  %657 = load i32, i32* %j2, align 4
  %add617 = add nsw i32 %657, 1
  %idxprom618 = sext i32 %add617 to i64
  %658 = load double*, double** %a.addr, align 8
  %arrayidx619 = getelementptr inbounds double, double* %658, i64 %idxprom618
  %659 = load double, double* %arrayidx619, align 8
  %sub620 = fsub double %656, %659
  store double %sub620, double* %x1i, align 8
  %660 = load i32, i32* %j1, align 4
  %idxprom621 = sext i32 %660 to i64
  %661 = load double*, double** %a.addr, align 8
  %arrayidx622 = getelementptr inbounds double, double* %661, i64 %idxprom621
  %662 = load double, double* %arrayidx622, align 8
  %663 = load i32, i32* %j3, align 4
  %idxprom623 = sext i32 %663 to i64
  %664 = load double*, double** %a.addr, align 8
  %arrayidx624 = getelementptr inbounds double, double* %664, i64 %idxprom623
  %665 = load double, double* %arrayidx624, align 8
  %add625 = fadd double %662, %665
  store double %add625, double* %x2r, align 8
  %666 = load i32, i32* %j1, align 4
  %add626 = add nsw i32 %666, 1
  %idxprom627 = sext i32 %add626 to i64
  %667 = load double*, double** %a.addr, align 8
  %arrayidx628 = getelementptr inbounds double, double* %667, i64 %idxprom627
  %668 = load double, double* %arrayidx628, align 8
  %669 = load i32, i32* %j3, align 4
  %add629 = add nsw i32 %669, 1
  %idxprom630 = sext i32 %add629 to i64
  %670 = load double*, double** %a.addr, align 8
  %arrayidx631 = getelementptr inbounds double, double* %670, i64 %idxprom630
  %671 = load double, double* %arrayidx631, align 8
  %add632 = fadd double %668, %671
  store double %add632, double* %x2i, align 8
  %672 = load i32, i32* %j1, align 4
  %idxprom633 = sext i32 %672 to i64
  %673 = load double*, double** %a.addr, align 8
  %arrayidx634 = getelementptr inbounds double, double* %673, i64 %idxprom633
  %674 = load double, double* %arrayidx634, align 8
  %675 = load i32, i32* %j3, align 4
  %idxprom635 = sext i32 %675 to i64
  %676 = load double*, double** %a.addr, align 8
  %arrayidx636 = getelementptr inbounds double, double* %676, i64 %idxprom635
  %677 = load double, double* %arrayidx636, align 8
  %sub637 = fsub double %674, %677
  store double %sub637, double* %x3r, align 8
  %678 = load i32, i32* %j1, align 4
  %add638 = add nsw i32 %678, 1
  %idxprom639 = sext i32 %add638 to i64
  %679 = load double*, double** %a.addr, align 8
  %arrayidx640 = getelementptr inbounds double, double* %679, i64 %idxprom639
  %680 = load double, double* %arrayidx640, align 8
  %681 = load i32, i32* %j3, align 4
  %add641 = add nsw i32 %681, 1
  %idxprom642 = sext i32 %add641 to i64
  %682 = load double*, double** %a.addr, align 8
  %arrayidx643 = getelementptr inbounds double, double* %682, i64 %idxprom642
  %683 = load double, double* %arrayidx643, align 8
  %sub644 = fsub double %680, %683
  store double %sub644, double* %x3i, align 8
  %684 = load double, double* %x0r, align 8
  %685 = load double, double* %x2r, align 8
  %add645 = fadd double %684, %685
  %686 = load i32, i32* %j0, align 4
  %idxprom646 = sext i32 %686 to i64
  %687 = load double*, double** %a.addr, align 8
  %arrayidx647 = getelementptr inbounds double, double* %687, i64 %idxprom646
  store double %add645, double* %arrayidx647, align 8
  %688 = load double, double* %x0i, align 8
  %689 = load double, double* %x2i, align 8
  %add648 = fadd double %688, %689
  %690 = load i32, i32* %j0, align 4
  %add649 = add nsw i32 %690, 1
  %idxprom650 = sext i32 %add649 to i64
  %691 = load double*, double** %a.addr, align 8
  %arrayidx651 = getelementptr inbounds double, double* %691, i64 %idxprom650
  store double %add648, double* %arrayidx651, align 8
  %692 = load double, double* %x0r, align 8
  %693 = load double, double* %x2r, align 8
  %sub652 = fsub double %692, %693
  %694 = load i32, i32* %j1, align 4
  %idxprom653 = sext i32 %694 to i64
  %695 = load double*, double** %a.addr, align 8
  %arrayidx654 = getelementptr inbounds double, double* %695, i64 %idxprom653
  store double %sub652, double* %arrayidx654, align 8
  %696 = load double, double* %x0i, align 8
  %697 = load double, double* %x2i, align 8
  %sub655 = fsub double %696, %697
  %698 = load i32, i32* %j1, align 4
  %add656 = add nsw i32 %698, 1
  %idxprom657 = sext i32 %add656 to i64
  %699 = load double*, double** %a.addr, align 8
  %arrayidx658 = getelementptr inbounds double, double* %699, i64 %idxprom657
  store double %sub655, double* %arrayidx658, align 8
  %700 = load double, double* %x1r, align 8
  %701 = load double, double* %x3i, align 8
  %sub659 = fsub double %700, %701
  store double %sub659, double* %x0r, align 8
  %702 = load double, double* %x1i, align 8
  %703 = load double, double* %x3r, align 8
  %add660 = fadd double %702, %703
  store double %add660, double* %x0i, align 8
  %704 = load double, double* %wn4r, align 8
  %705 = load double, double* %x0r, align 8
  %706 = load double, double* %x0i, align 8
  %sub661 = fsub double %705, %706
  %mul662 = fmul double %704, %sub661
  %707 = load i32, i32* %j2, align 4
  %idxprom663 = sext i32 %707 to i64
  %708 = load double*, double** %a.addr, align 8
  %arrayidx664 = getelementptr inbounds double, double* %708, i64 %idxprom663
  store double %mul662, double* %arrayidx664, align 8
  %709 = load double, double* %wn4r, align 8
  %710 = load double, double* %x0i, align 8
  %711 = load double, double* %x0r, align 8
  %add665 = fadd double %710, %711
  %mul666 = fmul double %709, %add665
  %712 = load i32, i32* %j2, align 4
  %add667 = add nsw i32 %712, 1
  %idxprom668 = sext i32 %add667 to i64
  %713 = load double*, double** %a.addr, align 8
  %arrayidx669 = getelementptr inbounds double, double* %713, i64 %idxprom668
  store double %mul666, double* %arrayidx669, align 8
  %714 = load double, double* %x1r, align 8
  %715 = load double, double* %x3i, align 8
  %add670 = fadd double %714, %715
  store double %add670, double* %x0r, align 8
  %716 = load double, double* %x1i, align 8
  %717 = load double, double* %x3r, align 8
  %sub671 = fsub double %716, %717
  store double %sub671, double* %x0i, align 8
  %718 = load double, double* %wn4r, align 8
  %sub672 = fsub double -0.000000e+00, %718
  %719 = load double, double* %x0r, align 8
  %720 = load double, double* %x0i, align 8
  %add673 = fadd double %719, %720
  %mul674 = fmul double %sub672, %add673
  %721 = load i32, i32* %j3, align 4
  %idxprom675 = sext i32 %721 to i64
  %722 = load double*, double** %a.addr, align 8
  %arrayidx676 = getelementptr inbounds double, double* %722, i64 %idxprom675
  store double %mul674, double* %arrayidx676, align 8
  %723 = load double, double* %wn4r, align 8
  %sub677 = fsub double -0.000000e+00, %723
  %724 = load double, double* %x0i, align 8
  %725 = load double, double* %x0r, align 8
  %sub678 = fsub double %724, %725
  %mul679 = fmul double %sub677, %sub678
  %726 = load i32, i32* %j3, align 4
  %add680 = add nsw i32 %726, 1
  %idxprom681 = sext i32 %add680 to i64
  %727 = load double*, double** %a.addr, align 8
  %arrayidx682 = getelementptr inbounds double, double* %727, i64 %idxprom681
  store double %mul679, double* %arrayidx682, align 8
  %728 = load i32, i32* %j0, align 4
  %add683 = add nsw i32 %728, 2
  %idxprom684 = sext i32 %add683 to i64
  %729 = load double*, double** %a.addr, align 8
  %arrayidx685 = getelementptr inbounds double, double* %729, i64 %idxprom684
  %730 = load double, double* %arrayidx685, align 8
  %731 = load i32, i32* %j2, align 4
  %add686 = add nsw i32 %731, 2
  %idxprom687 = sext i32 %add686 to i64
  %732 = load double*, double** %a.addr, align 8
  %arrayidx688 = getelementptr inbounds double, double* %732, i64 %idxprom687
  %733 = load double, double* %arrayidx688, align 8
  %add689 = fadd double %730, %733
  store double %add689, double* %x0r, align 8
  %734 = load i32, i32* %j0, align 4
  %add690 = add nsw i32 %734, 3
  %idxprom691 = sext i32 %add690 to i64
  %735 = load double*, double** %a.addr, align 8
  %arrayidx692 = getelementptr inbounds double, double* %735, i64 %idxprom691
  %736 = load double, double* %arrayidx692, align 8
  %737 = load i32, i32* %j2, align 4
  %add693 = add nsw i32 %737, 3
  %idxprom694 = sext i32 %add693 to i64
  %738 = load double*, double** %a.addr, align 8
  %arrayidx695 = getelementptr inbounds double, double* %738, i64 %idxprom694
  %739 = load double, double* %arrayidx695, align 8
  %add696 = fadd double %736, %739
  store double %add696, double* %x0i, align 8
  %740 = load i32, i32* %j0, align 4
  %add697 = add nsw i32 %740, 2
  %idxprom698 = sext i32 %add697 to i64
  %741 = load double*, double** %a.addr, align 8
  %arrayidx699 = getelementptr inbounds double, double* %741, i64 %idxprom698
  %742 = load double, double* %arrayidx699, align 8
  %743 = load i32, i32* %j2, align 4
  %add700 = add nsw i32 %743, 2
  %idxprom701 = sext i32 %add700 to i64
  %744 = load double*, double** %a.addr, align 8
  %arrayidx702 = getelementptr inbounds double, double* %744, i64 %idxprom701
  %745 = load double, double* %arrayidx702, align 8
  %sub703 = fsub double %742, %745
  store double %sub703, double* %x1r, align 8
  %746 = load i32, i32* %j0, align 4
  %add704 = add nsw i32 %746, 3
  %idxprom705 = sext i32 %add704 to i64
  %747 = load double*, double** %a.addr, align 8
  %arrayidx706 = getelementptr inbounds double, double* %747, i64 %idxprom705
  %748 = load double, double* %arrayidx706, align 8
  %749 = load i32, i32* %j2, align 4
  %add707 = add nsw i32 %749, 3
  %idxprom708 = sext i32 %add707 to i64
  %750 = load double*, double** %a.addr, align 8
  %arrayidx709 = getelementptr inbounds double, double* %750, i64 %idxprom708
  %751 = load double, double* %arrayidx709, align 8
  %sub710 = fsub double %748, %751
  store double %sub710, double* %x1i, align 8
  %752 = load i32, i32* %j1, align 4
  %add711 = add nsw i32 %752, 2
  %idxprom712 = sext i32 %add711 to i64
  %753 = load double*, double** %a.addr, align 8
  %arrayidx713 = getelementptr inbounds double, double* %753, i64 %idxprom712
  %754 = load double, double* %arrayidx713, align 8
  %755 = load i32, i32* %j3, align 4
  %add714 = add nsw i32 %755, 2
  %idxprom715 = sext i32 %add714 to i64
  %756 = load double*, double** %a.addr, align 8
  %arrayidx716 = getelementptr inbounds double, double* %756, i64 %idxprom715
  %757 = load double, double* %arrayidx716, align 8
  %add717 = fadd double %754, %757
  store double %add717, double* %x2r, align 8
  %758 = load i32, i32* %j1, align 4
  %add718 = add nsw i32 %758, 3
  %idxprom719 = sext i32 %add718 to i64
  %759 = load double*, double** %a.addr, align 8
  %arrayidx720 = getelementptr inbounds double, double* %759, i64 %idxprom719
  %760 = load double, double* %arrayidx720, align 8
  %761 = load i32, i32* %j3, align 4
  %add721 = add nsw i32 %761, 3
  %idxprom722 = sext i32 %add721 to i64
  %762 = load double*, double** %a.addr, align 8
  %arrayidx723 = getelementptr inbounds double, double* %762, i64 %idxprom722
  %763 = load double, double* %arrayidx723, align 8
  %add724 = fadd double %760, %763
  store double %add724, double* %x2i, align 8
  %764 = load i32, i32* %j1, align 4
  %add725 = add nsw i32 %764, 2
  %idxprom726 = sext i32 %add725 to i64
  %765 = load double*, double** %a.addr, align 8
  %arrayidx727 = getelementptr inbounds double, double* %765, i64 %idxprom726
  %766 = load double, double* %arrayidx727, align 8
  %767 = load i32, i32* %j3, align 4
  %add728 = add nsw i32 %767, 2
  %idxprom729 = sext i32 %add728 to i64
  %768 = load double*, double** %a.addr, align 8
  %arrayidx730 = getelementptr inbounds double, double* %768, i64 %idxprom729
  %769 = load double, double* %arrayidx730, align 8
  %sub731 = fsub double %766, %769
  store double %sub731, double* %x3r, align 8
  %770 = load i32, i32* %j1, align 4
  %add732 = add nsw i32 %770, 3
  %idxprom733 = sext i32 %add732 to i64
  %771 = load double*, double** %a.addr, align 8
  %arrayidx734 = getelementptr inbounds double, double* %771, i64 %idxprom733
  %772 = load double, double* %arrayidx734, align 8
  %773 = load i32, i32* %j3, align 4
  %add735 = add nsw i32 %773, 3
  %idxprom736 = sext i32 %add735 to i64
  %774 = load double*, double** %a.addr, align 8
  %arrayidx737 = getelementptr inbounds double, double* %774, i64 %idxprom736
  %775 = load double, double* %arrayidx737, align 8
  %sub738 = fsub double %772, %775
  store double %sub738, double* %x3i, align 8
  %776 = load double, double* %x0r, align 8
  %777 = load double, double* %x2r, align 8
  %add739 = fadd double %776, %777
  %778 = load i32, i32* %j0, align 4
  %add740 = add nsw i32 %778, 2
  %idxprom741 = sext i32 %add740 to i64
  %779 = load double*, double** %a.addr, align 8
  %arrayidx742 = getelementptr inbounds double, double* %779, i64 %idxprom741
  store double %add739, double* %arrayidx742, align 8
  %780 = load double, double* %x0i, align 8
  %781 = load double, double* %x2i, align 8
  %add743 = fadd double %780, %781
  %782 = load i32, i32* %j0, align 4
  %add744 = add nsw i32 %782, 3
  %idxprom745 = sext i32 %add744 to i64
  %783 = load double*, double** %a.addr, align 8
  %arrayidx746 = getelementptr inbounds double, double* %783, i64 %idxprom745
  store double %add743, double* %arrayidx746, align 8
  %784 = load double, double* %x0r, align 8
  %785 = load double, double* %x2r, align 8
  %sub747 = fsub double %784, %785
  %786 = load i32, i32* %j1, align 4
  %add748 = add nsw i32 %786, 2
  %idxprom749 = sext i32 %add748 to i64
  %787 = load double*, double** %a.addr, align 8
  %arrayidx750 = getelementptr inbounds double, double* %787, i64 %idxprom749
  store double %sub747, double* %arrayidx750, align 8
  %788 = load double, double* %x0i, align 8
  %789 = load double, double* %x2i, align 8
  %sub751 = fsub double %788, %789
  %790 = load i32, i32* %j1, align 4
  %add752 = add nsw i32 %790, 3
  %idxprom753 = sext i32 %add752 to i64
  %791 = load double*, double** %a.addr, align 8
  %arrayidx754 = getelementptr inbounds double, double* %791, i64 %idxprom753
  store double %sub751, double* %arrayidx754, align 8
  %792 = load double, double* %x1r, align 8
  %793 = load double, double* %x3i, align 8
  %sub755 = fsub double %792, %793
  store double %sub755, double* %x0r, align 8
  %794 = load double, double* %x1i, align 8
  %795 = load double, double* %x3r, align 8
  %add756 = fadd double %794, %795
  store double %add756, double* %x0i, align 8
  %796 = load double, double* %wk1i, align 8
  %797 = load double, double* %x0r, align 8
  %mul757 = fmul double %796, %797
  %798 = load double, double* %wk1r, align 8
  %799 = load double, double* %x0i, align 8
  %mul758 = fmul double %798, %799
  %sub759 = fsub double %mul757, %mul758
  %800 = load i32, i32* %j2, align 4
  %add760 = add nsw i32 %800, 2
  %idxprom761 = sext i32 %add760 to i64
  %801 = load double*, double** %a.addr, align 8
  %arrayidx762 = getelementptr inbounds double, double* %801, i64 %idxprom761
  store double %sub759, double* %arrayidx762, align 8
  %802 = load double, double* %wk1i, align 8
  %803 = load double, double* %x0i, align 8
  %mul763 = fmul double %802, %803
  %804 = load double, double* %wk1r, align 8
  %805 = load double, double* %x0r, align 8
  %mul764 = fmul double %804, %805
  %add765 = fadd double %mul763, %mul764
  %806 = load i32, i32* %j2, align 4
  %add766 = add nsw i32 %806, 3
  %idxprom767 = sext i32 %add766 to i64
  %807 = load double*, double** %a.addr, align 8
  %arrayidx768 = getelementptr inbounds double, double* %807, i64 %idxprom767
  store double %add765, double* %arrayidx768, align 8
  %808 = load double, double* %x1r, align 8
  %809 = load double, double* %x3i, align 8
  %add769 = fadd double %808, %809
  store double %add769, double* %x0r, align 8
  %810 = load double, double* %x1i, align 8
  %811 = load double, double* %x3r, align 8
  %sub770 = fsub double %810, %811
  store double %sub770, double* %x0i, align 8
  %812 = load double, double* %wk3i, align 8
  %813 = load double, double* %x0r, align 8
  %mul771 = fmul double %812, %813
  %814 = load double, double* %wk3r, align 8
  %815 = load double, double* %x0i, align 8
  %mul772 = fmul double %814, %815
  %add773 = fadd double %mul771, %mul772
  %816 = load i32, i32* %j3, align 4
  %add774 = add nsw i32 %816, 2
  %idxprom775 = sext i32 %add774 to i64
  %817 = load double*, double** %a.addr, align 8
  %arrayidx776 = getelementptr inbounds double, double* %817, i64 %idxprom775
  store double %add773, double* %arrayidx776, align 8
  %818 = load double, double* %wk3i, align 8
  %819 = load double, double* %x0i, align 8
  %mul777 = fmul double %818, %819
  %820 = load double, double* %wk3r, align 8
  %821 = load double, double* %x0r, align 8
  %mul778 = fmul double %820, %821
  %sub779 = fsub double %mul777, %mul778
  %822 = load i32, i32* %j3, align 4
  %add780 = add nsw i32 %822, 3
  %idxprom781 = sext i32 %add780 to i64
  %823 = load double*, double** %a.addr, align 8
  %arrayidx782 = getelementptr inbounds double, double* %823, i64 %idxprom781
  store double %sub779, double* %arrayidx782, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftrec1(i32 %n, double* %a, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 2
  store i32 %shr, i32* %m, align 4
  %1 = load i32, i32* %n.addr, align 4
  %2 = load double*, double** %a.addr, align 8
  %3 = load i32, i32* %nw.addr, align 4
  %4 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %4
  %sub = sub nsw i32 %3, %mul
  %idxprom = sext i32 %sub to i64
  %5 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  call void @cftmdl1(i32 %1, double* %2, double* %arrayidx)
  %6 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %6, 512
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %m, align 4
  %8 = load double*, double** %a.addr, align 8
  %9 = load i32, i32* %nw.addr, align 4
  %10 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %7, double* %8, i32 %9, double* %10)
  %11 = load i32, i32* %m, align 4
  %12 = load i32, i32* %m, align 4
  %idxprom1 = sext i32 %12 to i64
  %13 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %13, i64 %idxprom1
  %14 = load i32, i32* %nw.addr, align 4
  %15 = load double*, double** %w.addr, align 8
  call void @cftrec2(i32 %11, double* %arrayidx2, i32 %14, double* %15)
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %m, align 4
  %mul3 = mul nsw i32 2, %17
  %idxprom4 = sext i32 %mul3 to i64
  %18 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %18, i64 %idxprom4
  %19 = load i32, i32* %nw.addr, align 4
  %20 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %16, double* %arrayidx5, i32 %19, double* %20)
  %21 = load i32, i32* %m, align 4
  %22 = load i32, i32* %m, align 4
  %mul6 = mul nsw i32 3, %22
  %idxprom7 = sext i32 %mul6 to i64
  %23 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %23, i64 %idxprom7
  %24 = load i32, i32* %nw.addr, align 4
  %25 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %21, double* %arrayidx8, i32 %24, double* %25)
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load i32, i32* %n.addr, align 4
  %27 = load double*, double** %a.addr, align 8
  %28 = load i32, i32* %nw.addr, align 4
  %29 = load double*, double** %w.addr, align 8
  call void @cftexp1(i32 %26, double* %27, i32 %28, double* %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftrec2(i32 %n, double* %a, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 2
  store i32 %shr, i32* %m, align 4
  %1 = load i32, i32* %n.addr, align 4
  %2 = load double*, double** %a.addr, align 8
  %3 = load i32, i32* %nw.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, %4
  %idxprom = sext i32 %sub to i64
  %5 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  call void @cftmdl2(i32 %1, double* %2, double* %arrayidx)
  %6 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %6, 512
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %m, align 4
  %8 = load double*, double** %a.addr, align 8
  %9 = load i32, i32* %nw.addr, align 4
  %10 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %7, double* %8, i32 %9, double* %10)
  %11 = load i32, i32* %m, align 4
  %12 = load i32, i32* %m, align 4
  %idxprom1 = sext i32 %12 to i64
  %13 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %13, i64 %idxprom1
  %14 = load i32, i32* %nw.addr, align 4
  %15 = load double*, double** %w.addr, align 8
  call void @cftrec2(i32 %11, double* %arrayidx2, i32 %14, double* %15)
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %17
  %idxprom3 = sext i32 %mul to i64
  %18 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %18, i64 %idxprom3
  %19 = load i32, i32* %nw.addr, align 4
  %20 = load double*, double** %w.addr, align 8
  call void @cftrec1(i32 %16, double* %arrayidx4, i32 %19, double* %20)
  %21 = load i32, i32* %m, align 4
  %22 = load i32, i32* %m, align 4
  %mul5 = mul nsw i32 3, %22
  %idxprom6 = sext i32 %mul5 to i64
  %23 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %23, i64 %idxprom6
  %24 = load i32, i32* %nw.addr, align 4
  %25 = load double*, double** %w.addr, align 8
  call void @cftrec2(i32 %21, double* %arrayidx7, i32 %24, double* %25)
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load i32, i32* %n.addr, align 4
  %27 = load double*, double** %a.addr, align 8
  %28 = load i32, i32* %nw.addr, align 4
  %29 = load double*, double** %w.addr, align 8
  call void @cftexp2(i32 %26, double* %27, i32 %28, double* %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftexp1(i32 %n, double* %a, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 2
  store i32 %shr, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.24, %entry
  %1 = load i32, i32* %l, align 4
  %cmp = icmp sgt i32 %1, 128
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %l, align 4
  store i32 %2, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %while.body
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %l, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load i32, i32* %nw.addr, align 4
  %13 = load i32, i32* %l, align 4
  %shr5 = ashr i32 %13, 1
  %sub6 = sub nsw i32 %12, %shr5
  %idxprom7 = sext i32 %sub6 to i64
  %14 = load double*, double** %w.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 %idxprom7
  call void @cftmdl1(i32 %9, double* %arrayidx, double* %arrayidx8)
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %j, align 4
  %add = add nsw i32 %16, %17
  %idxprom9 = sext i32 %add to i64
  %18 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom9
  %19 = load i32, i32* %nw.addr, align 4
  %20 = load i32, i32* %l, align 4
  %sub11 = sub nsw i32 %19, %20
  %idxprom12 = sext i32 %sub11 to i64
  %21 = load double*, double** %w.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %21, i64 %idxprom12
  call void @cftmdl2(i32 %15, double* %arrayidx10, double* %arrayidx13)
  %22 = load i32, i32* %l, align 4
  %23 = load i32, i32* %k, align 4
  %mul = mul nsw i32 2, %23
  %24 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %mul, %24
  %idxprom15 = sext i32 %add14 to i64
  %25 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %25, i64 %idxprom15
  %26 = load i32, i32* %nw.addr, align 4
  %27 = load i32, i32* %l, align 4
  %shr17 = ashr i32 %27, 1
  %sub18 = sub nsw i32 %26, %shr17
  %idxprom19 = sext i32 %sub18 to i64
  %28 = load double*, double** %w.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %28, i64 %idxprom19
  call void @cftmdl1(i32 %22, double* %arrayidx16, double* %arrayidx20)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %29 = load i32, i32* %k, align 4
  %mul21 = mul nsw i32 4, %29
  %30 = load i32, i32* %j, align 4
  %add22 = add nsw i32 %30, %mul21
  store i32 %add22, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %31 = load i32, i32* %k, align 4
  %shl = shl i32 %31, 2
  store i32 %shl, i32* %k, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %32 = load i32, i32* %l, align 4
  %33 = load i32, i32* %n.addr, align 4
  %34 = load i32, i32* %l, align 4
  %sub25 = sub nsw i32 %33, %34
  %idxprom26 = sext i32 %sub25 to i64
  %35 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %35, i64 %idxprom26
  %36 = load i32, i32* %nw.addr, align 4
  %37 = load i32, i32* %l, align 4
  %shr28 = ashr i32 %37, 1
  %sub29 = sub nsw i32 %36, %shr28
  %idxprom30 = sext i32 %sub29 to i64
  %38 = load double*, double** %w.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %38, i64 %idxprom30
  call void @cftmdl1(i32 %32, double* %arrayidx27, double* %arrayidx31)
  %39 = load i32, i32* %l, align 4
  %shr32 = ashr i32 %39, 2
  store i32 %shr32, i32* %l, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load i32, i32* %l, align 4
  store i32 %40, i32* %k, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.73, %while.end
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %n.addr, align 4
  %cmp34 = icmp slt i32 %41, %42
  br i1 %cmp34, label %for.body.35, label %for.end.75

for.body.35:                                      ; preds = %for.cond.33
  %43 = load i32, i32* %k, align 4
  %44 = load i32, i32* %l, align 4
  %sub36 = sub nsw i32 %43, %44
  store i32 %sub36, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.69, %for.body.35
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %n.addr, align 4
  %cmp38 = icmp slt i32 %45, %46
  br i1 %cmp38, label %for.body.39, label %for.end.72

for.body.39:                                      ; preds = %for.cond.37
  %47 = load i32, i32* %l, align 4
  %48 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %48 to i64
  %49 = load double*, double** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %49, i64 %idxprom40
  %50 = load i32, i32* %nw.addr, align 4
  %51 = load i32, i32* %l, align 4
  %shr42 = ashr i32 %51, 1
  %sub43 = sub nsw i32 %50, %shr42
  %idxprom44 = sext i32 %sub43 to i64
  %52 = load double*, double** %w.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %52, i64 %idxprom44
  call void @cftmdl1(i32 %47, double* %arrayidx41, double* %arrayidx45)
  %53 = load i32, i32* %l, align 4
  %54 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %54 to i64
  %55 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %55, i64 %idxprom46
  %56 = load i32, i32* %nw.addr, align 4
  %57 = load double*, double** %w.addr, align 8
  call void @cftfx41(i32 %53, double* %arrayidx47, i32 %56, double* %57)
  %58 = load i32, i32* %l, align 4
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %j, align 4
  %add48 = add nsw i32 %59, %60
  %idxprom49 = sext i32 %add48 to i64
  %61 = load double*, double** %a.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %61, i64 %idxprom49
  %62 = load i32, i32* %nw.addr, align 4
  %63 = load i32, i32* %l, align 4
  %sub51 = sub nsw i32 %62, %63
  %idxprom52 = sext i32 %sub51 to i64
  %64 = load double*, double** %w.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %64, i64 %idxprom52
  call void @cftmdl2(i32 %58, double* %arrayidx50, double* %arrayidx53)
  %65 = load i32, i32* %l, align 4
  %66 = load i32, i32* %k, align 4
  %67 = load i32, i32* %j, align 4
  %add54 = add nsw i32 %66, %67
  %idxprom55 = sext i32 %add54 to i64
  %68 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %68, i64 %idxprom55
  %69 = load i32, i32* %nw.addr, align 4
  %70 = load double*, double** %w.addr, align 8
  call void @cftfx42(i32 %65, double* %arrayidx56, i32 %69, double* %70)
  %71 = load i32, i32* %l, align 4
  %72 = load i32, i32* %k, align 4
  %mul57 = mul nsw i32 2, %72
  %73 = load i32, i32* %j, align 4
  %add58 = add nsw i32 %mul57, %73
  %idxprom59 = sext i32 %add58 to i64
  %74 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %74, i64 %idxprom59
  %75 = load i32, i32* %nw.addr, align 4
  %76 = load i32, i32* %l, align 4
  %shr61 = ashr i32 %76, 1
  %sub62 = sub nsw i32 %75, %shr61
  %idxprom63 = sext i32 %sub62 to i64
  %77 = load double*, double** %w.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %77, i64 %idxprom63
  call void @cftmdl1(i32 %71, double* %arrayidx60, double* %arrayidx64)
  %78 = load i32, i32* %l, align 4
  %79 = load i32, i32* %k, align 4
  %mul65 = mul nsw i32 2, %79
  %80 = load i32, i32* %j, align 4
  %add66 = add nsw i32 %mul65, %80
  %idxprom67 = sext i32 %add66 to i64
  %81 = load double*, double** %a.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %81, i64 %idxprom67
  %82 = load i32, i32* %nw.addr, align 4
  %83 = load double*, double** %w.addr, align 8
  call void @cftfx41(i32 %78, double* %arrayidx68, i32 %82, double* %83)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.39
  %84 = load i32, i32* %k, align 4
  %mul70 = mul nsw i32 4, %84
  %85 = load i32, i32* %j, align 4
  %add71 = add nsw i32 %85, %mul70
  store i32 %add71, i32* %j, align 4
  br label %for.cond.37

for.end.72:                                       ; preds = %for.cond.37
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72
  %86 = load i32, i32* %k, align 4
  %shl74 = shl i32 %86, 2
  store i32 %shl74, i32* %k, align 4
  br label %for.cond.33

for.end.75:                                       ; preds = %for.cond.33
  %87 = load i32, i32* %l, align 4
  %88 = load i32, i32* %n.addr, align 4
  %89 = load i32, i32* %l, align 4
  %sub76 = sub nsw i32 %88, %89
  %idxprom77 = sext i32 %sub76 to i64
  %90 = load double*, double** %a.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %90, i64 %idxprom77
  %91 = load i32, i32* %nw.addr, align 4
  %92 = load i32, i32* %l, align 4
  %shr79 = ashr i32 %92, 1
  %sub80 = sub nsw i32 %91, %shr79
  %idxprom81 = sext i32 %sub80 to i64
  %93 = load double*, double** %w.addr, align 8
  %arrayidx82 = getelementptr inbounds double, double* %93, i64 %idxprom81
  call void @cftmdl1(i32 %87, double* %arrayidx78, double* %arrayidx82)
  %94 = load i32, i32* %l, align 4
  %95 = load i32, i32* %n.addr, align 4
  %96 = load i32, i32* %l, align 4
  %sub83 = sub nsw i32 %95, %96
  %idxprom84 = sext i32 %sub83 to i64
  %97 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %97, i64 %idxprom84
  %98 = load i32, i32* %nw.addr, align 4
  %99 = load double*, double** %w.addr, align 8
  call void @cftfx41(i32 %94, double* %arrayidx85, i32 %98, double* %99)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftfx41(i32 %n, double* %a, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double*, double** %a.addr, align 8
  %2 = load i32, i32* %nw.addr, align 4
  %sub = sub nsw i32 %2, 8
  %idxprom = sext i32 %sub to i64
  %3 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  call void @cftf161(double* %1, double* %arrayidx)
  %4 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 32
  %5 = load i32, i32* %nw.addr, align 4
  %sub2 = sub nsw i32 %5, 32
  %idxprom3 = sext i32 %sub2 to i64
  %6 = load double*, double** %w.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 %idxprom3
  call void @cftf162(double* %arrayidx1, double* %arrayidx4)
  %7 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 64
  %8 = load i32, i32* %nw.addr, align 4
  %sub6 = sub nsw i32 %8, 8
  %idxprom7 = sext i32 %sub6 to i64
  %9 = load double*, double** %w.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %9, i64 %idxprom7
  call void @cftf161(double* %arrayidx5, double* %arrayidx8)
  %10 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %10, i64 96
  %11 = load i32, i32* %nw.addr, align 4
  %sub10 = sub nsw i32 %11, 8
  %idxprom11 = sext i32 %sub10 to i64
  %12 = load double*, double** %w.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %12, i64 %idxprom11
  call void @cftf161(double* %arrayidx9, double* %arrayidx12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load double*, double** %a.addr, align 8
  %14 = load i32, i32* %nw.addr, align 4
  %sub13 = sub nsw i32 %14, 16
  %idxprom14 = sext i32 %sub13 to i64
  %15 = load double*, double** %w.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %15, i64 %idxprom14
  call void @cftf081(double* %13, double* %arrayidx15)
  %16 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %16, i64 16
  %17 = load i32, i32* %nw.addr, align 4
  %sub17 = sub nsw i32 %17, 16
  %idxprom18 = sext i32 %sub17 to i64
  %18 = load double*, double** %w.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %18, i64 %idxprom18
  call void @cftf082(double* %arrayidx16, double* %arrayidx19)
  %19 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %19, i64 32
  %20 = load i32, i32* %nw.addr, align 4
  %sub21 = sub nsw i32 %20, 16
  %idxprom22 = sext i32 %sub21 to i64
  %21 = load double*, double** %w.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %21, i64 %idxprom22
  call void @cftf081(double* %arrayidx20, double* %arrayidx23)
  %22 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %22, i64 48
  %23 = load i32, i32* %nw.addr, align 4
  %sub25 = sub nsw i32 %23, 16
  %idxprom26 = sext i32 %sub25 to i64
  %24 = load double*, double** %w.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %24, i64 %idxprom26
  call void @cftf081(double* %arrayidx24, double* %arrayidx27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitrv2(i32 %n, i32* %ip, double* %a) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %a.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %m2 = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %1 = load i32, i32* %n.addr, align 4
  store i32 %1, i32* %l, align 4
  store i32 1, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i32, i32* %m, align 4
  %shl = shl i32 %2, 3
  %3 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %shl, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %l, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %m, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %ip.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %l, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, i32* %m, align 4
  %12 = load i32, i32* %j, align 4
  %add3 = add nsw i32 %11, %12
  %idxprom4 = sext i32 %add3 to i64
  %13 = load i32*, i32** %ip.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  store i32 %add, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %m, align 4
  %shl6 = shl i32 %15, 1
  store i32 %shl6, i32* %m, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %16
  store i32 %mul, i32* %m2, align 4
  %17 = load i32, i32* %m, align 4
  %shl7 = shl i32 %17, 3
  %18 = load i32, i32* %l, align 4
  %cmp8 = icmp eq i32 %shl7, %18
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.139, %if.then
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %m, align 4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body.11, label %for.end.141

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.110, %for.body.11
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %for.body.14, label %for.end.112

for.body.14:                                      ; preds = %for.cond.12
  %23 = load i32, i32* %j, align 4
  %mul15 = mul nsw i32 2, %23
  %24 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load i32*, i32** %ip.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  %26 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %mul15, %26
  store i32 %add18, i32* %j1, align 4
  %27 = load i32, i32* %k, align 4
  %mul19 = mul nsw i32 2, %27
  %28 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load i32*, i32** %ip.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %29, i64 %idxprom20
  %30 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %mul19, %30
  store i32 %add22, i32* %k1, align 4
  %31 = load i32, i32* %j1, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %32, i64 %idxprom23
  %33 = load double, double* %arrayidx24, align 8
  store double %33, double* %xr, align 8
  %34 = load i32, i32* %j1, align 4
  %add25 = add nsw i32 %34, 1
  %idxprom26 = sext i32 %add25 to i64
  %35 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %35, i64 %idxprom26
  %36 = load double, double* %arrayidx27, align 8
  store double %36, double* %xi, align 8
  %37 = load i32, i32* %k1, align 4
  %idxprom28 = sext i32 %37 to i64
  %38 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %38, i64 %idxprom28
  %39 = load double, double* %arrayidx29, align 8
  store double %39, double* %yr, align 8
  %40 = load i32, i32* %k1, align 4
  %add30 = add nsw i32 %40, 1
  %idxprom31 = sext i32 %add30 to i64
  %41 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %41, i64 %idxprom31
  %42 = load double, double* %arrayidx32, align 8
  store double %42, double* %yi, align 8
  %43 = load double, double* %yr, align 8
  %44 = load i32, i32* %j1, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %45, i64 %idxprom33
  store double %43, double* %arrayidx34, align 8
  %46 = load double, double* %yi, align 8
  %47 = load i32, i32* %j1, align 4
  %add35 = add nsw i32 %47, 1
  %idxprom36 = sext i32 %add35 to i64
  %48 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %48, i64 %idxprom36
  store double %46, double* %arrayidx37, align 8
  %49 = load double, double* %xr, align 8
  %50 = load i32, i32* %k1, align 4
  %idxprom38 = sext i32 %50 to i64
  %51 = load double*, double** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %51, i64 %idxprom38
  store double %49, double* %arrayidx39, align 8
  %52 = load double, double* %xi, align 8
  %53 = load i32, i32* %k1, align 4
  %add40 = add nsw i32 %53, 1
  %idxprom41 = sext i32 %add40 to i64
  %54 = load double*, double** %a.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %54, i64 %idxprom41
  store double %52, double* %arrayidx42, align 8
  %55 = load i32, i32* %m2, align 4
  %56 = load i32, i32* %j1, align 4
  %add43 = add nsw i32 %56, %55
  store i32 %add43, i32* %j1, align 4
  %57 = load i32, i32* %m2, align 4
  %mul44 = mul nsw i32 2, %57
  %58 = load i32, i32* %k1, align 4
  %add45 = add nsw i32 %58, %mul44
  store i32 %add45, i32* %k1, align 4
  %59 = load i32, i32* %j1, align 4
  %idxprom46 = sext i32 %59 to i64
  %60 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %60, i64 %idxprom46
  %61 = load double, double* %arrayidx47, align 8
  store double %61, double* %xr, align 8
  %62 = load i32, i32* %j1, align 4
  %add48 = add nsw i32 %62, 1
  %idxprom49 = sext i32 %add48 to i64
  %63 = load double*, double** %a.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %63, i64 %idxprom49
  %64 = load double, double* %arrayidx50, align 8
  store double %64, double* %xi, align 8
  %65 = load i32, i32* %k1, align 4
  %idxprom51 = sext i32 %65 to i64
  %66 = load double*, double** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %66, i64 %idxprom51
  %67 = load double, double* %arrayidx52, align 8
  store double %67, double* %yr, align 8
  %68 = load i32, i32* %k1, align 4
  %add53 = add nsw i32 %68, 1
  %idxprom54 = sext i32 %add53 to i64
  %69 = load double*, double** %a.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %69, i64 %idxprom54
  %70 = load double, double* %arrayidx55, align 8
  store double %70, double* %yi, align 8
  %71 = load double, double* %yr, align 8
  %72 = load i32, i32* %j1, align 4
  %idxprom56 = sext i32 %72 to i64
  %73 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %73, i64 %idxprom56
  store double %71, double* %arrayidx57, align 8
  %74 = load double, double* %yi, align 8
  %75 = load i32, i32* %j1, align 4
  %add58 = add nsw i32 %75, 1
  %idxprom59 = sext i32 %add58 to i64
  %76 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %76, i64 %idxprom59
  store double %74, double* %arrayidx60, align 8
  %77 = load double, double* %xr, align 8
  %78 = load i32, i32* %k1, align 4
  %idxprom61 = sext i32 %78 to i64
  %79 = load double*, double** %a.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %79, i64 %idxprom61
  store double %77, double* %arrayidx62, align 8
  %80 = load double, double* %xi, align 8
  %81 = load i32, i32* %k1, align 4
  %add63 = add nsw i32 %81, 1
  %idxprom64 = sext i32 %add63 to i64
  %82 = load double*, double** %a.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %82, i64 %idxprom64
  store double %80, double* %arrayidx65, align 8
  %83 = load i32, i32* %m2, align 4
  %84 = load i32, i32* %j1, align 4
  %add66 = add nsw i32 %84, %83
  store i32 %add66, i32* %j1, align 4
  %85 = load i32, i32* %m2, align 4
  %86 = load i32, i32* %k1, align 4
  %sub = sub nsw i32 %86, %85
  store i32 %sub, i32* %k1, align 4
  %87 = load i32, i32* %j1, align 4
  %idxprom67 = sext i32 %87 to i64
  %88 = load double*, double** %a.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %88, i64 %idxprom67
  %89 = load double, double* %arrayidx68, align 8
  store double %89, double* %xr, align 8
  %90 = load i32, i32* %j1, align 4
  %add69 = add nsw i32 %90, 1
  %idxprom70 = sext i32 %add69 to i64
  %91 = load double*, double** %a.addr, align 8
  %arrayidx71 = getelementptr inbounds double, double* %91, i64 %idxprom70
  %92 = load double, double* %arrayidx71, align 8
  store double %92, double* %xi, align 8
  %93 = load i32, i32* %k1, align 4
  %idxprom72 = sext i32 %93 to i64
  %94 = load double*, double** %a.addr, align 8
  %arrayidx73 = getelementptr inbounds double, double* %94, i64 %idxprom72
  %95 = load double, double* %arrayidx73, align 8
  store double %95, double* %yr, align 8
  %96 = load i32, i32* %k1, align 4
  %add74 = add nsw i32 %96, 1
  %idxprom75 = sext i32 %add74 to i64
  %97 = load double*, double** %a.addr, align 8
  %arrayidx76 = getelementptr inbounds double, double* %97, i64 %idxprom75
  %98 = load double, double* %arrayidx76, align 8
  store double %98, double* %yi, align 8
  %99 = load double, double* %yr, align 8
  %100 = load i32, i32* %j1, align 4
  %idxprom77 = sext i32 %100 to i64
  %101 = load double*, double** %a.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %101, i64 %idxprom77
  store double %99, double* %arrayidx78, align 8
  %102 = load double, double* %yi, align 8
  %103 = load i32, i32* %j1, align 4
  %add79 = add nsw i32 %103, 1
  %idxprom80 = sext i32 %add79 to i64
  %104 = load double*, double** %a.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %104, i64 %idxprom80
  store double %102, double* %arrayidx81, align 8
  %105 = load double, double* %xr, align 8
  %106 = load i32, i32* %k1, align 4
  %idxprom82 = sext i32 %106 to i64
  %107 = load double*, double** %a.addr, align 8
  %arrayidx83 = getelementptr inbounds double, double* %107, i64 %idxprom82
  store double %105, double* %arrayidx83, align 8
  %108 = load double, double* %xi, align 8
  %109 = load i32, i32* %k1, align 4
  %add84 = add nsw i32 %109, 1
  %idxprom85 = sext i32 %add84 to i64
  %110 = load double*, double** %a.addr, align 8
  %arrayidx86 = getelementptr inbounds double, double* %110, i64 %idxprom85
  store double %108, double* %arrayidx86, align 8
  %111 = load i32, i32* %m2, align 4
  %112 = load i32, i32* %j1, align 4
  %add87 = add nsw i32 %112, %111
  store i32 %add87, i32* %j1, align 4
  %113 = load i32, i32* %m2, align 4
  %mul88 = mul nsw i32 2, %113
  %114 = load i32, i32* %k1, align 4
  %add89 = add nsw i32 %114, %mul88
  store i32 %add89, i32* %k1, align 4
  %115 = load i32, i32* %j1, align 4
  %idxprom90 = sext i32 %115 to i64
  %116 = load double*, double** %a.addr, align 8
  %arrayidx91 = getelementptr inbounds double, double* %116, i64 %idxprom90
  %117 = load double, double* %arrayidx91, align 8
  store double %117, double* %xr, align 8
  %118 = load i32, i32* %j1, align 4
  %add92 = add nsw i32 %118, 1
  %idxprom93 = sext i32 %add92 to i64
  %119 = load double*, double** %a.addr, align 8
  %arrayidx94 = getelementptr inbounds double, double* %119, i64 %idxprom93
  %120 = load double, double* %arrayidx94, align 8
  store double %120, double* %xi, align 8
  %121 = load i32, i32* %k1, align 4
  %idxprom95 = sext i32 %121 to i64
  %122 = load double*, double** %a.addr, align 8
  %arrayidx96 = getelementptr inbounds double, double* %122, i64 %idxprom95
  %123 = load double, double* %arrayidx96, align 8
  store double %123, double* %yr, align 8
  %124 = load i32, i32* %k1, align 4
  %add97 = add nsw i32 %124, 1
  %idxprom98 = sext i32 %add97 to i64
  %125 = load double*, double** %a.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %125, i64 %idxprom98
  %126 = load double, double* %arrayidx99, align 8
  store double %126, double* %yi, align 8
  %127 = load double, double* %yr, align 8
  %128 = load i32, i32* %j1, align 4
  %idxprom100 = sext i32 %128 to i64
  %129 = load double*, double** %a.addr, align 8
  %arrayidx101 = getelementptr inbounds double, double* %129, i64 %idxprom100
  store double %127, double* %arrayidx101, align 8
  %130 = load double, double* %yi, align 8
  %131 = load i32, i32* %j1, align 4
  %add102 = add nsw i32 %131, 1
  %idxprom103 = sext i32 %add102 to i64
  %132 = load double*, double** %a.addr, align 8
  %arrayidx104 = getelementptr inbounds double, double* %132, i64 %idxprom103
  store double %130, double* %arrayidx104, align 8
  %133 = load double, double* %xr, align 8
  %134 = load i32, i32* %k1, align 4
  %idxprom105 = sext i32 %134 to i64
  %135 = load double*, double** %a.addr, align 8
  %arrayidx106 = getelementptr inbounds double, double* %135, i64 %idxprom105
  store double %133, double* %arrayidx106, align 8
  %136 = load double, double* %xi, align 8
  %137 = load i32, i32* %k1, align 4
  %add107 = add nsw i32 %137, 1
  %idxprom108 = sext i32 %add107 to i64
  %138 = load double*, double** %a.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %138, i64 %idxprom108
  store double %136, double* %arrayidx109, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.14
  %139 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %139, 1
  store i32 %inc111, i32* %j, align 4
  br label %for.cond.12

for.end.112:                                      ; preds = %for.cond.12
  %140 = load i32, i32* %k, align 4
  %mul113 = mul nsw i32 2, %140
  %141 = load i32, i32* %m2, align 4
  %add114 = add nsw i32 %mul113, %141
  %142 = load i32, i32* %k, align 4
  %idxprom115 = sext i32 %142 to i64
  %143 = load i32*, i32** %ip.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %143, i64 %idxprom115
  %144 = load i32, i32* %arrayidx116, align 4
  %add117 = add nsw i32 %add114, %144
  store i32 %add117, i32* %j1, align 4
  %145 = load i32, i32* %j1, align 4
  %146 = load i32, i32* %m2, align 4
  %add118 = add nsw i32 %145, %146
  store i32 %add118, i32* %k1, align 4
  %147 = load i32, i32* %j1, align 4
  %idxprom119 = sext i32 %147 to i64
  %148 = load double*, double** %a.addr, align 8
  %arrayidx120 = getelementptr inbounds double, double* %148, i64 %idxprom119
  %149 = load double, double* %arrayidx120, align 8
  store double %149, double* %xr, align 8
  %150 = load i32, i32* %j1, align 4
  %add121 = add nsw i32 %150, 1
  %idxprom122 = sext i32 %add121 to i64
  %151 = load double*, double** %a.addr, align 8
  %arrayidx123 = getelementptr inbounds double, double* %151, i64 %idxprom122
  %152 = load double, double* %arrayidx123, align 8
  store double %152, double* %xi, align 8
  %153 = load i32, i32* %k1, align 4
  %idxprom124 = sext i32 %153 to i64
  %154 = load double*, double** %a.addr, align 8
  %arrayidx125 = getelementptr inbounds double, double* %154, i64 %idxprom124
  %155 = load double, double* %arrayidx125, align 8
  store double %155, double* %yr, align 8
  %156 = load i32, i32* %k1, align 4
  %add126 = add nsw i32 %156, 1
  %idxprom127 = sext i32 %add126 to i64
  %157 = load double*, double** %a.addr, align 8
  %arrayidx128 = getelementptr inbounds double, double* %157, i64 %idxprom127
  %158 = load double, double* %arrayidx128, align 8
  store double %158, double* %yi, align 8
  %159 = load double, double* %yr, align 8
  %160 = load i32, i32* %j1, align 4
  %idxprom129 = sext i32 %160 to i64
  %161 = load double*, double** %a.addr, align 8
  %arrayidx130 = getelementptr inbounds double, double* %161, i64 %idxprom129
  store double %159, double* %arrayidx130, align 8
  %162 = load double, double* %yi, align 8
  %163 = load i32, i32* %j1, align 4
  %add131 = add nsw i32 %163, 1
  %idxprom132 = sext i32 %add131 to i64
  %164 = load double*, double** %a.addr, align 8
  %arrayidx133 = getelementptr inbounds double, double* %164, i64 %idxprom132
  store double %162, double* %arrayidx133, align 8
  %165 = load double, double* %xr, align 8
  %166 = load i32, i32* %k1, align 4
  %idxprom134 = sext i32 %166 to i64
  %167 = load double*, double** %a.addr, align 8
  %arrayidx135 = getelementptr inbounds double, double* %167, i64 %idxprom134
  store double %165, double* %arrayidx135, align 8
  %168 = load double, double* %xi, align 8
  %169 = load i32, i32* %k1, align 4
  %add136 = add nsw i32 %169, 1
  %idxprom137 = sext i32 %add136 to i64
  %170 = load double*, double** %a.addr, align 8
  %arrayidx138 = getelementptr inbounds double, double* %170, i64 %idxprom137
  store double %168, double* %arrayidx138, align 8
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.end.112
  %171 = load i32, i32* %k, align 4
  %inc140 = add nsw i32 %171, 1
  store i32 %inc140, i32* %k, align 4
  br label %for.cond.9

for.end.141:                                      ; preds = %for.cond.9
  br label %if.end

if.else:                                          ; preds = %while.end
  store i32 1, i32* %k, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.201, %if.else
  %172 = load i32, i32* %k, align 4
  %173 = load i32, i32* %m, align 4
  %cmp143 = icmp slt i32 %172, %173
  br i1 %cmp143, label %for.body.144, label %for.end.203

for.body.144:                                     ; preds = %for.cond.142
  store i32 0, i32* %j, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.198, %for.body.144
  %174 = load i32, i32* %j, align 4
  %175 = load i32, i32* %k, align 4
  %cmp146 = icmp slt i32 %174, %175
  br i1 %cmp146, label %for.body.147, label %for.end.200

for.body.147:                                     ; preds = %for.cond.145
  %176 = load i32, i32* %j, align 4
  %mul148 = mul nsw i32 2, %176
  %177 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %177 to i64
  %178 = load i32*, i32** %ip.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %178, i64 %idxprom149
  %179 = load i32, i32* %arrayidx150, align 4
  %add151 = add nsw i32 %mul148, %179
  store i32 %add151, i32* %j1, align 4
  %180 = load i32, i32* %k, align 4
  %mul152 = mul nsw i32 2, %180
  %181 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %181 to i64
  %182 = load i32*, i32** %ip.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %182, i64 %idxprom153
  %183 = load i32, i32* %arrayidx154, align 4
  %add155 = add nsw i32 %mul152, %183
  store i32 %add155, i32* %k1, align 4
  %184 = load i32, i32* %j1, align 4
  %idxprom156 = sext i32 %184 to i64
  %185 = load double*, double** %a.addr, align 8
  %arrayidx157 = getelementptr inbounds double, double* %185, i64 %idxprom156
  %186 = load double, double* %arrayidx157, align 8
  store double %186, double* %xr, align 8
  %187 = load i32, i32* %j1, align 4
  %add158 = add nsw i32 %187, 1
  %idxprom159 = sext i32 %add158 to i64
  %188 = load double*, double** %a.addr, align 8
  %arrayidx160 = getelementptr inbounds double, double* %188, i64 %idxprom159
  %189 = load double, double* %arrayidx160, align 8
  store double %189, double* %xi, align 8
  %190 = load i32, i32* %k1, align 4
  %idxprom161 = sext i32 %190 to i64
  %191 = load double*, double** %a.addr, align 8
  %arrayidx162 = getelementptr inbounds double, double* %191, i64 %idxprom161
  %192 = load double, double* %arrayidx162, align 8
  store double %192, double* %yr, align 8
  %193 = load i32, i32* %k1, align 4
  %add163 = add nsw i32 %193, 1
  %idxprom164 = sext i32 %add163 to i64
  %194 = load double*, double** %a.addr, align 8
  %arrayidx165 = getelementptr inbounds double, double* %194, i64 %idxprom164
  %195 = load double, double* %arrayidx165, align 8
  store double %195, double* %yi, align 8
  %196 = load double, double* %yr, align 8
  %197 = load i32, i32* %j1, align 4
  %idxprom166 = sext i32 %197 to i64
  %198 = load double*, double** %a.addr, align 8
  %arrayidx167 = getelementptr inbounds double, double* %198, i64 %idxprom166
  store double %196, double* %arrayidx167, align 8
  %199 = load double, double* %yi, align 8
  %200 = load i32, i32* %j1, align 4
  %add168 = add nsw i32 %200, 1
  %idxprom169 = sext i32 %add168 to i64
  %201 = load double*, double** %a.addr, align 8
  %arrayidx170 = getelementptr inbounds double, double* %201, i64 %idxprom169
  store double %199, double* %arrayidx170, align 8
  %202 = load double, double* %xr, align 8
  %203 = load i32, i32* %k1, align 4
  %idxprom171 = sext i32 %203 to i64
  %204 = load double*, double** %a.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %204, i64 %idxprom171
  store double %202, double* %arrayidx172, align 8
  %205 = load double, double* %xi, align 8
  %206 = load i32, i32* %k1, align 4
  %add173 = add nsw i32 %206, 1
  %idxprom174 = sext i32 %add173 to i64
  %207 = load double*, double** %a.addr, align 8
  %arrayidx175 = getelementptr inbounds double, double* %207, i64 %idxprom174
  store double %205, double* %arrayidx175, align 8
  %208 = load i32, i32* %m2, align 4
  %209 = load i32, i32* %j1, align 4
  %add176 = add nsw i32 %209, %208
  store i32 %add176, i32* %j1, align 4
  %210 = load i32, i32* %m2, align 4
  %211 = load i32, i32* %k1, align 4
  %add177 = add nsw i32 %211, %210
  store i32 %add177, i32* %k1, align 4
  %212 = load i32, i32* %j1, align 4
  %idxprom178 = sext i32 %212 to i64
  %213 = load double*, double** %a.addr, align 8
  %arrayidx179 = getelementptr inbounds double, double* %213, i64 %idxprom178
  %214 = load double, double* %arrayidx179, align 8
  store double %214, double* %xr, align 8
  %215 = load i32, i32* %j1, align 4
  %add180 = add nsw i32 %215, 1
  %idxprom181 = sext i32 %add180 to i64
  %216 = load double*, double** %a.addr, align 8
  %arrayidx182 = getelementptr inbounds double, double* %216, i64 %idxprom181
  %217 = load double, double* %arrayidx182, align 8
  store double %217, double* %xi, align 8
  %218 = load i32, i32* %k1, align 4
  %idxprom183 = sext i32 %218 to i64
  %219 = load double*, double** %a.addr, align 8
  %arrayidx184 = getelementptr inbounds double, double* %219, i64 %idxprom183
  %220 = load double, double* %arrayidx184, align 8
  store double %220, double* %yr, align 8
  %221 = load i32, i32* %k1, align 4
  %add185 = add nsw i32 %221, 1
  %idxprom186 = sext i32 %add185 to i64
  %222 = load double*, double** %a.addr, align 8
  %arrayidx187 = getelementptr inbounds double, double* %222, i64 %idxprom186
  %223 = load double, double* %arrayidx187, align 8
  store double %223, double* %yi, align 8
  %224 = load double, double* %yr, align 8
  %225 = load i32, i32* %j1, align 4
  %idxprom188 = sext i32 %225 to i64
  %226 = load double*, double** %a.addr, align 8
  %arrayidx189 = getelementptr inbounds double, double* %226, i64 %idxprom188
  store double %224, double* %arrayidx189, align 8
  %227 = load double, double* %yi, align 8
  %228 = load i32, i32* %j1, align 4
  %add190 = add nsw i32 %228, 1
  %idxprom191 = sext i32 %add190 to i64
  %229 = load double*, double** %a.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %229, i64 %idxprom191
  store double %227, double* %arrayidx192, align 8
  %230 = load double, double* %xr, align 8
  %231 = load i32, i32* %k1, align 4
  %idxprom193 = sext i32 %231 to i64
  %232 = load double*, double** %a.addr, align 8
  %arrayidx194 = getelementptr inbounds double, double* %232, i64 %idxprom193
  store double %230, double* %arrayidx194, align 8
  %233 = load double, double* %xi, align 8
  %234 = load i32, i32* %k1, align 4
  %add195 = add nsw i32 %234, 1
  %idxprom196 = sext i32 %add195 to i64
  %235 = load double*, double** %a.addr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %235, i64 %idxprom196
  store double %233, double* %arrayidx197, align 8
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.147
  %236 = load i32, i32* %j, align 4
  %inc199 = add nsw i32 %236, 1
  store i32 %inc199, i32* %j, align 4
  br label %for.cond.145

for.end.200:                                      ; preds = %for.cond.145
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.200
  %237 = load i32, i32* %k, align 4
  %inc202 = add nsw i32 %237, 1
  store i32 %inc202, i32* %k, align 4
  br label %for.cond.142

for.end.203:                                      ; preds = %for.cond.142
  br label %if.end

if.end:                                           ; preds = %for.end.203, %for.end.141
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftf161(double* %a, double* %w) #0 {
entry:
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %wn4r = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %y0r = alloca double, align 8
  %y0i = alloca double, align 8
  %y1r = alloca double, align 8
  %y1i = alloca double, align 8
  %y2r = alloca double, align 8
  %y2i = alloca double, align 8
  %y3r = alloca double, align 8
  %y3i = alloca double, align 8
  %y4r = alloca double, align 8
  %y4i = alloca double, align 8
  %y5r = alloca double, align 8
  %y5i = alloca double, align 8
  %y6r = alloca double, align 8
  %y6i = alloca double, align 8
  %y7r = alloca double, align 8
  %y7i = alloca double, align 8
  %y8r = alloca double, align 8
  %y8i = alloca double, align 8
  %y9r = alloca double, align 8
  %y9i = alloca double, align 8
  %y10r = alloca double, align 8
  %y10i = alloca double, align 8
  %y11r = alloca double, align 8
  %y11i = alloca double, align 8
  %y12r = alloca double, align 8
  %y12i = alloca double, align 8
  %y13r = alloca double, align 8
  %y13i = alloca double, align 8
  %y14r = alloca double, align 8
  %y14i = alloca double, align 8
  %y15r = alloca double, align 8
  %y15i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %wn4r, align 8
  %2 = load double, double* %wn4r, align 8
  %3 = load double*, double** %w.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %3, i64 2
  %4 = load double, double* %arrayidx1, align 8
  %mul = fmul double %2, %4
  store double %mul, double* %wk1i, align 8
  %5 = load double, double* %wk1i, align 8
  %6 = load double*, double** %w.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 2
  %7 = load double, double* %arrayidx2, align 8
  %add = fadd double %5, %7
  store double %add, double* %wk1r, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx3, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %10, i64 16
  %11 = load double, double* %arrayidx4, align 8
  %add5 = fadd double %9, %11
  store double %add5, double* %x0r, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx6, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 17
  %15 = load double, double* %arrayidx7, align 8
  %add8 = fadd double %13, %15
  store double %add8, double* %x0i, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 0
  %17 = load double, double* %arrayidx9, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 16
  %19 = load double, double* %arrayidx10, align 8
  %sub = fsub double %17, %19
  store double %sub, double* %x1r, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %20, i64 1
  %21 = load double, double* %arrayidx11, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %22, i64 17
  %23 = load double, double* %arrayidx12, align 8
  %sub13 = fsub double %21, %23
  store double %sub13, double* %x1i, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 8
  %25 = load double, double* %arrayidx14, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %26, i64 24
  %27 = load double, double* %arrayidx15, align 8
  %add16 = fadd double %25, %27
  store double %add16, double* %x2r, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %28, i64 9
  %29 = load double, double* %arrayidx17, align 8
  %30 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %30, i64 25
  %31 = load double, double* %arrayidx18, align 8
  %add19 = fadd double %29, %31
  store double %add19, double* %x2i, align 8
  %32 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %32, i64 8
  %33 = load double, double* %arrayidx20, align 8
  %34 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %34, i64 24
  %35 = load double, double* %arrayidx21, align 8
  %sub22 = fsub double %33, %35
  store double %sub22, double* %x3r, align 8
  %36 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %36, i64 9
  %37 = load double, double* %arrayidx23, align 8
  %38 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %38, i64 25
  %39 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double %37, %39
  store double %sub25, double* %x3i, align 8
  %40 = load double, double* %x0r, align 8
  %41 = load double, double* %x2r, align 8
  %add26 = fadd double %40, %41
  store double %add26, double* %y0r, align 8
  %42 = load double, double* %x0i, align 8
  %43 = load double, double* %x2i, align 8
  %add27 = fadd double %42, %43
  store double %add27, double* %y0i, align 8
  %44 = load double, double* %x0r, align 8
  %45 = load double, double* %x2r, align 8
  %sub28 = fsub double %44, %45
  store double %sub28, double* %y4r, align 8
  %46 = load double, double* %x0i, align 8
  %47 = load double, double* %x2i, align 8
  %sub29 = fsub double %46, %47
  store double %sub29, double* %y4i, align 8
  %48 = load double, double* %x1r, align 8
  %49 = load double, double* %x3i, align 8
  %sub30 = fsub double %48, %49
  store double %sub30, double* %y8r, align 8
  %50 = load double, double* %x1i, align 8
  %51 = load double, double* %x3r, align 8
  %add31 = fadd double %50, %51
  store double %add31, double* %y8i, align 8
  %52 = load double, double* %x1r, align 8
  %53 = load double, double* %x3i, align 8
  %add32 = fadd double %52, %53
  store double %add32, double* %y12r, align 8
  %54 = load double, double* %x1i, align 8
  %55 = load double, double* %x3r, align 8
  %sub33 = fsub double %54, %55
  store double %sub33, double* %y12i, align 8
  %56 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %56, i64 2
  %57 = load double, double* %arrayidx34, align 8
  %58 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %58, i64 18
  %59 = load double, double* %arrayidx35, align 8
  %add36 = fadd double %57, %59
  store double %add36, double* %x0r, align 8
  %60 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %60, i64 3
  %61 = load double, double* %arrayidx37, align 8
  %62 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %62, i64 19
  %63 = load double, double* %arrayidx38, align 8
  %add39 = fadd double %61, %63
  store double %add39, double* %x0i, align 8
  %64 = load double*, double** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %64, i64 2
  %65 = load double, double* %arrayidx40, align 8
  %66 = load double*, double** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %66, i64 18
  %67 = load double, double* %arrayidx41, align 8
  %sub42 = fsub double %65, %67
  store double %sub42, double* %x1r, align 8
  %68 = load double*, double** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %68, i64 3
  %69 = load double, double* %arrayidx43, align 8
  %70 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %70, i64 19
  %71 = load double, double* %arrayidx44, align 8
  %sub45 = fsub double %69, %71
  store double %sub45, double* %x1i, align 8
  %72 = load double*, double** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %72, i64 10
  %73 = load double, double* %arrayidx46, align 8
  %74 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %74, i64 26
  %75 = load double, double* %arrayidx47, align 8
  %add48 = fadd double %73, %75
  store double %add48, double* %x2r, align 8
  %76 = load double*, double** %a.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %76, i64 11
  %77 = load double, double* %arrayidx49, align 8
  %78 = load double*, double** %a.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %78, i64 27
  %79 = load double, double* %arrayidx50, align 8
  %add51 = fadd double %77, %79
  store double %add51, double* %x2i, align 8
  %80 = load double*, double** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %80, i64 10
  %81 = load double, double* %arrayidx52, align 8
  %82 = load double*, double** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %82, i64 26
  %83 = load double, double* %arrayidx53, align 8
  %sub54 = fsub double %81, %83
  store double %sub54, double* %x3r, align 8
  %84 = load double*, double** %a.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %84, i64 11
  %85 = load double, double* %arrayidx55, align 8
  %86 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %86, i64 27
  %87 = load double, double* %arrayidx56, align 8
  %sub57 = fsub double %85, %87
  store double %sub57, double* %x3i, align 8
  %88 = load double, double* %x0r, align 8
  %89 = load double, double* %x2r, align 8
  %add58 = fadd double %88, %89
  store double %add58, double* %y1r, align 8
  %90 = load double, double* %x0i, align 8
  %91 = load double, double* %x2i, align 8
  %add59 = fadd double %90, %91
  store double %add59, double* %y1i, align 8
  %92 = load double, double* %x0r, align 8
  %93 = load double, double* %x2r, align 8
  %sub60 = fsub double %92, %93
  store double %sub60, double* %y5r, align 8
  %94 = load double, double* %x0i, align 8
  %95 = load double, double* %x2i, align 8
  %sub61 = fsub double %94, %95
  store double %sub61, double* %y5i, align 8
  %96 = load double, double* %x1r, align 8
  %97 = load double, double* %x3i, align 8
  %sub62 = fsub double %96, %97
  store double %sub62, double* %x0r, align 8
  %98 = load double, double* %x1i, align 8
  %99 = load double, double* %x3r, align 8
  %add63 = fadd double %98, %99
  store double %add63, double* %x0i, align 8
  %100 = load double, double* %wk1r, align 8
  %101 = load double, double* %x0r, align 8
  %mul64 = fmul double %100, %101
  %102 = load double, double* %wk1i, align 8
  %103 = load double, double* %x0i, align 8
  %mul65 = fmul double %102, %103
  %sub66 = fsub double %mul64, %mul65
  store double %sub66, double* %y9r, align 8
  %104 = load double, double* %wk1r, align 8
  %105 = load double, double* %x0i, align 8
  %mul67 = fmul double %104, %105
  %106 = load double, double* %wk1i, align 8
  %107 = load double, double* %x0r, align 8
  %mul68 = fmul double %106, %107
  %add69 = fadd double %mul67, %mul68
  store double %add69, double* %y9i, align 8
  %108 = load double, double* %x1r, align 8
  %109 = load double, double* %x3i, align 8
  %add70 = fadd double %108, %109
  store double %add70, double* %x0r, align 8
  %110 = load double, double* %x1i, align 8
  %111 = load double, double* %x3r, align 8
  %sub71 = fsub double %110, %111
  store double %sub71, double* %x0i, align 8
  %112 = load double, double* %wk1i, align 8
  %113 = load double, double* %x0r, align 8
  %mul72 = fmul double %112, %113
  %114 = load double, double* %wk1r, align 8
  %115 = load double, double* %x0i, align 8
  %mul73 = fmul double %114, %115
  %sub74 = fsub double %mul72, %mul73
  store double %sub74, double* %y13r, align 8
  %116 = load double, double* %wk1i, align 8
  %117 = load double, double* %x0i, align 8
  %mul75 = fmul double %116, %117
  %118 = load double, double* %wk1r, align 8
  %119 = load double, double* %x0r, align 8
  %mul76 = fmul double %118, %119
  %add77 = fadd double %mul75, %mul76
  store double %add77, double* %y13i, align 8
  %120 = load double*, double** %a.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %120, i64 4
  %121 = load double, double* %arrayidx78, align 8
  %122 = load double*, double** %a.addr, align 8
  %arrayidx79 = getelementptr inbounds double, double* %122, i64 20
  %123 = load double, double* %arrayidx79, align 8
  %add80 = fadd double %121, %123
  store double %add80, double* %x0r, align 8
  %124 = load double*, double** %a.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %124, i64 5
  %125 = load double, double* %arrayidx81, align 8
  %126 = load double*, double** %a.addr, align 8
  %arrayidx82 = getelementptr inbounds double, double* %126, i64 21
  %127 = load double, double* %arrayidx82, align 8
  %add83 = fadd double %125, %127
  store double %add83, double* %x0i, align 8
  %128 = load double*, double** %a.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %128, i64 4
  %129 = load double, double* %arrayidx84, align 8
  %130 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %130, i64 20
  %131 = load double, double* %arrayidx85, align 8
  %sub86 = fsub double %129, %131
  store double %sub86, double* %x1r, align 8
  %132 = load double*, double** %a.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %132, i64 5
  %133 = load double, double* %arrayidx87, align 8
  %134 = load double*, double** %a.addr, align 8
  %arrayidx88 = getelementptr inbounds double, double* %134, i64 21
  %135 = load double, double* %arrayidx88, align 8
  %sub89 = fsub double %133, %135
  store double %sub89, double* %x1i, align 8
  %136 = load double*, double** %a.addr, align 8
  %arrayidx90 = getelementptr inbounds double, double* %136, i64 12
  %137 = load double, double* %arrayidx90, align 8
  %138 = load double*, double** %a.addr, align 8
  %arrayidx91 = getelementptr inbounds double, double* %138, i64 28
  %139 = load double, double* %arrayidx91, align 8
  %add92 = fadd double %137, %139
  store double %add92, double* %x2r, align 8
  %140 = load double*, double** %a.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %140, i64 13
  %141 = load double, double* %arrayidx93, align 8
  %142 = load double*, double** %a.addr, align 8
  %arrayidx94 = getelementptr inbounds double, double* %142, i64 29
  %143 = load double, double* %arrayidx94, align 8
  %add95 = fadd double %141, %143
  store double %add95, double* %x2i, align 8
  %144 = load double*, double** %a.addr, align 8
  %arrayidx96 = getelementptr inbounds double, double* %144, i64 12
  %145 = load double, double* %arrayidx96, align 8
  %146 = load double*, double** %a.addr, align 8
  %arrayidx97 = getelementptr inbounds double, double* %146, i64 28
  %147 = load double, double* %arrayidx97, align 8
  %sub98 = fsub double %145, %147
  store double %sub98, double* %x3r, align 8
  %148 = load double*, double** %a.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %148, i64 13
  %149 = load double, double* %arrayidx99, align 8
  %150 = load double*, double** %a.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %150, i64 29
  %151 = load double, double* %arrayidx100, align 8
  %sub101 = fsub double %149, %151
  store double %sub101, double* %x3i, align 8
  %152 = load double, double* %x0r, align 8
  %153 = load double, double* %x2r, align 8
  %add102 = fadd double %152, %153
  store double %add102, double* %y2r, align 8
  %154 = load double, double* %x0i, align 8
  %155 = load double, double* %x2i, align 8
  %add103 = fadd double %154, %155
  store double %add103, double* %y2i, align 8
  %156 = load double, double* %x0r, align 8
  %157 = load double, double* %x2r, align 8
  %sub104 = fsub double %156, %157
  store double %sub104, double* %y6r, align 8
  %158 = load double, double* %x0i, align 8
  %159 = load double, double* %x2i, align 8
  %sub105 = fsub double %158, %159
  store double %sub105, double* %y6i, align 8
  %160 = load double, double* %x1r, align 8
  %161 = load double, double* %x3i, align 8
  %sub106 = fsub double %160, %161
  store double %sub106, double* %x0r, align 8
  %162 = load double, double* %x1i, align 8
  %163 = load double, double* %x3r, align 8
  %add107 = fadd double %162, %163
  store double %add107, double* %x0i, align 8
  %164 = load double, double* %wn4r, align 8
  %165 = load double, double* %x0r, align 8
  %166 = load double, double* %x0i, align 8
  %sub108 = fsub double %165, %166
  %mul109 = fmul double %164, %sub108
  store double %mul109, double* %y10r, align 8
  %167 = load double, double* %wn4r, align 8
  %168 = load double, double* %x0i, align 8
  %169 = load double, double* %x0r, align 8
  %add110 = fadd double %168, %169
  %mul111 = fmul double %167, %add110
  store double %mul111, double* %y10i, align 8
  %170 = load double, double* %x1r, align 8
  %171 = load double, double* %x3i, align 8
  %add112 = fadd double %170, %171
  store double %add112, double* %x0r, align 8
  %172 = load double, double* %x1i, align 8
  %173 = load double, double* %x3r, align 8
  %sub113 = fsub double %172, %173
  store double %sub113, double* %x0i, align 8
  %174 = load double, double* %wn4r, align 8
  %175 = load double, double* %x0r, align 8
  %176 = load double, double* %x0i, align 8
  %add114 = fadd double %175, %176
  %mul115 = fmul double %174, %add114
  store double %mul115, double* %y14r, align 8
  %177 = load double, double* %wn4r, align 8
  %178 = load double, double* %x0i, align 8
  %179 = load double, double* %x0r, align 8
  %sub116 = fsub double %178, %179
  %mul117 = fmul double %177, %sub116
  store double %mul117, double* %y14i, align 8
  %180 = load double*, double** %a.addr, align 8
  %arrayidx118 = getelementptr inbounds double, double* %180, i64 6
  %181 = load double, double* %arrayidx118, align 8
  %182 = load double*, double** %a.addr, align 8
  %arrayidx119 = getelementptr inbounds double, double* %182, i64 22
  %183 = load double, double* %arrayidx119, align 8
  %add120 = fadd double %181, %183
  store double %add120, double* %x0r, align 8
  %184 = load double*, double** %a.addr, align 8
  %arrayidx121 = getelementptr inbounds double, double* %184, i64 7
  %185 = load double, double* %arrayidx121, align 8
  %186 = load double*, double** %a.addr, align 8
  %arrayidx122 = getelementptr inbounds double, double* %186, i64 23
  %187 = load double, double* %arrayidx122, align 8
  %add123 = fadd double %185, %187
  store double %add123, double* %x0i, align 8
  %188 = load double*, double** %a.addr, align 8
  %arrayidx124 = getelementptr inbounds double, double* %188, i64 6
  %189 = load double, double* %arrayidx124, align 8
  %190 = load double*, double** %a.addr, align 8
  %arrayidx125 = getelementptr inbounds double, double* %190, i64 22
  %191 = load double, double* %arrayidx125, align 8
  %sub126 = fsub double %189, %191
  store double %sub126, double* %x1r, align 8
  %192 = load double*, double** %a.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %192, i64 7
  %193 = load double, double* %arrayidx127, align 8
  %194 = load double*, double** %a.addr, align 8
  %arrayidx128 = getelementptr inbounds double, double* %194, i64 23
  %195 = load double, double* %arrayidx128, align 8
  %sub129 = fsub double %193, %195
  store double %sub129, double* %x1i, align 8
  %196 = load double*, double** %a.addr, align 8
  %arrayidx130 = getelementptr inbounds double, double* %196, i64 14
  %197 = load double, double* %arrayidx130, align 8
  %198 = load double*, double** %a.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %198, i64 30
  %199 = load double, double* %arrayidx131, align 8
  %add132 = fadd double %197, %199
  store double %add132, double* %x2r, align 8
  %200 = load double*, double** %a.addr, align 8
  %arrayidx133 = getelementptr inbounds double, double* %200, i64 15
  %201 = load double, double* %arrayidx133, align 8
  %202 = load double*, double** %a.addr, align 8
  %arrayidx134 = getelementptr inbounds double, double* %202, i64 31
  %203 = load double, double* %arrayidx134, align 8
  %add135 = fadd double %201, %203
  store double %add135, double* %x2i, align 8
  %204 = load double*, double** %a.addr, align 8
  %arrayidx136 = getelementptr inbounds double, double* %204, i64 14
  %205 = load double, double* %arrayidx136, align 8
  %206 = load double*, double** %a.addr, align 8
  %arrayidx137 = getelementptr inbounds double, double* %206, i64 30
  %207 = load double, double* %arrayidx137, align 8
  %sub138 = fsub double %205, %207
  store double %sub138, double* %x3r, align 8
  %208 = load double*, double** %a.addr, align 8
  %arrayidx139 = getelementptr inbounds double, double* %208, i64 15
  %209 = load double, double* %arrayidx139, align 8
  %210 = load double*, double** %a.addr, align 8
  %arrayidx140 = getelementptr inbounds double, double* %210, i64 31
  %211 = load double, double* %arrayidx140, align 8
  %sub141 = fsub double %209, %211
  store double %sub141, double* %x3i, align 8
  %212 = load double, double* %x0r, align 8
  %213 = load double, double* %x2r, align 8
  %add142 = fadd double %212, %213
  store double %add142, double* %y3r, align 8
  %214 = load double, double* %x0i, align 8
  %215 = load double, double* %x2i, align 8
  %add143 = fadd double %214, %215
  store double %add143, double* %y3i, align 8
  %216 = load double, double* %x0r, align 8
  %217 = load double, double* %x2r, align 8
  %sub144 = fsub double %216, %217
  store double %sub144, double* %y7r, align 8
  %218 = load double, double* %x0i, align 8
  %219 = load double, double* %x2i, align 8
  %sub145 = fsub double %218, %219
  store double %sub145, double* %y7i, align 8
  %220 = load double, double* %x1r, align 8
  %221 = load double, double* %x3i, align 8
  %sub146 = fsub double %220, %221
  store double %sub146, double* %x0r, align 8
  %222 = load double, double* %x1i, align 8
  %223 = load double, double* %x3r, align 8
  %add147 = fadd double %222, %223
  store double %add147, double* %x0i, align 8
  %224 = load double, double* %wk1i, align 8
  %225 = load double, double* %x0r, align 8
  %mul148 = fmul double %224, %225
  %226 = load double, double* %wk1r, align 8
  %227 = load double, double* %x0i, align 8
  %mul149 = fmul double %226, %227
  %sub150 = fsub double %mul148, %mul149
  store double %sub150, double* %y11r, align 8
  %228 = load double, double* %wk1i, align 8
  %229 = load double, double* %x0i, align 8
  %mul151 = fmul double %228, %229
  %230 = load double, double* %wk1r, align 8
  %231 = load double, double* %x0r, align 8
  %mul152 = fmul double %230, %231
  %add153 = fadd double %mul151, %mul152
  store double %add153, double* %y11i, align 8
  %232 = load double, double* %x1r, align 8
  %233 = load double, double* %x3i, align 8
  %add154 = fadd double %232, %233
  store double %add154, double* %x0r, align 8
  %234 = load double, double* %x1i, align 8
  %235 = load double, double* %x3r, align 8
  %sub155 = fsub double %234, %235
  store double %sub155, double* %x0i, align 8
  %236 = load double, double* %wk1r, align 8
  %237 = load double, double* %x0r, align 8
  %mul156 = fmul double %236, %237
  %238 = load double, double* %wk1i, align 8
  %239 = load double, double* %x0i, align 8
  %mul157 = fmul double %238, %239
  %sub158 = fsub double %mul156, %mul157
  store double %sub158, double* %y15r, align 8
  %240 = load double, double* %wk1r, align 8
  %241 = load double, double* %x0i, align 8
  %mul159 = fmul double %240, %241
  %242 = load double, double* %wk1i, align 8
  %243 = load double, double* %x0r, align 8
  %mul160 = fmul double %242, %243
  %add161 = fadd double %mul159, %mul160
  store double %add161, double* %y15i, align 8
  %244 = load double, double* %y12r, align 8
  %245 = load double, double* %y14r, align 8
  %sub162 = fsub double %244, %245
  store double %sub162, double* %x0r, align 8
  %246 = load double, double* %y12i, align 8
  %247 = load double, double* %y14i, align 8
  %sub163 = fsub double %246, %247
  store double %sub163, double* %x0i, align 8
  %248 = load double, double* %y12r, align 8
  %249 = load double, double* %y14r, align 8
  %add164 = fadd double %248, %249
  store double %add164, double* %x1r, align 8
  %250 = load double, double* %y12i, align 8
  %251 = load double, double* %y14i, align 8
  %add165 = fadd double %250, %251
  store double %add165, double* %x1i, align 8
  %252 = load double, double* %y13r, align 8
  %253 = load double, double* %y15r, align 8
  %sub166 = fsub double %252, %253
  store double %sub166, double* %x2r, align 8
  %254 = load double, double* %y13i, align 8
  %255 = load double, double* %y15i, align 8
  %sub167 = fsub double %254, %255
  store double %sub167, double* %x2i, align 8
  %256 = load double, double* %y13r, align 8
  %257 = load double, double* %y15r, align 8
  %add168 = fadd double %256, %257
  store double %add168, double* %x3r, align 8
  %258 = load double, double* %y13i, align 8
  %259 = load double, double* %y15i, align 8
  %add169 = fadd double %258, %259
  store double %add169, double* %x3i, align 8
  %260 = load double, double* %x0r, align 8
  %261 = load double, double* %x2r, align 8
  %add170 = fadd double %260, %261
  %262 = load double*, double** %a.addr, align 8
  %arrayidx171 = getelementptr inbounds double, double* %262, i64 24
  store double %add170, double* %arrayidx171, align 8
  %263 = load double, double* %x0i, align 8
  %264 = load double, double* %x2i, align 8
  %add172 = fadd double %263, %264
  %265 = load double*, double** %a.addr, align 8
  %arrayidx173 = getelementptr inbounds double, double* %265, i64 25
  store double %add172, double* %arrayidx173, align 8
  %266 = load double, double* %x0r, align 8
  %267 = load double, double* %x2r, align 8
  %sub174 = fsub double %266, %267
  %268 = load double*, double** %a.addr, align 8
  %arrayidx175 = getelementptr inbounds double, double* %268, i64 26
  store double %sub174, double* %arrayidx175, align 8
  %269 = load double, double* %x0i, align 8
  %270 = load double, double* %x2i, align 8
  %sub176 = fsub double %269, %270
  %271 = load double*, double** %a.addr, align 8
  %arrayidx177 = getelementptr inbounds double, double* %271, i64 27
  store double %sub176, double* %arrayidx177, align 8
  %272 = load double, double* %x1r, align 8
  %273 = load double, double* %x3i, align 8
  %sub178 = fsub double %272, %273
  %274 = load double*, double** %a.addr, align 8
  %arrayidx179 = getelementptr inbounds double, double* %274, i64 28
  store double %sub178, double* %arrayidx179, align 8
  %275 = load double, double* %x1i, align 8
  %276 = load double, double* %x3r, align 8
  %add180 = fadd double %275, %276
  %277 = load double*, double** %a.addr, align 8
  %arrayidx181 = getelementptr inbounds double, double* %277, i64 29
  store double %add180, double* %arrayidx181, align 8
  %278 = load double, double* %x1r, align 8
  %279 = load double, double* %x3i, align 8
  %add182 = fadd double %278, %279
  %280 = load double*, double** %a.addr, align 8
  %arrayidx183 = getelementptr inbounds double, double* %280, i64 30
  store double %add182, double* %arrayidx183, align 8
  %281 = load double, double* %x1i, align 8
  %282 = load double, double* %x3r, align 8
  %sub184 = fsub double %281, %282
  %283 = load double*, double** %a.addr, align 8
  %arrayidx185 = getelementptr inbounds double, double* %283, i64 31
  store double %sub184, double* %arrayidx185, align 8
  %284 = load double, double* %y8r, align 8
  %285 = load double, double* %y10r, align 8
  %add186 = fadd double %284, %285
  store double %add186, double* %x0r, align 8
  %286 = load double, double* %y8i, align 8
  %287 = load double, double* %y10i, align 8
  %add187 = fadd double %286, %287
  store double %add187, double* %x0i, align 8
  %288 = load double, double* %y8r, align 8
  %289 = load double, double* %y10r, align 8
  %sub188 = fsub double %288, %289
  store double %sub188, double* %x1r, align 8
  %290 = load double, double* %y8i, align 8
  %291 = load double, double* %y10i, align 8
  %sub189 = fsub double %290, %291
  store double %sub189, double* %x1i, align 8
  %292 = load double, double* %y9r, align 8
  %293 = load double, double* %y11r, align 8
  %add190 = fadd double %292, %293
  store double %add190, double* %x2r, align 8
  %294 = load double, double* %y9i, align 8
  %295 = load double, double* %y11i, align 8
  %add191 = fadd double %294, %295
  store double %add191, double* %x2i, align 8
  %296 = load double, double* %y9r, align 8
  %297 = load double, double* %y11r, align 8
  %sub192 = fsub double %296, %297
  store double %sub192, double* %x3r, align 8
  %298 = load double, double* %y9i, align 8
  %299 = load double, double* %y11i, align 8
  %sub193 = fsub double %298, %299
  store double %sub193, double* %x3i, align 8
  %300 = load double, double* %x0r, align 8
  %301 = load double, double* %x2r, align 8
  %add194 = fadd double %300, %301
  %302 = load double*, double** %a.addr, align 8
  %arrayidx195 = getelementptr inbounds double, double* %302, i64 16
  store double %add194, double* %arrayidx195, align 8
  %303 = load double, double* %x0i, align 8
  %304 = load double, double* %x2i, align 8
  %add196 = fadd double %303, %304
  %305 = load double*, double** %a.addr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %305, i64 17
  store double %add196, double* %arrayidx197, align 8
  %306 = load double, double* %x0r, align 8
  %307 = load double, double* %x2r, align 8
  %sub198 = fsub double %306, %307
  %308 = load double*, double** %a.addr, align 8
  %arrayidx199 = getelementptr inbounds double, double* %308, i64 18
  store double %sub198, double* %arrayidx199, align 8
  %309 = load double, double* %x0i, align 8
  %310 = load double, double* %x2i, align 8
  %sub200 = fsub double %309, %310
  %311 = load double*, double** %a.addr, align 8
  %arrayidx201 = getelementptr inbounds double, double* %311, i64 19
  store double %sub200, double* %arrayidx201, align 8
  %312 = load double, double* %x1r, align 8
  %313 = load double, double* %x3i, align 8
  %sub202 = fsub double %312, %313
  %314 = load double*, double** %a.addr, align 8
  %arrayidx203 = getelementptr inbounds double, double* %314, i64 20
  store double %sub202, double* %arrayidx203, align 8
  %315 = load double, double* %x1i, align 8
  %316 = load double, double* %x3r, align 8
  %add204 = fadd double %315, %316
  %317 = load double*, double** %a.addr, align 8
  %arrayidx205 = getelementptr inbounds double, double* %317, i64 21
  store double %add204, double* %arrayidx205, align 8
  %318 = load double, double* %x1r, align 8
  %319 = load double, double* %x3i, align 8
  %add206 = fadd double %318, %319
  %320 = load double*, double** %a.addr, align 8
  %arrayidx207 = getelementptr inbounds double, double* %320, i64 22
  store double %add206, double* %arrayidx207, align 8
  %321 = load double, double* %x1i, align 8
  %322 = load double, double* %x3r, align 8
  %sub208 = fsub double %321, %322
  %323 = load double*, double** %a.addr, align 8
  %arrayidx209 = getelementptr inbounds double, double* %323, i64 23
  store double %sub208, double* %arrayidx209, align 8
  %324 = load double, double* %y5r, align 8
  %325 = load double, double* %y7i, align 8
  %sub210 = fsub double %324, %325
  store double %sub210, double* %x0r, align 8
  %326 = load double, double* %y5i, align 8
  %327 = load double, double* %y7r, align 8
  %add211 = fadd double %326, %327
  store double %add211, double* %x0i, align 8
  %328 = load double, double* %wn4r, align 8
  %329 = load double, double* %x0r, align 8
  %330 = load double, double* %x0i, align 8
  %sub212 = fsub double %329, %330
  %mul213 = fmul double %328, %sub212
  store double %mul213, double* %x2r, align 8
  %331 = load double, double* %wn4r, align 8
  %332 = load double, double* %x0i, align 8
  %333 = load double, double* %x0r, align 8
  %add214 = fadd double %332, %333
  %mul215 = fmul double %331, %add214
  store double %mul215, double* %x2i, align 8
  %334 = load double, double* %y5r, align 8
  %335 = load double, double* %y7i, align 8
  %add216 = fadd double %334, %335
  store double %add216, double* %x0r, align 8
  %336 = load double, double* %y5i, align 8
  %337 = load double, double* %y7r, align 8
  %sub217 = fsub double %336, %337
  store double %sub217, double* %x0i, align 8
  %338 = load double, double* %wn4r, align 8
  %339 = load double, double* %x0r, align 8
  %340 = load double, double* %x0i, align 8
  %sub218 = fsub double %339, %340
  %mul219 = fmul double %338, %sub218
  store double %mul219, double* %x3r, align 8
  %341 = load double, double* %wn4r, align 8
  %342 = load double, double* %x0i, align 8
  %343 = load double, double* %x0r, align 8
  %add220 = fadd double %342, %343
  %mul221 = fmul double %341, %add220
  store double %mul221, double* %x3i, align 8
  %344 = load double, double* %y4r, align 8
  %345 = load double, double* %y6i, align 8
  %sub222 = fsub double %344, %345
  store double %sub222, double* %x0r, align 8
  %346 = load double, double* %y4i, align 8
  %347 = load double, double* %y6r, align 8
  %add223 = fadd double %346, %347
  store double %add223, double* %x0i, align 8
  %348 = load double, double* %y4r, align 8
  %349 = load double, double* %y6i, align 8
  %add224 = fadd double %348, %349
  store double %add224, double* %x1r, align 8
  %350 = load double, double* %y4i, align 8
  %351 = load double, double* %y6r, align 8
  %sub225 = fsub double %350, %351
  store double %sub225, double* %x1i, align 8
  %352 = load double, double* %x0r, align 8
  %353 = load double, double* %x2r, align 8
  %add226 = fadd double %352, %353
  %354 = load double*, double** %a.addr, align 8
  %arrayidx227 = getelementptr inbounds double, double* %354, i64 8
  store double %add226, double* %arrayidx227, align 8
  %355 = load double, double* %x0i, align 8
  %356 = load double, double* %x2i, align 8
  %add228 = fadd double %355, %356
  %357 = load double*, double** %a.addr, align 8
  %arrayidx229 = getelementptr inbounds double, double* %357, i64 9
  store double %add228, double* %arrayidx229, align 8
  %358 = load double, double* %x0r, align 8
  %359 = load double, double* %x2r, align 8
  %sub230 = fsub double %358, %359
  %360 = load double*, double** %a.addr, align 8
  %arrayidx231 = getelementptr inbounds double, double* %360, i64 10
  store double %sub230, double* %arrayidx231, align 8
  %361 = load double, double* %x0i, align 8
  %362 = load double, double* %x2i, align 8
  %sub232 = fsub double %361, %362
  %363 = load double*, double** %a.addr, align 8
  %arrayidx233 = getelementptr inbounds double, double* %363, i64 11
  store double %sub232, double* %arrayidx233, align 8
  %364 = load double, double* %x1r, align 8
  %365 = load double, double* %x3i, align 8
  %sub234 = fsub double %364, %365
  %366 = load double*, double** %a.addr, align 8
  %arrayidx235 = getelementptr inbounds double, double* %366, i64 12
  store double %sub234, double* %arrayidx235, align 8
  %367 = load double, double* %x1i, align 8
  %368 = load double, double* %x3r, align 8
  %add236 = fadd double %367, %368
  %369 = load double*, double** %a.addr, align 8
  %arrayidx237 = getelementptr inbounds double, double* %369, i64 13
  store double %add236, double* %arrayidx237, align 8
  %370 = load double, double* %x1r, align 8
  %371 = load double, double* %x3i, align 8
  %add238 = fadd double %370, %371
  %372 = load double*, double** %a.addr, align 8
  %arrayidx239 = getelementptr inbounds double, double* %372, i64 14
  store double %add238, double* %arrayidx239, align 8
  %373 = load double, double* %x1i, align 8
  %374 = load double, double* %x3r, align 8
  %sub240 = fsub double %373, %374
  %375 = load double*, double** %a.addr, align 8
  %arrayidx241 = getelementptr inbounds double, double* %375, i64 15
  store double %sub240, double* %arrayidx241, align 8
  %376 = load double, double* %y0r, align 8
  %377 = load double, double* %y2r, align 8
  %add242 = fadd double %376, %377
  store double %add242, double* %x0r, align 8
  %378 = load double, double* %y0i, align 8
  %379 = load double, double* %y2i, align 8
  %add243 = fadd double %378, %379
  store double %add243, double* %x0i, align 8
  %380 = load double, double* %y0r, align 8
  %381 = load double, double* %y2r, align 8
  %sub244 = fsub double %380, %381
  store double %sub244, double* %x1r, align 8
  %382 = load double, double* %y0i, align 8
  %383 = load double, double* %y2i, align 8
  %sub245 = fsub double %382, %383
  store double %sub245, double* %x1i, align 8
  %384 = load double, double* %y1r, align 8
  %385 = load double, double* %y3r, align 8
  %add246 = fadd double %384, %385
  store double %add246, double* %x2r, align 8
  %386 = load double, double* %y1i, align 8
  %387 = load double, double* %y3i, align 8
  %add247 = fadd double %386, %387
  store double %add247, double* %x2i, align 8
  %388 = load double, double* %y1r, align 8
  %389 = load double, double* %y3r, align 8
  %sub248 = fsub double %388, %389
  store double %sub248, double* %x3r, align 8
  %390 = load double, double* %y1i, align 8
  %391 = load double, double* %y3i, align 8
  %sub249 = fsub double %390, %391
  store double %sub249, double* %x3i, align 8
  %392 = load double, double* %x0r, align 8
  %393 = load double, double* %x2r, align 8
  %add250 = fadd double %392, %393
  %394 = load double*, double** %a.addr, align 8
  %arrayidx251 = getelementptr inbounds double, double* %394, i64 0
  store double %add250, double* %arrayidx251, align 8
  %395 = load double, double* %x0i, align 8
  %396 = load double, double* %x2i, align 8
  %add252 = fadd double %395, %396
  %397 = load double*, double** %a.addr, align 8
  %arrayidx253 = getelementptr inbounds double, double* %397, i64 1
  store double %add252, double* %arrayidx253, align 8
  %398 = load double, double* %x0r, align 8
  %399 = load double, double* %x2r, align 8
  %sub254 = fsub double %398, %399
  %400 = load double*, double** %a.addr, align 8
  %arrayidx255 = getelementptr inbounds double, double* %400, i64 2
  store double %sub254, double* %arrayidx255, align 8
  %401 = load double, double* %x0i, align 8
  %402 = load double, double* %x2i, align 8
  %sub256 = fsub double %401, %402
  %403 = load double*, double** %a.addr, align 8
  %arrayidx257 = getelementptr inbounds double, double* %403, i64 3
  store double %sub256, double* %arrayidx257, align 8
  %404 = load double, double* %x1r, align 8
  %405 = load double, double* %x3i, align 8
  %sub258 = fsub double %404, %405
  %406 = load double*, double** %a.addr, align 8
  %arrayidx259 = getelementptr inbounds double, double* %406, i64 4
  store double %sub258, double* %arrayidx259, align 8
  %407 = load double, double* %x1i, align 8
  %408 = load double, double* %x3r, align 8
  %add260 = fadd double %407, %408
  %409 = load double*, double** %a.addr, align 8
  %arrayidx261 = getelementptr inbounds double, double* %409, i64 5
  store double %add260, double* %arrayidx261, align 8
  %410 = load double, double* %x1r, align 8
  %411 = load double, double* %x3i, align 8
  %add262 = fadd double %410, %411
  %412 = load double*, double** %a.addr, align 8
  %arrayidx263 = getelementptr inbounds double, double* %412, i64 6
  store double %add262, double* %arrayidx263, align 8
  %413 = load double, double* %x1i, align 8
  %414 = load double, double* %x3r, align 8
  %sub264 = fsub double %413, %414
  %415 = load double*, double** %a.addr, align 8
  %arrayidx265 = getelementptr inbounds double, double* %415, i64 7
  store double %sub264, double* %arrayidx265, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitrv216(double* %a) #0 {
entry:
  %a.addr = alloca double*, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %x4r = alloca double, align 8
  %x4i = alloca double, align 8
  %x5r = alloca double, align 8
  %x5i = alloca double, align 8
  %x7r = alloca double, align 8
  %x7i = alloca double, align 8
  %x8r = alloca double, align 8
  %x8i = alloca double, align 8
  %x10r = alloca double, align 8
  %x10i = alloca double, align 8
  %x11r = alloca double, align 8
  %x11i = alloca double, align 8
  %x12r = alloca double, align 8
  %x12i = alloca double, align 8
  %x13r = alloca double, align 8
  %x13i = alloca double, align 8
  %x14r = alloca double, align 8
  %x14i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %x1r, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 3
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %x1i, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 4
  %5 = load double, double* %arrayidx2, align 8
  store double %5, double* %x2r, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 5
  %7 = load double, double* %arrayidx3, align 8
  store double %7, double* %x2i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 6
  %9 = load double, double* %arrayidx4, align 8
  store double %9, double* %x3r, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 7
  %11 = load double, double* %arrayidx5, align 8
  store double %11, double* %x3i, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 8
  %13 = load double, double* %arrayidx6, align 8
  store double %13, double* %x4r, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 9
  %15 = load double, double* %arrayidx7, align 8
  store double %15, double* %x4i, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 10
  %17 = load double, double* %arrayidx8, align 8
  store double %17, double* %x5r, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 11
  %19 = load double, double* %arrayidx9, align 8
  store double %19, double* %x5i, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 14
  %21 = load double, double* %arrayidx10, align 8
  store double %21, double* %x7r, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %22, i64 15
  %23 = load double, double* %arrayidx11, align 8
  store double %23, double* %x7i, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %24, i64 16
  %25 = load double, double* %arrayidx12, align 8
  store double %25, double* %x8r, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %26, i64 17
  %27 = load double, double* %arrayidx13, align 8
  store double %27, double* %x8i, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %28, i64 20
  %29 = load double, double* %arrayidx14, align 8
  store double %29, double* %x10r, align 8
  %30 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %30, i64 21
  %31 = load double, double* %arrayidx15, align 8
  store double %31, double* %x10i, align 8
  %32 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %32, i64 22
  %33 = load double, double* %arrayidx16, align 8
  store double %33, double* %x11r, align 8
  %34 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %34, i64 23
  %35 = load double, double* %arrayidx17, align 8
  store double %35, double* %x11i, align 8
  %36 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %36, i64 24
  %37 = load double, double* %arrayidx18, align 8
  store double %37, double* %x12r, align 8
  %38 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %38, i64 25
  %39 = load double, double* %arrayidx19, align 8
  store double %39, double* %x12i, align 8
  %40 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %40, i64 26
  %41 = load double, double* %arrayidx20, align 8
  store double %41, double* %x13r, align 8
  %42 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %42, i64 27
  %43 = load double, double* %arrayidx21, align 8
  store double %43, double* %x13i, align 8
  %44 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %44, i64 28
  %45 = load double, double* %arrayidx22, align 8
  store double %45, double* %x14r, align 8
  %46 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %46, i64 29
  %47 = load double, double* %arrayidx23, align 8
  store double %47, double* %x14i, align 8
  %48 = load double, double* %x8r, align 8
  %49 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %49, i64 2
  store double %48, double* %arrayidx24, align 8
  %50 = load double, double* %x8i, align 8
  %51 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %51, i64 3
  store double %50, double* %arrayidx25, align 8
  %52 = load double, double* %x4r, align 8
  %53 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %53, i64 4
  store double %52, double* %arrayidx26, align 8
  %54 = load double, double* %x4i, align 8
  %55 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %55, i64 5
  store double %54, double* %arrayidx27, align 8
  %56 = load double, double* %x12r, align 8
  %57 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %57, i64 6
  store double %56, double* %arrayidx28, align 8
  %58 = load double, double* %x12i, align 8
  %59 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %59, i64 7
  store double %58, double* %arrayidx29, align 8
  %60 = load double, double* %x2r, align 8
  %61 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %61, i64 8
  store double %60, double* %arrayidx30, align 8
  %62 = load double, double* %x2i, align 8
  %63 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %63, i64 9
  store double %62, double* %arrayidx31, align 8
  %64 = load double, double* %x10r, align 8
  %65 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %65, i64 10
  store double %64, double* %arrayidx32, align 8
  %66 = load double, double* %x10i, align 8
  %67 = load double*, double** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %67, i64 11
  store double %66, double* %arrayidx33, align 8
  %68 = load double, double* %x14r, align 8
  %69 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %69, i64 14
  store double %68, double* %arrayidx34, align 8
  %70 = load double, double* %x14i, align 8
  %71 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %71, i64 15
  store double %70, double* %arrayidx35, align 8
  %72 = load double, double* %x1r, align 8
  %73 = load double*, double** %a.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %73, i64 16
  store double %72, double* %arrayidx36, align 8
  %74 = load double, double* %x1i, align 8
  %75 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %75, i64 17
  store double %74, double* %arrayidx37, align 8
  %76 = load double, double* %x5r, align 8
  %77 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %77, i64 20
  store double %76, double* %arrayidx38, align 8
  %78 = load double, double* %x5i, align 8
  %79 = load double*, double** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %79, i64 21
  store double %78, double* %arrayidx39, align 8
  %80 = load double, double* %x13r, align 8
  %81 = load double*, double** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %81, i64 22
  store double %80, double* %arrayidx40, align 8
  %82 = load double, double* %x13i, align 8
  %83 = load double*, double** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %83, i64 23
  store double %82, double* %arrayidx41, align 8
  %84 = load double, double* %x3r, align 8
  %85 = load double*, double** %a.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %85, i64 24
  store double %84, double* %arrayidx42, align 8
  %86 = load double, double* %x3i, align 8
  %87 = load double*, double** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %87, i64 25
  store double %86, double* %arrayidx43, align 8
  %88 = load double, double* %x11r, align 8
  %89 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %89, i64 26
  store double %88, double* %arrayidx44, align 8
  %90 = load double, double* %x11i, align 8
  %91 = load double*, double** %a.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %91, i64 27
  store double %90, double* %arrayidx45, align 8
  %92 = load double, double* %x7r, align 8
  %93 = load double*, double** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %93, i64 28
  store double %92, double* %arrayidx46, align 8
  %94 = load double, double* %x7i, align 8
  %95 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %95, i64 29
  store double %94, double* %arrayidx47, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftf081(double* %a, double* %w) #0 {
entry:
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %wn4r = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %y0r = alloca double, align 8
  %y0i = alloca double, align 8
  %y1r = alloca double, align 8
  %y1i = alloca double, align 8
  %y2r = alloca double, align 8
  %y2i = alloca double, align 8
  %y3r = alloca double, align 8
  %y3i = alloca double, align 8
  %y4r = alloca double, align 8
  %y4i = alloca double, align 8
  %y5r = alloca double, align 8
  %y5i = alloca double, align 8
  %y6r = alloca double, align 8
  %y6i = alloca double, align 8
  %y7r = alloca double, align 8
  %y7i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %wn4r, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx1, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 8
  %5 = load double, double* %arrayidx2, align 8
  %add = fadd double %3, %5
  store double %add, double* %x0r, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 1
  %7 = load double, double* %arrayidx3, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 9
  %9 = load double, double* %arrayidx4, align 8
  %add5 = fadd double %7, %9
  store double %add5, double* %x0i, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 0
  %11 = load double, double* %arrayidx6, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 8
  %13 = load double, double* %arrayidx7, align 8
  %sub = fsub double %11, %13
  store double %sub, double* %x1r, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx8, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 9
  %17 = load double, double* %arrayidx9, align 8
  %sub10 = fsub double %15, %17
  store double %sub10, double* %x1i, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 4
  %19 = load double, double* %arrayidx11, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %20, i64 12
  %21 = load double, double* %arrayidx12, align 8
  %add13 = fadd double %19, %21
  store double %add13, double* %x2r, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %22, i64 5
  %23 = load double, double* %arrayidx14, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %24, i64 13
  %25 = load double, double* %arrayidx15, align 8
  %add16 = fadd double %23, %25
  store double %add16, double* %x2i, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 4
  %27 = load double, double* %arrayidx17, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %28, i64 12
  %29 = load double, double* %arrayidx18, align 8
  %sub19 = fsub double %27, %29
  store double %sub19, double* %x3r, align 8
  %30 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %30, i64 5
  %31 = load double, double* %arrayidx20, align 8
  %32 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %32, i64 13
  %33 = load double, double* %arrayidx21, align 8
  %sub22 = fsub double %31, %33
  store double %sub22, double* %x3i, align 8
  %34 = load double, double* %x0r, align 8
  %35 = load double, double* %x2r, align 8
  %add23 = fadd double %34, %35
  store double %add23, double* %y0r, align 8
  %36 = load double, double* %x0i, align 8
  %37 = load double, double* %x2i, align 8
  %add24 = fadd double %36, %37
  store double %add24, double* %y0i, align 8
  %38 = load double, double* %x0r, align 8
  %39 = load double, double* %x2r, align 8
  %sub25 = fsub double %38, %39
  store double %sub25, double* %y2r, align 8
  %40 = load double, double* %x0i, align 8
  %41 = load double, double* %x2i, align 8
  %sub26 = fsub double %40, %41
  store double %sub26, double* %y2i, align 8
  %42 = load double, double* %x1r, align 8
  %43 = load double, double* %x3i, align 8
  %sub27 = fsub double %42, %43
  store double %sub27, double* %y1r, align 8
  %44 = load double, double* %x1i, align 8
  %45 = load double, double* %x3r, align 8
  %add28 = fadd double %44, %45
  store double %add28, double* %y1i, align 8
  %46 = load double, double* %x1r, align 8
  %47 = load double, double* %x3i, align 8
  %add29 = fadd double %46, %47
  store double %add29, double* %y3r, align 8
  %48 = load double, double* %x1i, align 8
  %49 = load double, double* %x3r, align 8
  %sub30 = fsub double %48, %49
  store double %sub30, double* %y3i, align 8
  %50 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %50, i64 2
  %51 = load double, double* %arrayidx31, align 8
  %52 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %52, i64 10
  %53 = load double, double* %arrayidx32, align 8
  %add33 = fadd double %51, %53
  store double %add33, double* %x0r, align 8
  %54 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %54, i64 3
  %55 = load double, double* %arrayidx34, align 8
  %56 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %56, i64 11
  %57 = load double, double* %arrayidx35, align 8
  %add36 = fadd double %55, %57
  store double %add36, double* %x0i, align 8
  %58 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %58, i64 2
  %59 = load double, double* %arrayidx37, align 8
  %60 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %60, i64 10
  %61 = load double, double* %arrayidx38, align 8
  %sub39 = fsub double %59, %61
  store double %sub39, double* %x1r, align 8
  %62 = load double*, double** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %62, i64 3
  %63 = load double, double* %arrayidx40, align 8
  %64 = load double*, double** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %64, i64 11
  %65 = load double, double* %arrayidx41, align 8
  %sub42 = fsub double %63, %65
  store double %sub42, double* %x1i, align 8
  %66 = load double*, double** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %66, i64 6
  %67 = load double, double* %arrayidx43, align 8
  %68 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %68, i64 14
  %69 = load double, double* %arrayidx44, align 8
  %add45 = fadd double %67, %69
  store double %add45, double* %x2r, align 8
  %70 = load double*, double** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %70, i64 7
  %71 = load double, double* %arrayidx46, align 8
  %72 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %72, i64 15
  %73 = load double, double* %arrayidx47, align 8
  %add48 = fadd double %71, %73
  store double %add48, double* %x2i, align 8
  %74 = load double*, double** %a.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %74, i64 6
  %75 = load double, double* %arrayidx49, align 8
  %76 = load double*, double** %a.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %76, i64 14
  %77 = load double, double* %arrayidx50, align 8
  %sub51 = fsub double %75, %77
  store double %sub51, double* %x3r, align 8
  %78 = load double*, double** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %78, i64 7
  %79 = load double, double* %arrayidx52, align 8
  %80 = load double*, double** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %80, i64 15
  %81 = load double, double* %arrayidx53, align 8
  %sub54 = fsub double %79, %81
  store double %sub54, double* %x3i, align 8
  %82 = load double, double* %x0r, align 8
  %83 = load double, double* %x2r, align 8
  %add55 = fadd double %82, %83
  store double %add55, double* %y4r, align 8
  %84 = load double, double* %x0i, align 8
  %85 = load double, double* %x2i, align 8
  %add56 = fadd double %84, %85
  store double %add56, double* %y4i, align 8
  %86 = load double, double* %x0r, align 8
  %87 = load double, double* %x2r, align 8
  %sub57 = fsub double %86, %87
  store double %sub57, double* %y6r, align 8
  %88 = load double, double* %x0i, align 8
  %89 = load double, double* %x2i, align 8
  %sub58 = fsub double %88, %89
  store double %sub58, double* %y6i, align 8
  %90 = load double, double* %x1r, align 8
  %91 = load double, double* %x3i, align 8
  %sub59 = fsub double %90, %91
  store double %sub59, double* %x0r, align 8
  %92 = load double, double* %x1i, align 8
  %93 = load double, double* %x3r, align 8
  %add60 = fadd double %92, %93
  store double %add60, double* %x0i, align 8
  %94 = load double, double* %x1r, align 8
  %95 = load double, double* %x3i, align 8
  %add61 = fadd double %94, %95
  store double %add61, double* %x2r, align 8
  %96 = load double, double* %x1i, align 8
  %97 = load double, double* %x3r, align 8
  %sub62 = fsub double %96, %97
  store double %sub62, double* %x2i, align 8
  %98 = load double, double* %wn4r, align 8
  %99 = load double, double* %x0r, align 8
  %100 = load double, double* %x0i, align 8
  %sub63 = fsub double %99, %100
  %mul = fmul double %98, %sub63
  store double %mul, double* %y5r, align 8
  %101 = load double, double* %wn4r, align 8
  %102 = load double, double* %x0r, align 8
  %103 = load double, double* %x0i, align 8
  %add64 = fadd double %102, %103
  %mul65 = fmul double %101, %add64
  store double %mul65, double* %y5i, align 8
  %104 = load double, double* %wn4r, align 8
  %105 = load double, double* %x2r, align 8
  %106 = load double, double* %x2i, align 8
  %sub66 = fsub double %105, %106
  %mul67 = fmul double %104, %sub66
  store double %mul67, double* %y7r, align 8
  %107 = load double, double* %wn4r, align 8
  %108 = load double, double* %x2r, align 8
  %109 = load double, double* %x2i, align 8
  %add68 = fadd double %108, %109
  %mul69 = fmul double %107, %add68
  store double %mul69, double* %y7i, align 8
  %110 = load double, double* %y1r, align 8
  %111 = load double, double* %y5r, align 8
  %add70 = fadd double %110, %111
  %112 = load double*, double** %a.addr, align 8
  %arrayidx71 = getelementptr inbounds double, double* %112, i64 8
  store double %add70, double* %arrayidx71, align 8
  %113 = load double, double* %y1i, align 8
  %114 = load double, double* %y5i, align 8
  %add72 = fadd double %113, %114
  %115 = load double*, double** %a.addr, align 8
  %arrayidx73 = getelementptr inbounds double, double* %115, i64 9
  store double %add72, double* %arrayidx73, align 8
  %116 = load double, double* %y1r, align 8
  %117 = load double, double* %y5r, align 8
  %sub74 = fsub double %116, %117
  %118 = load double*, double** %a.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %118, i64 10
  store double %sub74, double* %arrayidx75, align 8
  %119 = load double, double* %y1i, align 8
  %120 = load double, double* %y5i, align 8
  %sub76 = fsub double %119, %120
  %121 = load double*, double** %a.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %121, i64 11
  store double %sub76, double* %arrayidx77, align 8
  %122 = load double, double* %y3r, align 8
  %123 = load double, double* %y7i, align 8
  %sub78 = fsub double %122, %123
  %124 = load double*, double** %a.addr, align 8
  %arrayidx79 = getelementptr inbounds double, double* %124, i64 12
  store double %sub78, double* %arrayidx79, align 8
  %125 = load double, double* %y3i, align 8
  %126 = load double, double* %y7r, align 8
  %add80 = fadd double %125, %126
  %127 = load double*, double** %a.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %127, i64 13
  store double %add80, double* %arrayidx81, align 8
  %128 = load double, double* %y3r, align 8
  %129 = load double, double* %y7i, align 8
  %add82 = fadd double %128, %129
  %130 = load double*, double** %a.addr, align 8
  %arrayidx83 = getelementptr inbounds double, double* %130, i64 14
  store double %add82, double* %arrayidx83, align 8
  %131 = load double, double* %y3i, align 8
  %132 = load double, double* %y7r, align 8
  %sub84 = fsub double %131, %132
  %133 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %133, i64 15
  store double %sub84, double* %arrayidx85, align 8
  %134 = load double, double* %y0r, align 8
  %135 = load double, double* %y4r, align 8
  %add86 = fadd double %134, %135
  %136 = load double*, double** %a.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %136, i64 0
  store double %add86, double* %arrayidx87, align 8
  %137 = load double, double* %y0i, align 8
  %138 = load double, double* %y4i, align 8
  %add88 = fadd double %137, %138
  %139 = load double*, double** %a.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %139, i64 1
  store double %add88, double* %arrayidx89, align 8
  %140 = load double, double* %y0r, align 8
  %141 = load double, double* %y4r, align 8
  %sub90 = fsub double %140, %141
  %142 = load double*, double** %a.addr, align 8
  %arrayidx91 = getelementptr inbounds double, double* %142, i64 2
  store double %sub90, double* %arrayidx91, align 8
  %143 = load double, double* %y0i, align 8
  %144 = load double, double* %y4i, align 8
  %sub92 = fsub double %143, %144
  %145 = load double*, double** %a.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %145, i64 3
  store double %sub92, double* %arrayidx93, align 8
  %146 = load double, double* %y2r, align 8
  %147 = load double, double* %y6i, align 8
  %sub94 = fsub double %146, %147
  %148 = load double*, double** %a.addr, align 8
  %arrayidx95 = getelementptr inbounds double, double* %148, i64 4
  store double %sub94, double* %arrayidx95, align 8
  %149 = load double, double* %y2i, align 8
  %150 = load double, double* %y6r, align 8
  %add96 = fadd double %149, %150
  %151 = load double*, double** %a.addr, align 8
  %arrayidx97 = getelementptr inbounds double, double* %151, i64 5
  store double %add96, double* %arrayidx97, align 8
  %152 = load double, double* %y2r, align 8
  %153 = load double, double* %y6i, align 8
  %add98 = fadd double %152, %153
  %154 = load double*, double** %a.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %154, i64 6
  store double %add98, double* %arrayidx99, align 8
  %155 = load double, double* %y2i, align 8
  %156 = load double, double* %y6r, align 8
  %sub100 = fsub double %155, %156
  %157 = load double*, double** %a.addr, align 8
  %arrayidx101 = getelementptr inbounds double, double* %157, i64 7
  store double %sub100, double* %arrayidx101, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitrv208(double* %a) #0 {
entry:
  %a.addr = alloca double*, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %x4r = alloca double, align 8
  %x4i = alloca double, align 8
  %x6r = alloca double, align 8
  %x6i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %x1r, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 3
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %x1i, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 6
  %5 = load double, double* %arrayidx2, align 8
  store double %5, double* %x3r, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 7
  %7 = load double, double* %arrayidx3, align 8
  store double %7, double* %x3i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 8
  %9 = load double, double* %arrayidx4, align 8
  store double %9, double* %x4r, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 9
  %11 = load double, double* %arrayidx5, align 8
  store double %11, double* %x4i, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 12
  %13 = load double, double* %arrayidx6, align 8
  store double %13, double* %x6r, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 13
  %15 = load double, double* %arrayidx7, align 8
  store double %15, double* %x6i, align 8
  %16 = load double, double* %x4r, align 8
  %17 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %17, i64 2
  store double %16, double* %arrayidx8, align 8
  %18 = load double, double* %x4i, align 8
  %19 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %19, i64 3
  store double %18, double* %arrayidx9, align 8
  %20 = load double, double* %x6r, align 8
  %21 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %21, i64 6
  store double %20, double* %arrayidx10, align 8
  %22 = load double, double* %x6i, align 8
  %23 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %23, i64 7
  store double %22, double* %arrayidx11, align 8
  %24 = load double, double* %x1r, align 8
  %25 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %25, i64 8
  store double %24, double* %arrayidx12, align 8
  %26 = load double, double* %x1i, align 8
  %27 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %27, i64 9
  store double %26, double* %arrayidx13, align 8
  %28 = load double, double* %x3r, align 8
  %29 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 12
  store double %28, double* %arrayidx14, align 8
  %30 = load double, double* %x3i, align 8
  %31 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %31, i64 13
  store double %30, double* %arrayidx15, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftf040(double* %a) #0 {
entry:
  %a.addr = alloca double*, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 4
  %3 = load double, double* %arrayidx1, align 8
  %add = fadd double %1, %3
  store double %add, double* %x0r, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx2, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 5
  %7 = load double, double* %arrayidx3, align 8
  %add4 = fadd double %5, %7
  store double %add4, double* %x0i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx5, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 4
  %11 = load double, double* %arrayidx6, align 8
  %sub = fsub double %9, %11
  store double %sub, double* %x1r, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx7, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 5
  %15 = load double, double* %arrayidx8, align 8
  %sub9 = fsub double %13, %15
  store double %sub9, double* %x1i, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %16, i64 2
  %17 = load double, double* %arrayidx10, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 6
  %19 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %17, %19
  store double %add12, double* %x2r, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 3
  %21 = load double, double* %arrayidx13, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %22, i64 7
  %23 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %21, %23
  store double %add15, double* %x2i, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %24, i64 2
  %25 = load double, double* %arrayidx16, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 6
  %27 = load double, double* %arrayidx17, align 8
  %sub18 = fsub double %25, %27
  store double %sub18, double* %x3r, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %28, i64 3
  %29 = load double, double* %arrayidx19, align 8
  %30 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %30, i64 7
  %31 = load double, double* %arrayidx20, align 8
  %sub21 = fsub double %29, %31
  store double %sub21, double* %x3i, align 8
  %32 = load double, double* %x0r, align 8
  %33 = load double, double* %x2r, align 8
  %add22 = fadd double %32, %33
  %34 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %34, i64 0
  store double %add22, double* %arrayidx23, align 8
  %35 = load double, double* %x0i, align 8
  %36 = load double, double* %x2i, align 8
  %add24 = fadd double %35, %36
  %37 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %37, i64 1
  store double %add24, double* %arrayidx25, align 8
  %38 = load double, double* %x0r, align 8
  %39 = load double, double* %x2r, align 8
  %sub26 = fsub double %38, %39
  %40 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %40, i64 4
  store double %sub26, double* %arrayidx27, align 8
  %41 = load double, double* %x0i, align 8
  %42 = load double, double* %x2i, align 8
  %sub28 = fsub double %41, %42
  %43 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %43, i64 5
  store double %sub28, double* %arrayidx29, align 8
  %44 = load double, double* %x1r, align 8
  %45 = load double, double* %x3i, align 8
  %sub30 = fsub double %44, %45
  %46 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %46, i64 2
  store double %sub30, double* %arrayidx31, align 8
  %47 = load double, double* %x1i, align 8
  %48 = load double, double* %x3r, align 8
  %add32 = fadd double %47, %48
  %49 = load double*, double** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %49, i64 3
  store double %add32, double* %arrayidx33, align 8
  %50 = load double, double* %x1r, align 8
  %51 = load double, double* %x3i, align 8
  %add34 = fadd double %50, %51
  %52 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %52, i64 6
  store double %add34, double* %arrayidx35, align 8
  %53 = load double, double* %x1i, align 8
  %54 = load double, double* %x3r, align 8
  %sub36 = fsub double %53, %54
  %55 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %55, i64 7
  store double %sub36, double* %arrayidx37, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftx020(double* %a) #0 {
entry:
  %a.addr = alloca double*, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 2
  %3 = load double, double* %arrayidx1, align 8
  %sub = fsub double %1, %3
  store double %sub, double* %x0r, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx2, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 3
  %7 = load double, double* %arrayidx3, align 8
  %sub4 = fsub double %5, %7
  store double %sub4, double* %x0i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 2
  %9 = load double, double* %arrayidx5, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 0
  %11 = load double, double* %arrayidx6, align 8
  %add = fadd double %11, %9
  store double %add, double* %arrayidx6, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 3
  %13 = load double, double* %arrayidx7, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx8, align 8
  %add9 = fadd double %15, %13
  store double %add9, double* %arrayidx8, align 8
  %16 = load double, double* %x0r, align 8
  %17 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %17, i64 2
  store double %16, double* %arrayidx10, align 8
  %18 = load double, double* %x0i, align 8
  %19 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %19, i64 3
  store double %18, double* %arrayidx11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftb1st(i32 %n, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %mh = alloca i32, align 4
  %wn4r = alloca double, align 8
  %csc1 = alloca double, align 8
  %csc3 = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  %wd1r = alloca double, align 8
  %wd1i = alloca double, align 8
  %wd3r = alloca double, align 8
  %wd3i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %y0r = alloca double, align 8
  %y0i = alloca double, align 8
  %y1r = alloca double, align 8
  %y1i = alloca double, align 8
  %y2r = alloca double, align 8
  %y2i = alloca double, align 8
  %y3r = alloca double, align 8
  %y3i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 3
  store i32 %shr, i32* %mh, align 4
  %1 = load i32, i32* %mh, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %m, align 4
  %2 = load i32, i32* %m, align 4
  store i32 %2, i32* %j1, align 4
  %3 = load i32, i32* %j1, align 4
  %4 = load i32, i32* %m, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %j2, align 4
  %5 = load i32, i32* %j2, align 4
  %6 = load i32, i32* %m, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %j3, align 4
  %7 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 0
  %8 = load double, double* %arrayidx, align 8
  %9 = load i32, i32* %j2, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx2, align 8
  %add3 = fadd double %8, %11
  store double %add3, double* %x0r, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx4, align 8
  %sub = fsub double -0.000000e+00, %13
  %14 = load i32, i32* %j2, align 4
  %add5 = add nsw i32 %14, 1
  %idxprom6 = sext i32 %add5 to i64
  %15 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %15, i64 %idxprom6
  %16 = load double, double* %arrayidx7, align 8
  %sub8 = fsub double %sub, %16
  store double %sub8, double* %x0i, align 8
  %17 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx9, align 8
  %19 = load i32, i32* %j2, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %20, i64 %idxprom10
  %21 = load double, double* %arrayidx11, align 8
  %sub12 = fsub double %18, %21
  store double %sub12, double* %x1r, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %22, i64 1
  %23 = load double, double* %arrayidx13, align 8
  %sub14 = fsub double -0.000000e+00, %23
  %24 = load i32, i32* %j2, align 4
  %add15 = add nsw i32 %24, 1
  %idxprom16 = sext i32 %add15 to i64
  %25 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %25, i64 %idxprom16
  %26 = load double, double* %arrayidx17, align 8
  %add18 = fadd double %sub14, %26
  store double %add18, double* %x1i, align 8
  %27 = load i32, i32* %j1, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %28, i64 %idxprom19
  %29 = load double, double* %arrayidx20, align 8
  %30 = load i32, i32* %j3, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %31, i64 %idxprom21
  %32 = load double, double* %arrayidx22, align 8
  %add23 = fadd double %29, %32
  store double %add23, double* %x2r, align 8
  %33 = load i32, i32* %j1, align 4
  %add24 = add nsw i32 %33, 1
  %idxprom25 = sext i32 %add24 to i64
  %34 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %34, i64 %idxprom25
  %35 = load double, double* %arrayidx26, align 8
  %36 = load i32, i32* %j3, align 4
  %add27 = add nsw i32 %36, 1
  %idxprom28 = sext i32 %add27 to i64
  %37 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %37, i64 %idxprom28
  %38 = load double, double* %arrayidx29, align 8
  %add30 = fadd double %35, %38
  store double %add30, double* %x2i, align 8
  %39 = load i32, i32* %j1, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %40, i64 %idxprom31
  %41 = load double, double* %arrayidx32, align 8
  %42 = load i32, i32* %j3, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %43, i64 %idxprom33
  %44 = load double, double* %arrayidx34, align 8
  %sub35 = fsub double %41, %44
  store double %sub35, double* %x3r, align 8
  %45 = load i32, i32* %j1, align 4
  %add36 = add nsw i32 %45, 1
  %idxprom37 = sext i32 %add36 to i64
  %46 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %46, i64 %idxprom37
  %47 = load double, double* %arrayidx38, align 8
  %48 = load i32, i32* %j3, align 4
  %add39 = add nsw i32 %48, 1
  %idxprom40 = sext i32 %add39 to i64
  %49 = load double*, double** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %49, i64 %idxprom40
  %50 = load double, double* %arrayidx41, align 8
  %sub42 = fsub double %47, %50
  store double %sub42, double* %x3i, align 8
  %51 = load double, double* %x0r, align 8
  %52 = load double, double* %x2r, align 8
  %add43 = fadd double %51, %52
  %53 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %53, i64 0
  store double %add43, double* %arrayidx44, align 8
  %54 = load double, double* %x0i, align 8
  %55 = load double, double* %x2i, align 8
  %sub45 = fsub double %54, %55
  %56 = load double*, double** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %56, i64 1
  store double %sub45, double* %arrayidx46, align 8
  %57 = load double, double* %x0r, align 8
  %58 = load double, double* %x2r, align 8
  %sub47 = fsub double %57, %58
  %59 = load i32, i32* %j1, align 4
  %idxprom48 = sext i32 %59 to i64
  %60 = load double*, double** %a.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %60, i64 %idxprom48
  store double %sub47, double* %arrayidx49, align 8
  %61 = load double, double* %x0i, align 8
  %62 = load double, double* %x2i, align 8
  %add50 = fadd double %61, %62
  %63 = load i32, i32* %j1, align 4
  %add51 = add nsw i32 %63, 1
  %idxprom52 = sext i32 %add51 to i64
  %64 = load double*, double** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %64, i64 %idxprom52
  store double %add50, double* %arrayidx53, align 8
  %65 = load double, double* %x1r, align 8
  %66 = load double, double* %x3i, align 8
  %add54 = fadd double %65, %66
  %67 = load i32, i32* %j2, align 4
  %idxprom55 = sext i32 %67 to i64
  %68 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %68, i64 %idxprom55
  store double %add54, double* %arrayidx56, align 8
  %69 = load double, double* %x1i, align 8
  %70 = load double, double* %x3r, align 8
  %add57 = fadd double %69, %70
  %71 = load i32, i32* %j2, align 4
  %add58 = add nsw i32 %71, 1
  %idxprom59 = sext i32 %add58 to i64
  %72 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %72, i64 %idxprom59
  store double %add57, double* %arrayidx60, align 8
  %73 = load double, double* %x1r, align 8
  %74 = load double, double* %x3i, align 8
  %sub61 = fsub double %73, %74
  %75 = load i32, i32* %j3, align 4
  %idxprom62 = sext i32 %75 to i64
  %76 = load double*, double** %a.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %76, i64 %idxprom62
  store double %sub61, double* %arrayidx63, align 8
  %77 = load double, double* %x1i, align 8
  %78 = load double, double* %x3r, align 8
  %sub64 = fsub double %77, %78
  %79 = load i32, i32* %j3, align 4
  %add65 = add nsw i32 %79, 1
  %idxprom66 = sext i32 %add65 to i64
  %80 = load double*, double** %a.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %80, i64 %idxprom66
  store double %sub64, double* %arrayidx67, align 8
  %81 = load double*, double** %w.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %81, i64 1
  %82 = load double, double* %arrayidx68, align 8
  store double %82, double* %wn4r, align 8
  %83 = load double*, double** %w.addr, align 8
  %arrayidx69 = getelementptr inbounds double, double* %83, i64 2
  %84 = load double, double* %arrayidx69, align 8
  store double %84, double* %csc1, align 8
  %85 = load double*, double** %w.addr, align 8
  %arrayidx70 = getelementptr inbounds double, double* %85, i64 3
  %86 = load double, double* %arrayidx70, align 8
  store double %86, double* %csc3, align 8
  store double 1.000000e+00, double* %wd1r, align 8
  store double 0.000000e+00, double* %wd1i, align 8
  store double 1.000000e+00, double* %wd3r, align 8
  store double 0.000000e+00, double* %wd3i, align 8
  store i32 0, i32* %k, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* %mh, align 4
  %sub71 = sub nsw i32 %88, 2
  %cmp = icmp slt i32 %87, %sub71
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i32, i32* %k, align 4
  %add72 = add nsw i32 %89, 4
  store i32 %add72, i32* %k, align 4
  %90 = load double, double* %csc1, align 8
  %91 = load double, double* %wd1r, align 8
  %92 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %92 to i64
  %93 = load double*, double** %w.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %93, i64 %idxprom73
  %94 = load double, double* %arrayidx74, align 8
  %add75 = fadd double %91, %94
  %mul76 = fmul double %90, %add75
  store double %mul76, double* %wk1r, align 8
  %95 = load double, double* %csc1, align 8
  %96 = load double, double* %wd1i, align 8
  %97 = load i32, i32* %k, align 4
  %add77 = add nsw i32 %97, 1
  %idxprom78 = sext i32 %add77 to i64
  %98 = load double*, double** %w.addr, align 8
  %arrayidx79 = getelementptr inbounds double, double* %98, i64 %idxprom78
  %99 = load double, double* %arrayidx79, align 8
  %add80 = fadd double %96, %99
  %mul81 = fmul double %95, %add80
  store double %mul81, double* %wk1i, align 8
  %100 = load double, double* %csc3, align 8
  %101 = load double, double* %wd3r, align 8
  %102 = load i32, i32* %k, align 4
  %add82 = add nsw i32 %102, 2
  %idxprom83 = sext i32 %add82 to i64
  %103 = load double*, double** %w.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %103, i64 %idxprom83
  %104 = load double, double* %arrayidx84, align 8
  %add85 = fadd double %101, %104
  %mul86 = fmul double %100, %add85
  store double %mul86, double* %wk3r, align 8
  %105 = load double, double* %csc3, align 8
  %106 = load double, double* %wd3i, align 8
  %107 = load i32, i32* %k, align 4
  %add87 = add nsw i32 %107, 3
  %idxprom88 = sext i32 %add87 to i64
  %108 = load double*, double** %w.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %108, i64 %idxprom88
  %109 = load double, double* %arrayidx89, align 8
  %sub90 = fsub double %106, %109
  %mul91 = fmul double %105, %sub90
  store double %mul91, double* %wk3i, align 8
  %110 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %110 to i64
  %111 = load double*, double** %w.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %111, i64 %idxprom92
  %112 = load double, double* %arrayidx93, align 8
  store double %112, double* %wd1r, align 8
  %113 = load i32, i32* %k, align 4
  %add94 = add nsw i32 %113, 1
  %idxprom95 = sext i32 %add94 to i64
  %114 = load double*, double** %w.addr, align 8
  %arrayidx96 = getelementptr inbounds double, double* %114, i64 %idxprom95
  %115 = load double, double* %arrayidx96, align 8
  store double %115, double* %wd1i, align 8
  %116 = load i32, i32* %k, align 4
  %add97 = add nsw i32 %116, 2
  %idxprom98 = sext i32 %add97 to i64
  %117 = load double*, double** %w.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %117, i64 %idxprom98
  %118 = load double, double* %arrayidx99, align 8
  store double %118, double* %wd3r, align 8
  %119 = load i32, i32* %k, align 4
  %add100 = add nsw i32 %119, 3
  %idxprom101 = sext i32 %add100 to i64
  %120 = load double*, double** %w.addr, align 8
  %arrayidx102 = getelementptr inbounds double, double* %120, i64 %idxprom101
  %121 = load double, double* %arrayidx102, align 8
  %sub103 = fsub double -0.000000e+00, %121
  store double %sub103, double* %wd3i, align 8
  %122 = load i32, i32* %j, align 4
  %123 = load i32, i32* %m, align 4
  %add104 = add nsw i32 %122, %123
  store i32 %add104, i32* %j1, align 4
  %124 = load i32, i32* %j1, align 4
  %125 = load i32, i32* %m, align 4
  %add105 = add nsw i32 %124, %125
  store i32 %add105, i32* %j2, align 4
  %126 = load i32, i32* %j2, align 4
  %127 = load i32, i32* %m, align 4
  %add106 = add nsw i32 %126, %127
  store i32 %add106, i32* %j3, align 4
  %128 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %128 to i64
  %129 = load double*, double** %a.addr, align 8
  %arrayidx108 = getelementptr inbounds double, double* %129, i64 %idxprom107
  %130 = load double, double* %arrayidx108, align 8
  %131 = load i32, i32* %j2, align 4
  %idxprom109 = sext i32 %131 to i64
  %132 = load double*, double** %a.addr, align 8
  %arrayidx110 = getelementptr inbounds double, double* %132, i64 %idxprom109
  %133 = load double, double* %arrayidx110, align 8
  %add111 = fadd double %130, %133
  store double %add111, double* %x0r, align 8
  %134 = load i32, i32* %j, align 4
  %add112 = add nsw i32 %134, 1
  %idxprom113 = sext i32 %add112 to i64
  %135 = load double*, double** %a.addr, align 8
  %arrayidx114 = getelementptr inbounds double, double* %135, i64 %idxprom113
  %136 = load double, double* %arrayidx114, align 8
  %sub115 = fsub double -0.000000e+00, %136
  %137 = load i32, i32* %j2, align 4
  %add116 = add nsw i32 %137, 1
  %idxprom117 = sext i32 %add116 to i64
  %138 = load double*, double** %a.addr, align 8
  %arrayidx118 = getelementptr inbounds double, double* %138, i64 %idxprom117
  %139 = load double, double* %arrayidx118, align 8
  %sub119 = fsub double %sub115, %139
  store double %sub119, double* %x0i, align 8
  %140 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %140 to i64
  %141 = load double*, double** %a.addr, align 8
  %arrayidx121 = getelementptr inbounds double, double* %141, i64 %idxprom120
  %142 = load double, double* %arrayidx121, align 8
  %143 = load i32, i32* %j2, align 4
  %idxprom122 = sext i32 %143 to i64
  %144 = load double*, double** %a.addr, align 8
  %arrayidx123 = getelementptr inbounds double, double* %144, i64 %idxprom122
  %145 = load double, double* %arrayidx123, align 8
  %sub124 = fsub double %142, %145
  store double %sub124, double* %x1r, align 8
  %146 = load i32, i32* %j, align 4
  %add125 = add nsw i32 %146, 1
  %idxprom126 = sext i32 %add125 to i64
  %147 = load double*, double** %a.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %147, i64 %idxprom126
  %148 = load double, double* %arrayidx127, align 8
  %sub128 = fsub double -0.000000e+00, %148
  %149 = load i32, i32* %j2, align 4
  %add129 = add nsw i32 %149, 1
  %idxprom130 = sext i32 %add129 to i64
  %150 = load double*, double** %a.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %150, i64 %idxprom130
  %151 = load double, double* %arrayidx131, align 8
  %add132 = fadd double %sub128, %151
  store double %add132, double* %x1i, align 8
  %152 = load i32, i32* %j, align 4
  %add133 = add nsw i32 %152, 2
  %idxprom134 = sext i32 %add133 to i64
  %153 = load double*, double** %a.addr, align 8
  %arrayidx135 = getelementptr inbounds double, double* %153, i64 %idxprom134
  %154 = load double, double* %arrayidx135, align 8
  %155 = load i32, i32* %j2, align 4
  %add136 = add nsw i32 %155, 2
  %idxprom137 = sext i32 %add136 to i64
  %156 = load double*, double** %a.addr, align 8
  %arrayidx138 = getelementptr inbounds double, double* %156, i64 %idxprom137
  %157 = load double, double* %arrayidx138, align 8
  %add139 = fadd double %154, %157
  store double %add139, double* %y0r, align 8
  %158 = load i32, i32* %j, align 4
  %add140 = add nsw i32 %158, 3
  %idxprom141 = sext i32 %add140 to i64
  %159 = load double*, double** %a.addr, align 8
  %arrayidx142 = getelementptr inbounds double, double* %159, i64 %idxprom141
  %160 = load double, double* %arrayidx142, align 8
  %sub143 = fsub double -0.000000e+00, %160
  %161 = load i32, i32* %j2, align 4
  %add144 = add nsw i32 %161, 3
  %idxprom145 = sext i32 %add144 to i64
  %162 = load double*, double** %a.addr, align 8
  %arrayidx146 = getelementptr inbounds double, double* %162, i64 %idxprom145
  %163 = load double, double* %arrayidx146, align 8
  %sub147 = fsub double %sub143, %163
  store double %sub147, double* %y0i, align 8
  %164 = load i32, i32* %j, align 4
  %add148 = add nsw i32 %164, 2
  %idxprom149 = sext i32 %add148 to i64
  %165 = load double*, double** %a.addr, align 8
  %arrayidx150 = getelementptr inbounds double, double* %165, i64 %idxprom149
  %166 = load double, double* %arrayidx150, align 8
  %167 = load i32, i32* %j2, align 4
  %add151 = add nsw i32 %167, 2
  %idxprom152 = sext i32 %add151 to i64
  %168 = load double*, double** %a.addr, align 8
  %arrayidx153 = getelementptr inbounds double, double* %168, i64 %idxprom152
  %169 = load double, double* %arrayidx153, align 8
  %sub154 = fsub double %166, %169
  store double %sub154, double* %y1r, align 8
  %170 = load i32, i32* %j, align 4
  %add155 = add nsw i32 %170, 3
  %idxprom156 = sext i32 %add155 to i64
  %171 = load double*, double** %a.addr, align 8
  %arrayidx157 = getelementptr inbounds double, double* %171, i64 %idxprom156
  %172 = load double, double* %arrayidx157, align 8
  %sub158 = fsub double -0.000000e+00, %172
  %173 = load i32, i32* %j2, align 4
  %add159 = add nsw i32 %173, 3
  %idxprom160 = sext i32 %add159 to i64
  %174 = load double*, double** %a.addr, align 8
  %arrayidx161 = getelementptr inbounds double, double* %174, i64 %idxprom160
  %175 = load double, double* %arrayidx161, align 8
  %add162 = fadd double %sub158, %175
  store double %add162, double* %y1i, align 8
  %176 = load i32, i32* %j1, align 4
  %idxprom163 = sext i32 %176 to i64
  %177 = load double*, double** %a.addr, align 8
  %arrayidx164 = getelementptr inbounds double, double* %177, i64 %idxprom163
  %178 = load double, double* %arrayidx164, align 8
  %179 = load i32, i32* %j3, align 4
  %idxprom165 = sext i32 %179 to i64
  %180 = load double*, double** %a.addr, align 8
  %arrayidx166 = getelementptr inbounds double, double* %180, i64 %idxprom165
  %181 = load double, double* %arrayidx166, align 8
  %add167 = fadd double %178, %181
  store double %add167, double* %x2r, align 8
  %182 = load i32, i32* %j1, align 4
  %add168 = add nsw i32 %182, 1
  %idxprom169 = sext i32 %add168 to i64
  %183 = load double*, double** %a.addr, align 8
  %arrayidx170 = getelementptr inbounds double, double* %183, i64 %idxprom169
  %184 = load double, double* %arrayidx170, align 8
  %185 = load i32, i32* %j3, align 4
  %add171 = add nsw i32 %185, 1
  %idxprom172 = sext i32 %add171 to i64
  %186 = load double*, double** %a.addr, align 8
  %arrayidx173 = getelementptr inbounds double, double* %186, i64 %idxprom172
  %187 = load double, double* %arrayidx173, align 8
  %add174 = fadd double %184, %187
  store double %add174, double* %x2i, align 8
  %188 = load i32, i32* %j1, align 4
  %idxprom175 = sext i32 %188 to i64
  %189 = load double*, double** %a.addr, align 8
  %arrayidx176 = getelementptr inbounds double, double* %189, i64 %idxprom175
  %190 = load double, double* %arrayidx176, align 8
  %191 = load i32, i32* %j3, align 4
  %idxprom177 = sext i32 %191 to i64
  %192 = load double*, double** %a.addr, align 8
  %arrayidx178 = getelementptr inbounds double, double* %192, i64 %idxprom177
  %193 = load double, double* %arrayidx178, align 8
  %sub179 = fsub double %190, %193
  store double %sub179, double* %x3r, align 8
  %194 = load i32, i32* %j1, align 4
  %add180 = add nsw i32 %194, 1
  %idxprom181 = sext i32 %add180 to i64
  %195 = load double*, double** %a.addr, align 8
  %arrayidx182 = getelementptr inbounds double, double* %195, i64 %idxprom181
  %196 = load double, double* %arrayidx182, align 8
  %197 = load i32, i32* %j3, align 4
  %add183 = add nsw i32 %197, 1
  %idxprom184 = sext i32 %add183 to i64
  %198 = load double*, double** %a.addr, align 8
  %arrayidx185 = getelementptr inbounds double, double* %198, i64 %idxprom184
  %199 = load double, double* %arrayidx185, align 8
  %sub186 = fsub double %196, %199
  store double %sub186, double* %x3i, align 8
  %200 = load i32, i32* %j1, align 4
  %add187 = add nsw i32 %200, 2
  %idxprom188 = sext i32 %add187 to i64
  %201 = load double*, double** %a.addr, align 8
  %arrayidx189 = getelementptr inbounds double, double* %201, i64 %idxprom188
  %202 = load double, double* %arrayidx189, align 8
  %203 = load i32, i32* %j3, align 4
  %add190 = add nsw i32 %203, 2
  %idxprom191 = sext i32 %add190 to i64
  %204 = load double*, double** %a.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %204, i64 %idxprom191
  %205 = load double, double* %arrayidx192, align 8
  %add193 = fadd double %202, %205
  store double %add193, double* %y2r, align 8
  %206 = load i32, i32* %j1, align 4
  %add194 = add nsw i32 %206, 3
  %idxprom195 = sext i32 %add194 to i64
  %207 = load double*, double** %a.addr, align 8
  %arrayidx196 = getelementptr inbounds double, double* %207, i64 %idxprom195
  %208 = load double, double* %arrayidx196, align 8
  %209 = load i32, i32* %j3, align 4
  %add197 = add nsw i32 %209, 3
  %idxprom198 = sext i32 %add197 to i64
  %210 = load double*, double** %a.addr, align 8
  %arrayidx199 = getelementptr inbounds double, double* %210, i64 %idxprom198
  %211 = load double, double* %arrayidx199, align 8
  %add200 = fadd double %208, %211
  store double %add200, double* %y2i, align 8
  %212 = load i32, i32* %j1, align 4
  %add201 = add nsw i32 %212, 2
  %idxprom202 = sext i32 %add201 to i64
  %213 = load double*, double** %a.addr, align 8
  %arrayidx203 = getelementptr inbounds double, double* %213, i64 %idxprom202
  %214 = load double, double* %arrayidx203, align 8
  %215 = load i32, i32* %j3, align 4
  %add204 = add nsw i32 %215, 2
  %idxprom205 = sext i32 %add204 to i64
  %216 = load double*, double** %a.addr, align 8
  %arrayidx206 = getelementptr inbounds double, double* %216, i64 %idxprom205
  %217 = load double, double* %arrayidx206, align 8
  %sub207 = fsub double %214, %217
  store double %sub207, double* %y3r, align 8
  %218 = load i32, i32* %j1, align 4
  %add208 = add nsw i32 %218, 3
  %idxprom209 = sext i32 %add208 to i64
  %219 = load double*, double** %a.addr, align 8
  %arrayidx210 = getelementptr inbounds double, double* %219, i64 %idxprom209
  %220 = load double, double* %arrayidx210, align 8
  %221 = load i32, i32* %j3, align 4
  %add211 = add nsw i32 %221, 3
  %idxprom212 = sext i32 %add211 to i64
  %222 = load double*, double** %a.addr, align 8
  %arrayidx213 = getelementptr inbounds double, double* %222, i64 %idxprom212
  %223 = load double, double* %arrayidx213, align 8
  %sub214 = fsub double %220, %223
  store double %sub214, double* %y3i, align 8
  %224 = load double, double* %x0r, align 8
  %225 = load double, double* %x2r, align 8
  %add215 = fadd double %224, %225
  %226 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %226 to i64
  %227 = load double*, double** %a.addr, align 8
  %arrayidx217 = getelementptr inbounds double, double* %227, i64 %idxprom216
  store double %add215, double* %arrayidx217, align 8
  %228 = load double, double* %x0i, align 8
  %229 = load double, double* %x2i, align 8
  %sub218 = fsub double %228, %229
  %230 = load i32, i32* %j, align 4
  %add219 = add nsw i32 %230, 1
  %idxprom220 = sext i32 %add219 to i64
  %231 = load double*, double** %a.addr, align 8
  %arrayidx221 = getelementptr inbounds double, double* %231, i64 %idxprom220
  store double %sub218, double* %arrayidx221, align 8
  %232 = load double, double* %y0r, align 8
  %233 = load double, double* %y2r, align 8
  %add222 = fadd double %232, %233
  %234 = load i32, i32* %j, align 4
  %add223 = add nsw i32 %234, 2
  %idxprom224 = sext i32 %add223 to i64
  %235 = load double*, double** %a.addr, align 8
  %arrayidx225 = getelementptr inbounds double, double* %235, i64 %idxprom224
  store double %add222, double* %arrayidx225, align 8
  %236 = load double, double* %y0i, align 8
  %237 = load double, double* %y2i, align 8
  %sub226 = fsub double %236, %237
  %238 = load i32, i32* %j, align 4
  %add227 = add nsw i32 %238, 3
  %idxprom228 = sext i32 %add227 to i64
  %239 = load double*, double** %a.addr, align 8
  %arrayidx229 = getelementptr inbounds double, double* %239, i64 %idxprom228
  store double %sub226, double* %arrayidx229, align 8
  %240 = load double, double* %x0r, align 8
  %241 = load double, double* %x2r, align 8
  %sub230 = fsub double %240, %241
  %242 = load i32, i32* %j1, align 4
  %idxprom231 = sext i32 %242 to i64
  %243 = load double*, double** %a.addr, align 8
  %arrayidx232 = getelementptr inbounds double, double* %243, i64 %idxprom231
  store double %sub230, double* %arrayidx232, align 8
  %244 = load double, double* %x0i, align 8
  %245 = load double, double* %x2i, align 8
  %add233 = fadd double %244, %245
  %246 = load i32, i32* %j1, align 4
  %add234 = add nsw i32 %246, 1
  %idxprom235 = sext i32 %add234 to i64
  %247 = load double*, double** %a.addr, align 8
  %arrayidx236 = getelementptr inbounds double, double* %247, i64 %idxprom235
  store double %add233, double* %arrayidx236, align 8
  %248 = load double, double* %y0r, align 8
  %249 = load double, double* %y2r, align 8
  %sub237 = fsub double %248, %249
  %250 = load i32, i32* %j1, align 4
  %add238 = add nsw i32 %250, 2
  %idxprom239 = sext i32 %add238 to i64
  %251 = load double*, double** %a.addr, align 8
  %arrayidx240 = getelementptr inbounds double, double* %251, i64 %idxprom239
  store double %sub237, double* %arrayidx240, align 8
  %252 = load double, double* %y0i, align 8
  %253 = load double, double* %y2i, align 8
  %add241 = fadd double %252, %253
  %254 = load i32, i32* %j1, align 4
  %add242 = add nsw i32 %254, 3
  %idxprom243 = sext i32 %add242 to i64
  %255 = load double*, double** %a.addr, align 8
  %arrayidx244 = getelementptr inbounds double, double* %255, i64 %idxprom243
  store double %add241, double* %arrayidx244, align 8
  %256 = load double, double* %x1r, align 8
  %257 = load double, double* %x3i, align 8
  %add245 = fadd double %256, %257
  store double %add245, double* %x0r, align 8
  %258 = load double, double* %x1i, align 8
  %259 = load double, double* %x3r, align 8
  %add246 = fadd double %258, %259
  store double %add246, double* %x0i, align 8
  %260 = load double, double* %wk1r, align 8
  %261 = load double, double* %x0r, align 8
  %mul247 = fmul double %260, %261
  %262 = load double, double* %wk1i, align 8
  %263 = load double, double* %x0i, align 8
  %mul248 = fmul double %262, %263
  %sub249 = fsub double %mul247, %mul248
  %264 = load i32, i32* %j2, align 4
  %idxprom250 = sext i32 %264 to i64
  %265 = load double*, double** %a.addr, align 8
  %arrayidx251 = getelementptr inbounds double, double* %265, i64 %idxprom250
  store double %sub249, double* %arrayidx251, align 8
  %266 = load double, double* %wk1r, align 8
  %267 = load double, double* %x0i, align 8
  %mul252 = fmul double %266, %267
  %268 = load double, double* %wk1i, align 8
  %269 = load double, double* %x0r, align 8
  %mul253 = fmul double %268, %269
  %add254 = fadd double %mul252, %mul253
  %270 = load i32, i32* %j2, align 4
  %add255 = add nsw i32 %270, 1
  %idxprom256 = sext i32 %add255 to i64
  %271 = load double*, double** %a.addr, align 8
  %arrayidx257 = getelementptr inbounds double, double* %271, i64 %idxprom256
  store double %add254, double* %arrayidx257, align 8
  %272 = load double, double* %y1r, align 8
  %273 = load double, double* %y3i, align 8
  %add258 = fadd double %272, %273
  store double %add258, double* %x0r, align 8
  %274 = load double, double* %y1i, align 8
  %275 = load double, double* %y3r, align 8
  %add259 = fadd double %274, %275
  store double %add259, double* %x0i, align 8
  %276 = load double, double* %wd1r, align 8
  %277 = load double, double* %x0r, align 8
  %mul260 = fmul double %276, %277
  %278 = load double, double* %wd1i, align 8
  %279 = load double, double* %x0i, align 8
  %mul261 = fmul double %278, %279
  %sub262 = fsub double %mul260, %mul261
  %280 = load i32, i32* %j2, align 4
  %add263 = add nsw i32 %280, 2
  %idxprom264 = sext i32 %add263 to i64
  %281 = load double*, double** %a.addr, align 8
  %arrayidx265 = getelementptr inbounds double, double* %281, i64 %idxprom264
  store double %sub262, double* %arrayidx265, align 8
  %282 = load double, double* %wd1r, align 8
  %283 = load double, double* %x0i, align 8
  %mul266 = fmul double %282, %283
  %284 = load double, double* %wd1i, align 8
  %285 = load double, double* %x0r, align 8
  %mul267 = fmul double %284, %285
  %add268 = fadd double %mul266, %mul267
  %286 = load i32, i32* %j2, align 4
  %add269 = add nsw i32 %286, 3
  %idxprom270 = sext i32 %add269 to i64
  %287 = load double*, double** %a.addr, align 8
  %arrayidx271 = getelementptr inbounds double, double* %287, i64 %idxprom270
  store double %add268, double* %arrayidx271, align 8
  %288 = load double, double* %x1r, align 8
  %289 = load double, double* %x3i, align 8
  %sub272 = fsub double %288, %289
  store double %sub272, double* %x0r, align 8
  %290 = load double, double* %x1i, align 8
  %291 = load double, double* %x3r, align 8
  %sub273 = fsub double %290, %291
  store double %sub273, double* %x0i, align 8
  %292 = load double, double* %wk3r, align 8
  %293 = load double, double* %x0r, align 8
  %mul274 = fmul double %292, %293
  %294 = load double, double* %wk3i, align 8
  %295 = load double, double* %x0i, align 8
  %mul275 = fmul double %294, %295
  %add276 = fadd double %mul274, %mul275
  %296 = load i32, i32* %j3, align 4
  %idxprom277 = sext i32 %296 to i64
  %297 = load double*, double** %a.addr, align 8
  %arrayidx278 = getelementptr inbounds double, double* %297, i64 %idxprom277
  store double %add276, double* %arrayidx278, align 8
  %298 = load double, double* %wk3r, align 8
  %299 = load double, double* %x0i, align 8
  %mul279 = fmul double %298, %299
  %300 = load double, double* %wk3i, align 8
  %301 = load double, double* %x0r, align 8
  %mul280 = fmul double %300, %301
  %sub281 = fsub double %mul279, %mul280
  %302 = load i32, i32* %j3, align 4
  %add282 = add nsw i32 %302, 1
  %idxprom283 = sext i32 %add282 to i64
  %303 = load double*, double** %a.addr, align 8
  %arrayidx284 = getelementptr inbounds double, double* %303, i64 %idxprom283
  store double %sub281, double* %arrayidx284, align 8
  %304 = load double, double* %y1r, align 8
  %305 = load double, double* %y3i, align 8
  %sub285 = fsub double %304, %305
  store double %sub285, double* %x0r, align 8
  %306 = load double, double* %y1i, align 8
  %307 = load double, double* %y3r, align 8
  %sub286 = fsub double %306, %307
  store double %sub286, double* %x0i, align 8
  %308 = load double, double* %wd3r, align 8
  %309 = load double, double* %x0r, align 8
  %mul287 = fmul double %308, %309
  %310 = load double, double* %wd3i, align 8
  %311 = load double, double* %x0i, align 8
  %mul288 = fmul double %310, %311
  %add289 = fadd double %mul287, %mul288
  %312 = load i32, i32* %j3, align 4
  %add290 = add nsw i32 %312, 2
  %idxprom291 = sext i32 %add290 to i64
  %313 = load double*, double** %a.addr, align 8
  %arrayidx292 = getelementptr inbounds double, double* %313, i64 %idxprom291
  store double %add289, double* %arrayidx292, align 8
  %314 = load double, double* %wd3r, align 8
  %315 = load double, double* %x0i, align 8
  %mul293 = fmul double %314, %315
  %316 = load double, double* %wd3i, align 8
  %317 = load double, double* %x0r, align 8
  %mul294 = fmul double %316, %317
  %sub295 = fsub double %mul293, %mul294
  %318 = load i32, i32* %j3, align 4
  %add296 = add nsw i32 %318, 3
  %idxprom297 = sext i32 %add296 to i64
  %319 = load double*, double** %a.addr, align 8
  %arrayidx298 = getelementptr inbounds double, double* %319, i64 %idxprom297
  store double %sub295, double* %arrayidx298, align 8
  %320 = load i32, i32* %m, align 4
  %321 = load i32, i32* %j, align 4
  %sub299 = sub nsw i32 %320, %321
  store i32 %sub299, i32* %j0, align 4
  %322 = load i32, i32* %j0, align 4
  %323 = load i32, i32* %m, align 4
  %add300 = add nsw i32 %322, %323
  store i32 %add300, i32* %j1, align 4
  %324 = load i32, i32* %j1, align 4
  %325 = load i32, i32* %m, align 4
  %add301 = add nsw i32 %324, %325
  store i32 %add301, i32* %j2, align 4
  %326 = load i32, i32* %j2, align 4
  %327 = load i32, i32* %m, align 4
  %add302 = add nsw i32 %326, %327
  store i32 %add302, i32* %j3, align 4
  %328 = load i32, i32* %j0, align 4
  %idxprom303 = sext i32 %328 to i64
  %329 = load double*, double** %a.addr, align 8
  %arrayidx304 = getelementptr inbounds double, double* %329, i64 %idxprom303
  %330 = load double, double* %arrayidx304, align 8
  %331 = load i32, i32* %j2, align 4
  %idxprom305 = sext i32 %331 to i64
  %332 = load double*, double** %a.addr, align 8
  %arrayidx306 = getelementptr inbounds double, double* %332, i64 %idxprom305
  %333 = load double, double* %arrayidx306, align 8
  %add307 = fadd double %330, %333
  store double %add307, double* %x0r, align 8
  %334 = load i32, i32* %j0, align 4
  %add308 = add nsw i32 %334, 1
  %idxprom309 = sext i32 %add308 to i64
  %335 = load double*, double** %a.addr, align 8
  %arrayidx310 = getelementptr inbounds double, double* %335, i64 %idxprom309
  %336 = load double, double* %arrayidx310, align 8
  %sub311 = fsub double -0.000000e+00, %336
  %337 = load i32, i32* %j2, align 4
  %add312 = add nsw i32 %337, 1
  %idxprom313 = sext i32 %add312 to i64
  %338 = load double*, double** %a.addr, align 8
  %arrayidx314 = getelementptr inbounds double, double* %338, i64 %idxprom313
  %339 = load double, double* %arrayidx314, align 8
  %sub315 = fsub double %sub311, %339
  store double %sub315, double* %x0i, align 8
  %340 = load i32, i32* %j0, align 4
  %idxprom316 = sext i32 %340 to i64
  %341 = load double*, double** %a.addr, align 8
  %arrayidx317 = getelementptr inbounds double, double* %341, i64 %idxprom316
  %342 = load double, double* %arrayidx317, align 8
  %343 = load i32, i32* %j2, align 4
  %idxprom318 = sext i32 %343 to i64
  %344 = load double*, double** %a.addr, align 8
  %arrayidx319 = getelementptr inbounds double, double* %344, i64 %idxprom318
  %345 = load double, double* %arrayidx319, align 8
  %sub320 = fsub double %342, %345
  store double %sub320, double* %x1r, align 8
  %346 = load i32, i32* %j0, align 4
  %add321 = add nsw i32 %346, 1
  %idxprom322 = sext i32 %add321 to i64
  %347 = load double*, double** %a.addr, align 8
  %arrayidx323 = getelementptr inbounds double, double* %347, i64 %idxprom322
  %348 = load double, double* %arrayidx323, align 8
  %sub324 = fsub double -0.000000e+00, %348
  %349 = load i32, i32* %j2, align 4
  %add325 = add nsw i32 %349, 1
  %idxprom326 = sext i32 %add325 to i64
  %350 = load double*, double** %a.addr, align 8
  %arrayidx327 = getelementptr inbounds double, double* %350, i64 %idxprom326
  %351 = load double, double* %arrayidx327, align 8
  %add328 = fadd double %sub324, %351
  store double %add328, double* %x1i, align 8
  %352 = load i32, i32* %j0, align 4
  %sub329 = sub nsw i32 %352, 2
  %idxprom330 = sext i32 %sub329 to i64
  %353 = load double*, double** %a.addr, align 8
  %arrayidx331 = getelementptr inbounds double, double* %353, i64 %idxprom330
  %354 = load double, double* %arrayidx331, align 8
  %355 = load i32, i32* %j2, align 4
  %sub332 = sub nsw i32 %355, 2
  %idxprom333 = sext i32 %sub332 to i64
  %356 = load double*, double** %a.addr, align 8
  %arrayidx334 = getelementptr inbounds double, double* %356, i64 %idxprom333
  %357 = load double, double* %arrayidx334, align 8
  %add335 = fadd double %354, %357
  store double %add335, double* %y0r, align 8
  %358 = load i32, i32* %j0, align 4
  %sub336 = sub nsw i32 %358, 1
  %idxprom337 = sext i32 %sub336 to i64
  %359 = load double*, double** %a.addr, align 8
  %arrayidx338 = getelementptr inbounds double, double* %359, i64 %idxprom337
  %360 = load double, double* %arrayidx338, align 8
  %sub339 = fsub double -0.000000e+00, %360
  %361 = load i32, i32* %j2, align 4
  %sub340 = sub nsw i32 %361, 1
  %idxprom341 = sext i32 %sub340 to i64
  %362 = load double*, double** %a.addr, align 8
  %arrayidx342 = getelementptr inbounds double, double* %362, i64 %idxprom341
  %363 = load double, double* %arrayidx342, align 8
  %sub343 = fsub double %sub339, %363
  store double %sub343, double* %y0i, align 8
  %364 = load i32, i32* %j0, align 4
  %sub344 = sub nsw i32 %364, 2
  %idxprom345 = sext i32 %sub344 to i64
  %365 = load double*, double** %a.addr, align 8
  %arrayidx346 = getelementptr inbounds double, double* %365, i64 %idxprom345
  %366 = load double, double* %arrayidx346, align 8
  %367 = load i32, i32* %j2, align 4
  %sub347 = sub nsw i32 %367, 2
  %idxprom348 = sext i32 %sub347 to i64
  %368 = load double*, double** %a.addr, align 8
  %arrayidx349 = getelementptr inbounds double, double* %368, i64 %idxprom348
  %369 = load double, double* %arrayidx349, align 8
  %sub350 = fsub double %366, %369
  store double %sub350, double* %y1r, align 8
  %370 = load i32, i32* %j0, align 4
  %sub351 = sub nsw i32 %370, 1
  %idxprom352 = sext i32 %sub351 to i64
  %371 = load double*, double** %a.addr, align 8
  %arrayidx353 = getelementptr inbounds double, double* %371, i64 %idxprom352
  %372 = load double, double* %arrayidx353, align 8
  %sub354 = fsub double -0.000000e+00, %372
  %373 = load i32, i32* %j2, align 4
  %sub355 = sub nsw i32 %373, 1
  %idxprom356 = sext i32 %sub355 to i64
  %374 = load double*, double** %a.addr, align 8
  %arrayidx357 = getelementptr inbounds double, double* %374, i64 %idxprom356
  %375 = load double, double* %arrayidx357, align 8
  %add358 = fadd double %sub354, %375
  store double %add358, double* %y1i, align 8
  %376 = load i32, i32* %j1, align 4
  %idxprom359 = sext i32 %376 to i64
  %377 = load double*, double** %a.addr, align 8
  %arrayidx360 = getelementptr inbounds double, double* %377, i64 %idxprom359
  %378 = load double, double* %arrayidx360, align 8
  %379 = load i32, i32* %j3, align 4
  %idxprom361 = sext i32 %379 to i64
  %380 = load double*, double** %a.addr, align 8
  %arrayidx362 = getelementptr inbounds double, double* %380, i64 %idxprom361
  %381 = load double, double* %arrayidx362, align 8
  %add363 = fadd double %378, %381
  store double %add363, double* %x2r, align 8
  %382 = load i32, i32* %j1, align 4
  %add364 = add nsw i32 %382, 1
  %idxprom365 = sext i32 %add364 to i64
  %383 = load double*, double** %a.addr, align 8
  %arrayidx366 = getelementptr inbounds double, double* %383, i64 %idxprom365
  %384 = load double, double* %arrayidx366, align 8
  %385 = load i32, i32* %j3, align 4
  %add367 = add nsw i32 %385, 1
  %idxprom368 = sext i32 %add367 to i64
  %386 = load double*, double** %a.addr, align 8
  %arrayidx369 = getelementptr inbounds double, double* %386, i64 %idxprom368
  %387 = load double, double* %arrayidx369, align 8
  %add370 = fadd double %384, %387
  store double %add370, double* %x2i, align 8
  %388 = load i32, i32* %j1, align 4
  %idxprom371 = sext i32 %388 to i64
  %389 = load double*, double** %a.addr, align 8
  %arrayidx372 = getelementptr inbounds double, double* %389, i64 %idxprom371
  %390 = load double, double* %arrayidx372, align 8
  %391 = load i32, i32* %j3, align 4
  %idxprom373 = sext i32 %391 to i64
  %392 = load double*, double** %a.addr, align 8
  %arrayidx374 = getelementptr inbounds double, double* %392, i64 %idxprom373
  %393 = load double, double* %arrayidx374, align 8
  %sub375 = fsub double %390, %393
  store double %sub375, double* %x3r, align 8
  %394 = load i32, i32* %j1, align 4
  %add376 = add nsw i32 %394, 1
  %idxprom377 = sext i32 %add376 to i64
  %395 = load double*, double** %a.addr, align 8
  %arrayidx378 = getelementptr inbounds double, double* %395, i64 %idxprom377
  %396 = load double, double* %arrayidx378, align 8
  %397 = load i32, i32* %j3, align 4
  %add379 = add nsw i32 %397, 1
  %idxprom380 = sext i32 %add379 to i64
  %398 = load double*, double** %a.addr, align 8
  %arrayidx381 = getelementptr inbounds double, double* %398, i64 %idxprom380
  %399 = load double, double* %arrayidx381, align 8
  %sub382 = fsub double %396, %399
  store double %sub382, double* %x3i, align 8
  %400 = load i32, i32* %j1, align 4
  %sub383 = sub nsw i32 %400, 2
  %idxprom384 = sext i32 %sub383 to i64
  %401 = load double*, double** %a.addr, align 8
  %arrayidx385 = getelementptr inbounds double, double* %401, i64 %idxprom384
  %402 = load double, double* %arrayidx385, align 8
  %403 = load i32, i32* %j3, align 4
  %sub386 = sub nsw i32 %403, 2
  %idxprom387 = sext i32 %sub386 to i64
  %404 = load double*, double** %a.addr, align 8
  %arrayidx388 = getelementptr inbounds double, double* %404, i64 %idxprom387
  %405 = load double, double* %arrayidx388, align 8
  %add389 = fadd double %402, %405
  store double %add389, double* %y2r, align 8
  %406 = load i32, i32* %j1, align 4
  %sub390 = sub nsw i32 %406, 1
  %idxprom391 = sext i32 %sub390 to i64
  %407 = load double*, double** %a.addr, align 8
  %arrayidx392 = getelementptr inbounds double, double* %407, i64 %idxprom391
  %408 = load double, double* %arrayidx392, align 8
  %409 = load i32, i32* %j3, align 4
  %sub393 = sub nsw i32 %409, 1
  %idxprom394 = sext i32 %sub393 to i64
  %410 = load double*, double** %a.addr, align 8
  %arrayidx395 = getelementptr inbounds double, double* %410, i64 %idxprom394
  %411 = load double, double* %arrayidx395, align 8
  %add396 = fadd double %408, %411
  store double %add396, double* %y2i, align 8
  %412 = load i32, i32* %j1, align 4
  %sub397 = sub nsw i32 %412, 2
  %idxprom398 = sext i32 %sub397 to i64
  %413 = load double*, double** %a.addr, align 8
  %arrayidx399 = getelementptr inbounds double, double* %413, i64 %idxprom398
  %414 = load double, double* %arrayidx399, align 8
  %415 = load i32, i32* %j3, align 4
  %sub400 = sub nsw i32 %415, 2
  %idxprom401 = sext i32 %sub400 to i64
  %416 = load double*, double** %a.addr, align 8
  %arrayidx402 = getelementptr inbounds double, double* %416, i64 %idxprom401
  %417 = load double, double* %arrayidx402, align 8
  %sub403 = fsub double %414, %417
  store double %sub403, double* %y3r, align 8
  %418 = load i32, i32* %j1, align 4
  %sub404 = sub nsw i32 %418, 1
  %idxprom405 = sext i32 %sub404 to i64
  %419 = load double*, double** %a.addr, align 8
  %arrayidx406 = getelementptr inbounds double, double* %419, i64 %idxprom405
  %420 = load double, double* %arrayidx406, align 8
  %421 = load i32, i32* %j3, align 4
  %sub407 = sub nsw i32 %421, 1
  %idxprom408 = sext i32 %sub407 to i64
  %422 = load double*, double** %a.addr, align 8
  %arrayidx409 = getelementptr inbounds double, double* %422, i64 %idxprom408
  %423 = load double, double* %arrayidx409, align 8
  %sub410 = fsub double %420, %423
  store double %sub410, double* %y3i, align 8
  %424 = load double, double* %x0r, align 8
  %425 = load double, double* %x2r, align 8
  %add411 = fadd double %424, %425
  %426 = load i32, i32* %j0, align 4
  %idxprom412 = sext i32 %426 to i64
  %427 = load double*, double** %a.addr, align 8
  %arrayidx413 = getelementptr inbounds double, double* %427, i64 %idxprom412
  store double %add411, double* %arrayidx413, align 8
  %428 = load double, double* %x0i, align 8
  %429 = load double, double* %x2i, align 8
  %sub414 = fsub double %428, %429
  %430 = load i32, i32* %j0, align 4
  %add415 = add nsw i32 %430, 1
  %idxprom416 = sext i32 %add415 to i64
  %431 = load double*, double** %a.addr, align 8
  %arrayidx417 = getelementptr inbounds double, double* %431, i64 %idxprom416
  store double %sub414, double* %arrayidx417, align 8
  %432 = load double, double* %y0r, align 8
  %433 = load double, double* %y2r, align 8
  %add418 = fadd double %432, %433
  %434 = load i32, i32* %j0, align 4
  %sub419 = sub nsw i32 %434, 2
  %idxprom420 = sext i32 %sub419 to i64
  %435 = load double*, double** %a.addr, align 8
  %arrayidx421 = getelementptr inbounds double, double* %435, i64 %idxprom420
  store double %add418, double* %arrayidx421, align 8
  %436 = load double, double* %y0i, align 8
  %437 = load double, double* %y2i, align 8
  %sub422 = fsub double %436, %437
  %438 = load i32, i32* %j0, align 4
  %sub423 = sub nsw i32 %438, 1
  %idxprom424 = sext i32 %sub423 to i64
  %439 = load double*, double** %a.addr, align 8
  %arrayidx425 = getelementptr inbounds double, double* %439, i64 %idxprom424
  store double %sub422, double* %arrayidx425, align 8
  %440 = load double, double* %x0r, align 8
  %441 = load double, double* %x2r, align 8
  %sub426 = fsub double %440, %441
  %442 = load i32, i32* %j1, align 4
  %idxprom427 = sext i32 %442 to i64
  %443 = load double*, double** %a.addr, align 8
  %arrayidx428 = getelementptr inbounds double, double* %443, i64 %idxprom427
  store double %sub426, double* %arrayidx428, align 8
  %444 = load double, double* %x0i, align 8
  %445 = load double, double* %x2i, align 8
  %add429 = fadd double %444, %445
  %446 = load i32, i32* %j1, align 4
  %add430 = add nsw i32 %446, 1
  %idxprom431 = sext i32 %add430 to i64
  %447 = load double*, double** %a.addr, align 8
  %arrayidx432 = getelementptr inbounds double, double* %447, i64 %idxprom431
  store double %add429, double* %arrayidx432, align 8
  %448 = load double, double* %y0r, align 8
  %449 = load double, double* %y2r, align 8
  %sub433 = fsub double %448, %449
  %450 = load i32, i32* %j1, align 4
  %sub434 = sub nsw i32 %450, 2
  %idxprom435 = sext i32 %sub434 to i64
  %451 = load double*, double** %a.addr, align 8
  %arrayidx436 = getelementptr inbounds double, double* %451, i64 %idxprom435
  store double %sub433, double* %arrayidx436, align 8
  %452 = load double, double* %y0i, align 8
  %453 = load double, double* %y2i, align 8
  %add437 = fadd double %452, %453
  %454 = load i32, i32* %j1, align 4
  %sub438 = sub nsw i32 %454, 1
  %idxprom439 = sext i32 %sub438 to i64
  %455 = load double*, double** %a.addr, align 8
  %arrayidx440 = getelementptr inbounds double, double* %455, i64 %idxprom439
  store double %add437, double* %arrayidx440, align 8
  %456 = load double, double* %x1r, align 8
  %457 = load double, double* %x3i, align 8
  %add441 = fadd double %456, %457
  store double %add441, double* %x0r, align 8
  %458 = load double, double* %x1i, align 8
  %459 = load double, double* %x3r, align 8
  %add442 = fadd double %458, %459
  store double %add442, double* %x0i, align 8
  %460 = load double, double* %wk1i, align 8
  %461 = load double, double* %x0r, align 8
  %mul443 = fmul double %460, %461
  %462 = load double, double* %wk1r, align 8
  %463 = load double, double* %x0i, align 8
  %mul444 = fmul double %462, %463
  %sub445 = fsub double %mul443, %mul444
  %464 = load i32, i32* %j2, align 4
  %idxprom446 = sext i32 %464 to i64
  %465 = load double*, double** %a.addr, align 8
  %arrayidx447 = getelementptr inbounds double, double* %465, i64 %idxprom446
  store double %sub445, double* %arrayidx447, align 8
  %466 = load double, double* %wk1i, align 8
  %467 = load double, double* %x0i, align 8
  %mul448 = fmul double %466, %467
  %468 = load double, double* %wk1r, align 8
  %469 = load double, double* %x0r, align 8
  %mul449 = fmul double %468, %469
  %add450 = fadd double %mul448, %mul449
  %470 = load i32, i32* %j2, align 4
  %add451 = add nsw i32 %470, 1
  %idxprom452 = sext i32 %add451 to i64
  %471 = load double*, double** %a.addr, align 8
  %arrayidx453 = getelementptr inbounds double, double* %471, i64 %idxprom452
  store double %add450, double* %arrayidx453, align 8
  %472 = load double, double* %y1r, align 8
  %473 = load double, double* %y3i, align 8
  %add454 = fadd double %472, %473
  store double %add454, double* %x0r, align 8
  %474 = load double, double* %y1i, align 8
  %475 = load double, double* %y3r, align 8
  %add455 = fadd double %474, %475
  store double %add455, double* %x0i, align 8
  %476 = load double, double* %wd1i, align 8
  %477 = load double, double* %x0r, align 8
  %mul456 = fmul double %476, %477
  %478 = load double, double* %wd1r, align 8
  %479 = load double, double* %x0i, align 8
  %mul457 = fmul double %478, %479
  %sub458 = fsub double %mul456, %mul457
  %480 = load i32, i32* %j2, align 4
  %sub459 = sub nsw i32 %480, 2
  %idxprom460 = sext i32 %sub459 to i64
  %481 = load double*, double** %a.addr, align 8
  %arrayidx461 = getelementptr inbounds double, double* %481, i64 %idxprom460
  store double %sub458, double* %arrayidx461, align 8
  %482 = load double, double* %wd1i, align 8
  %483 = load double, double* %x0i, align 8
  %mul462 = fmul double %482, %483
  %484 = load double, double* %wd1r, align 8
  %485 = load double, double* %x0r, align 8
  %mul463 = fmul double %484, %485
  %add464 = fadd double %mul462, %mul463
  %486 = load i32, i32* %j2, align 4
  %sub465 = sub nsw i32 %486, 1
  %idxprom466 = sext i32 %sub465 to i64
  %487 = load double*, double** %a.addr, align 8
  %arrayidx467 = getelementptr inbounds double, double* %487, i64 %idxprom466
  store double %add464, double* %arrayidx467, align 8
  %488 = load double, double* %x1r, align 8
  %489 = load double, double* %x3i, align 8
  %sub468 = fsub double %488, %489
  store double %sub468, double* %x0r, align 8
  %490 = load double, double* %x1i, align 8
  %491 = load double, double* %x3r, align 8
  %sub469 = fsub double %490, %491
  store double %sub469, double* %x0i, align 8
  %492 = load double, double* %wk3i, align 8
  %493 = load double, double* %x0r, align 8
  %mul470 = fmul double %492, %493
  %494 = load double, double* %wk3r, align 8
  %495 = load double, double* %x0i, align 8
  %mul471 = fmul double %494, %495
  %add472 = fadd double %mul470, %mul471
  %496 = load i32, i32* %j3, align 4
  %idxprom473 = sext i32 %496 to i64
  %497 = load double*, double** %a.addr, align 8
  %arrayidx474 = getelementptr inbounds double, double* %497, i64 %idxprom473
  store double %add472, double* %arrayidx474, align 8
  %498 = load double, double* %wk3i, align 8
  %499 = load double, double* %x0i, align 8
  %mul475 = fmul double %498, %499
  %500 = load double, double* %wk3r, align 8
  %501 = load double, double* %x0r, align 8
  %mul476 = fmul double %500, %501
  %sub477 = fsub double %mul475, %mul476
  %502 = load i32, i32* %j3, align 4
  %add478 = add nsw i32 %502, 1
  %idxprom479 = sext i32 %add478 to i64
  %503 = load double*, double** %a.addr, align 8
  %arrayidx480 = getelementptr inbounds double, double* %503, i64 %idxprom479
  store double %sub477, double* %arrayidx480, align 8
  %504 = load double, double* %y1r, align 8
  %505 = load double, double* %y3i, align 8
  %sub481 = fsub double %504, %505
  store double %sub481, double* %x0r, align 8
  %506 = load double, double* %y1i, align 8
  %507 = load double, double* %y3r, align 8
  %sub482 = fsub double %506, %507
  store double %sub482, double* %x0i, align 8
  %508 = load double, double* %wd3i, align 8
  %509 = load double, double* %x0r, align 8
  %mul483 = fmul double %508, %509
  %510 = load double, double* %wd3r, align 8
  %511 = load double, double* %x0i, align 8
  %mul484 = fmul double %510, %511
  %add485 = fadd double %mul483, %mul484
  %512 = load i32, i32* %j3, align 4
  %sub486 = sub nsw i32 %512, 2
  %idxprom487 = sext i32 %sub486 to i64
  %513 = load double*, double** %a.addr, align 8
  %arrayidx488 = getelementptr inbounds double, double* %513, i64 %idxprom487
  store double %add485, double* %arrayidx488, align 8
  %514 = load double, double* %wd3i, align 8
  %515 = load double, double* %x0i, align 8
  %mul489 = fmul double %514, %515
  %516 = load double, double* %wd3r, align 8
  %517 = load double, double* %x0r, align 8
  %mul490 = fmul double %516, %517
  %sub491 = fsub double %mul489, %mul490
  %518 = load i32, i32* %j3, align 4
  %sub492 = sub nsw i32 %518, 1
  %idxprom493 = sext i32 %sub492 to i64
  %519 = load double*, double** %a.addr, align 8
  %arrayidx494 = getelementptr inbounds double, double* %519, i64 %idxprom493
  store double %sub491, double* %arrayidx494, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %520 = load i32, i32* %j, align 4
  %add495 = add nsw i32 %520, 4
  store i32 %add495, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %521 = load double, double* %csc1, align 8
  %522 = load double, double* %wd1r, align 8
  %523 = load double, double* %wn4r, align 8
  %add496 = fadd double %522, %523
  %mul497 = fmul double %521, %add496
  store double %mul497, double* %wk1r, align 8
  %524 = load double, double* %csc1, align 8
  %525 = load double, double* %wd1i, align 8
  %526 = load double, double* %wn4r, align 8
  %add498 = fadd double %525, %526
  %mul499 = fmul double %524, %add498
  store double %mul499, double* %wk1i, align 8
  %527 = load double, double* %csc3, align 8
  %528 = load double, double* %wd3r, align 8
  %529 = load double, double* %wn4r, align 8
  %sub500 = fsub double %528, %529
  %mul501 = fmul double %527, %sub500
  store double %mul501, double* %wk3r, align 8
  %530 = load double, double* %csc3, align 8
  %531 = load double, double* %wd3i, align 8
  %532 = load double, double* %wn4r, align 8
  %sub502 = fsub double %531, %532
  %mul503 = fmul double %530, %sub502
  store double %mul503, double* %wk3i, align 8
  %533 = load i32, i32* %mh, align 4
  store i32 %533, i32* %j0, align 4
  %534 = load i32, i32* %j0, align 4
  %535 = load i32, i32* %m, align 4
  %add504 = add nsw i32 %534, %535
  store i32 %add504, i32* %j1, align 4
  %536 = load i32, i32* %j1, align 4
  %537 = load i32, i32* %m, align 4
  %add505 = add nsw i32 %536, %537
  store i32 %add505, i32* %j2, align 4
  %538 = load i32, i32* %j2, align 4
  %539 = load i32, i32* %m, align 4
  %add506 = add nsw i32 %538, %539
  store i32 %add506, i32* %j3, align 4
  %540 = load i32, i32* %j0, align 4
  %sub507 = sub nsw i32 %540, 2
  %idxprom508 = sext i32 %sub507 to i64
  %541 = load double*, double** %a.addr, align 8
  %arrayidx509 = getelementptr inbounds double, double* %541, i64 %idxprom508
  %542 = load double, double* %arrayidx509, align 8
  %543 = load i32, i32* %j2, align 4
  %sub510 = sub nsw i32 %543, 2
  %idxprom511 = sext i32 %sub510 to i64
  %544 = load double*, double** %a.addr, align 8
  %arrayidx512 = getelementptr inbounds double, double* %544, i64 %idxprom511
  %545 = load double, double* %arrayidx512, align 8
  %add513 = fadd double %542, %545
  store double %add513, double* %x0r, align 8
  %546 = load i32, i32* %j0, align 4
  %sub514 = sub nsw i32 %546, 1
  %idxprom515 = sext i32 %sub514 to i64
  %547 = load double*, double** %a.addr, align 8
  %arrayidx516 = getelementptr inbounds double, double* %547, i64 %idxprom515
  %548 = load double, double* %arrayidx516, align 8
  %sub517 = fsub double -0.000000e+00, %548
  %549 = load i32, i32* %j2, align 4
  %sub518 = sub nsw i32 %549, 1
  %idxprom519 = sext i32 %sub518 to i64
  %550 = load double*, double** %a.addr, align 8
  %arrayidx520 = getelementptr inbounds double, double* %550, i64 %idxprom519
  %551 = load double, double* %arrayidx520, align 8
  %sub521 = fsub double %sub517, %551
  store double %sub521, double* %x0i, align 8
  %552 = load i32, i32* %j0, align 4
  %sub522 = sub nsw i32 %552, 2
  %idxprom523 = sext i32 %sub522 to i64
  %553 = load double*, double** %a.addr, align 8
  %arrayidx524 = getelementptr inbounds double, double* %553, i64 %idxprom523
  %554 = load double, double* %arrayidx524, align 8
  %555 = load i32, i32* %j2, align 4
  %sub525 = sub nsw i32 %555, 2
  %idxprom526 = sext i32 %sub525 to i64
  %556 = load double*, double** %a.addr, align 8
  %arrayidx527 = getelementptr inbounds double, double* %556, i64 %idxprom526
  %557 = load double, double* %arrayidx527, align 8
  %sub528 = fsub double %554, %557
  store double %sub528, double* %x1r, align 8
  %558 = load i32, i32* %j0, align 4
  %sub529 = sub nsw i32 %558, 1
  %idxprom530 = sext i32 %sub529 to i64
  %559 = load double*, double** %a.addr, align 8
  %arrayidx531 = getelementptr inbounds double, double* %559, i64 %idxprom530
  %560 = load double, double* %arrayidx531, align 8
  %sub532 = fsub double -0.000000e+00, %560
  %561 = load i32, i32* %j2, align 4
  %sub533 = sub nsw i32 %561, 1
  %idxprom534 = sext i32 %sub533 to i64
  %562 = load double*, double** %a.addr, align 8
  %arrayidx535 = getelementptr inbounds double, double* %562, i64 %idxprom534
  %563 = load double, double* %arrayidx535, align 8
  %add536 = fadd double %sub532, %563
  store double %add536, double* %x1i, align 8
  %564 = load i32, i32* %j1, align 4
  %sub537 = sub nsw i32 %564, 2
  %idxprom538 = sext i32 %sub537 to i64
  %565 = load double*, double** %a.addr, align 8
  %arrayidx539 = getelementptr inbounds double, double* %565, i64 %idxprom538
  %566 = load double, double* %arrayidx539, align 8
  %567 = load i32, i32* %j3, align 4
  %sub540 = sub nsw i32 %567, 2
  %idxprom541 = sext i32 %sub540 to i64
  %568 = load double*, double** %a.addr, align 8
  %arrayidx542 = getelementptr inbounds double, double* %568, i64 %idxprom541
  %569 = load double, double* %arrayidx542, align 8
  %add543 = fadd double %566, %569
  store double %add543, double* %x2r, align 8
  %570 = load i32, i32* %j1, align 4
  %sub544 = sub nsw i32 %570, 1
  %idxprom545 = sext i32 %sub544 to i64
  %571 = load double*, double** %a.addr, align 8
  %arrayidx546 = getelementptr inbounds double, double* %571, i64 %idxprom545
  %572 = load double, double* %arrayidx546, align 8
  %573 = load i32, i32* %j3, align 4
  %sub547 = sub nsw i32 %573, 1
  %idxprom548 = sext i32 %sub547 to i64
  %574 = load double*, double** %a.addr, align 8
  %arrayidx549 = getelementptr inbounds double, double* %574, i64 %idxprom548
  %575 = load double, double* %arrayidx549, align 8
  %add550 = fadd double %572, %575
  store double %add550, double* %x2i, align 8
  %576 = load i32, i32* %j1, align 4
  %sub551 = sub nsw i32 %576, 2
  %idxprom552 = sext i32 %sub551 to i64
  %577 = load double*, double** %a.addr, align 8
  %arrayidx553 = getelementptr inbounds double, double* %577, i64 %idxprom552
  %578 = load double, double* %arrayidx553, align 8
  %579 = load i32, i32* %j3, align 4
  %sub554 = sub nsw i32 %579, 2
  %idxprom555 = sext i32 %sub554 to i64
  %580 = load double*, double** %a.addr, align 8
  %arrayidx556 = getelementptr inbounds double, double* %580, i64 %idxprom555
  %581 = load double, double* %arrayidx556, align 8
  %sub557 = fsub double %578, %581
  store double %sub557, double* %x3r, align 8
  %582 = load i32, i32* %j1, align 4
  %sub558 = sub nsw i32 %582, 1
  %idxprom559 = sext i32 %sub558 to i64
  %583 = load double*, double** %a.addr, align 8
  %arrayidx560 = getelementptr inbounds double, double* %583, i64 %idxprom559
  %584 = load double, double* %arrayidx560, align 8
  %585 = load i32, i32* %j3, align 4
  %sub561 = sub nsw i32 %585, 1
  %idxprom562 = sext i32 %sub561 to i64
  %586 = load double*, double** %a.addr, align 8
  %arrayidx563 = getelementptr inbounds double, double* %586, i64 %idxprom562
  %587 = load double, double* %arrayidx563, align 8
  %sub564 = fsub double %584, %587
  store double %sub564, double* %x3i, align 8
  %588 = load double, double* %x0r, align 8
  %589 = load double, double* %x2r, align 8
  %add565 = fadd double %588, %589
  %590 = load i32, i32* %j0, align 4
  %sub566 = sub nsw i32 %590, 2
  %idxprom567 = sext i32 %sub566 to i64
  %591 = load double*, double** %a.addr, align 8
  %arrayidx568 = getelementptr inbounds double, double* %591, i64 %idxprom567
  store double %add565, double* %arrayidx568, align 8
  %592 = load double, double* %x0i, align 8
  %593 = load double, double* %x2i, align 8
  %sub569 = fsub double %592, %593
  %594 = load i32, i32* %j0, align 4
  %sub570 = sub nsw i32 %594, 1
  %idxprom571 = sext i32 %sub570 to i64
  %595 = load double*, double** %a.addr, align 8
  %arrayidx572 = getelementptr inbounds double, double* %595, i64 %idxprom571
  store double %sub569, double* %arrayidx572, align 8
  %596 = load double, double* %x0r, align 8
  %597 = load double, double* %x2r, align 8
  %sub573 = fsub double %596, %597
  %598 = load i32, i32* %j1, align 4
  %sub574 = sub nsw i32 %598, 2
  %idxprom575 = sext i32 %sub574 to i64
  %599 = load double*, double** %a.addr, align 8
  %arrayidx576 = getelementptr inbounds double, double* %599, i64 %idxprom575
  store double %sub573, double* %arrayidx576, align 8
  %600 = load double, double* %x0i, align 8
  %601 = load double, double* %x2i, align 8
  %add577 = fadd double %600, %601
  %602 = load i32, i32* %j1, align 4
  %sub578 = sub nsw i32 %602, 1
  %idxprom579 = sext i32 %sub578 to i64
  %603 = load double*, double** %a.addr, align 8
  %arrayidx580 = getelementptr inbounds double, double* %603, i64 %idxprom579
  store double %add577, double* %arrayidx580, align 8
  %604 = load double, double* %x1r, align 8
  %605 = load double, double* %x3i, align 8
  %add581 = fadd double %604, %605
  store double %add581, double* %x0r, align 8
  %606 = load double, double* %x1i, align 8
  %607 = load double, double* %x3r, align 8
  %add582 = fadd double %606, %607
  store double %add582, double* %x0i, align 8
  %608 = load double, double* %wk1r, align 8
  %609 = load double, double* %x0r, align 8
  %mul583 = fmul double %608, %609
  %610 = load double, double* %wk1i, align 8
  %611 = load double, double* %x0i, align 8
  %mul584 = fmul double %610, %611
  %sub585 = fsub double %mul583, %mul584
  %612 = load i32, i32* %j2, align 4
  %sub586 = sub nsw i32 %612, 2
  %idxprom587 = sext i32 %sub586 to i64
  %613 = load double*, double** %a.addr, align 8
  %arrayidx588 = getelementptr inbounds double, double* %613, i64 %idxprom587
  store double %sub585, double* %arrayidx588, align 8
  %614 = load double, double* %wk1r, align 8
  %615 = load double, double* %x0i, align 8
  %mul589 = fmul double %614, %615
  %616 = load double, double* %wk1i, align 8
  %617 = load double, double* %x0r, align 8
  %mul590 = fmul double %616, %617
  %add591 = fadd double %mul589, %mul590
  %618 = load i32, i32* %j2, align 4
  %sub592 = sub nsw i32 %618, 1
  %idxprom593 = sext i32 %sub592 to i64
  %619 = load double*, double** %a.addr, align 8
  %arrayidx594 = getelementptr inbounds double, double* %619, i64 %idxprom593
  store double %add591, double* %arrayidx594, align 8
  %620 = load double, double* %x1r, align 8
  %621 = load double, double* %x3i, align 8
  %sub595 = fsub double %620, %621
  store double %sub595, double* %x0r, align 8
  %622 = load double, double* %x1i, align 8
  %623 = load double, double* %x3r, align 8
  %sub596 = fsub double %622, %623
  store double %sub596, double* %x0i, align 8
  %624 = load double, double* %wk3r, align 8
  %625 = load double, double* %x0r, align 8
  %mul597 = fmul double %624, %625
  %626 = load double, double* %wk3i, align 8
  %627 = load double, double* %x0i, align 8
  %mul598 = fmul double %626, %627
  %add599 = fadd double %mul597, %mul598
  %628 = load i32, i32* %j3, align 4
  %sub600 = sub nsw i32 %628, 2
  %idxprom601 = sext i32 %sub600 to i64
  %629 = load double*, double** %a.addr, align 8
  %arrayidx602 = getelementptr inbounds double, double* %629, i64 %idxprom601
  store double %add599, double* %arrayidx602, align 8
  %630 = load double, double* %wk3r, align 8
  %631 = load double, double* %x0i, align 8
  %mul603 = fmul double %630, %631
  %632 = load double, double* %wk3i, align 8
  %633 = load double, double* %x0r, align 8
  %mul604 = fmul double %632, %633
  %sub605 = fsub double %mul603, %mul604
  %634 = load i32, i32* %j3, align 4
  %sub606 = sub nsw i32 %634, 1
  %idxprom607 = sext i32 %sub606 to i64
  %635 = load double*, double** %a.addr, align 8
  %arrayidx608 = getelementptr inbounds double, double* %635, i64 %idxprom607
  store double %sub605, double* %arrayidx608, align 8
  %636 = load i32, i32* %j0, align 4
  %idxprom609 = sext i32 %636 to i64
  %637 = load double*, double** %a.addr, align 8
  %arrayidx610 = getelementptr inbounds double, double* %637, i64 %idxprom609
  %638 = load double, double* %arrayidx610, align 8
  %639 = load i32, i32* %j2, align 4
  %idxprom611 = sext i32 %639 to i64
  %640 = load double*, double** %a.addr, align 8
  %arrayidx612 = getelementptr inbounds double, double* %640, i64 %idxprom611
  %641 = load double, double* %arrayidx612, align 8
  %add613 = fadd double %638, %641
  store double %add613, double* %x0r, align 8
  %642 = load i32, i32* %j0, align 4
  %add614 = add nsw i32 %642, 1
  %idxprom615 = sext i32 %add614 to i64
  %643 = load double*, double** %a.addr, align 8
  %arrayidx616 = getelementptr inbounds double, double* %643, i64 %idxprom615
  %644 = load double, double* %arrayidx616, align 8
  %sub617 = fsub double -0.000000e+00, %644
  %645 = load i32, i32* %j2, align 4
  %add618 = add nsw i32 %645, 1
  %idxprom619 = sext i32 %add618 to i64
  %646 = load double*, double** %a.addr, align 8
  %arrayidx620 = getelementptr inbounds double, double* %646, i64 %idxprom619
  %647 = load double, double* %arrayidx620, align 8
  %sub621 = fsub double %sub617, %647
  store double %sub621, double* %x0i, align 8
  %648 = load i32, i32* %j0, align 4
  %idxprom622 = sext i32 %648 to i64
  %649 = load double*, double** %a.addr, align 8
  %arrayidx623 = getelementptr inbounds double, double* %649, i64 %idxprom622
  %650 = load double, double* %arrayidx623, align 8
  %651 = load i32, i32* %j2, align 4
  %idxprom624 = sext i32 %651 to i64
  %652 = load double*, double** %a.addr, align 8
  %arrayidx625 = getelementptr inbounds double, double* %652, i64 %idxprom624
  %653 = load double, double* %arrayidx625, align 8
  %sub626 = fsub double %650, %653
  store double %sub626, double* %x1r, align 8
  %654 = load i32, i32* %j0, align 4
  %add627 = add nsw i32 %654, 1
  %idxprom628 = sext i32 %add627 to i64
  %655 = load double*, double** %a.addr, align 8
  %arrayidx629 = getelementptr inbounds double, double* %655, i64 %idxprom628
  %656 = load double, double* %arrayidx629, align 8
  %sub630 = fsub double -0.000000e+00, %656
  %657 = load i32, i32* %j2, align 4
  %add631 = add nsw i32 %657, 1
  %idxprom632 = sext i32 %add631 to i64
  %658 = load double*, double** %a.addr, align 8
  %arrayidx633 = getelementptr inbounds double, double* %658, i64 %idxprom632
  %659 = load double, double* %arrayidx633, align 8
  %add634 = fadd double %sub630, %659
  store double %add634, double* %x1i, align 8
  %660 = load i32, i32* %j1, align 4
  %idxprom635 = sext i32 %660 to i64
  %661 = load double*, double** %a.addr, align 8
  %arrayidx636 = getelementptr inbounds double, double* %661, i64 %idxprom635
  %662 = load double, double* %arrayidx636, align 8
  %663 = load i32, i32* %j3, align 4
  %idxprom637 = sext i32 %663 to i64
  %664 = load double*, double** %a.addr, align 8
  %arrayidx638 = getelementptr inbounds double, double* %664, i64 %idxprom637
  %665 = load double, double* %arrayidx638, align 8
  %add639 = fadd double %662, %665
  store double %add639, double* %x2r, align 8
  %666 = load i32, i32* %j1, align 4
  %add640 = add nsw i32 %666, 1
  %idxprom641 = sext i32 %add640 to i64
  %667 = load double*, double** %a.addr, align 8
  %arrayidx642 = getelementptr inbounds double, double* %667, i64 %idxprom641
  %668 = load double, double* %arrayidx642, align 8
  %669 = load i32, i32* %j3, align 4
  %add643 = add nsw i32 %669, 1
  %idxprom644 = sext i32 %add643 to i64
  %670 = load double*, double** %a.addr, align 8
  %arrayidx645 = getelementptr inbounds double, double* %670, i64 %idxprom644
  %671 = load double, double* %arrayidx645, align 8
  %add646 = fadd double %668, %671
  store double %add646, double* %x2i, align 8
  %672 = load i32, i32* %j1, align 4
  %idxprom647 = sext i32 %672 to i64
  %673 = load double*, double** %a.addr, align 8
  %arrayidx648 = getelementptr inbounds double, double* %673, i64 %idxprom647
  %674 = load double, double* %arrayidx648, align 8
  %675 = load i32, i32* %j3, align 4
  %idxprom649 = sext i32 %675 to i64
  %676 = load double*, double** %a.addr, align 8
  %arrayidx650 = getelementptr inbounds double, double* %676, i64 %idxprom649
  %677 = load double, double* %arrayidx650, align 8
  %sub651 = fsub double %674, %677
  store double %sub651, double* %x3r, align 8
  %678 = load i32, i32* %j1, align 4
  %add652 = add nsw i32 %678, 1
  %idxprom653 = sext i32 %add652 to i64
  %679 = load double*, double** %a.addr, align 8
  %arrayidx654 = getelementptr inbounds double, double* %679, i64 %idxprom653
  %680 = load double, double* %arrayidx654, align 8
  %681 = load i32, i32* %j3, align 4
  %add655 = add nsw i32 %681, 1
  %idxprom656 = sext i32 %add655 to i64
  %682 = load double*, double** %a.addr, align 8
  %arrayidx657 = getelementptr inbounds double, double* %682, i64 %idxprom656
  %683 = load double, double* %arrayidx657, align 8
  %sub658 = fsub double %680, %683
  store double %sub658, double* %x3i, align 8
  %684 = load double, double* %x0r, align 8
  %685 = load double, double* %x2r, align 8
  %add659 = fadd double %684, %685
  %686 = load i32, i32* %j0, align 4
  %idxprom660 = sext i32 %686 to i64
  %687 = load double*, double** %a.addr, align 8
  %arrayidx661 = getelementptr inbounds double, double* %687, i64 %idxprom660
  store double %add659, double* %arrayidx661, align 8
  %688 = load double, double* %x0i, align 8
  %689 = load double, double* %x2i, align 8
  %sub662 = fsub double %688, %689
  %690 = load i32, i32* %j0, align 4
  %add663 = add nsw i32 %690, 1
  %idxprom664 = sext i32 %add663 to i64
  %691 = load double*, double** %a.addr, align 8
  %arrayidx665 = getelementptr inbounds double, double* %691, i64 %idxprom664
  store double %sub662, double* %arrayidx665, align 8
  %692 = load double, double* %x0r, align 8
  %693 = load double, double* %x2r, align 8
  %sub666 = fsub double %692, %693
  %694 = load i32, i32* %j1, align 4
  %idxprom667 = sext i32 %694 to i64
  %695 = load double*, double** %a.addr, align 8
  %arrayidx668 = getelementptr inbounds double, double* %695, i64 %idxprom667
  store double %sub666, double* %arrayidx668, align 8
  %696 = load double, double* %x0i, align 8
  %697 = load double, double* %x2i, align 8
  %add669 = fadd double %696, %697
  %698 = load i32, i32* %j1, align 4
  %add670 = add nsw i32 %698, 1
  %idxprom671 = sext i32 %add670 to i64
  %699 = load double*, double** %a.addr, align 8
  %arrayidx672 = getelementptr inbounds double, double* %699, i64 %idxprom671
  store double %add669, double* %arrayidx672, align 8
  %700 = load double, double* %x1r, align 8
  %701 = load double, double* %x3i, align 8
  %add673 = fadd double %700, %701
  store double %add673, double* %x0r, align 8
  %702 = load double, double* %x1i, align 8
  %703 = load double, double* %x3r, align 8
  %add674 = fadd double %702, %703
  store double %add674, double* %x0i, align 8
  %704 = load double, double* %wn4r, align 8
  %705 = load double, double* %x0r, align 8
  %706 = load double, double* %x0i, align 8
  %sub675 = fsub double %705, %706
  %mul676 = fmul double %704, %sub675
  %707 = load i32, i32* %j2, align 4
  %idxprom677 = sext i32 %707 to i64
  %708 = load double*, double** %a.addr, align 8
  %arrayidx678 = getelementptr inbounds double, double* %708, i64 %idxprom677
  store double %mul676, double* %arrayidx678, align 8
  %709 = load double, double* %wn4r, align 8
  %710 = load double, double* %x0i, align 8
  %711 = load double, double* %x0r, align 8
  %add679 = fadd double %710, %711
  %mul680 = fmul double %709, %add679
  %712 = load i32, i32* %j2, align 4
  %add681 = add nsw i32 %712, 1
  %idxprom682 = sext i32 %add681 to i64
  %713 = load double*, double** %a.addr, align 8
  %arrayidx683 = getelementptr inbounds double, double* %713, i64 %idxprom682
  store double %mul680, double* %arrayidx683, align 8
  %714 = load double, double* %x1r, align 8
  %715 = load double, double* %x3i, align 8
  %sub684 = fsub double %714, %715
  store double %sub684, double* %x0r, align 8
  %716 = load double, double* %x1i, align 8
  %717 = load double, double* %x3r, align 8
  %sub685 = fsub double %716, %717
  store double %sub685, double* %x0i, align 8
  %718 = load double, double* %wn4r, align 8
  %sub686 = fsub double -0.000000e+00, %718
  %719 = load double, double* %x0r, align 8
  %720 = load double, double* %x0i, align 8
  %add687 = fadd double %719, %720
  %mul688 = fmul double %sub686, %add687
  %721 = load i32, i32* %j3, align 4
  %idxprom689 = sext i32 %721 to i64
  %722 = load double*, double** %a.addr, align 8
  %arrayidx690 = getelementptr inbounds double, double* %722, i64 %idxprom689
  store double %mul688, double* %arrayidx690, align 8
  %723 = load double, double* %wn4r, align 8
  %sub691 = fsub double -0.000000e+00, %723
  %724 = load double, double* %x0i, align 8
  %725 = load double, double* %x0r, align 8
  %sub692 = fsub double %724, %725
  %mul693 = fmul double %sub691, %sub692
  %726 = load i32, i32* %j3, align 4
  %add694 = add nsw i32 %726, 1
  %idxprom695 = sext i32 %add694 to i64
  %727 = load double*, double** %a.addr, align 8
  %arrayidx696 = getelementptr inbounds double, double* %727, i64 %idxprom695
  store double %mul693, double* %arrayidx696, align 8
  %728 = load i32, i32* %j0, align 4
  %add697 = add nsw i32 %728, 2
  %idxprom698 = sext i32 %add697 to i64
  %729 = load double*, double** %a.addr, align 8
  %arrayidx699 = getelementptr inbounds double, double* %729, i64 %idxprom698
  %730 = load double, double* %arrayidx699, align 8
  %731 = load i32, i32* %j2, align 4
  %add700 = add nsw i32 %731, 2
  %idxprom701 = sext i32 %add700 to i64
  %732 = load double*, double** %a.addr, align 8
  %arrayidx702 = getelementptr inbounds double, double* %732, i64 %idxprom701
  %733 = load double, double* %arrayidx702, align 8
  %add703 = fadd double %730, %733
  store double %add703, double* %x0r, align 8
  %734 = load i32, i32* %j0, align 4
  %add704 = add nsw i32 %734, 3
  %idxprom705 = sext i32 %add704 to i64
  %735 = load double*, double** %a.addr, align 8
  %arrayidx706 = getelementptr inbounds double, double* %735, i64 %idxprom705
  %736 = load double, double* %arrayidx706, align 8
  %sub707 = fsub double -0.000000e+00, %736
  %737 = load i32, i32* %j2, align 4
  %add708 = add nsw i32 %737, 3
  %idxprom709 = sext i32 %add708 to i64
  %738 = load double*, double** %a.addr, align 8
  %arrayidx710 = getelementptr inbounds double, double* %738, i64 %idxprom709
  %739 = load double, double* %arrayidx710, align 8
  %sub711 = fsub double %sub707, %739
  store double %sub711, double* %x0i, align 8
  %740 = load i32, i32* %j0, align 4
  %add712 = add nsw i32 %740, 2
  %idxprom713 = sext i32 %add712 to i64
  %741 = load double*, double** %a.addr, align 8
  %arrayidx714 = getelementptr inbounds double, double* %741, i64 %idxprom713
  %742 = load double, double* %arrayidx714, align 8
  %743 = load i32, i32* %j2, align 4
  %add715 = add nsw i32 %743, 2
  %idxprom716 = sext i32 %add715 to i64
  %744 = load double*, double** %a.addr, align 8
  %arrayidx717 = getelementptr inbounds double, double* %744, i64 %idxprom716
  %745 = load double, double* %arrayidx717, align 8
  %sub718 = fsub double %742, %745
  store double %sub718, double* %x1r, align 8
  %746 = load i32, i32* %j0, align 4
  %add719 = add nsw i32 %746, 3
  %idxprom720 = sext i32 %add719 to i64
  %747 = load double*, double** %a.addr, align 8
  %arrayidx721 = getelementptr inbounds double, double* %747, i64 %idxprom720
  %748 = load double, double* %arrayidx721, align 8
  %sub722 = fsub double -0.000000e+00, %748
  %749 = load i32, i32* %j2, align 4
  %add723 = add nsw i32 %749, 3
  %idxprom724 = sext i32 %add723 to i64
  %750 = load double*, double** %a.addr, align 8
  %arrayidx725 = getelementptr inbounds double, double* %750, i64 %idxprom724
  %751 = load double, double* %arrayidx725, align 8
  %add726 = fadd double %sub722, %751
  store double %add726, double* %x1i, align 8
  %752 = load i32, i32* %j1, align 4
  %add727 = add nsw i32 %752, 2
  %idxprom728 = sext i32 %add727 to i64
  %753 = load double*, double** %a.addr, align 8
  %arrayidx729 = getelementptr inbounds double, double* %753, i64 %idxprom728
  %754 = load double, double* %arrayidx729, align 8
  %755 = load i32, i32* %j3, align 4
  %add730 = add nsw i32 %755, 2
  %idxprom731 = sext i32 %add730 to i64
  %756 = load double*, double** %a.addr, align 8
  %arrayidx732 = getelementptr inbounds double, double* %756, i64 %idxprom731
  %757 = load double, double* %arrayidx732, align 8
  %add733 = fadd double %754, %757
  store double %add733, double* %x2r, align 8
  %758 = load i32, i32* %j1, align 4
  %add734 = add nsw i32 %758, 3
  %idxprom735 = sext i32 %add734 to i64
  %759 = load double*, double** %a.addr, align 8
  %arrayidx736 = getelementptr inbounds double, double* %759, i64 %idxprom735
  %760 = load double, double* %arrayidx736, align 8
  %761 = load i32, i32* %j3, align 4
  %add737 = add nsw i32 %761, 3
  %idxprom738 = sext i32 %add737 to i64
  %762 = load double*, double** %a.addr, align 8
  %arrayidx739 = getelementptr inbounds double, double* %762, i64 %idxprom738
  %763 = load double, double* %arrayidx739, align 8
  %add740 = fadd double %760, %763
  store double %add740, double* %x2i, align 8
  %764 = load i32, i32* %j1, align 4
  %add741 = add nsw i32 %764, 2
  %idxprom742 = sext i32 %add741 to i64
  %765 = load double*, double** %a.addr, align 8
  %arrayidx743 = getelementptr inbounds double, double* %765, i64 %idxprom742
  %766 = load double, double* %arrayidx743, align 8
  %767 = load i32, i32* %j3, align 4
  %add744 = add nsw i32 %767, 2
  %idxprom745 = sext i32 %add744 to i64
  %768 = load double*, double** %a.addr, align 8
  %arrayidx746 = getelementptr inbounds double, double* %768, i64 %idxprom745
  %769 = load double, double* %arrayidx746, align 8
  %sub747 = fsub double %766, %769
  store double %sub747, double* %x3r, align 8
  %770 = load i32, i32* %j1, align 4
  %add748 = add nsw i32 %770, 3
  %idxprom749 = sext i32 %add748 to i64
  %771 = load double*, double** %a.addr, align 8
  %arrayidx750 = getelementptr inbounds double, double* %771, i64 %idxprom749
  %772 = load double, double* %arrayidx750, align 8
  %773 = load i32, i32* %j3, align 4
  %add751 = add nsw i32 %773, 3
  %idxprom752 = sext i32 %add751 to i64
  %774 = load double*, double** %a.addr, align 8
  %arrayidx753 = getelementptr inbounds double, double* %774, i64 %idxprom752
  %775 = load double, double* %arrayidx753, align 8
  %sub754 = fsub double %772, %775
  store double %sub754, double* %x3i, align 8
  %776 = load double, double* %x0r, align 8
  %777 = load double, double* %x2r, align 8
  %add755 = fadd double %776, %777
  %778 = load i32, i32* %j0, align 4
  %add756 = add nsw i32 %778, 2
  %idxprom757 = sext i32 %add756 to i64
  %779 = load double*, double** %a.addr, align 8
  %arrayidx758 = getelementptr inbounds double, double* %779, i64 %idxprom757
  store double %add755, double* %arrayidx758, align 8
  %780 = load double, double* %x0i, align 8
  %781 = load double, double* %x2i, align 8
  %sub759 = fsub double %780, %781
  %782 = load i32, i32* %j0, align 4
  %add760 = add nsw i32 %782, 3
  %idxprom761 = sext i32 %add760 to i64
  %783 = load double*, double** %a.addr, align 8
  %arrayidx762 = getelementptr inbounds double, double* %783, i64 %idxprom761
  store double %sub759, double* %arrayidx762, align 8
  %784 = load double, double* %x0r, align 8
  %785 = load double, double* %x2r, align 8
  %sub763 = fsub double %784, %785
  %786 = load i32, i32* %j1, align 4
  %add764 = add nsw i32 %786, 2
  %idxprom765 = sext i32 %add764 to i64
  %787 = load double*, double** %a.addr, align 8
  %arrayidx766 = getelementptr inbounds double, double* %787, i64 %idxprom765
  store double %sub763, double* %arrayidx766, align 8
  %788 = load double, double* %x0i, align 8
  %789 = load double, double* %x2i, align 8
  %add767 = fadd double %788, %789
  %790 = load i32, i32* %j1, align 4
  %add768 = add nsw i32 %790, 3
  %idxprom769 = sext i32 %add768 to i64
  %791 = load double*, double** %a.addr, align 8
  %arrayidx770 = getelementptr inbounds double, double* %791, i64 %idxprom769
  store double %add767, double* %arrayidx770, align 8
  %792 = load double, double* %x1r, align 8
  %793 = load double, double* %x3i, align 8
  %add771 = fadd double %792, %793
  store double %add771, double* %x0r, align 8
  %794 = load double, double* %x1i, align 8
  %795 = load double, double* %x3r, align 8
  %add772 = fadd double %794, %795
  store double %add772, double* %x0i, align 8
  %796 = load double, double* %wk1i, align 8
  %797 = load double, double* %x0r, align 8
  %mul773 = fmul double %796, %797
  %798 = load double, double* %wk1r, align 8
  %799 = load double, double* %x0i, align 8
  %mul774 = fmul double %798, %799
  %sub775 = fsub double %mul773, %mul774
  %800 = load i32, i32* %j2, align 4
  %add776 = add nsw i32 %800, 2
  %idxprom777 = sext i32 %add776 to i64
  %801 = load double*, double** %a.addr, align 8
  %arrayidx778 = getelementptr inbounds double, double* %801, i64 %idxprom777
  store double %sub775, double* %arrayidx778, align 8
  %802 = load double, double* %wk1i, align 8
  %803 = load double, double* %x0i, align 8
  %mul779 = fmul double %802, %803
  %804 = load double, double* %wk1r, align 8
  %805 = load double, double* %x0r, align 8
  %mul780 = fmul double %804, %805
  %add781 = fadd double %mul779, %mul780
  %806 = load i32, i32* %j2, align 4
  %add782 = add nsw i32 %806, 3
  %idxprom783 = sext i32 %add782 to i64
  %807 = load double*, double** %a.addr, align 8
  %arrayidx784 = getelementptr inbounds double, double* %807, i64 %idxprom783
  store double %add781, double* %arrayidx784, align 8
  %808 = load double, double* %x1r, align 8
  %809 = load double, double* %x3i, align 8
  %sub785 = fsub double %808, %809
  store double %sub785, double* %x0r, align 8
  %810 = load double, double* %x1i, align 8
  %811 = load double, double* %x3r, align 8
  %sub786 = fsub double %810, %811
  store double %sub786, double* %x0i, align 8
  %812 = load double, double* %wk3i, align 8
  %813 = load double, double* %x0r, align 8
  %mul787 = fmul double %812, %813
  %814 = load double, double* %wk3r, align 8
  %815 = load double, double* %x0i, align 8
  %mul788 = fmul double %814, %815
  %add789 = fadd double %mul787, %mul788
  %816 = load i32, i32* %j3, align 4
  %add790 = add nsw i32 %816, 2
  %idxprom791 = sext i32 %add790 to i64
  %817 = load double*, double** %a.addr, align 8
  %arrayidx792 = getelementptr inbounds double, double* %817, i64 %idxprom791
  store double %add789, double* %arrayidx792, align 8
  %818 = load double, double* %wk3i, align 8
  %819 = load double, double* %x0i, align 8
  %mul793 = fmul double %818, %819
  %820 = load double, double* %wk3r, align 8
  %821 = load double, double* %x0r, align 8
  %mul794 = fmul double %820, %821
  %sub795 = fsub double %mul793, %mul794
  %822 = load i32, i32* %j3, align 4
  %add796 = add nsw i32 %822, 3
  %idxprom797 = sext i32 %add796 to i64
  %823 = load double*, double** %a.addr, align 8
  %arrayidx798 = getelementptr inbounds double, double* %823, i64 %idxprom797
  store double %sub795, double* %arrayidx798, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitrv2conj(i32 %n, i32* %ip, double* %a) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %a.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %m2 = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %1 = load i32, i32* %n.addr, align 4
  store i32 %1, i32* %l, align 4
  store i32 1, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i32, i32* %m, align 4
  %shl = shl i32 %2, 3
  %3 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %shl, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %l, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %m, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %ip.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %l, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, i32* %m, align 4
  %12 = load i32, i32* %j, align 4
  %add3 = add nsw i32 %11, %12
  %idxprom4 = sext i32 %add3 to i64
  %13 = load i32*, i32** %ip.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  store i32 %add, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %m, align 4
  %shl6 = shl i32 %15, 1
  store i32 %shl6, i32* %m, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %16
  store i32 %mul, i32* %m2, align 4
  %17 = load i32, i32* %m, align 4
  %shl7 = shl i32 %17, 3
  %18 = load i32, i32* %l, align 4
  %cmp8 = icmp eq i32 %shl7, %18
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.164, %if.then
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %m, align 4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body.11, label %for.end.166

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.118, %for.body.11
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %for.body.14, label %for.end.120

for.body.14:                                      ; preds = %for.cond.12
  %23 = load i32, i32* %j, align 4
  %mul15 = mul nsw i32 2, %23
  %24 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load i32*, i32** %ip.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  %26 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %mul15, %26
  store i32 %add18, i32* %j1, align 4
  %27 = load i32, i32* %k, align 4
  %mul19 = mul nsw i32 2, %27
  %28 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load i32*, i32** %ip.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %29, i64 %idxprom20
  %30 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %mul19, %30
  store i32 %add22, i32* %k1, align 4
  %31 = load i32, i32* %j1, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %32, i64 %idxprom23
  %33 = load double, double* %arrayidx24, align 8
  store double %33, double* %xr, align 8
  %34 = load i32, i32* %j1, align 4
  %add25 = add nsw i32 %34, 1
  %idxprom26 = sext i32 %add25 to i64
  %35 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %35, i64 %idxprom26
  %36 = load double, double* %arrayidx27, align 8
  %sub = fsub double -0.000000e+00, %36
  store double %sub, double* %xi, align 8
  %37 = load i32, i32* %k1, align 4
  %idxprom28 = sext i32 %37 to i64
  %38 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %38, i64 %idxprom28
  %39 = load double, double* %arrayidx29, align 8
  store double %39, double* %yr, align 8
  %40 = load i32, i32* %k1, align 4
  %add30 = add nsw i32 %40, 1
  %idxprom31 = sext i32 %add30 to i64
  %41 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %41, i64 %idxprom31
  %42 = load double, double* %arrayidx32, align 8
  %sub33 = fsub double -0.000000e+00, %42
  store double %sub33, double* %yi, align 8
  %43 = load double, double* %yr, align 8
  %44 = load i32, i32* %j1, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %45, i64 %idxprom34
  store double %43, double* %arrayidx35, align 8
  %46 = load double, double* %yi, align 8
  %47 = load i32, i32* %j1, align 4
  %add36 = add nsw i32 %47, 1
  %idxprom37 = sext i32 %add36 to i64
  %48 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %48, i64 %idxprom37
  store double %46, double* %arrayidx38, align 8
  %49 = load double, double* %xr, align 8
  %50 = load i32, i32* %k1, align 4
  %idxprom39 = sext i32 %50 to i64
  %51 = load double*, double** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %51, i64 %idxprom39
  store double %49, double* %arrayidx40, align 8
  %52 = load double, double* %xi, align 8
  %53 = load i32, i32* %k1, align 4
  %add41 = add nsw i32 %53, 1
  %idxprom42 = sext i32 %add41 to i64
  %54 = load double*, double** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %54, i64 %idxprom42
  store double %52, double* %arrayidx43, align 8
  %55 = load i32, i32* %m2, align 4
  %56 = load i32, i32* %j1, align 4
  %add44 = add nsw i32 %56, %55
  store i32 %add44, i32* %j1, align 4
  %57 = load i32, i32* %m2, align 4
  %mul45 = mul nsw i32 2, %57
  %58 = load i32, i32* %k1, align 4
  %add46 = add nsw i32 %58, %mul45
  store i32 %add46, i32* %k1, align 4
  %59 = load i32, i32* %j1, align 4
  %idxprom47 = sext i32 %59 to i64
  %60 = load double*, double** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %60, i64 %idxprom47
  %61 = load double, double* %arrayidx48, align 8
  store double %61, double* %xr, align 8
  %62 = load i32, i32* %j1, align 4
  %add49 = add nsw i32 %62, 1
  %idxprom50 = sext i32 %add49 to i64
  %63 = load double*, double** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %63, i64 %idxprom50
  %64 = load double, double* %arrayidx51, align 8
  %sub52 = fsub double -0.000000e+00, %64
  store double %sub52, double* %xi, align 8
  %65 = load i32, i32* %k1, align 4
  %idxprom53 = sext i32 %65 to i64
  %66 = load double*, double** %a.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %66, i64 %idxprom53
  %67 = load double, double* %arrayidx54, align 8
  store double %67, double* %yr, align 8
  %68 = load i32, i32* %k1, align 4
  %add55 = add nsw i32 %68, 1
  %idxprom56 = sext i32 %add55 to i64
  %69 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %69, i64 %idxprom56
  %70 = load double, double* %arrayidx57, align 8
  %sub58 = fsub double -0.000000e+00, %70
  store double %sub58, double* %yi, align 8
  %71 = load double, double* %yr, align 8
  %72 = load i32, i32* %j1, align 4
  %idxprom59 = sext i32 %72 to i64
  %73 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %73, i64 %idxprom59
  store double %71, double* %arrayidx60, align 8
  %74 = load double, double* %yi, align 8
  %75 = load i32, i32* %j1, align 4
  %add61 = add nsw i32 %75, 1
  %idxprom62 = sext i32 %add61 to i64
  %76 = load double*, double** %a.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %76, i64 %idxprom62
  store double %74, double* %arrayidx63, align 8
  %77 = load double, double* %xr, align 8
  %78 = load i32, i32* %k1, align 4
  %idxprom64 = sext i32 %78 to i64
  %79 = load double*, double** %a.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %79, i64 %idxprom64
  store double %77, double* %arrayidx65, align 8
  %80 = load double, double* %xi, align 8
  %81 = load i32, i32* %k1, align 4
  %add66 = add nsw i32 %81, 1
  %idxprom67 = sext i32 %add66 to i64
  %82 = load double*, double** %a.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %82, i64 %idxprom67
  store double %80, double* %arrayidx68, align 8
  %83 = load i32, i32* %m2, align 4
  %84 = load i32, i32* %j1, align 4
  %add69 = add nsw i32 %84, %83
  store i32 %add69, i32* %j1, align 4
  %85 = load i32, i32* %m2, align 4
  %86 = load i32, i32* %k1, align 4
  %sub70 = sub nsw i32 %86, %85
  store i32 %sub70, i32* %k1, align 4
  %87 = load i32, i32* %j1, align 4
  %idxprom71 = sext i32 %87 to i64
  %88 = load double*, double** %a.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %88, i64 %idxprom71
  %89 = load double, double* %arrayidx72, align 8
  store double %89, double* %xr, align 8
  %90 = load i32, i32* %j1, align 4
  %add73 = add nsw i32 %90, 1
  %idxprom74 = sext i32 %add73 to i64
  %91 = load double*, double** %a.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %91, i64 %idxprom74
  %92 = load double, double* %arrayidx75, align 8
  %sub76 = fsub double -0.000000e+00, %92
  store double %sub76, double* %xi, align 8
  %93 = load i32, i32* %k1, align 4
  %idxprom77 = sext i32 %93 to i64
  %94 = load double*, double** %a.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %94, i64 %idxprom77
  %95 = load double, double* %arrayidx78, align 8
  store double %95, double* %yr, align 8
  %96 = load i32, i32* %k1, align 4
  %add79 = add nsw i32 %96, 1
  %idxprom80 = sext i32 %add79 to i64
  %97 = load double*, double** %a.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %97, i64 %idxprom80
  %98 = load double, double* %arrayidx81, align 8
  %sub82 = fsub double -0.000000e+00, %98
  store double %sub82, double* %yi, align 8
  %99 = load double, double* %yr, align 8
  %100 = load i32, i32* %j1, align 4
  %idxprom83 = sext i32 %100 to i64
  %101 = load double*, double** %a.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %101, i64 %idxprom83
  store double %99, double* %arrayidx84, align 8
  %102 = load double, double* %yi, align 8
  %103 = load i32, i32* %j1, align 4
  %add85 = add nsw i32 %103, 1
  %idxprom86 = sext i32 %add85 to i64
  %104 = load double*, double** %a.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %104, i64 %idxprom86
  store double %102, double* %arrayidx87, align 8
  %105 = load double, double* %xr, align 8
  %106 = load i32, i32* %k1, align 4
  %idxprom88 = sext i32 %106 to i64
  %107 = load double*, double** %a.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %107, i64 %idxprom88
  store double %105, double* %arrayidx89, align 8
  %108 = load double, double* %xi, align 8
  %109 = load i32, i32* %k1, align 4
  %add90 = add nsw i32 %109, 1
  %idxprom91 = sext i32 %add90 to i64
  %110 = load double*, double** %a.addr, align 8
  %arrayidx92 = getelementptr inbounds double, double* %110, i64 %idxprom91
  store double %108, double* %arrayidx92, align 8
  %111 = load i32, i32* %m2, align 4
  %112 = load i32, i32* %j1, align 4
  %add93 = add nsw i32 %112, %111
  store i32 %add93, i32* %j1, align 4
  %113 = load i32, i32* %m2, align 4
  %mul94 = mul nsw i32 2, %113
  %114 = load i32, i32* %k1, align 4
  %add95 = add nsw i32 %114, %mul94
  store i32 %add95, i32* %k1, align 4
  %115 = load i32, i32* %j1, align 4
  %idxprom96 = sext i32 %115 to i64
  %116 = load double*, double** %a.addr, align 8
  %arrayidx97 = getelementptr inbounds double, double* %116, i64 %idxprom96
  %117 = load double, double* %arrayidx97, align 8
  store double %117, double* %xr, align 8
  %118 = load i32, i32* %j1, align 4
  %add98 = add nsw i32 %118, 1
  %idxprom99 = sext i32 %add98 to i64
  %119 = load double*, double** %a.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %119, i64 %idxprom99
  %120 = load double, double* %arrayidx100, align 8
  %sub101 = fsub double -0.000000e+00, %120
  store double %sub101, double* %xi, align 8
  %121 = load i32, i32* %k1, align 4
  %idxprom102 = sext i32 %121 to i64
  %122 = load double*, double** %a.addr, align 8
  %arrayidx103 = getelementptr inbounds double, double* %122, i64 %idxprom102
  %123 = load double, double* %arrayidx103, align 8
  store double %123, double* %yr, align 8
  %124 = load i32, i32* %k1, align 4
  %add104 = add nsw i32 %124, 1
  %idxprom105 = sext i32 %add104 to i64
  %125 = load double*, double** %a.addr, align 8
  %arrayidx106 = getelementptr inbounds double, double* %125, i64 %idxprom105
  %126 = load double, double* %arrayidx106, align 8
  %sub107 = fsub double -0.000000e+00, %126
  store double %sub107, double* %yi, align 8
  %127 = load double, double* %yr, align 8
  %128 = load i32, i32* %j1, align 4
  %idxprom108 = sext i32 %128 to i64
  %129 = load double*, double** %a.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %129, i64 %idxprom108
  store double %127, double* %arrayidx109, align 8
  %130 = load double, double* %yi, align 8
  %131 = load i32, i32* %j1, align 4
  %add110 = add nsw i32 %131, 1
  %idxprom111 = sext i32 %add110 to i64
  %132 = load double*, double** %a.addr, align 8
  %arrayidx112 = getelementptr inbounds double, double* %132, i64 %idxprom111
  store double %130, double* %arrayidx112, align 8
  %133 = load double, double* %xr, align 8
  %134 = load i32, i32* %k1, align 4
  %idxprom113 = sext i32 %134 to i64
  %135 = load double*, double** %a.addr, align 8
  %arrayidx114 = getelementptr inbounds double, double* %135, i64 %idxprom113
  store double %133, double* %arrayidx114, align 8
  %136 = load double, double* %xi, align 8
  %137 = load i32, i32* %k1, align 4
  %add115 = add nsw i32 %137, 1
  %idxprom116 = sext i32 %add115 to i64
  %138 = load double*, double** %a.addr, align 8
  %arrayidx117 = getelementptr inbounds double, double* %138, i64 %idxprom116
  store double %136, double* %arrayidx117, align 8
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.14
  %139 = load i32, i32* %j, align 4
  %inc119 = add nsw i32 %139, 1
  store i32 %inc119, i32* %j, align 4
  br label %for.cond.12

for.end.120:                                      ; preds = %for.cond.12
  %140 = load i32, i32* %k, align 4
  %mul121 = mul nsw i32 2, %140
  %141 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %141 to i64
  %142 = load i32*, i32** %ip.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %142, i64 %idxprom122
  %143 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %mul121, %143
  store i32 %add124, i32* %k1, align 4
  %144 = load i32, i32* %k1, align 4
  %add125 = add nsw i32 %144, 1
  %idxprom126 = sext i32 %add125 to i64
  %145 = load double*, double** %a.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %145, i64 %idxprom126
  %146 = load double, double* %arrayidx127, align 8
  %sub128 = fsub double -0.000000e+00, %146
  %147 = load i32, i32* %k1, align 4
  %add129 = add nsw i32 %147, 1
  %idxprom130 = sext i32 %add129 to i64
  %148 = load double*, double** %a.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %148, i64 %idxprom130
  store double %sub128, double* %arrayidx131, align 8
  %149 = load i32, i32* %k1, align 4
  %150 = load i32, i32* %m2, align 4
  %add132 = add nsw i32 %149, %150
  store i32 %add132, i32* %j1, align 4
  %151 = load i32, i32* %j1, align 4
  %152 = load i32, i32* %m2, align 4
  %add133 = add nsw i32 %151, %152
  store i32 %add133, i32* %k1, align 4
  %153 = load i32, i32* %j1, align 4
  %idxprom134 = sext i32 %153 to i64
  %154 = load double*, double** %a.addr, align 8
  %arrayidx135 = getelementptr inbounds double, double* %154, i64 %idxprom134
  %155 = load double, double* %arrayidx135, align 8
  store double %155, double* %xr, align 8
  %156 = load i32, i32* %j1, align 4
  %add136 = add nsw i32 %156, 1
  %idxprom137 = sext i32 %add136 to i64
  %157 = load double*, double** %a.addr, align 8
  %arrayidx138 = getelementptr inbounds double, double* %157, i64 %idxprom137
  %158 = load double, double* %arrayidx138, align 8
  %sub139 = fsub double -0.000000e+00, %158
  store double %sub139, double* %xi, align 8
  %159 = load i32, i32* %k1, align 4
  %idxprom140 = sext i32 %159 to i64
  %160 = load double*, double** %a.addr, align 8
  %arrayidx141 = getelementptr inbounds double, double* %160, i64 %idxprom140
  %161 = load double, double* %arrayidx141, align 8
  store double %161, double* %yr, align 8
  %162 = load i32, i32* %k1, align 4
  %add142 = add nsw i32 %162, 1
  %idxprom143 = sext i32 %add142 to i64
  %163 = load double*, double** %a.addr, align 8
  %arrayidx144 = getelementptr inbounds double, double* %163, i64 %idxprom143
  %164 = load double, double* %arrayidx144, align 8
  %sub145 = fsub double -0.000000e+00, %164
  store double %sub145, double* %yi, align 8
  %165 = load double, double* %yr, align 8
  %166 = load i32, i32* %j1, align 4
  %idxprom146 = sext i32 %166 to i64
  %167 = load double*, double** %a.addr, align 8
  %arrayidx147 = getelementptr inbounds double, double* %167, i64 %idxprom146
  store double %165, double* %arrayidx147, align 8
  %168 = load double, double* %yi, align 8
  %169 = load i32, i32* %j1, align 4
  %add148 = add nsw i32 %169, 1
  %idxprom149 = sext i32 %add148 to i64
  %170 = load double*, double** %a.addr, align 8
  %arrayidx150 = getelementptr inbounds double, double* %170, i64 %idxprom149
  store double %168, double* %arrayidx150, align 8
  %171 = load double, double* %xr, align 8
  %172 = load i32, i32* %k1, align 4
  %idxprom151 = sext i32 %172 to i64
  %173 = load double*, double** %a.addr, align 8
  %arrayidx152 = getelementptr inbounds double, double* %173, i64 %idxprom151
  store double %171, double* %arrayidx152, align 8
  %174 = load double, double* %xi, align 8
  %175 = load i32, i32* %k1, align 4
  %add153 = add nsw i32 %175, 1
  %idxprom154 = sext i32 %add153 to i64
  %176 = load double*, double** %a.addr, align 8
  %arrayidx155 = getelementptr inbounds double, double* %176, i64 %idxprom154
  store double %174, double* %arrayidx155, align 8
  %177 = load i32, i32* %m2, align 4
  %178 = load i32, i32* %k1, align 4
  %add156 = add nsw i32 %178, %177
  store i32 %add156, i32* %k1, align 4
  %179 = load i32, i32* %k1, align 4
  %add157 = add nsw i32 %179, 1
  %idxprom158 = sext i32 %add157 to i64
  %180 = load double*, double** %a.addr, align 8
  %arrayidx159 = getelementptr inbounds double, double* %180, i64 %idxprom158
  %181 = load double, double* %arrayidx159, align 8
  %sub160 = fsub double -0.000000e+00, %181
  %182 = load i32, i32* %k1, align 4
  %add161 = add nsw i32 %182, 1
  %idxprom162 = sext i32 %add161 to i64
  %183 = load double*, double** %a.addr, align 8
  %arrayidx163 = getelementptr inbounds double, double* %183, i64 %idxprom162
  store double %sub160, double* %arrayidx163, align 8
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.end.120
  %184 = load i32, i32* %k, align 4
  %inc165 = add nsw i32 %184, 1
  store i32 %inc165, i32* %k, align 4
  br label %for.cond.9

for.end.166:                                      ; preds = %for.cond.9
  br label %if.end

if.else:                                          ; preds = %while.end
  %185 = load double*, double** %a.addr, align 8
  %arrayidx167 = getelementptr inbounds double, double* %185, i64 1
  %186 = load double, double* %arrayidx167, align 8
  %sub168 = fsub double -0.000000e+00, %186
  %187 = load double*, double** %a.addr, align 8
  %arrayidx169 = getelementptr inbounds double, double* %187, i64 1
  store double %sub168, double* %arrayidx169, align 8
  %188 = load i32, i32* %m2, align 4
  %add170 = add nsw i32 %188, 1
  %idxprom171 = sext i32 %add170 to i64
  %189 = load double*, double** %a.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %189, i64 %idxprom171
  %190 = load double, double* %arrayidx172, align 8
  %sub173 = fsub double -0.000000e+00, %190
  %191 = load i32, i32* %m2, align 4
  %add174 = add nsw i32 %191, 1
  %idxprom175 = sext i32 %add174 to i64
  %192 = load double*, double** %a.addr, align 8
  %arrayidx176 = getelementptr inbounds double, double* %192, i64 %idxprom175
  store double %sub173, double* %arrayidx176, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.260, %if.else
  %193 = load i32, i32* %k, align 4
  %194 = load i32, i32* %m, align 4
  %cmp178 = icmp slt i32 %193, %194
  br i1 %cmp178, label %for.body.179, label %for.end.262

for.body.179:                                     ; preds = %for.cond.177
  store i32 0, i32* %j, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.237, %for.body.179
  %195 = load i32, i32* %j, align 4
  %196 = load i32, i32* %k, align 4
  %cmp181 = icmp slt i32 %195, %196
  br i1 %cmp181, label %for.body.182, label %for.end.239

for.body.182:                                     ; preds = %for.cond.180
  %197 = load i32, i32* %j, align 4
  %mul183 = mul nsw i32 2, %197
  %198 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %198 to i64
  %199 = load i32*, i32** %ip.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %199, i64 %idxprom184
  %200 = load i32, i32* %arrayidx185, align 4
  %add186 = add nsw i32 %mul183, %200
  store i32 %add186, i32* %j1, align 4
  %201 = load i32, i32* %k, align 4
  %mul187 = mul nsw i32 2, %201
  %202 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %202 to i64
  %203 = load i32*, i32** %ip.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %203, i64 %idxprom188
  %204 = load i32, i32* %arrayidx189, align 4
  %add190 = add nsw i32 %mul187, %204
  store i32 %add190, i32* %k1, align 4
  %205 = load i32, i32* %j1, align 4
  %idxprom191 = sext i32 %205 to i64
  %206 = load double*, double** %a.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %206, i64 %idxprom191
  %207 = load double, double* %arrayidx192, align 8
  store double %207, double* %xr, align 8
  %208 = load i32, i32* %j1, align 4
  %add193 = add nsw i32 %208, 1
  %idxprom194 = sext i32 %add193 to i64
  %209 = load double*, double** %a.addr, align 8
  %arrayidx195 = getelementptr inbounds double, double* %209, i64 %idxprom194
  %210 = load double, double* %arrayidx195, align 8
  %sub196 = fsub double -0.000000e+00, %210
  store double %sub196, double* %xi, align 8
  %211 = load i32, i32* %k1, align 4
  %idxprom197 = sext i32 %211 to i64
  %212 = load double*, double** %a.addr, align 8
  %arrayidx198 = getelementptr inbounds double, double* %212, i64 %idxprom197
  %213 = load double, double* %arrayidx198, align 8
  store double %213, double* %yr, align 8
  %214 = load i32, i32* %k1, align 4
  %add199 = add nsw i32 %214, 1
  %idxprom200 = sext i32 %add199 to i64
  %215 = load double*, double** %a.addr, align 8
  %arrayidx201 = getelementptr inbounds double, double* %215, i64 %idxprom200
  %216 = load double, double* %arrayidx201, align 8
  %sub202 = fsub double -0.000000e+00, %216
  store double %sub202, double* %yi, align 8
  %217 = load double, double* %yr, align 8
  %218 = load i32, i32* %j1, align 4
  %idxprom203 = sext i32 %218 to i64
  %219 = load double*, double** %a.addr, align 8
  %arrayidx204 = getelementptr inbounds double, double* %219, i64 %idxprom203
  store double %217, double* %arrayidx204, align 8
  %220 = load double, double* %yi, align 8
  %221 = load i32, i32* %j1, align 4
  %add205 = add nsw i32 %221, 1
  %idxprom206 = sext i32 %add205 to i64
  %222 = load double*, double** %a.addr, align 8
  %arrayidx207 = getelementptr inbounds double, double* %222, i64 %idxprom206
  store double %220, double* %arrayidx207, align 8
  %223 = load double, double* %xr, align 8
  %224 = load i32, i32* %k1, align 4
  %idxprom208 = sext i32 %224 to i64
  %225 = load double*, double** %a.addr, align 8
  %arrayidx209 = getelementptr inbounds double, double* %225, i64 %idxprom208
  store double %223, double* %arrayidx209, align 8
  %226 = load double, double* %xi, align 8
  %227 = load i32, i32* %k1, align 4
  %add210 = add nsw i32 %227, 1
  %idxprom211 = sext i32 %add210 to i64
  %228 = load double*, double** %a.addr, align 8
  %arrayidx212 = getelementptr inbounds double, double* %228, i64 %idxprom211
  store double %226, double* %arrayidx212, align 8
  %229 = load i32, i32* %m2, align 4
  %230 = load i32, i32* %j1, align 4
  %add213 = add nsw i32 %230, %229
  store i32 %add213, i32* %j1, align 4
  %231 = load i32, i32* %m2, align 4
  %232 = load i32, i32* %k1, align 4
  %add214 = add nsw i32 %232, %231
  store i32 %add214, i32* %k1, align 4
  %233 = load i32, i32* %j1, align 4
  %idxprom215 = sext i32 %233 to i64
  %234 = load double*, double** %a.addr, align 8
  %arrayidx216 = getelementptr inbounds double, double* %234, i64 %idxprom215
  %235 = load double, double* %arrayidx216, align 8
  store double %235, double* %xr, align 8
  %236 = load i32, i32* %j1, align 4
  %add217 = add nsw i32 %236, 1
  %idxprom218 = sext i32 %add217 to i64
  %237 = load double*, double** %a.addr, align 8
  %arrayidx219 = getelementptr inbounds double, double* %237, i64 %idxprom218
  %238 = load double, double* %arrayidx219, align 8
  %sub220 = fsub double -0.000000e+00, %238
  store double %sub220, double* %xi, align 8
  %239 = load i32, i32* %k1, align 4
  %idxprom221 = sext i32 %239 to i64
  %240 = load double*, double** %a.addr, align 8
  %arrayidx222 = getelementptr inbounds double, double* %240, i64 %idxprom221
  %241 = load double, double* %arrayidx222, align 8
  store double %241, double* %yr, align 8
  %242 = load i32, i32* %k1, align 4
  %add223 = add nsw i32 %242, 1
  %idxprom224 = sext i32 %add223 to i64
  %243 = load double*, double** %a.addr, align 8
  %arrayidx225 = getelementptr inbounds double, double* %243, i64 %idxprom224
  %244 = load double, double* %arrayidx225, align 8
  %sub226 = fsub double -0.000000e+00, %244
  store double %sub226, double* %yi, align 8
  %245 = load double, double* %yr, align 8
  %246 = load i32, i32* %j1, align 4
  %idxprom227 = sext i32 %246 to i64
  %247 = load double*, double** %a.addr, align 8
  %arrayidx228 = getelementptr inbounds double, double* %247, i64 %idxprom227
  store double %245, double* %arrayidx228, align 8
  %248 = load double, double* %yi, align 8
  %249 = load i32, i32* %j1, align 4
  %add229 = add nsw i32 %249, 1
  %idxprom230 = sext i32 %add229 to i64
  %250 = load double*, double** %a.addr, align 8
  %arrayidx231 = getelementptr inbounds double, double* %250, i64 %idxprom230
  store double %248, double* %arrayidx231, align 8
  %251 = load double, double* %xr, align 8
  %252 = load i32, i32* %k1, align 4
  %idxprom232 = sext i32 %252 to i64
  %253 = load double*, double** %a.addr, align 8
  %arrayidx233 = getelementptr inbounds double, double* %253, i64 %idxprom232
  store double %251, double* %arrayidx233, align 8
  %254 = load double, double* %xi, align 8
  %255 = load i32, i32* %k1, align 4
  %add234 = add nsw i32 %255, 1
  %idxprom235 = sext i32 %add234 to i64
  %256 = load double*, double** %a.addr, align 8
  %arrayidx236 = getelementptr inbounds double, double* %256, i64 %idxprom235
  store double %254, double* %arrayidx236, align 8
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.body.182
  %257 = load i32, i32* %j, align 4
  %inc238 = add nsw i32 %257, 1
  store i32 %inc238, i32* %j, align 4
  br label %for.cond.180

for.end.239:                                      ; preds = %for.cond.180
  %258 = load i32, i32* %k, align 4
  %mul240 = mul nsw i32 2, %258
  %259 = load i32, i32* %k, align 4
  %idxprom241 = sext i32 %259 to i64
  %260 = load i32*, i32** %ip.addr, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %260, i64 %idxprom241
  %261 = load i32, i32* %arrayidx242, align 4
  %add243 = add nsw i32 %mul240, %261
  store i32 %add243, i32* %k1, align 4
  %262 = load i32, i32* %k1, align 4
  %add244 = add nsw i32 %262, 1
  %idxprom245 = sext i32 %add244 to i64
  %263 = load double*, double** %a.addr, align 8
  %arrayidx246 = getelementptr inbounds double, double* %263, i64 %idxprom245
  %264 = load double, double* %arrayidx246, align 8
  %sub247 = fsub double -0.000000e+00, %264
  %265 = load i32, i32* %k1, align 4
  %add248 = add nsw i32 %265, 1
  %idxprom249 = sext i32 %add248 to i64
  %266 = load double*, double** %a.addr, align 8
  %arrayidx250 = getelementptr inbounds double, double* %266, i64 %idxprom249
  store double %sub247, double* %arrayidx250, align 8
  %267 = load i32, i32* %k1, align 4
  %268 = load i32, i32* %m2, align 4
  %add251 = add nsw i32 %267, %268
  %add252 = add nsw i32 %add251, 1
  %idxprom253 = sext i32 %add252 to i64
  %269 = load double*, double** %a.addr, align 8
  %arrayidx254 = getelementptr inbounds double, double* %269, i64 %idxprom253
  %270 = load double, double* %arrayidx254, align 8
  %sub255 = fsub double -0.000000e+00, %270
  %271 = load i32, i32* %k1, align 4
  %272 = load i32, i32* %m2, align 4
  %add256 = add nsw i32 %271, %272
  %add257 = add nsw i32 %add256, 1
  %idxprom258 = sext i32 %add257 to i64
  %273 = load double*, double** %a.addr, align 8
  %arrayidx259 = getelementptr inbounds double, double* %273, i64 %idxprom258
  store double %sub255, double* %arrayidx259, align 8
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.end.239
  %274 = load i32, i32* %k, align 4
  %inc261 = add nsw i32 %274, 1
  store i32 %inc261, i32* %k, align 4
  br label %for.cond.177

for.end.262:                                      ; preds = %for.cond.177
  br label %if.end

if.end:                                           ; preds = %for.end.262, %for.end.166
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitrv216neg(double* %a) #0 {
entry:
  %a.addr = alloca double*, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %x4r = alloca double, align 8
  %x4i = alloca double, align 8
  %x5r = alloca double, align 8
  %x5i = alloca double, align 8
  %x6r = alloca double, align 8
  %x6i = alloca double, align 8
  %x7r = alloca double, align 8
  %x7i = alloca double, align 8
  %x8r = alloca double, align 8
  %x8i = alloca double, align 8
  %x9r = alloca double, align 8
  %x9i = alloca double, align 8
  %x10r = alloca double, align 8
  %x10i = alloca double, align 8
  %x11r = alloca double, align 8
  %x11i = alloca double, align 8
  %x12r = alloca double, align 8
  %x12i = alloca double, align 8
  %x13r = alloca double, align 8
  %x13i = alloca double, align 8
  %x14r = alloca double, align 8
  %x14i = alloca double, align 8
  %x15r = alloca double, align 8
  %x15i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %x1r, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 3
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %x1i, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 4
  %5 = load double, double* %arrayidx2, align 8
  store double %5, double* %x2r, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 5
  %7 = load double, double* %arrayidx3, align 8
  store double %7, double* %x2i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 6
  %9 = load double, double* %arrayidx4, align 8
  store double %9, double* %x3r, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 7
  %11 = load double, double* %arrayidx5, align 8
  store double %11, double* %x3i, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 8
  %13 = load double, double* %arrayidx6, align 8
  store double %13, double* %x4r, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 9
  %15 = load double, double* %arrayidx7, align 8
  store double %15, double* %x4i, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 10
  %17 = load double, double* %arrayidx8, align 8
  store double %17, double* %x5r, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 11
  %19 = load double, double* %arrayidx9, align 8
  store double %19, double* %x5i, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 12
  %21 = load double, double* %arrayidx10, align 8
  store double %21, double* %x6r, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %22, i64 13
  %23 = load double, double* %arrayidx11, align 8
  store double %23, double* %x6i, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %24, i64 14
  %25 = load double, double* %arrayidx12, align 8
  store double %25, double* %x7r, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %26, i64 15
  %27 = load double, double* %arrayidx13, align 8
  store double %27, double* %x7i, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %28, i64 16
  %29 = load double, double* %arrayidx14, align 8
  store double %29, double* %x8r, align 8
  %30 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %30, i64 17
  %31 = load double, double* %arrayidx15, align 8
  store double %31, double* %x8i, align 8
  %32 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %32, i64 18
  %33 = load double, double* %arrayidx16, align 8
  store double %33, double* %x9r, align 8
  %34 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %34, i64 19
  %35 = load double, double* %arrayidx17, align 8
  store double %35, double* %x9i, align 8
  %36 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %36, i64 20
  %37 = load double, double* %arrayidx18, align 8
  store double %37, double* %x10r, align 8
  %38 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %38, i64 21
  %39 = load double, double* %arrayidx19, align 8
  store double %39, double* %x10i, align 8
  %40 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %40, i64 22
  %41 = load double, double* %arrayidx20, align 8
  store double %41, double* %x11r, align 8
  %42 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %42, i64 23
  %43 = load double, double* %arrayidx21, align 8
  store double %43, double* %x11i, align 8
  %44 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %44, i64 24
  %45 = load double, double* %arrayidx22, align 8
  store double %45, double* %x12r, align 8
  %46 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %46, i64 25
  %47 = load double, double* %arrayidx23, align 8
  store double %47, double* %x12i, align 8
  %48 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %48, i64 26
  %49 = load double, double* %arrayidx24, align 8
  store double %49, double* %x13r, align 8
  %50 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %50, i64 27
  %51 = load double, double* %arrayidx25, align 8
  store double %51, double* %x13i, align 8
  %52 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %52, i64 28
  %53 = load double, double* %arrayidx26, align 8
  store double %53, double* %x14r, align 8
  %54 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %54, i64 29
  %55 = load double, double* %arrayidx27, align 8
  store double %55, double* %x14i, align 8
  %56 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %56, i64 30
  %57 = load double, double* %arrayidx28, align 8
  store double %57, double* %x15r, align 8
  %58 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %58, i64 31
  %59 = load double, double* %arrayidx29, align 8
  store double %59, double* %x15i, align 8
  %60 = load double, double* %x15r, align 8
  %61 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %61, i64 2
  store double %60, double* %arrayidx30, align 8
  %62 = load double, double* %x15i, align 8
  %63 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %63, i64 3
  store double %62, double* %arrayidx31, align 8
  %64 = load double, double* %x7r, align 8
  %65 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %65, i64 4
  store double %64, double* %arrayidx32, align 8
  %66 = load double, double* %x7i, align 8
  %67 = load double*, double** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %67, i64 5
  store double %66, double* %arrayidx33, align 8
  %68 = load double, double* %x11r, align 8
  %69 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %69, i64 6
  store double %68, double* %arrayidx34, align 8
  %70 = load double, double* %x11i, align 8
  %71 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %71, i64 7
  store double %70, double* %arrayidx35, align 8
  %72 = load double, double* %x3r, align 8
  %73 = load double*, double** %a.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %73, i64 8
  store double %72, double* %arrayidx36, align 8
  %74 = load double, double* %x3i, align 8
  %75 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %75, i64 9
  store double %74, double* %arrayidx37, align 8
  %76 = load double, double* %x13r, align 8
  %77 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %77, i64 10
  store double %76, double* %arrayidx38, align 8
  %78 = load double, double* %x13i, align 8
  %79 = load double*, double** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %79, i64 11
  store double %78, double* %arrayidx39, align 8
  %80 = load double, double* %x5r, align 8
  %81 = load double*, double** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %81, i64 12
  store double %80, double* %arrayidx40, align 8
  %82 = load double, double* %x5i, align 8
  %83 = load double*, double** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %83, i64 13
  store double %82, double* %arrayidx41, align 8
  %84 = load double, double* %x9r, align 8
  %85 = load double*, double** %a.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %85, i64 14
  store double %84, double* %arrayidx42, align 8
  %86 = load double, double* %x9i, align 8
  %87 = load double*, double** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %87, i64 15
  store double %86, double* %arrayidx43, align 8
  %88 = load double, double* %x1r, align 8
  %89 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %89, i64 16
  store double %88, double* %arrayidx44, align 8
  %90 = load double, double* %x1i, align 8
  %91 = load double*, double** %a.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %91, i64 17
  store double %90, double* %arrayidx45, align 8
  %92 = load double, double* %x14r, align 8
  %93 = load double*, double** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %93, i64 18
  store double %92, double* %arrayidx46, align 8
  %94 = load double, double* %x14i, align 8
  %95 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %95, i64 19
  store double %94, double* %arrayidx47, align 8
  %96 = load double, double* %x6r, align 8
  %97 = load double*, double** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %97, i64 20
  store double %96, double* %arrayidx48, align 8
  %98 = load double, double* %x6i, align 8
  %99 = load double*, double** %a.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %99, i64 21
  store double %98, double* %arrayidx49, align 8
  %100 = load double, double* %x10r, align 8
  %101 = load double*, double** %a.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %101, i64 22
  store double %100, double* %arrayidx50, align 8
  %102 = load double, double* %x10i, align 8
  %103 = load double*, double** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %103, i64 23
  store double %102, double* %arrayidx51, align 8
  %104 = load double, double* %x2r, align 8
  %105 = load double*, double** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %105, i64 24
  store double %104, double* %arrayidx52, align 8
  %106 = load double, double* %x2i, align 8
  %107 = load double*, double** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %107, i64 25
  store double %106, double* %arrayidx53, align 8
  %108 = load double, double* %x12r, align 8
  %109 = load double*, double** %a.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %109, i64 26
  store double %108, double* %arrayidx54, align 8
  %110 = load double, double* %x12i, align 8
  %111 = load double*, double** %a.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %111, i64 27
  store double %110, double* %arrayidx55, align 8
  %112 = load double, double* %x4r, align 8
  %113 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %113, i64 28
  store double %112, double* %arrayidx56, align 8
  %114 = load double, double* %x4i, align 8
  %115 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %115, i64 29
  store double %114, double* %arrayidx57, align 8
  %116 = load double, double* %x8r, align 8
  %117 = load double*, double** %a.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %117, i64 30
  store double %116, double* %arrayidx58, align 8
  %118 = load double, double* %x8i, align 8
  %119 = load double*, double** %a.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %119, i64 31
  store double %118, double* %arrayidx59, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitrv208neg(double* %a) #0 {
entry:
  %a.addr = alloca double*, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %x4r = alloca double, align 8
  %x4i = alloca double, align 8
  %x5r = alloca double, align 8
  %x5i = alloca double, align 8
  %x6r = alloca double, align 8
  %x6i = alloca double, align 8
  %x7r = alloca double, align 8
  %x7i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %x1r, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 3
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %x1i, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 4
  %5 = load double, double* %arrayidx2, align 8
  store double %5, double* %x2r, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 5
  %7 = load double, double* %arrayidx3, align 8
  store double %7, double* %x2i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 6
  %9 = load double, double* %arrayidx4, align 8
  store double %9, double* %x3r, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 7
  %11 = load double, double* %arrayidx5, align 8
  store double %11, double* %x3i, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 8
  %13 = load double, double* %arrayidx6, align 8
  store double %13, double* %x4r, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 9
  %15 = load double, double* %arrayidx7, align 8
  store double %15, double* %x4i, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 10
  %17 = load double, double* %arrayidx8, align 8
  store double %17, double* %x5r, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 11
  %19 = load double, double* %arrayidx9, align 8
  store double %19, double* %x5i, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 12
  %21 = load double, double* %arrayidx10, align 8
  store double %21, double* %x6r, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %22, i64 13
  %23 = load double, double* %arrayidx11, align 8
  store double %23, double* %x6i, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %24, i64 14
  %25 = load double, double* %arrayidx12, align 8
  store double %25, double* %x7r, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %26, i64 15
  %27 = load double, double* %arrayidx13, align 8
  store double %27, double* %x7i, align 8
  %28 = load double, double* %x7r, align 8
  %29 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 2
  store double %28, double* %arrayidx14, align 8
  %30 = load double, double* %x7i, align 8
  %31 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %31, i64 3
  store double %30, double* %arrayidx15, align 8
  %32 = load double, double* %x3r, align 8
  %33 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %33, i64 4
  store double %32, double* %arrayidx16, align 8
  %34 = load double, double* %x3i, align 8
  %35 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %35, i64 5
  store double %34, double* %arrayidx17, align 8
  %36 = load double, double* %x5r, align 8
  %37 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %37, i64 6
  store double %36, double* %arrayidx18, align 8
  %38 = load double, double* %x5i, align 8
  %39 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %39, i64 7
  store double %38, double* %arrayidx19, align 8
  %40 = load double, double* %x1r, align 8
  %41 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %41, i64 8
  store double %40, double* %arrayidx20, align 8
  %42 = load double, double* %x1i, align 8
  %43 = load double*, double** %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %43, i64 9
  store double %42, double* %arrayidx21, align 8
  %44 = load double, double* %x6r, align 8
  %45 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %45, i64 10
  store double %44, double* %arrayidx22, align 8
  %46 = load double, double* %x6i, align 8
  %47 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %47, i64 11
  store double %46, double* %arrayidx23, align 8
  %48 = load double, double* %x2r, align 8
  %49 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %49, i64 12
  store double %48, double* %arrayidx24, align 8
  %50 = load double, double* %x2i, align 8
  %51 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %51, i64 13
  store double %50, double* %arrayidx25, align 8
  %52 = load double, double* %x4r, align 8
  %53 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %53, i64 14
  store double %52, double* %arrayidx26, align 8
  %54 = load double, double* %x4i, align 8
  %55 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %55, i64 15
  store double %54, double* %arrayidx27, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftb040(double* %a) #0 {
entry:
  %a.addr = alloca double*, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 4
  %3 = load double, double* %arrayidx1, align 8
  %add = fadd double %1, %3
  store double %add, double* %x0r, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx2, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 5
  %7 = load double, double* %arrayidx3, align 8
  %add4 = fadd double %5, %7
  store double %add4, double* %x0i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx5, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 4
  %11 = load double, double* %arrayidx6, align 8
  %sub = fsub double %9, %11
  store double %sub, double* %x1r, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx7, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 5
  %15 = load double, double* %arrayidx8, align 8
  %sub9 = fsub double %13, %15
  store double %sub9, double* %x1i, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %16, i64 2
  %17 = load double, double* %arrayidx10, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 6
  %19 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %17, %19
  store double %add12, double* %x2r, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 3
  %21 = load double, double* %arrayidx13, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %22, i64 7
  %23 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %21, %23
  store double %add15, double* %x2i, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %24, i64 2
  %25 = load double, double* %arrayidx16, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 6
  %27 = load double, double* %arrayidx17, align 8
  %sub18 = fsub double %25, %27
  store double %sub18, double* %x3r, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %28, i64 3
  %29 = load double, double* %arrayidx19, align 8
  %30 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %30, i64 7
  %31 = load double, double* %arrayidx20, align 8
  %sub21 = fsub double %29, %31
  store double %sub21, double* %x3i, align 8
  %32 = load double, double* %x0r, align 8
  %33 = load double, double* %x2r, align 8
  %add22 = fadd double %32, %33
  %34 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %34, i64 0
  store double %add22, double* %arrayidx23, align 8
  %35 = load double, double* %x0i, align 8
  %36 = load double, double* %x2i, align 8
  %add24 = fadd double %35, %36
  %37 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %37, i64 1
  store double %add24, double* %arrayidx25, align 8
  %38 = load double, double* %x0r, align 8
  %39 = load double, double* %x2r, align 8
  %sub26 = fsub double %38, %39
  %40 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %40, i64 4
  store double %sub26, double* %arrayidx27, align 8
  %41 = load double, double* %x0i, align 8
  %42 = load double, double* %x2i, align 8
  %sub28 = fsub double %41, %42
  %43 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %43, i64 5
  store double %sub28, double* %arrayidx29, align 8
  %44 = load double, double* %x1r, align 8
  %45 = load double, double* %x3i, align 8
  %add30 = fadd double %44, %45
  %46 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %46, i64 2
  store double %add30, double* %arrayidx31, align 8
  %47 = load double, double* %x1i, align 8
  %48 = load double, double* %x3r, align 8
  %sub32 = fsub double %47, %48
  %49 = load double*, double** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %49, i64 3
  store double %sub32, double* %arrayidx33, align 8
  %50 = load double, double* %x1r, align 8
  %51 = load double, double* %x3i, align 8
  %sub34 = fsub double %50, %51
  %52 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %52, i64 6
  store double %sub34, double* %arrayidx35, align 8
  %53 = load double, double* %x1i, align 8
  %54 = load double, double* %x3r, align 8
  %add36 = fadd double %53, %54
  %55 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %55, i64 7
  store double %add36, double* %arrayidx37, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftmdl1(i32 %n, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %mh = alloca i32, align 4
  %wn4r = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 3
  store i32 %shr, i32* %mh, align 4
  %1 = load i32, i32* %mh, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %m, align 4
  %2 = load i32, i32* %m, align 4
  store i32 %2, i32* %j1, align 4
  %3 = load i32, i32* %j1, align 4
  %4 = load i32, i32* %m, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %j2, align 4
  %5 = load i32, i32* %j2, align 4
  %6 = load i32, i32* %m, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %j3, align 4
  %7 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 0
  %8 = load double, double* %arrayidx, align 8
  %9 = load i32, i32* %j2, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx2, align 8
  %add3 = fadd double %8, %11
  store double %add3, double* %x0r, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx4, align 8
  %14 = load i32, i32* %j2, align 4
  %add5 = add nsw i32 %14, 1
  %idxprom6 = sext i32 %add5 to i64
  %15 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %15, i64 %idxprom6
  %16 = load double, double* %arrayidx7, align 8
  %add8 = fadd double %13, %16
  store double %add8, double* %x0i, align 8
  %17 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx9, align 8
  %19 = load i32, i32* %j2, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %20, i64 %idxprom10
  %21 = load double, double* %arrayidx11, align 8
  %sub = fsub double %18, %21
  store double %sub, double* %x1r, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %22, i64 1
  %23 = load double, double* %arrayidx12, align 8
  %24 = load i32, i32* %j2, align 4
  %add13 = add nsw i32 %24, 1
  %idxprom14 = sext i32 %add13 to i64
  %25 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %25, i64 %idxprom14
  %26 = load double, double* %arrayidx15, align 8
  %sub16 = fsub double %23, %26
  store double %sub16, double* %x1i, align 8
  %27 = load i32, i32* %j1, align 4
  %idxprom17 = sext i32 %27 to i64
  %28 = load double*, double** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %28, i64 %idxprom17
  %29 = load double, double* %arrayidx18, align 8
  %30 = load i32, i32* %j3, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %31, i64 %idxprom19
  %32 = load double, double* %arrayidx20, align 8
  %add21 = fadd double %29, %32
  store double %add21, double* %x2r, align 8
  %33 = load i32, i32* %j1, align 4
  %add22 = add nsw i32 %33, 1
  %idxprom23 = sext i32 %add22 to i64
  %34 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %34, i64 %idxprom23
  %35 = load double, double* %arrayidx24, align 8
  %36 = load i32, i32* %j3, align 4
  %add25 = add nsw i32 %36, 1
  %idxprom26 = sext i32 %add25 to i64
  %37 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %37, i64 %idxprom26
  %38 = load double, double* %arrayidx27, align 8
  %add28 = fadd double %35, %38
  store double %add28, double* %x2i, align 8
  %39 = load i32, i32* %j1, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %40, i64 %idxprom29
  %41 = load double, double* %arrayidx30, align 8
  %42 = load i32, i32* %j3, align 4
  %idxprom31 = sext i32 %42 to i64
  %43 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %43, i64 %idxprom31
  %44 = load double, double* %arrayidx32, align 8
  %sub33 = fsub double %41, %44
  store double %sub33, double* %x3r, align 8
  %45 = load i32, i32* %j1, align 4
  %add34 = add nsw i32 %45, 1
  %idxprom35 = sext i32 %add34 to i64
  %46 = load double*, double** %a.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %46, i64 %idxprom35
  %47 = load double, double* %arrayidx36, align 8
  %48 = load i32, i32* %j3, align 4
  %add37 = add nsw i32 %48, 1
  %idxprom38 = sext i32 %add37 to i64
  %49 = load double*, double** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %49, i64 %idxprom38
  %50 = load double, double* %arrayidx39, align 8
  %sub40 = fsub double %47, %50
  store double %sub40, double* %x3i, align 8
  %51 = load double, double* %x0r, align 8
  %52 = load double, double* %x2r, align 8
  %add41 = fadd double %51, %52
  %53 = load double*, double** %a.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %53, i64 0
  store double %add41, double* %arrayidx42, align 8
  %54 = load double, double* %x0i, align 8
  %55 = load double, double* %x2i, align 8
  %add43 = fadd double %54, %55
  %56 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %56, i64 1
  store double %add43, double* %arrayidx44, align 8
  %57 = load double, double* %x0r, align 8
  %58 = load double, double* %x2r, align 8
  %sub45 = fsub double %57, %58
  %59 = load i32, i32* %j1, align 4
  %idxprom46 = sext i32 %59 to i64
  %60 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %60, i64 %idxprom46
  store double %sub45, double* %arrayidx47, align 8
  %61 = load double, double* %x0i, align 8
  %62 = load double, double* %x2i, align 8
  %sub48 = fsub double %61, %62
  %63 = load i32, i32* %j1, align 4
  %add49 = add nsw i32 %63, 1
  %idxprom50 = sext i32 %add49 to i64
  %64 = load double*, double** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %64, i64 %idxprom50
  store double %sub48, double* %arrayidx51, align 8
  %65 = load double, double* %x1r, align 8
  %66 = load double, double* %x3i, align 8
  %sub52 = fsub double %65, %66
  %67 = load i32, i32* %j2, align 4
  %idxprom53 = sext i32 %67 to i64
  %68 = load double*, double** %a.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %68, i64 %idxprom53
  store double %sub52, double* %arrayidx54, align 8
  %69 = load double, double* %x1i, align 8
  %70 = load double, double* %x3r, align 8
  %add55 = fadd double %69, %70
  %71 = load i32, i32* %j2, align 4
  %add56 = add nsw i32 %71, 1
  %idxprom57 = sext i32 %add56 to i64
  %72 = load double*, double** %a.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %72, i64 %idxprom57
  store double %add55, double* %arrayidx58, align 8
  %73 = load double, double* %x1r, align 8
  %74 = load double, double* %x3i, align 8
  %add59 = fadd double %73, %74
  %75 = load i32, i32* %j3, align 4
  %idxprom60 = sext i32 %75 to i64
  %76 = load double*, double** %a.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %76, i64 %idxprom60
  store double %add59, double* %arrayidx61, align 8
  %77 = load double, double* %x1i, align 8
  %78 = load double, double* %x3r, align 8
  %sub62 = fsub double %77, %78
  %79 = load i32, i32* %j3, align 4
  %add63 = add nsw i32 %79, 1
  %idxprom64 = sext i32 %add63 to i64
  %80 = load double*, double** %a.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %80, i64 %idxprom64
  store double %sub62, double* %arrayidx65, align 8
  %81 = load double*, double** %w.addr, align 8
  %arrayidx66 = getelementptr inbounds double, double* %81, i64 1
  %82 = load double, double* %arrayidx66, align 8
  store double %82, double* %wn4r, align 8
  store i32 0, i32* %k, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %mh, align 4
  %cmp = icmp slt i32 %83, %84
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i32, i32* %k, align 4
  %add67 = add nsw i32 %85, 4
  store i32 %add67, i32* %k, align 4
  %86 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %86 to i64
  %87 = load double*, double** %w.addr, align 8
  %arrayidx69 = getelementptr inbounds double, double* %87, i64 %idxprom68
  %88 = load double, double* %arrayidx69, align 8
  store double %88, double* %wk1r, align 8
  %89 = load i32, i32* %k, align 4
  %add70 = add nsw i32 %89, 1
  %idxprom71 = sext i32 %add70 to i64
  %90 = load double*, double** %w.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %90, i64 %idxprom71
  %91 = load double, double* %arrayidx72, align 8
  store double %91, double* %wk1i, align 8
  %92 = load i32, i32* %k, align 4
  %add73 = add nsw i32 %92, 2
  %idxprom74 = sext i32 %add73 to i64
  %93 = load double*, double** %w.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %93, i64 %idxprom74
  %94 = load double, double* %arrayidx75, align 8
  store double %94, double* %wk3r, align 8
  %95 = load i32, i32* %k, align 4
  %add76 = add nsw i32 %95, 3
  %idxprom77 = sext i32 %add76 to i64
  %96 = load double*, double** %w.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %96, i64 %idxprom77
  %97 = load double, double* %arrayidx78, align 8
  %sub79 = fsub double -0.000000e+00, %97
  store double %sub79, double* %wk3i, align 8
  %98 = load i32, i32* %j, align 4
  %99 = load i32, i32* %m, align 4
  %add80 = add nsw i32 %98, %99
  store i32 %add80, i32* %j1, align 4
  %100 = load i32, i32* %j1, align 4
  %101 = load i32, i32* %m, align 4
  %add81 = add nsw i32 %100, %101
  store i32 %add81, i32* %j2, align 4
  %102 = load i32, i32* %j2, align 4
  %103 = load i32, i32* %m, align 4
  %add82 = add nsw i32 %102, %103
  store i32 %add82, i32* %j3, align 4
  %104 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %104 to i64
  %105 = load double*, double** %a.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %105, i64 %idxprom83
  %106 = load double, double* %arrayidx84, align 8
  %107 = load i32, i32* %j2, align 4
  %idxprom85 = sext i32 %107 to i64
  %108 = load double*, double** %a.addr, align 8
  %arrayidx86 = getelementptr inbounds double, double* %108, i64 %idxprom85
  %109 = load double, double* %arrayidx86, align 8
  %add87 = fadd double %106, %109
  store double %add87, double* %x0r, align 8
  %110 = load i32, i32* %j, align 4
  %add88 = add nsw i32 %110, 1
  %idxprom89 = sext i32 %add88 to i64
  %111 = load double*, double** %a.addr, align 8
  %arrayidx90 = getelementptr inbounds double, double* %111, i64 %idxprom89
  %112 = load double, double* %arrayidx90, align 8
  %113 = load i32, i32* %j2, align 4
  %add91 = add nsw i32 %113, 1
  %idxprom92 = sext i32 %add91 to i64
  %114 = load double*, double** %a.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %114, i64 %idxprom92
  %115 = load double, double* %arrayidx93, align 8
  %add94 = fadd double %112, %115
  store double %add94, double* %x0i, align 8
  %116 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %116 to i64
  %117 = load double*, double** %a.addr, align 8
  %arrayidx96 = getelementptr inbounds double, double* %117, i64 %idxprom95
  %118 = load double, double* %arrayidx96, align 8
  %119 = load i32, i32* %j2, align 4
  %idxprom97 = sext i32 %119 to i64
  %120 = load double*, double** %a.addr, align 8
  %arrayidx98 = getelementptr inbounds double, double* %120, i64 %idxprom97
  %121 = load double, double* %arrayidx98, align 8
  %sub99 = fsub double %118, %121
  store double %sub99, double* %x1r, align 8
  %122 = load i32, i32* %j, align 4
  %add100 = add nsw i32 %122, 1
  %idxprom101 = sext i32 %add100 to i64
  %123 = load double*, double** %a.addr, align 8
  %arrayidx102 = getelementptr inbounds double, double* %123, i64 %idxprom101
  %124 = load double, double* %arrayidx102, align 8
  %125 = load i32, i32* %j2, align 4
  %add103 = add nsw i32 %125, 1
  %idxprom104 = sext i32 %add103 to i64
  %126 = load double*, double** %a.addr, align 8
  %arrayidx105 = getelementptr inbounds double, double* %126, i64 %idxprom104
  %127 = load double, double* %arrayidx105, align 8
  %sub106 = fsub double %124, %127
  store double %sub106, double* %x1i, align 8
  %128 = load i32, i32* %j1, align 4
  %idxprom107 = sext i32 %128 to i64
  %129 = load double*, double** %a.addr, align 8
  %arrayidx108 = getelementptr inbounds double, double* %129, i64 %idxprom107
  %130 = load double, double* %arrayidx108, align 8
  %131 = load i32, i32* %j3, align 4
  %idxprom109 = sext i32 %131 to i64
  %132 = load double*, double** %a.addr, align 8
  %arrayidx110 = getelementptr inbounds double, double* %132, i64 %idxprom109
  %133 = load double, double* %arrayidx110, align 8
  %add111 = fadd double %130, %133
  store double %add111, double* %x2r, align 8
  %134 = load i32, i32* %j1, align 4
  %add112 = add nsw i32 %134, 1
  %idxprom113 = sext i32 %add112 to i64
  %135 = load double*, double** %a.addr, align 8
  %arrayidx114 = getelementptr inbounds double, double* %135, i64 %idxprom113
  %136 = load double, double* %arrayidx114, align 8
  %137 = load i32, i32* %j3, align 4
  %add115 = add nsw i32 %137, 1
  %idxprom116 = sext i32 %add115 to i64
  %138 = load double*, double** %a.addr, align 8
  %arrayidx117 = getelementptr inbounds double, double* %138, i64 %idxprom116
  %139 = load double, double* %arrayidx117, align 8
  %add118 = fadd double %136, %139
  store double %add118, double* %x2i, align 8
  %140 = load i32, i32* %j1, align 4
  %idxprom119 = sext i32 %140 to i64
  %141 = load double*, double** %a.addr, align 8
  %arrayidx120 = getelementptr inbounds double, double* %141, i64 %idxprom119
  %142 = load double, double* %arrayidx120, align 8
  %143 = load i32, i32* %j3, align 4
  %idxprom121 = sext i32 %143 to i64
  %144 = load double*, double** %a.addr, align 8
  %arrayidx122 = getelementptr inbounds double, double* %144, i64 %idxprom121
  %145 = load double, double* %arrayidx122, align 8
  %sub123 = fsub double %142, %145
  store double %sub123, double* %x3r, align 8
  %146 = load i32, i32* %j1, align 4
  %add124 = add nsw i32 %146, 1
  %idxprom125 = sext i32 %add124 to i64
  %147 = load double*, double** %a.addr, align 8
  %arrayidx126 = getelementptr inbounds double, double* %147, i64 %idxprom125
  %148 = load double, double* %arrayidx126, align 8
  %149 = load i32, i32* %j3, align 4
  %add127 = add nsw i32 %149, 1
  %idxprom128 = sext i32 %add127 to i64
  %150 = load double*, double** %a.addr, align 8
  %arrayidx129 = getelementptr inbounds double, double* %150, i64 %idxprom128
  %151 = load double, double* %arrayidx129, align 8
  %sub130 = fsub double %148, %151
  store double %sub130, double* %x3i, align 8
  %152 = load double, double* %x0r, align 8
  %153 = load double, double* %x2r, align 8
  %add131 = fadd double %152, %153
  %154 = load i32, i32* %j, align 4
  %idxprom132 = sext i32 %154 to i64
  %155 = load double*, double** %a.addr, align 8
  %arrayidx133 = getelementptr inbounds double, double* %155, i64 %idxprom132
  store double %add131, double* %arrayidx133, align 8
  %156 = load double, double* %x0i, align 8
  %157 = load double, double* %x2i, align 8
  %add134 = fadd double %156, %157
  %158 = load i32, i32* %j, align 4
  %add135 = add nsw i32 %158, 1
  %idxprom136 = sext i32 %add135 to i64
  %159 = load double*, double** %a.addr, align 8
  %arrayidx137 = getelementptr inbounds double, double* %159, i64 %idxprom136
  store double %add134, double* %arrayidx137, align 8
  %160 = load double, double* %x0r, align 8
  %161 = load double, double* %x2r, align 8
  %sub138 = fsub double %160, %161
  %162 = load i32, i32* %j1, align 4
  %idxprom139 = sext i32 %162 to i64
  %163 = load double*, double** %a.addr, align 8
  %arrayidx140 = getelementptr inbounds double, double* %163, i64 %idxprom139
  store double %sub138, double* %arrayidx140, align 8
  %164 = load double, double* %x0i, align 8
  %165 = load double, double* %x2i, align 8
  %sub141 = fsub double %164, %165
  %166 = load i32, i32* %j1, align 4
  %add142 = add nsw i32 %166, 1
  %idxprom143 = sext i32 %add142 to i64
  %167 = load double*, double** %a.addr, align 8
  %arrayidx144 = getelementptr inbounds double, double* %167, i64 %idxprom143
  store double %sub141, double* %arrayidx144, align 8
  %168 = load double, double* %x1r, align 8
  %169 = load double, double* %x3i, align 8
  %sub145 = fsub double %168, %169
  store double %sub145, double* %x0r, align 8
  %170 = load double, double* %x1i, align 8
  %171 = load double, double* %x3r, align 8
  %add146 = fadd double %170, %171
  store double %add146, double* %x0i, align 8
  %172 = load double, double* %wk1r, align 8
  %173 = load double, double* %x0r, align 8
  %mul147 = fmul double %172, %173
  %174 = load double, double* %wk1i, align 8
  %175 = load double, double* %x0i, align 8
  %mul148 = fmul double %174, %175
  %sub149 = fsub double %mul147, %mul148
  %176 = load i32, i32* %j2, align 4
  %idxprom150 = sext i32 %176 to i64
  %177 = load double*, double** %a.addr, align 8
  %arrayidx151 = getelementptr inbounds double, double* %177, i64 %idxprom150
  store double %sub149, double* %arrayidx151, align 8
  %178 = load double, double* %wk1r, align 8
  %179 = load double, double* %x0i, align 8
  %mul152 = fmul double %178, %179
  %180 = load double, double* %wk1i, align 8
  %181 = load double, double* %x0r, align 8
  %mul153 = fmul double %180, %181
  %add154 = fadd double %mul152, %mul153
  %182 = load i32, i32* %j2, align 4
  %add155 = add nsw i32 %182, 1
  %idxprom156 = sext i32 %add155 to i64
  %183 = load double*, double** %a.addr, align 8
  %arrayidx157 = getelementptr inbounds double, double* %183, i64 %idxprom156
  store double %add154, double* %arrayidx157, align 8
  %184 = load double, double* %x1r, align 8
  %185 = load double, double* %x3i, align 8
  %add158 = fadd double %184, %185
  store double %add158, double* %x0r, align 8
  %186 = load double, double* %x1i, align 8
  %187 = load double, double* %x3r, align 8
  %sub159 = fsub double %186, %187
  store double %sub159, double* %x0i, align 8
  %188 = load double, double* %wk3r, align 8
  %189 = load double, double* %x0r, align 8
  %mul160 = fmul double %188, %189
  %190 = load double, double* %wk3i, align 8
  %191 = load double, double* %x0i, align 8
  %mul161 = fmul double %190, %191
  %add162 = fadd double %mul160, %mul161
  %192 = load i32, i32* %j3, align 4
  %idxprom163 = sext i32 %192 to i64
  %193 = load double*, double** %a.addr, align 8
  %arrayidx164 = getelementptr inbounds double, double* %193, i64 %idxprom163
  store double %add162, double* %arrayidx164, align 8
  %194 = load double, double* %wk3r, align 8
  %195 = load double, double* %x0i, align 8
  %mul165 = fmul double %194, %195
  %196 = load double, double* %wk3i, align 8
  %197 = load double, double* %x0r, align 8
  %mul166 = fmul double %196, %197
  %sub167 = fsub double %mul165, %mul166
  %198 = load i32, i32* %j3, align 4
  %add168 = add nsw i32 %198, 1
  %idxprom169 = sext i32 %add168 to i64
  %199 = load double*, double** %a.addr, align 8
  %arrayidx170 = getelementptr inbounds double, double* %199, i64 %idxprom169
  store double %sub167, double* %arrayidx170, align 8
  %200 = load i32, i32* %m, align 4
  %201 = load i32, i32* %j, align 4
  %sub171 = sub nsw i32 %200, %201
  store i32 %sub171, i32* %j0, align 4
  %202 = load i32, i32* %j0, align 4
  %203 = load i32, i32* %m, align 4
  %add172 = add nsw i32 %202, %203
  store i32 %add172, i32* %j1, align 4
  %204 = load i32, i32* %j1, align 4
  %205 = load i32, i32* %m, align 4
  %add173 = add nsw i32 %204, %205
  store i32 %add173, i32* %j2, align 4
  %206 = load i32, i32* %j2, align 4
  %207 = load i32, i32* %m, align 4
  %add174 = add nsw i32 %206, %207
  store i32 %add174, i32* %j3, align 4
  %208 = load i32, i32* %j0, align 4
  %idxprom175 = sext i32 %208 to i64
  %209 = load double*, double** %a.addr, align 8
  %arrayidx176 = getelementptr inbounds double, double* %209, i64 %idxprom175
  %210 = load double, double* %arrayidx176, align 8
  %211 = load i32, i32* %j2, align 4
  %idxprom177 = sext i32 %211 to i64
  %212 = load double*, double** %a.addr, align 8
  %arrayidx178 = getelementptr inbounds double, double* %212, i64 %idxprom177
  %213 = load double, double* %arrayidx178, align 8
  %add179 = fadd double %210, %213
  store double %add179, double* %x0r, align 8
  %214 = load i32, i32* %j0, align 4
  %add180 = add nsw i32 %214, 1
  %idxprom181 = sext i32 %add180 to i64
  %215 = load double*, double** %a.addr, align 8
  %arrayidx182 = getelementptr inbounds double, double* %215, i64 %idxprom181
  %216 = load double, double* %arrayidx182, align 8
  %217 = load i32, i32* %j2, align 4
  %add183 = add nsw i32 %217, 1
  %idxprom184 = sext i32 %add183 to i64
  %218 = load double*, double** %a.addr, align 8
  %arrayidx185 = getelementptr inbounds double, double* %218, i64 %idxprom184
  %219 = load double, double* %arrayidx185, align 8
  %add186 = fadd double %216, %219
  store double %add186, double* %x0i, align 8
  %220 = load i32, i32* %j0, align 4
  %idxprom187 = sext i32 %220 to i64
  %221 = load double*, double** %a.addr, align 8
  %arrayidx188 = getelementptr inbounds double, double* %221, i64 %idxprom187
  %222 = load double, double* %arrayidx188, align 8
  %223 = load i32, i32* %j2, align 4
  %idxprom189 = sext i32 %223 to i64
  %224 = load double*, double** %a.addr, align 8
  %arrayidx190 = getelementptr inbounds double, double* %224, i64 %idxprom189
  %225 = load double, double* %arrayidx190, align 8
  %sub191 = fsub double %222, %225
  store double %sub191, double* %x1r, align 8
  %226 = load i32, i32* %j0, align 4
  %add192 = add nsw i32 %226, 1
  %idxprom193 = sext i32 %add192 to i64
  %227 = load double*, double** %a.addr, align 8
  %arrayidx194 = getelementptr inbounds double, double* %227, i64 %idxprom193
  %228 = load double, double* %arrayidx194, align 8
  %229 = load i32, i32* %j2, align 4
  %add195 = add nsw i32 %229, 1
  %idxprom196 = sext i32 %add195 to i64
  %230 = load double*, double** %a.addr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %230, i64 %idxprom196
  %231 = load double, double* %arrayidx197, align 8
  %sub198 = fsub double %228, %231
  store double %sub198, double* %x1i, align 8
  %232 = load i32, i32* %j1, align 4
  %idxprom199 = sext i32 %232 to i64
  %233 = load double*, double** %a.addr, align 8
  %arrayidx200 = getelementptr inbounds double, double* %233, i64 %idxprom199
  %234 = load double, double* %arrayidx200, align 8
  %235 = load i32, i32* %j3, align 4
  %idxprom201 = sext i32 %235 to i64
  %236 = load double*, double** %a.addr, align 8
  %arrayidx202 = getelementptr inbounds double, double* %236, i64 %idxprom201
  %237 = load double, double* %arrayidx202, align 8
  %add203 = fadd double %234, %237
  store double %add203, double* %x2r, align 8
  %238 = load i32, i32* %j1, align 4
  %add204 = add nsw i32 %238, 1
  %idxprom205 = sext i32 %add204 to i64
  %239 = load double*, double** %a.addr, align 8
  %arrayidx206 = getelementptr inbounds double, double* %239, i64 %idxprom205
  %240 = load double, double* %arrayidx206, align 8
  %241 = load i32, i32* %j3, align 4
  %add207 = add nsw i32 %241, 1
  %idxprom208 = sext i32 %add207 to i64
  %242 = load double*, double** %a.addr, align 8
  %arrayidx209 = getelementptr inbounds double, double* %242, i64 %idxprom208
  %243 = load double, double* %arrayidx209, align 8
  %add210 = fadd double %240, %243
  store double %add210, double* %x2i, align 8
  %244 = load i32, i32* %j1, align 4
  %idxprom211 = sext i32 %244 to i64
  %245 = load double*, double** %a.addr, align 8
  %arrayidx212 = getelementptr inbounds double, double* %245, i64 %idxprom211
  %246 = load double, double* %arrayidx212, align 8
  %247 = load i32, i32* %j3, align 4
  %idxprom213 = sext i32 %247 to i64
  %248 = load double*, double** %a.addr, align 8
  %arrayidx214 = getelementptr inbounds double, double* %248, i64 %idxprom213
  %249 = load double, double* %arrayidx214, align 8
  %sub215 = fsub double %246, %249
  store double %sub215, double* %x3r, align 8
  %250 = load i32, i32* %j1, align 4
  %add216 = add nsw i32 %250, 1
  %idxprom217 = sext i32 %add216 to i64
  %251 = load double*, double** %a.addr, align 8
  %arrayidx218 = getelementptr inbounds double, double* %251, i64 %idxprom217
  %252 = load double, double* %arrayidx218, align 8
  %253 = load i32, i32* %j3, align 4
  %add219 = add nsw i32 %253, 1
  %idxprom220 = sext i32 %add219 to i64
  %254 = load double*, double** %a.addr, align 8
  %arrayidx221 = getelementptr inbounds double, double* %254, i64 %idxprom220
  %255 = load double, double* %arrayidx221, align 8
  %sub222 = fsub double %252, %255
  store double %sub222, double* %x3i, align 8
  %256 = load double, double* %x0r, align 8
  %257 = load double, double* %x2r, align 8
  %add223 = fadd double %256, %257
  %258 = load i32, i32* %j0, align 4
  %idxprom224 = sext i32 %258 to i64
  %259 = load double*, double** %a.addr, align 8
  %arrayidx225 = getelementptr inbounds double, double* %259, i64 %idxprom224
  store double %add223, double* %arrayidx225, align 8
  %260 = load double, double* %x0i, align 8
  %261 = load double, double* %x2i, align 8
  %add226 = fadd double %260, %261
  %262 = load i32, i32* %j0, align 4
  %add227 = add nsw i32 %262, 1
  %idxprom228 = sext i32 %add227 to i64
  %263 = load double*, double** %a.addr, align 8
  %arrayidx229 = getelementptr inbounds double, double* %263, i64 %idxprom228
  store double %add226, double* %arrayidx229, align 8
  %264 = load double, double* %x0r, align 8
  %265 = load double, double* %x2r, align 8
  %sub230 = fsub double %264, %265
  %266 = load i32, i32* %j1, align 4
  %idxprom231 = sext i32 %266 to i64
  %267 = load double*, double** %a.addr, align 8
  %arrayidx232 = getelementptr inbounds double, double* %267, i64 %idxprom231
  store double %sub230, double* %arrayidx232, align 8
  %268 = load double, double* %x0i, align 8
  %269 = load double, double* %x2i, align 8
  %sub233 = fsub double %268, %269
  %270 = load i32, i32* %j1, align 4
  %add234 = add nsw i32 %270, 1
  %idxprom235 = sext i32 %add234 to i64
  %271 = load double*, double** %a.addr, align 8
  %arrayidx236 = getelementptr inbounds double, double* %271, i64 %idxprom235
  store double %sub233, double* %arrayidx236, align 8
  %272 = load double, double* %x1r, align 8
  %273 = load double, double* %x3i, align 8
  %sub237 = fsub double %272, %273
  store double %sub237, double* %x0r, align 8
  %274 = load double, double* %x1i, align 8
  %275 = load double, double* %x3r, align 8
  %add238 = fadd double %274, %275
  store double %add238, double* %x0i, align 8
  %276 = load double, double* %wk1i, align 8
  %277 = load double, double* %x0r, align 8
  %mul239 = fmul double %276, %277
  %278 = load double, double* %wk1r, align 8
  %279 = load double, double* %x0i, align 8
  %mul240 = fmul double %278, %279
  %sub241 = fsub double %mul239, %mul240
  %280 = load i32, i32* %j2, align 4
  %idxprom242 = sext i32 %280 to i64
  %281 = load double*, double** %a.addr, align 8
  %arrayidx243 = getelementptr inbounds double, double* %281, i64 %idxprom242
  store double %sub241, double* %arrayidx243, align 8
  %282 = load double, double* %wk1i, align 8
  %283 = load double, double* %x0i, align 8
  %mul244 = fmul double %282, %283
  %284 = load double, double* %wk1r, align 8
  %285 = load double, double* %x0r, align 8
  %mul245 = fmul double %284, %285
  %add246 = fadd double %mul244, %mul245
  %286 = load i32, i32* %j2, align 4
  %add247 = add nsw i32 %286, 1
  %idxprom248 = sext i32 %add247 to i64
  %287 = load double*, double** %a.addr, align 8
  %arrayidx249 = getelementptr inbounds double, double* %287, i64 %idxprom248
  store double %add246, double* %arrayidx249, align 8
  %288 = load double, double* %x1r, align 8
  %289 = load double, double* %x3i, align 8
  %add250 = fadd double %288, %289
  store double %add250, double* %x0r, align 8
  %290 = load double, double* %x1i, align 8
  %291 = load double, double* %x3r, align 8
  %sub251 = fsub double %290, %291
  store double %sub251, double* %x0i, align 8
  %292 = load double, double* %wk3i, align 8
  %293 = load double, double* %x0r, align 8
  %mul252 = fmul double %292, %293
  %294 = load double, double* %wk3r, align 8
  %295 = load double, double* %x0i, align 8
  %mul253 = fmul double %294, %295
  %add254 = fadd double %mul252, %mul253
  %296 = load i32, i32* %j3, align 4
  %idxprom255 = sext i32 %296 to i64
  %297 = load double*, double** %a.addr, align 8
  %arrayidx256 = getelementptr inbounds double, double* %297, i64 %idxprom255
  store double %add254, double* %arrayidx256, align 8
  %298 = load double, double* %wk3i, align 8
  %299 = load double, double* %x0i, align 8
  %mul257 = fmul double %298, %299
  %300 = load double, double* %wk3r, align 8
  %301 = load double, double* %x0r, align 8
  %mul258 = fmul double %300, %301
  %sub259 = fsub double %mul257, %mul258
  %302 = load i32, i32* %j3, align 4
  %add260 = add nsw i32 %302, 1
  %idxprom261 = sext i32 %add260 to i64
  %303 = load double*, double** %a.addr, align 8
  %arrayidx262 = getelementptr inbounds double, double* %303, i64 %idxprom261
  store double %sub259, double* %arrayidx262, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %304 = load i32, i32* %j, align 4
  %add263 = add nsw i32 %304, 2
  store i32 %add263, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %305 = load i32, i32* %mh, align 4
  store i32 %305, i32* %j0, align 4
  %306 = load i32, i32* %j0, align 4
  %307 = load i32, i32* %m, align 4
  %add264 = add nsw i32 %306, %307
  store i32 %add264, i32* %j1, align 4
  %308 = load i32, i32* %j1, align 4
  %309 = load i32, i32* %m, align 4
  %add265 = add nsw i32 %308, %309
  store i32 %add265, i32* %j2, align 4
  %310 = load i32, i32* %j2, align 4
  %311 = load i32, i32* %m, align 4
  %add266 = add nsw i32 %310, %311
  store i32 %add266, i32* %j3, align 4
  %312 = load i32, i32* %j0, align 4
  %idxprom267 = sext i32 %312 to i64
  %313 = load double*, double** %a.addr, align 8
  %arrayidx268 = getelementptr inbounds double, double* %313, i64 %idxprom267
  %314 = load double, double* %arrayidx268, align 8
  %315 = load i32, i32* %j2, align 4
  %idxprom269 = sext i32 %315 to i64
  %316 = load double*, double** %a.addr, align 8
  %arrayidx270 = getelementptr inbounds double, double* %316, i64 %idxprom269
  %317 = load double, double* %arrayidx270, align 8
  %add271 = fadd double %314, %317
  store double %add271, double* %x0r, align 8
  %318 = load i32, i32* %j0, align 4
  %add272 = add nsw i32 %318, 1
  %idxprom273 = sext i32 %add272 to i64
  %319 = load double*, double** %a.addr, align 8
  %arrayidx274 = getelementptr inbounds double, double* %319, i64 %idxprom273
  %320 = load double, double* %arrayidx274, align 8
  %321 = load i32, i32* %j2, align 4
  %add275 = add nsw i32 %321, 1
  %idxprom276 = sext i32 %add275 to i64
  %322 = load double*, double** %a.addr, align 8
  %arrayidx277 = getelementptr inbounds double, double* %322, i64 %idxprom276
  %323 = load double, double* %arrayidx277, align 8
  %add278 = fadd double %320, %323
  store double %add278, double* %x0i, align 8
  %324 = load i32, i32* %j0, align 4
  %idxprom279 = sext i32 %324 to i64
  %325 = load double*, double** %a.addr, align 8
  %arrayidx280 = getelementptr inbounds double, double* %325, i64 %idxprom279
  %326 = load double, double* %arrayidx280, align 8
  %327 = load i32, i32* %j2, align 4
  %idxprom281 = sext i32 %327 to i64
  %328 = load double*, double** %a.addr, align 8
  %arrayidx282 = getelementptr inbounds double, double* %328, i64 %idxprom281
  %329 = load double, double* %arrayidx282, align 8
  %sub283 = fsub double %326, %329
  store double %sub283, double* %x1r, align 8
  %330 = load i32, i32* %j0, align 4
  %add284 = add nsw i32 %330, 1
  %idxprom285 = sext i32 %add284 to i64
  %331 = load double*, double** %a.addr, align 8
  %arrayidx286 = getelementptr inbounds double, double* %331, i64 %idxprom285
  %332 = load double, double* %arrayidx286, align 8
  %333 = load i32, i32* %j2, align 4
  %add287 = add nsw i32 %333, 1
  %idxprom288 = sext i32 %add287 to i64
  %334 = load double*, double** %a.addr, align 8
  %arrayidx289 = getelementptr inbounds double, double* %334, i64 %idxprom288
  %335 = load double, double* %arrayidx289, align 8
  %sub290 = fsub double %332, %335
  store double %sub290, double* %x1i, align 8
  %336 = load i32, i32* %j1, align 4
  %idxprom291 = sext i32 %336 to i64
  %337 = load double*, double** %a.addr, align 8
  %arrayidx292 = getelementptr inbounds double, double* %337, i64 %idxprom291
  %338 = load double, double* %arrayidx292, align 8
  %339 = load i32, i32* %j3, align 4
  %idxprom293 = sext i32 %339 to i64
  %340 = load double*, double** %a.addr, align 8
  %arrayidx294 = getelementptr inbounds double, double* %340, i64 %idxprom293
  %341 = load double, double* %arrayidx294, align 8
  %add295 = fadd double %338, %341
  store double %add295, double* %x2r, align 8
  %342 = load i32, i32* %j1, align 4
  %add296 = add nsw i32 %342, 1
  %idxprom297 = sext i32 %add296 to i64
  %343 = load double*, double** %a.addr, align 8
  %arrayidx298 = getelementptr inbounds double, double* %343, i64 %idxprom297
  %344 = load double, double* %arrayidx298, align 8
  %345 = load i32, i32* %j3, align 4
  %add299 = add nsw i32 %345, 1
  %idxprom300 = sext i32 %add299 to i64
  %346 = load double*, double** %a.addr, align 8
  %arrayidx301 = getelementptr inbounds double, double* %346, i64 %idxprom300
  %347 = load double, double* %arrayidx301, align 8
  %add302 = fadd double %344, %347
  store double %add302, double* %x2i, align 8
  %348 = load i32, i32* %j1, align 4
  %idxprom303 = sext i32 %348 to i64
  %349 = load double*, double** %a.addr, align 8
  %arrayidx304 = getelementptr inbounds double, double* %349, i64 %idxprom303
  %350 = load double, double* %arrayidx304, align 8
  %351 = load i32, i32* %j3, align 4
  %idxprom305 = sext i32 %351 to i64
  %352 = load double*, double** %a.addr, align 8
  %arrayidx306 = getelementptr inbounds double, double* %352, i64 %idxprom305
  %353 = load double, double* %arrayidx306, align 8
  %sub307 = fsub double %350, %353
  store double %sub307, double* %x3r, align 8
  %354 = load i32, i32* %j1, align 4
  %add308 = add nsw i32 %354, 1
  %idxprom309 = sext i32 %add308 to i64
  %355 = load double*, double** %a.addr, align 8
  %arrayidx310 = getelementptr inbounds double, double* %355, i64 %idxprom309
  %356 = load double, double* %arrayidx310, align 8
  %357 = load i32, i32* %j3, align 4
  %add311 = add nsw i32 %357, 1
  %idxprom312 = sext i32 %add311 to i64
  %358 = load double*, double** %a.addr, align 8
  %arrayidx313 = getelementptr inbounds double, double* %358, i64 %idxprom312
  %359 = load double, double* %arrayidx313, align 8
  %sub314 = fsub double %356, %359
  store double %sub314, double* %x3i, align 8
  %360 = load double, double* %x0r, align 8
  %361 = load double, double* %x2r, align 8
  %add315 = fadd double %360, %361
  %362 = load i32, i32* %j0, align 4
  %idxprom316 = sext i32 %362 to i64
  %363 = load double*, double** %a.addr, align 8
  %arrayidx317 = getelementptr inbounds double, double* %363, i64 %idxprom316
  store double %add315, double* %arrayidx317, align 8
  %364 = load double, double* %x0i, align 8
  %365 = load double, double* %x2i, align 8
  %add318 = fadd double %364, %365
  %366 = load i32, i32* %j0, align 4
  %add319 = add nsw i32 %366, 1
  %idxprom320 = sext i32 %add319 to i64
  %367 = load double*, double** %a.addr, align 8
  %arrayidx321 = getelementptr inbounds double, double* %367, i64 %idxprom320
  store double %add318, double* %arrayidx321, align 8
  %368 = load double, double* %x0r, align 8
  %369 = load double, double* %x2r, align 8
  %sub322 = fsub double %368, %369
  %370 = load i32, i32* %j1, align 4
  %idxprom323 = sext i32 %370 to i64
  %371 = load double*, double** %a.addr, align 8
  %arrayidx324 = getelementptr inbounds double, double* %371, i64 %idxprom323
  store double %sub322, double* %arrayidx324, align 8
  %372 = load double, double* %x0i, align 8
  %373 = load double, double* %x2i, align 8
  %sub325 = fsub double %372, %373
  %374 = load i32, i32* %j1, align 4
  %add326 = add nsw i32 %374, 1
  %idxprom327 = sext i32 %add326 to i64
  %375 = load double*, double** %a.addr, align 8
  %arrayidx328 = getelementptr inbounds double, double* %375, i64 %idxprom327
  store double %sub325, double* %arrayidx328, align 8
  %376 = load double, double* %x1r, align 8
  %377 = load double, double* %x3i, align 8
  %sub329 = fsub double %376, %377
  store double %sub329, double* %x0r, align 8
  %378 = load double, double* %x1i, align 8
  %379 = load double, double* %x3r, align 8
  %add330 = fadd double %378, %379
  store double %add330, double* %x0i, align 8
  %380 = load double, double* %wn4r, align 8
  %381 = load double, double* %x0r, align 8
  %382 = load double, double* %x0i, align 8
  %sub331 = fsub double %381, %382
  %mul332 = fmul double %380, %sub331
  %383 = load i32, i32* %j2, align 4
  %idxprom333 = sext i32 %383 to i64
  %384 = load double*, double** %a.addr, align 8
  %arrayidx334 = getelementptr inbounds double, double* %384, i64 %idxprom333
  store double %mul332, double* %arrayidx334, align 8
  %385 = load double, double* %wn4r, align 8
  %386 = load double, double* %x0i, align 8
  %387 = load double, double* %x0r, align 8
  %add335 = fadd double %386, %387
  %mul336 = fmul double %385, %add335
  %388 = load i32, i32* %j2, align 4
  %add337 = add nsw i32 %388, 1
  %idxprom338 = sext i32 %add337 to i64
  %389 = load double*, double** %a.addr, align 8
  %arrayidx339 = getelementptr inbounds double, double* %389, i64 %idxprom338
  store double %mul336, double* %arrayidx339, align 8
  %390 = load double, double* %x1r, align 8
  %391 = load double, double* %x3i, align 8
  %add340 = fadd double %390, %391
  store double %add340, double* %x0r, align 8
  %392 = load double, double* %x1i, align 8
  %393 = load double, double* %x3r, align 8
  %sub341 = fsub double %392, %393
  store double %sub341, double* %x0i, align 8
  %394 = load double, double* %wn4r, align 8
  %sub342 = fsub double -0.000000e+00, %394
  %395 = load double, double* %x0r, align 8
  %396 = load double, double* %x0i, align 8
  %add343 = fadd double %395, %396
  %mul344 = fmul double %sub342, %add343
  %397 = load i32, i32* %j3, align 4
  %idxprom345 = sext i32 %397 to i64
  %398 = load double*, double** %a.addr, align 8
  %arrayidx346 = getelementptr inbounds double, double* %398, i64 %idxprom345
  store double %mul344, double* %arrayidx346, align 8
  %399 = load double, double* %wn4r, align 8
  %sub347 = fsub double -0.000000e+00, %399
  %400 = load double, double* %x0i, align 8
  %401 = load double, double* %x0r, align 8
  %sub348 = fsub double %400, %401
  %mul349 = fmul double %sub347, %sub348
  %402 = load i32, i32* %j3, align 4
  %add350 = add nsw i32 %402, 1
  %idxprom351 = sext i32 %add350 to i64
  %403 = load double*, double** %a.addr, align 8
  %arrayidx352 = getelementptr inbounds double, double* %403, i64 %idxprom351
  store double %mul349, double* %arrayidx352, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftmdl2(i32 %n, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %kr = alloca i32, align 4
  %m = alloca i32, align 4
  %mh = alloca i32, align 4
  %wn4r = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  %wd1r = alloca double, align 8
  %wd1i = alloca double, align 8
  %wd3r = alloca double, align 8
  %wd3i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  %y0r = alloca double, align 8
  %y0i = alloca double, align 8
  %y2r = alloca double, align 8
  %y2i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 3
  store i32 %shr, i32* %mh, align 4
  %1 = load i32, i32* %mh, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %m, align 4
  %2 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx, align 8
  store double %3, double* %wn4r, align 8
  %4 = load i32, i32* %m, align 4
  store i32 %4, i32* %j1, align 4
  %5 = load i32, i32* %j1, align 4
  %6 = load i32, i32* %m, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %j2, align 4
  %7 = load i32, i32* %j2, align 4
  %8 = load i32, i32* %m, align 4
  %add1 = add nsw i32 %7, %8
  store i32 %add1, i32* %j3, align 4
  %9 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %9, i64 0
  %10 = load double, double* %arrayidx2, align 8
  %11 = load i32, i32* %j2, align 4
  %add3 = add nsw i32 %11, 1
  %idxprom = sext i32 %add3 to i64
  %12 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load double, double* %arrayidx4, align 8
  %sub = fsub double %10, %13
  store double %sub, double* %x0r, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx5, align 8
  %16 = load i32, i32* %j2, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %17, i64 %idxprom6
  %18 = load double, double* %arrayidx7, align 8
  %add8 = fadd double %15, %18
  store double %add8, double* %x0i, align 8
  %19 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %19, i64 0
  %20 = load double, double* %arrayidx9, align 8
  %21 = load i32, i32* %j2, align 4
  %add10 = add nsw i32 %21, 1
  %idxprom11 = sext i32 %add10 to i64
  %22 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %22, i64 %idxprom11
  %23 = load double, double* %arrayidx12, align 8
  %add13 = fadd double %20, %23
  store double %add13, double* %x1r, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 1
  %25 = load double, double* %arrayidx14, align 8
  %26 = load i32, i32* %j2, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %27, i64 %idxprom15
  %28 = load double, double* %arrayidx16, align 8
  %sub17 = fsub double %25, %28
  store double %sub17, double* %x1i, align 8
  %29 = load i32, i32* %j1, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %30, i64 %idxprom18
  %31 = load double, double* %arrayidx19, align 8
  %32 = load i32, i32* %j3, align 4
  %add20 = add nsw i32 %32, 1
  %idxprom21 = sext i32 %add20 to i64
  %33 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %33, i64 %idxprom21
  %34 = load double, double* %arrayidx22, align 8
  %sub23 = fsub double %31, %34
  store double %sub23, double* %x2r, align 8
  %35 = load i32, i32* %j1, align 4
  %add24 = add nsw i32 %35, 1
  %idxprom25 = sext i32 %add24 to i64
  %36 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %36, i64 %idxprom25
  %37 = load double, double* %arrayidx26, align 8
  %38 = load i32, i32* %j3, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %39, i64 %idxprom27
  %40 = load double, double* %arrayidx28, align 8
  %add29 = fadd double %37, %40
  store double %add29, double* %x2i, align 8
  %41 = load i32, i32* %j1, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %42, i64 %idxprom30
  %43 = load double, double* %arrayidx31, align 8
  %44 = load i32, i32* %j3, align 4
  %add32 = add nsw i32 %44, 1
  %idxprom33 = sext i32 %add32 to i64
  %45 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %45, i64 %idxprom33
  %46 = load double, double* %arrayidx34, align 8
  %add35 = fadd double %43, %46
  store double %add35, double* %x3r, align 8
  %47 = load i32, i32* %j1, align 4
  %add36 = add nsw i32 %47, 1
  %idxprom37 = sext i32 %add36 to i64
  %48 = load double*, double** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %48, i64 %idxprom37
  %49 = load double, double* %arrayidx38, align 8
  %50 = load i32, i32* %j3, align 4
  %idxprom39 = sext i32 %50 to i64
  %51 = load double*, double** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %51, i64 %idxprom39
  %52 = load double, double* %arrayidx40, align 8
  %sub41 = fsub double %49, %52
  store double %sub41, double* %x3i, align 8
  %53 = load double, double* %wn4r, align 8
  %54 = load double, double* %x2r, align 8
  %55 = load double, double* %x2i, align 8
  %sub42 = fsub double %54, %55
  %mul43 = fmul double %53, %sub42
  store double %mul43, double* %y0r, align 8
  %56 = load double, double* %wn4r, align 8
  %57 = load double, double* %x2i, align 8
  %58 = load double, double* %x2r, align 8
  %add44 = fadd double %57, %58
  %mul45 = fmul double %56, %add44
  store double %mul45, double* %y0i, align 8
  %59 = load double, double* %x0r, align 8
  %60 = load double, double* %y0r, align 8
  %add46 = fadd double %59, %60
  %61 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %61, i64 0
  store double %add46, double* %arrayidx47, align 8
  %62 = load double, double* %x0i, align 8
  %63 = load double, double* %y0i, align 8
  %add48 = fadd double %62, %63
  %64 = load double*, double** %a.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %64, i64 1
  store double %add48, double* %arrayidx49, align 8
  %65 = load double, double* %x0r, align 8
  %66 = load double, double* %y0r, align 8
  %sub50 = fsub double %65, %66
  %67 = load i32, i32* %j1, align 4
  %idxprom51 = sext i32 %67 to i64
  %68 = load double*, double** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %68, i64 %idxprom51
  store double %sub50, double* %arrayidx52, align 8
  %69 = load double, double* %x0i, align 8
  %70 = load double, double* %y0i, align 8
  %sub53 = fsub double %69, %70
  %71 = load i32, i32* %j1, align 4
  %add54 = add nsw i32 %71, 1
  %idxprom55 = sext i32 %add54 to i64
  %72 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %72, i64 %idxprom55
  store double %sub53, double* %arrayidx56, align 8
  %73 = load double, double* %wn4r, align 8
  %74 = load double, double* %x3r, align 8
  %75 = load double, double* %x3i, align 8
  %sub57 = fsub double %74, %75
  %mul58 = fmul double %73, %sub57
  store double %mul58, double* %y0r, align 8
  %76 = load double, double* %wn4r, align 8
  %77 = load double, double* %x3i, align 8
  %78 = load double, double* %x3r, align 8
  %add59 = fadd double %77, %78
  %mul60 = fmul double %76, %add59
  store double %mul60, double* %y0i, align 8
  %79 = load double, double* %x1r, align 8
  %80 = load double, double* %y0i, align 8
  %sub61 = fsub double %79, %80
  %81 = load i32, i32* %j2, align 4
  %idxprom62 = sext i32 %81 to i64
  %82 = load double*, double** %a.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %82, i64 %idxprom62
  store double %sub61, double* %arrayidx63, align 8
  %83 = load double, double* %x1i, align 8
  %84 = load double, double* %y0r, align 8
  %add64 = fadd double %83, %84
  %85 = load i32, i32* %j2, align 4
  %add65 = add nsw i32 %85, 1
  %idxprom66 = sext i32 %add65 to i64
  %86 = load double*, double** %a.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %86, i64 %idxprom66
  store double %add64, double* %arrayidx67, align 8
  %87 = load double, double* %x1r, align 8
  %88 = load double, double* %y0i, align 8
  %add68 = fadd double %87, %88
  %89 = load i32, i32* %j3, align 4
  %idxprom69 = sext i32 %89 to i64
  %90 = load double*, double** %a.addr, align 8
  %arrayidx70 = getelementptr inbounds double, double* %90, i64 %idxprom69
  store double %add68, double* %arrayidx70, align 8
  %91 = load double, double* %x1i, align 8
  %92 = load double, double* %y0r, align 8
  %sub71 = fsub double %91, %92
  %93 = load i32, i32* %j3, align 4
  %add72 = add nsw i32 %93, 1
  %idxprom73 = sext i32 %add72 to i64
  %94 = load double*, double** %a.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %94, i64 %idxprom73
  store double %sub71, double* %arrayidx74, align 8
  store i32 0, i32* %k, align 4
  %95 = load i32, i32* %m, align 4
  %mul75 = mul nsw i32 2, %95
  store i32 %mul75, i32* %kr, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %mh, align 4
  %cmp = icmp slt i32 %96, %97
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %k, align 4
  %add76 = add nsw i32 %98, 4
  store i32 %add76, i32* %k, align 4
  %99 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %99 to i64
  %100 = load double*, double** %w.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %100, i64 %idxprom77
  %101 = load double, double* %arrayidx78, align 8
  store double %101, double* %wk1r, align 8
  %102 = load i32, i32* %k, align 4
  %add79 = add nsw i32 %102, 1
  %idxprom80 = sext i32 %add79 to i64
  %103 = load double*, double** %w.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %103, i64 %idxprom80
  %104 = load double, double* %arrayidx81, align 8
  store double %104, double* %wk1i, align 8
  %105 = load i32, i32* %k, align 4
  %add82 = add nsw i32 %105, 2
  %idxprom83 = sext i32 %add82 to i64
  %106 = load double*, double** %w.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %106, i64 %idxprom83
  %107 = load double, double* %arrayidx84, align 8
  store double %107, double* %wk3r, align 8
  %108 = load i32, i32* %k, align 4
  %add85 = add nsw i32 %108, 3
  %idxprom86 = sext i32 %add85 to i64
  %109 = load double*, double** %w.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %109, i64 %idxprom86
  %110 = load double, double* %arrayidx87, align 8
  %sub88 = fsub double -0.000000e+00, %110
  store double %sub88, double* %wk3i, align 8
  %111 = load i32, i32* %kr, align 4
  %sub89 = sub nsw i32 %111, 4
  store i32 %sub89, i32* %kr, align 4
  %112 = load i32, i32* %kr, align 4
  %idxprom90 = sext i32 %112 to i64
  %113 = load double*, double** %w.addr, align 8
  %arrayidx91 = getelementptr inbounds double, double* %113, i64 %idxprom90
  %114 = load double, double* %arrayidx91, align 8
  store double %114, double* %wd1i, align 8
  %115 = load i32, i32* %kr, align 4
  %add92 = add nsw i32 %115, 1
  %idxprom93 = sext i32 %add92 to i64
  %116 = load double*, double** %w.addr, align 8
  %arrayidx94 = getelementptr inbounds double, double* %116, i64 %idxprom93
  %117 = load double, double* %arrayidx94, align 8
  store double %117, double* %wd1r, align 8
  %118 = load i32, i32* %kr, align 4
  %add95 = add nsw i32 %118, 2
  %idxprom96 = sext i32 %add95 to i64
  %119 = load double*, double** %w.addr, align 8
  %arrayidx97 = getelementptr inbounds double, double* %119, i64 %idxprom96
  %120 = load double, double* %arrayidx97, align 8
  store double %120, double* %wd3i, align 8
  %121 = load i32, i32* %kr, align 4
  %add98 = add nsw i32 %121, 3
  %idxprom99 = sext i32 %add98 to i64
  %122 = load double*, double** %w.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %122, i64 %idxprom99
  %123 = load double, double* %arrayidx100, align 8
  %sub101 = fsub double -0.000000e+00, %123
  store double %sub101, double* %wd3r, align 8
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* %m, align 4
  %add102 = add nsw i32 %124, %125
  store i32 %add102, i32* %j1, align 4
  %126 = load i32, i32* %j1, align 4
  %127 = load i32, i32* %m, align 4
  %add103 = add nsw i32 %126, %127
  store i32 %add103, i32* %j2, align 4
  %128 = load i32, i32* %j2, align 4
  %129 = load i32, i32* %m, align 4
  %add104 = add nsw i32 %128, %129
  store i32 %add104, i32* %j3, align 4
  %130 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %130 to i64
  %131 = load double*, double** %a.addr, align 8
  %arrayidx106 = getelementptr inbounds double, double* %131, i64 %idxprom105
  %132 = load double, double* %arrayidx106, align 8
  %133 = load i32, i32* %j2, align 4
  %add107 = add nsw i32 %133, 1
  %idxprom108 = sext i32 %add107 to i64
  %134 = load double*, double** %a.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %134, i64 %idxprom108
  %135 = load double, double* %arrayidx109, align 8
  %sub110 = fsub double %132, %135
  store double %sub110, double* %x0r, align 8
  %136 = load i32, i32* %j, align 4
  %add111 = add nsw i32 %136, 1
  %idxprom112 = sext i32 %add111 to i64
  %137 = load double*, double** %a.addr, align 8
  %arrayidx113 = getelementptr inbounds double, double* %137, i64 %idxprom112
  %138 = load double, double* %arrayidx113, align 8
  %139 = load i32, i32* %j2, align 4
  %idxprom114 = sext i32 %139 to i64
  %140 = load double*, double** %a.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %140, i64 %idxprom114
  %141 = load double, double* %arrayidx115, align 8
  %add116 = fadd double %138, %141
  store double %add116, double* %x0i, align 8
  %142 = load i32, i32* %j, align 4
  %idxprom117 = sext i32 %142 to i64
  %143 = load double*, double** %a.addr, align 8
  %arrayidx118 = getelementptr inbounds double, double* %143, i64 %idxprom117
  %144 = load double, double* %arrayidx118, align 8
  %145 = load i32, i32* %j2, align 4
  %add119 = add nsw i32 %145, 1
  %idxprom120 = sext i32 %add119 to i64
  %146 = load double*, double** %a.addr, align 8
  %arrayidx121 = getelementptr inbounds double, double* %146, i64 %idxprom120
  %147 = load double, double* %arrayidx121, align 8
  %add122 = fadd double %144, %147
  store double %add122, double* %x1r, align 8
  %148 = load i32, i32* %j, align 4
  %add123 = add nsw i32 %148, 1
  %idxprom124 = sext i32 %add123 to i64
  %149 = load double*, double** %a.addr, align 8
  %arrayidx125 = getelementptr inbounds double, double* %149, i64 %idxprom124
  %150 = load double, double* %arrayidx125, align 8
  %151 = load i32, i32* %j2, align 4
  %idxprom126 = sext i32 %151 to i64
  %152 = load double*, double** %a.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %152, i64 %idxprom126
  %153 = load double, double* %arrayidx127, align 8
  %sub128 = fsub double %150, %153
  store double %sub128, double* %x1i, align 8
  %154 = load i32, i32* %j1, align 4
  %idxprom129 = sext i32 %154 to i64
  %155 = load double*, double** %a.addr, align 8
  %arrayidx130 = getelementptr inbounds double, double* %155, i64 %idxprom129
  %156 = load double, double* %arrayidx130, align 8
  %157 = load i32, i32* %j3, align 4
  %add131 = add nsw i32 %157, 1
  %idxprom132 = sext i32 %add131 to i64
  %158 = load double*, double** %a.addr, align 8
  %arrayidx133 = getelementptr inbounds double, double* %158, i64 %idxprom132
  %159 = load double, double* %arrayidx133, align 8
  %sub134 = fsub double %156, %159
  store double %sub134, double* %x2r, align 8
  %160 = load i32, i32* %j1, align 4
  %add135 = add nsw i32 %160, 1
  %idxprom136 = sext i32 %add135 to i64
  %161 = load double*, double** %a.addr, align 8
  %arrayidx137 = getelementptr inbounds double, double* %161, i64 %idxprom136
  %162 = load double, double* %arrayidx137, align 8
  %163 = load i32, i32* %j3, align 4
  %idxprom138 = sext i32 %163 to i64
  %164 = load double*, double** %a.addr, align 8
  %arrayidx139 = getelementptr inbounds double, double* %164, i64 %idxprom138
  %165 = load double, double* %arrayidx139, align 8
  %add140 = fadd double %162, %165
  store double %add140, double* %x2i, align 8
  %166 = load i32, i32* %j1, align 4
  %idxprom141 = sext i32 %166 to i64
  %167 = load double*, double** %a.addr, align 8
  %arrayidx142 = getelementptr inbounds double, double* %167, i64 %idxprom141
  %168 = load double, double* %arrayidx142, align 8
  %169 = load i32, i32* %j3, align 4
  %add143 = add nsw i32 %169, 1
  %idxprom144 = sext i32 %add143 to i64
  %170 = load double*, double** %a.addr, align 8
  %arrayidx145 = getelementptr inbounds double, double* %170, i64 %idxprom144
  %171 = load double, double* %arrayidx145, align 8
  %add146 = fadd double %168, %171
  store double %add146, double* %x3r, align 8
  %172 = load i32, i32* %j1, align 4
  %add147 = add nsw i32 %172, 1
  %idxprom148 = sext i32 %add147 to i64
  %173 = load double*, double** %a.addr, align 8
  %arrayidx149 = getelementptr inbounds double, double* %173, i64 %idxprom148
  %174 = load double, double* %arrayidx149, align 8
  %175 = load i32, i32* %j3, align 4
  %idxprom150 = sext i32 %175 to i64
  %176 = load double*, double** %a.addr, align 8
  %arrayidx151 = getelementptr inbounds double, double* %176, i64 %idxprom150
  %177 = load double, double* %arrayidx151, align 8
  %sub152 = fsub double %174, %177
  store double %sub152, double* %x3i, align 8
  %178 = load double, double* %wk1r, align 8
  %179 = load double, double* %x0r, align 8
  %mul153 = fmul double %178, %179
  %180 = load double, double* %wk1i, align 8
  %181 = load double, double* %x0i, align 8
  %mul154 = fmul double %180, %181
  %sub155 = fsub double %mul153, %mul154
  store double %sub155, double* %y0r, align 8
  %182 = load double, double* %wk1r, align 8
  %183 = load double, double* %x0i, align 8
  %mul156 = fmul double %182, %183
  %184 = load double, double* %wk1i, align 8
  %185 = load double, double* %x0r, align 8
  %mul157 = fmul double %184, %185
  %add158 = fadd double %mul156, %mul157
  store double %add158, double* %y0i, align 8
  %186 = load double, double* %wd1r, align 8
  %187 = load double, double* %x2r, align 8
  %mul159 = fmul double %186, %187
  %188 = load double, double* %wd1i, align 8
  %189 = load double, double* %x2i, align 8
  %mul160 = fmul double %188, %189
  %sub161 = fsub double %mul159, %mul160
  store double %sub161, double* %y2r, align 8
  %190 = load double, double* %wd1r, align 8
  %191 = load double, double* %x2i, align 8
  %mul162 = fmul double %190, %191
  %192 = load double, double* %wd1i, align 8
  %193 = load double, double* %x2r, align 8
  %mul163 = fmul double %192, %193
  %add164 = fadd double %mul162, %mul163
  store double %add164, double* %y2i, align 8
  %194 = load double, double* %y0r, align 8
  %195 = load double, double* %y2r, align 8
  %add165 = fadd double %194, %195
  %196 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %196 to i64
  %197 = load double*, double** %a.addr, align 8
  %arrayidx167 = getelementptr inbounds double, double* %197, i64 %idxprom166
  store double %add165, double* %arrayidx167, align 8
  %198 = load double, double* %y0i, align 8
  %199 = load double, double* %y2i, align 8
  %add168 = fadd double %198, %199
  %200 = load i32, i32* %j, align 4
  %add169 = add nsw i32 %200, 1
  %idxprom170 = sext i32 %add169 to i64
  %201 = load double*, double** %a.addr, align 8
  %arrayidx171 = getelementptr inbounds double, double* %201, i64 %idxprom170
  store double %add168, double* %arrayidx171, align 8
  %202 = load double, double* %y0r, align 8
  %203 = load double, double* %y2r, align 8
  %sub172 = fsub double %202, %203
  %204 = load i32, i32* %j1, align 4
  %idxprom173 = sext i32 %204 to i64
  %205 = load double*, double** %a.addr, align 8
  %arrayidx174 = getelementptr inbounds double, double* %205, i64 %idxprom173
  store double %sub172, double* %arrayidx174, align 8
  %206 = load double, double* %y0i, align 8
  %207 = load double, double* %y2i, align 8
  %sub175 = fsub double %206, %207
  %208 = load i32, i32* %j1, align 4
  %add176 = add nsw i32 %208, 1
  %idxprom177 = sext i32 %add176 to i64
  %209 = load double*, double** %a.addr, align 8
  %arrayidx178 = getelementptr inbounds double, double* %209, i64 %idxprom177
  store double %sub175, double* %arrayidx178, align 8
  %210 = load double, double* %wk3r, align 8
  %211 = load double, double* %x1r, align 8
  %mul179 = fmul double %210, %211
  %212 = load double, double* %wk3i, align 8
  %213 = load double, double* %x1i, align 8
  %mul180 = fmul double %212, %213
  %add181 = fadd double %mul179, %mul180
  store double %add181, double* %y0r, align 8
  %214 = load double, double* %wk3r, align 8
  %215 = load double, double* %x1i, align 8
  %mul182 = fmul double %214, %215
  %216 = load double, double* %wk3i, align 8
  %217 = load double, double* %x1r, align 8
  %mul183 = fmul double %216, %217
  %sub184 = fsub double %mul182, %mul183
  store double %sub184, double* %y0i, align 8
  %218 = load double, double* %wd3r, align 8
  %219 = load double, double* %x3r, align 8
  %mul185 = fmul double %218, %219
  %220 = load double, double* %wd3i, align 8
  %221 = load double, double* %x3i, align 8
  %mul186 = fmul double %220, %221
  %add187 = fadd double %mul185, %mul186
  store double %add187, double* %y2r, align 8
  %222 = load double, double* %wd3r, align 8
  %223 = load double, double* %x3i, align 8
  %mul188 = fmul double %222, %223
  %224 = load double, double* %wd3i, align 8
  %225 = load double, double* %x3r, align 8
  %mul189 = fmul double %224, %225
  %sub190 = fsub double %mul188, %mul189
  store double %sub190, double* %y2i, align 8
  %226 = load double, double* %y0r, align 8
  %227 = load double, double* %y2r, align 8
  %add191 = fadd double %226, %227
  %228 = load i32, i32* %j2, align 4
  %idxprom192 = sext i32 %228 to i64
  %229 = load double*, double** %a.addr, align 8
  %arrayidx193 = getelementptr inbounds double, double* %229, i64 %idxprom192
  store double %add191, double* %arrayidx193, align 8
  %230 = load double, double* %y0i, align 8
  %231 = load double, double* %y2i, align 8
  %add194 = fadd double %230, %231
  %232 = load i32, i32* %j2, align 4
  %add195 = add nsw i32 %232, 1
  %idxprom196 = sext i32 %add195 to i64
  %233 = load double*, double** %a.addr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %233, i64 %idxprom196
  store double %add194, double* %arrayidx197, align 8
  %234 = load double, double* %y0r, align 8
  %235 = load double, double* %y2r, align 8
  %sub198 = fsub double %234, %235
  %236 = load i32, i32* %j3, align 4
  %idxprom199 = sext i32 %236 to i64
  %237 = load double*, double** %a.addr, align 8
  %arrayidx200 = getelementptr inbounds double, double* %237, i64 %idxprom199
  store double %sub198, double* %arrayidx200, align 8
  %238 = load double, double* %y0i, align 8
  %239 = load double, double* %y2i, align 8
  %sub201 = fsub double %238, %239
  %240 = load i32, i32* %j3, align 4
  %add202 = add nsw i32 %240, 1
  %idxprom203 = sext i32 %add202 to i64
  %241 = load double*, double** %a.addr, align 8
  %arrayidx204 = getelementptr inbounds double, double* %241, i64 %idxprom203
  store double %sub201, double* %arrayidx204, align 8
  %242 = load i32, i32* %m, align 4
  %243 = load i32, i32* %j, align 4
  %sub205 = sub nsw i32 %242, %243
  store i32 %sub205, i32* %j0, align 4
  %244 = load i32, i32* %j0, align 4
  %245 = load i32, i32* %m, align 4
  %add206 = add nsw i32 %244, %245
  store i32 %add206, i32* %j1, align 4
  %246 = load i32, i32* %j1, align 4
  %247 = load i32, i32* %m, align 4
  %add207 = add nsw i32 %246, %247
  store i32 %add207, i32* %j2, align 4
  %248 = load i32, i32* %j2, align 4
  %249 = load i32, i32* %m, align 4
  %add208 = add nsw i32 %248, %249
  store i32 %add208, i32* %j3, align 4
  %250 = load i32, i32* %j0, align 4
  %idxprom209 = sext i32 %250 to i64
  %251 = load double*, double** %a.addr, align 8
  %arrayidx210 = getelementptr inbounds double, double* %251, i64 %idxprom209
  %252 = load double, double* %arrayidx210, align 8
  %253 = load i32, i32* %j2, align 4
  %add211 = add nsw i32 %253, 1
  %idxprom212 = sext i32 %add211 to i64
  %254 = load double*, double** %a.addr, align 8
  %arrayidx213 = getelementptr inbounds double, double* %254, i64 %idxprom212
  %255 = load double, double* %arrayidx213, align 8
  %sub214 = fsub double %252, %255
  store double %sub214, double* %x0r, align 8
  %256 = load i32, i32* %j0, align 4
  %add215 = add nsw i32 %256, 1
  %idxprom216 = sext i32 %add215 to i64
  %257 = load double*, double** %a.addr, align 8
  %arrayidx217 = getelementptr inbounds double, double* %257, i64 %idxprom216
  %258 = load double, double* %arrayidx217, align 8
  %259 = load i32, i32* %j2, align 4
  %idxprom218 = sext i32 %259 to i64
  %260 = load double*, double** %a.addr, align 8
  %arrayidx219 = getelementptr inbounds double, double* %260, i64 %idxprom218
  %261 = load double, double* %arrayidx219, align 8
  %add220 = fadd double %258, %261
  store double %add220, double* %x0i, align 8
  %262 = load i32, i32* %j0, align 4
  %idxprom221 = sext i32 %262 to i64
  %263 = load double*, double** %a.addr, align 8
  %arrayidx222 = getelementptr inbounds double, double* %263, i64 %idxprom221
  %264 = load double, double* %arrayidx222, align 8
  %265 = load i32, i32* %j2, align 4
  %add223 = add nsw i32 %265, 1
  %idxprom224 = sext i32 %add223 to i64
  %266 = load double*, double** %a.addr, align 8
  %arrayidx225 = getelementptr inbounds double, double* %266, i64 %idxprom224
  %267 = load double, double* %arrayidx225, align 8
  %add226 = fadd double %264, %267
  store double %add226, double* %x1r, align 8
  %268 = load i32, i32* %j0, align 4
  %add227 = add nsw i32 %268, 1
  %idxprom228 = sext i32 %add227 to i64
  %269 = load double*, double** %a.addr, align 8
  %arrayidx229 = getelementptr inbounds double, double* %269, i64 %idxprom228
  %270 = load double, double* %arrayidx229, align 8
  %271 = load i32, i32* %j2, align 4
  %idxprom230 = sext i32 %271 to i64
  %272 = load double*, double** %a.addr, align 8
  %arrayidx231 = getelementptr inbounds double, double* %272, i64 %idxprom230
  %273 = load double, double* %arrayidx231, align 8
  %sub232 = fsub double %270, %273
  store double %sub232, double* %x1i, align 8
  %274 = load i32, i32* %j1, align 4
  %idxprom233 = sext i32 %274 to i64
  %275 = load double*, double** %a.addr, align 8
  %arrayidx234 = getelementptr inbounds double, double* %275, i64 %idxprom233
  %276 = load double, double* %arrayidx234, align 8
  %277 = load i32, i32* %j3, align 4
  %add235 = add nsw i32 %277, 1
  %idxprom236 = sext i32 %add235 to i64
  %278 = load double*, double** %a.addr, align 8
  %arrayidx237 = getelementptr inbounds double, double* %278, i64 %idxprom236
  %279 = load double, double* %arrayidx237, align 8
  %sub238 = fsub double %276, %279
  store double %sub238, double* %x2r, align 8
  %280 = load i32, i32* %j1, align 4
  %add239 = add nsw i32 %280, 1
  %idxprom240 = sext i32 %add239 to i64
  %281 = load double*, double** %a.addr, align 8
  %arrayidx241 = getelementptr inbounds double, double* %281, i64 %idxprom240
  %282 = load double, double* %arrayidx241, align 8
  %283 = load i32, i32* %j3, align 4
  %idxprom242 = sext i32 %283 to i64
  %284 = load double*, double** %a.addr, align 8
  %arrayidx243 = getelementptr inbounds double, double* %284, i64 %idxprom242
  %285 = load double, double* %arrayidx243, align 8
  %add244 = fadd double %282, %285
  store double %add244, double* %x2i, align 8
  %286 = load i32, i32* %j1, align 4
  %idxprom245 = sext i32 %286 to i64
  %287 = load double*, double** %a.addr, align 8
  %arrayidx246 = getelementptr inbounds double, double* %287, i64 %idxprom245
  %288 = load double, double* %arrayidx246, align 8
  %289 = load i32, i32* %j3, align 4
  %add247 = add nsw i32 %289, 1
  %idxprom248 = sext i32 %add247 to i64
  %290 = load double*, double** %a.addr, align 8
  %arrayidx249 = getelementptr inbounds double, double* %290, i64 %idxprom248
  %291 = load double, double* %arrayidx249, align 8
  %add250 = fadd double %288, %291
  store double %add250, double* %x3r, align 8
  %292 = load i32, i32* %j1, align 4
  %add251 = add nsw i32 %292, 1
  %idxprom252 = sext i32 %add251 to i64
  %293 = load double*, double** %a.addr, align 8
  %arrayidx253 = getelementptr inbounds double, double* %293, i64 %idxprom252
  %294 = load double, double* %arrayidx253, align 8
  %295 = load i32, i32* %j3, align 4
  %idxprom254 = sext i32 %295 to i64
  %296 = load double*, double** %a.addr, align 8
  %arrayidx255 = getelementptr inbounds double, double* %296, i64 %idxprom254
  %297 = load double, double* %arrayidx255, align 8
  %sub256 = fsub double %294, %297
  store double %sub256, double* %x3i, align 8
  %298 = load double, double* %wd1i, align 8
  %299 = load double, double* %x0r, align 8
  %mul257 = fmul double %298, %299
  %300 = load double, double* %wd1r, align 8
  %301 = load double, double* %x0i, align 8
  %mul258 = fmul double %300, %301
  %sub259 = fsub double %mul257, %mul258
  store double %sub259, double* %y0r, align 8
  %302 = load double, double* %wd1i, align 8
  %303 = load double, double* %x0i, align 8
  %mul260 = fmul double %302, %303
  %304 = load double, double* %wd1r, align 8
  %305 = load double, double* %x0r, align 8
  %mul261 = fmul double %304, %305
  %add262 = fadd double %mul260, %mul261
  store double %add262, double* %y0i, align 8
  %306 = load double, double* %wk1i, align 8
  %307 = load double, double* %x2r, align 8
  %mul263 = fmul double %306, %307
  %308 = load double, double* %wk1r, align 8
  %309 = load double, double* %x2i, align 8
  %mul264 = fmul double %308, %309
  %sub265 = fsub double %mul263, %mul264
  store double %sub265, double* %y2r, align 8
  %310 = load double, double* %wk1i, align 8
  %311 = load double, double* %x2i, align 8
  %mul266 = fmul double %310, %311
  %312 = load double, double* %wk1r, align 8
  %313 = load double, double* %x2r, align 8
  %mul267 = fmul double %312, %313
  %add268 = fadd double %mul266, %mul267
  store double %add268, double* %y2i, align 8
  %314 = load double, double* %y0r, align 8
  %315 = load double, double* %y2r, align 8
  %add269 = fadd double %314, %315
  %316 = load i32, i32* %j0, align 4
  %idxprom270 = sext i32 %316 to i64
  %317 = load double*, double** %a.addr, align 8
  %arrayidx271 = getelementptr inbounds double, double* %317, i64 %idxprom270
  store double %add269, double* %arrayidx271, align 8
  %318 = load double, double* %y0i, align 8
  %319 = load double, double* %y2i, align 8
  %add272 = fadd double %318, %319
  %320 = load i32, i32* %j0, align 4
  %add273 = add nsw i32 %320, 1
  %idxprom274 = sext i32 %add273 to i64
  %321 = load double*, double** %a.addr, align 8
  %arrayidx275 = getelementptr inbounds double, double* %321, i64 %idxprom274
  store double %add272, double* %arrayidx275, align 8
  %322 = load double, double* %y0r, align 8
  %323 = load double, double* %y2r, align 8
  %sub276 = fsub double %322, %323
  %324 = load i32, i32* %j1, align 4
  %idxprom277 = sext i32 %324 to i64
  %325 = load double*, double** %a.addr, align 8
  %arrayidx278 = getelementptr inbounds double, double* %325, i64 %idxprom277
  store double %sub276, double* %arrayidx278, align 8
  %326 = load double, double* %y0i, align 8
  %327 = load double, double* %y2i, align 8
  %sub279 = fsub double %326, %327
  %328 = load i32, i32* %j1, align 4
  %add280 = add nsw i32 %328, 1
  %idxprom281 = sext i32 %add280 to i64
  %329 = load double*, double** %a.addr, align 8
  %arrayidx282 = getelementptr inbounds double, double* %329, i64 %idxprom281
  store double %sub279, double* %arrayidx282, align 8
  %330 = load double, double* %wd3i, align 8
  %331 = load double, double* %x1r, align 8
  %mul283 = fmul double %330, %331
  %332 = load double, double* %wd3r, align 8
  %333 = load double, double* %x1i, align 8
  %mul284 = fmul double %332, %333
  %add285 = fadd double %mul283, %mul284
  store double %add285, double* %y0r, align 8
  %334 = load double, double* %wd3i, align 8
  %335 = load double, double* %x1i, align 8
  %mul286 = fmul double %334, %335
  %336 = load double, double* %wd3r, align 8
  %337 = load double, double* %x1r, align 8
  %mul287 = fmul double %336, %337
  %sub288 = fsub double %mul286, %mul287
  store double %sub288, double* %y0i, align 8
  %338 = load double, double* %wk3i, align 8
  %339 = load double, double* %x3r, align 8
  %mul289 = fmul double %338, %339
  %340 = load double, double* %wk3r, align 8
  %341 = load double, double* %x3i, align 8
  %mul290 = fmul double %340, %341
  %add291 = fadd double %mul289, %mul290
  store double %add291, double* %y2r, align 8
  %342 = load double, double* %wk3i, align 8
  %343 = load double, double* %x3i, align 8
  %mul292 = fmul double %342, %343
  %344 = load double, double* %wk3r, align 8
  %345 = load double, double* %x3r, align 8
  %mul293 = fmul double %344, %345
  %sub294 = fsub double %mul292, %mul293
  store double %sub294, double* %y2i, align 8
  %346 = load double, double* %y0r, align 8
  %347 = load double, double* %y2r, align 8
  %add295 = fadd double %346, %347
  %348 = load i32, i32* %j2, align 4
  %idxprom296 = sext i32 %348 to i64
  %349 = load double*, double** %a.addr, align 8
  %arrayidx297 = getelementptr inbounds double, double* %349, i64 %idxprom296
  store double %add295, double* %arrayidx297, align 8
  %350 = load double, double* %y0i, align 8
  %351 = load double, double* %y2i, align 8
  %add298 = fadd double %350, %351
  %352 = load i32, i32* %j2, align 4
  %add299 = add nsw i32 %352, 1
  %idxprom300 = sext i32 %add299 to i64
  %353 = load double*, double** %a.addr, align 8
  %arrayidx301 = getelementptr inbounds double, double* %353, i64 %idxprom300
  store double %add298, double* %arrayidx301, align 8
  %354 = load double, double* %y0r, align 8
  %355 = load double, double* %y2r, align 8
  %sub302 = fsub double %354, %355
  %356 = load i32, i32* %j3, align 4
  %idxprom303 = sext i32 %356 to i64
  %357 = load double*, double** %a.addr, align 8
  %arrayidx304 = getelementptr inbounds double, double* %357, i64 %idxprom303
  store double %sub302, double* %arrayidx304, align 8
  %358 = load double, double* %y0i, align 8
  %359 = load double, double* %y2i, align 8
  %sub305 = fsub double %358, %359
  %360 = load i32, i32* %j3, align 4
  %add306 = add nsw i32 %360, 1
  %idxprom307 = sext i32 %add306 to i64
  %361 = load double*, double** %a.addr, align 8
  %arrayidx308 = getelementptr inbounds double, double* %361, i64 %idxprom307
  store double %sub305, double* %arrayidx308, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %362 = load i32, i32* %j, align 4
  %add309 = add nsw i32 %362, 2
  store i32 %add309, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %363 = load i32, i32* %m, align 4
  %idxprom310 = sext i32 %363 to i64
  %364 = load double*, double** %w.addr, align 8
  %arrayidx311 = getelementptr inbounds double, double* %364, i64 %idxprom310
  %365 = load double, double* %arrayidx311, align 8
  store double %365, double* %wk1r, align 8
  %366 = load i32, i32* %m, align 4
  %add312 = add nsw i32 %366, 1
  %idxprom313 = sext i32 %add312 to i64
  %367 = load double*, double** %w.addr, align 8
  %arrayidx314 = getelementptr inbounds double, double* %367, i64 %idxprom313
  %368 = load double, double* %arrayidx314, align 8
  store double %368, double* %wk1i, align 8
  %369 = load i32, i32* %mh, align 4
  store i32 %369, i32* %j0, align 4
  %370 = load i32, i32* %j0, align 4
  %371 = load i32, i32* %m, align 4
  %add315 = add nsw i32 %370, %371
  store i32 %add315, i32* %j1, align 4
  %372 = load i32, i32* %j1, align 4
  %373 = load i32, i32* %m, align 4
  %add316 = add nsw i32 %372, %373
  store i32 %add316, i32* %j2, align 4
  %374 = load i32, i32* %j2, align 4
  %375 = load i32, i32* %m, align 4
  %add317 = add nsw i32 %374, %375
  store i32 %add317, i32* %j3, align 4
  %376 = load i32, i32* %j0, align 4
  %idxprom318 = sext i32 %376 to i64
  %377 = load double*, double** %a.addr, align 8
  %arrayidx319 = getelementptr inbounds double, double* %377, i64 %idxprom318
  %378 = load double, double* %arrayidx319, align 8
  %379 = load i32, i32* %j2, align 4
  %add320 = add nsw i32 %379, 1
  %idxprom321 = sext i32 %add320 to i64
  %380 = load double*, double** %a.addr, align 8
  %arrayidx322 = getelementptr inbounds double, double* %380, i64 %idxprom321
  %381 = load double, double* %arrayidx322, align 8
  %sub323 = fsub double %378, %381
  store double %sub323, double* %x0r, align 8
  %382 = load i32, i32* %j0, align 4
  %add324 = add nsw i32 %382, 1
  %idxprom325 = sext i32 %add324 to i64
  %383 = load double*, double** %a.addr, align 8
  %arrayidx326 = getelementptr inbounds double, double* %383, i64 %idxprom325
  %384 = load double, double* %arrayidx326, align 8
  %385 = load i32, i32* %j2, align 4
  %idxprom327 = sext i32 %385 to i64
  %386 = load double*, double** %a.addr, align 8
  %arrayidx328 = getelementptr inbounds double, double* %386, i64 %idxprom327
  %387 = load double, double* %arrayidx328, align 8
  %add329 = fadd double %384, %387
  store double %add329, double* %x0i, align 8
  %388 = load i32, i32* %j0, align 4
  %idxprom330 = sext i32 %388 to i64
  %389 = load double*, double** %a.addr, align 8
  %arrayidx331 = getelementptr inbounds double, double* %389, i64 %idxprom330
  %390 = load double, double* %arrayidx331, align 8
  %391 = load i32, i32* %j2, align 4
  %add332 = add nsw i32 %391, 1
  %idxprom333 = sext i32 %add332 to i64
  %392 = load double*, double** %a.addr, align 8
  %arrayidx334 = getelementptr inbounds double, double* %392, i64 %idxprom333
  %393 = load double, double* %arrayidx334, align 8
  %add335 = fadd double %390, %393
  store double %add335, double* %x1r, align 8
  %394 = load i32, i32* %j0, align 4
  %add336 = add nsw i32 %394, 1
  %idxprom337 = sext i32 %add336 to i64
  %395 = load double*, double** %a.addr, align 8
  %arrayidx338 = getelementptr inbounds double, double* %395, i64 %idxprom337
  %396 = load double, double* %arrayidx338, align 8
  %397 = load i32, i32* %j2, align 4
  %idxprom339 = sext i32 %397 to i64
  %398 = load double*, double** %a.addr, align 8
  %arrayidx340 = getelementptr inbounds double, double* %398, i64 %idxprom339
  %399 = load double, double* %arrayidx340, align 8
  %sub341 = fsub double %396, %399
  store double %sub341, double* %x1i, align 8
  %400 = load i32, i32* %j1, align 4
  %idxprom342 = sext i32 %400 to i64
  %401 = load double*, double** %a.addr, align 8
  %arrayidx343 = getelementptr inbounds double, double* %401, i64 %idxprom342
  %402 = load double, double* %arrayidx343, align 8
  %403 = load i32, i32* %j3, align 4
  %add344 = add nsw i32 %403, 1
  %idxprom345 = sext i32 %add344 to i64
  %404 = load double*, double** %a.addr, align 8
  %arrayidx346 = getelementptr inbounds double, double* %404, i64 %idxprom345
  %405 = load double, double* %arrayidx346, align 8
  %sub347 = fsub double %402, %405
  store double %sub347, double* %x2r, align 8
  %406 = load i32, i32* %j1, align 4
  %add348 = add nsw i32 %406, 1
  %idxprom349 = sext i32 %add348 to i64
  %407 = load double*, double** %a.addr, align 8
  %arrayidx350 = getelementptr inbounds double, double* %407, i64 %idxprom349
  %408 = load double, double* %arrayidx350, align 8
  %409 = load i32, i32* %j3, align 4
  %idxprom351 = sext i32 %409 to i64
  %410 = load double*, double** %a.addr, align 8
  %arrayidx352 = getelementptr inbounds double, double* %410, i64 %idxprom351
  %411 = load double, double* %arrayidx352, align 8
  %add353 = fadd double %408, %411
  store double %add353, double* %x2i, align 8
  %412 = load i32, i32* %j1, align 4
  %idxprom354 = sext i32 %412 to i64
  %413 = load double*, double** %a.addr, align 8
  %arrayidx355 = getelementptr inbounds double, double* %413, i64 %idxprom354
  %414 = load double, double* %arrayidx355, align 8
  %415 = load i32, i32* %j3, align 4
  %add356 = add nsw i32 %415, 1
  %idxprom357 = sext i32 %add356 to i64
  %416 = load double*, double** %a.addr, align 8
  %arrayidx358 = getelementptr inbounds double, double* %416, i64 %idxprom357
  %417 = load double, double* %arrayidx358, align 8
  %add359 = fadd double %414, %417
  store double %add359, double* %x3r, align 8
  %418 = load i32, i32* %j1, align 4
  %add360 = add nsw i32 %418, 1
  %idxprom361 = sext i32 %add360 to i64
  %419 = load double*, double** %a.addr, align 8
  %arrayidx362 = getelementptr inbounds double, double* %419, i64 %idxprom361
  %420 = load double, double* %arrayidx362, align 8
  %421 = load i32, i32* %j3, align 4
  %idxprom363 = sext i32 %421 to i64
  %422 = load double*, double** %a.addr, align 8
  %arrayidx364 = getelementptr inbounds double, double* %422, i64 %idxprom363
  %423 = load double, double* %arrayidx364, align 8
  %sub365 = fsub double %420, %423
  store double %sub365, double* %x3i, align 8
  %424 = load double, double* %wk1r, align 8
  %425 = load double, double* %x0r, align 8
  %mul366 = fmul double %424, %425
  %426 = load double, double* %wk1i, align 8
  %427 = load double, double* %x0i, align 8
  %mul367 = fmul double %426, %427
  %sub368 = fsub double %mul366, %mul367
  store double %sub368, double* %y0r, align 8
  %428 = load double, double* %wk1r, align 8
  %429 = load double, double* %x0i, align 8
  %mul369 = fmul double %428, %429
  %430 = load double, double* %wk1i, align 8
  %431 = load double, double* %x0r, align 8
  %mul370 = fmul double %430, %431
  %add371 = fadd double %mul369, %mul370
  store double %add371, double* %y0i, align 8
  %432 = load double, double* %wk1i, align 8
  %433 = load double, double* %x2r, align 8
  %mul372 = fmul double %432, %433
  %434 = load double, double* %wk1r, align 8
  %435 = load double, double* %x2i, align 8
  %mul373 = fmul double %434, %435
  %sub374 = fsub double %mul372, %mul373
  store double %sub374, double* %y2r, align 8
  %436 = load double, double* %wk1i, align 8
  %437 = load double, double* %x2i, align 8
  %mul375 = fmul double %436, %437
  %438 = load double, double* %wk1r, align 8
  %439 = load double, double* %x2r, align 8
  %mul376 = fmul double %438, %439
  %add377 = fadd double %mul375, %mul376
  store double %add377, double* %y2i, align 8
  %440 = load double, double* %y0r, align 8
  %441 = load double, double* %y2r, align 8
  %add378 = fadd double %440, %441
  %442 = load i32, i32* %j0, align 4
  %idxprom379 = sext i32 %442 to i64
  %443 = load double*, double** %a.addr, align 8
  %arrayidx380 = getelementptr inbounds double, double* %443, i64 %idxprom379
  store double %add378, double* %arrayidx380, align 8
  %444 = load double, double* %y0i, align 8
  %445 = load double, double* %y2i, align 8
  %add381 = fadd double %444, %445
  %446 = load i32, i32* %j0, align 4
  %add382 = add nsw i32 %446, 1
  %idxprom383 = sext i32 %add382 to i64
  %447 = load double*, double** %a.addr, align 8
  %arrayidx384 = getelementptr inbounds double, double* %447, i64 %idxprom383
  store double %add381, double* %arrayidx384, align 8
  %448 = load double, double* %y0r, align 8
  %449 = load double, double* %y2r, align 8
  %sub385 = fsub double %448, %449
  %450 = load i32, i32* %j1, align 4
  %idxprom386 = sext i32 %450 to i64
  %451 = load double*, double** %a.addr, align 8
  %arrayidx387 = getelementptr inbounds double, double* %451, i64 %idxprom386
  store double %sub385, double* %arrayidx387, align 8
  %452 = load double, double* %y0i, align 8
  %453 = load double, double* %y2i, align 8
  %sub388 = fsub double %452, %453
  %454 = load i32, i32* %j1, align 4
  %add389 = add nsw i32 %454, 1
  %idxprom390 = sext i32 %add389 to i64
  %455 = load double*, double** %a.addr, align 8
  %arrayidx391 = getelementptr inbounds double, double* %455, i64 %idxprom390
  store double %sub388, double* %arrayidx391, align 8
  %456 = load double, double* %wk1i, align 8
  %457 = load double, double* %x1r, align 8
  %mul392 = fmul double %456, %457
  %458 = load double, double* %wk1r, align 8
  %459 = load double, double* %x1i, align 8
  %mul393 = fmul double %458, %459
  %sub394 = fsub double %mul392, %mul393
  store double %sub394, double* %y0r, align 8
  %460 = load double, double* %wk1i, align 8
  %461 = load double, double* %x1i, align 8
  %mul395 = fmul double %460, %461
  %462 = load double, double* %wk1r, align 8
  %463 = load double, double* %x1r, align 8
  %mul396 = fmul double %462, %463
  %add397 = fadd double %mul395, %mul396
  store double %add397, double* %y0i, align 8
  %464 = load double, double* %wk1r, align 8
  %465 = load double, double* %x3r, align 8
  %mul398 = fmul double %464, %465
  %466 = load double, double* %wk1i, align 8
  %467 = load double, double* %x3i, align 8
  %mul399 = fmul double %466, %467
  %sub400 = fsub double %mul398, %mul399
  store double %sub400, double* %y2r, align 8
  %468 = load double, double* %wk1r, align 8
  %469 = load double, double* %x3i, align 8
  %mul401 = fmul double %468, %469
  %470 = load double, double* %wk1i, align 8
  %471 = load double, double* %x3r, align 8
  %mul402 = fmul double %470, %471
  %add403 = fadd double %mul401, %mul402
  store double %add403, double* %y2i, align 8
  %472 = load double, double* %y0r, align 8
  %473 = load double, double* %y2r, align 8
  %sub404 = fsub double %472, %473
  %474 = load i32, i32* %j2, align 4
  %idxprom405 = sext i32 %474 to i64
  %475 = load double*, double** %a.addr, align 8
  %arrayidx406 = getelementptr inbounds double, double* %475, i64 %idxprom405
  store double %sub404, double* %arrayidx406, align 8
  %476 = load double, double* %y0i, align 8
  %477 = load double, double* %y2i, align 8
  %sub407 = fsub double %476, %477
  %478 = load i32, i32* %j2, align 4
  %add408 = add nsw i32 %478, 1
  %idxprom409 = sext i32 %add408 to i64
  %479 = load double*, double** %a.addr, align 8
  %arrayidx410 = getelementptr inbounds double, double* %479, i64 %idxprom409
  store double %sub407, double* %arrayidx410, align 8
  %480 = load double, double* %y0r, align 8
  %481 = load double, double* %y2r, align 8
  %add411 = fadd double %480, %481
  %482 = load i32, i32* %j3, align 4
  %idxprom412 = sext i32 %482 to i64
  %483 = load double*, double** %a.addr, align 8
  %arrayidx413 = getelementptr inbounds double, double* %483, i64 %idxprom412
  store double %add411, double* %arrayidx413, align 8
  %484 = load double, double* %y0i, align 8
  %485 = load double, double* %y2i, align 8
  %add414 = fadd double %484, %485
  %486 = load i32, i32* %j3, align 4
  %add415 = add nsw i32 %486, 1
  %idxprom416 = sext i32 %add415 to i64
  %487 = load double*, double** %a.addr, align 8
  %arrayidx417 = getelementptr inbounds double, double* %487, i64 %idxprom416
  store double %add414, double* %arrayidx417, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftexp2(i32 %n, double* %a, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %m, align 4
  %1 = load i32, i32* %n.addr, align 4
  %shr1 = ashr i32 %1, 2
  store i32 %shr1, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.38, %entry
  %2 = load i32, i32* %l, align 4
  %cmp = icmp sgt i32 %2, 128
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %l, align 4
  store i32 %3, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %while.body
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %m, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %7 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %m, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i32, i32* %l, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load i32, i32* %nw.addr, align 4
  %14 = load i32, i32* %l, align 4
  %shr6 = ashr i32 %14, 1
  %sub7 = sub nsw i32 %13, %shr6
  %idxprom8 = sext i32 %sub7 to i64
  %15 = load double*, double** %w.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 %idxprom8
  call void @cftmdl1(i32 %10, double* %arrayidx, double* %arrayidx9)
  %16 = load i32, i32* %l, align 4
  %17 = load i32, i32* %m, align 4
  %18 = load i32, i32* %j, align 4
  %add = add nsw i32 %17, %18
  %idxprom10 = sext i32 %add to i64
  %19 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %19, i64 %idxprom10
  %20 = load i32, i32* %nw.addr, align 4
  %21 = load i32, i32* %l, align 4
  %shr12 = ashr i32 %21, 1
  %sub13 = sub nsw i32 %20, %shr12
  %idxprom14 = sext i32 %sub13 to i64
  %22 = load double*, double** %w.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %22, i64 %idxprom14
  call void @cftmdl1(i32 %16, double* %arrayidx11, double* %arrayidx15)
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %23 = load i32, i32* %k, align 4
  %mul = mul nsw i32 2, %23
  %24 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %24, %mul
  store i32 %add16, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %25 = load i32, i32* %k, align 4
  %mul17 = mul nsw i32 2, %25
  %26 = load i32, i32* %l, align 4
  %sub18 = sub nsw i32 %mul17, %26
  store i32 %sub18, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.33, %for.end
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %m, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.19
  %29 = load i32, i32* %l, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %30 to i64
  %31 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %31, i64 %idxprom22
  %32 = load i32, i32* %nw.addr, align 4
  %33 = load i32, i32* %l, align 4
  %sub24 = sub nsw i32 %32, %33
  %idxprom25 = sext i32 %sub24 to i64
  %34 = load double*, double** %w.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %34, i64 %idxprom25
  call void @cftmdl2(i32 %29, double* %arrayidx23, double* %arrayidx26)
  %35 = load i32, i32* %l, align 4
  %36 = load i32, i32* %m, align 4
  %37 = load i32, i32* %j, align 4
  %add27 = add nsw i32 %36, %37
  %idxprom28 = sext i32 %add27 to i64
  %38 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %38, i64 %idxprom28
  %39 = load i32, i32* %nw.addr, align 4
  %40 = load i32, i32* %l, align 4
  %sub30 = sub nsw i32 %39, %40
  %idxprom31 = sext i32 %sub30 to i64
  %41 = load double*, double** %w.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %41, i64 %idxprom31
  call void @cftmdl2(i32 %35, double* %arrayidx29, double* %arrayidx32)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.21
  %42 = load i32, i32* %k, align 4
  %mul34 = mul nsw i32 4, %42
  %43 = load i32, i32* %j, align 4
  %add35 = add nsw i32 %43, %mul34
  store i32 %add35, i32* %j, align 4
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %44 = load i32, i32* %k, align 4
  %shl = shl i32 %44, 2
  store i32 %shl, i32* %k, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %45 = load i32, i32* %l, align 4
  %shr39 = ashr i32 %45, 2
  store i32 %shr39, i32* %l, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i32, i32* %l, align 4
  store i32 %46, i32* %k, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.94, %while.end
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %m, align 4
  %cmp41 = icmp slt i32 %47, %48
  br i1 %cmp41, label %for.body.42, label %for.end.96

for.body.42:                                      ; preds = %for.cond.40
  %49 = load i32, i32* %k, align 4
  %50 = load i32, i32* %l, align 4
  %sub43 = sub nsw i32 %49, %50
  store i32 %sub43, i32* %j, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.65, %for.body.42
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %m, align 4
  %cmp45 = icmp slt i32 %51, %52
  br i1 %cmp45, label %for.body.46, label %for.end.68

for.body.46:                                      ; preds = %for.cond.44
  %53 = load i32, i32* %l, align 4
  %54 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %54 to i64
  %55 = load double*, double** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %55, i64 %idxprom47
  %56 = load i32, i32* %nw.addr, align 4
  %57 = load i32, i32* %l, align 4
  %shr49 = ashr i32 %57, 1
  %sub50 = sub nsw i32 %56, %shr49
  %idxprom51 = sext i32 %sub50 to i64
  %58 = load double*, double** %w.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %58, i64 %idxprom51
  call void @cftmdl1(i32 %53, double* %arrayidx48, double* %arrayidx52)
  %59 = load i32, i32* %l, align 4
  %60 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %60 to i64
  %61 = load double*, double** %a.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %61, i64 %idxprom53
  %62 = load i32, i32* %nw.addr, align 4
  %63 = load double*, double** %w.addr, align 8
  call void @cftfx41(i32 %59, double* %arrayidx54, i32 %62, double* %63)
  %64 = load i32, i32* %l, align 4
  %65 = load i32, i32* %m, align 4
  %66 = load i32, i32* %j, align 4
  %add55 = add nsw i32 %65, %66
  %idxprom56 = sext i32 %add55 to i64
  %67 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %67, i64 %idxprom56
  %68 = load i32, i32* %nw.addr, align 4
  %69 = load i32, i32* %l, align 4
  %shr58 = ashr i32 %69, 1
  %sub59 = sub nsw i32 %68, %shr58
  %idxprom60 = sext i32 %sub59 to i64
  %70 = load double*, double** %w.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %70, i64 %idxprom60
  call void @cftmdl1(i32 %64, double* %arrayidx57, double* %arrayidx61)
  %71 = load i32, i32* %l, align 4
  %72 = load i32, i32* %m, align 4
  %73 = load i32, i32* %j, align 4
  %add62 = add nsw i32 %72, %73
  %idxprom63 = sext i32 %add62 to i64
  %74 = load double*, double** %a.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %74, i64 %idxprom63
  %75 = load i32, i32* %nw.addr, align 4
  %76 = load double*, double** %w.addr, align 8
  call void @cftfx41(i32 %71, double* %arrayidx64, i32 %75, double* %76)
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.46
  %77 = load i32, i32* %k, align 4
  %mul66 = mul nsw i32 2, %77
  %78 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %78, %mul66
  store i32 %add67, i32* %j, align 4
  br label %for.cond.44

for.end.68:                                       ; preds = %for.cond.44
  %79 = load i32, i32* %k, align 4
  %mul69 = mul nsw i32 2, %79
  %80 = load i32, i32* %l, align 4
  %sub70 = sub nsw i32 %mul69, %80
  store i32 %sub70, i32* %j, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.90, %for.end.68
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %m, align 4
  %cmp72 = icmp slt i32 %81, %82
  br i1 %cmp72, label %for.body.73, label %for.end.93

for.body.73:                                      ; preds = %for.cond.71
  %83 = load i32, i32* %l, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %84 to i64
  %85 = load double*, double** %a.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %85, i64 %idxprom74
  %86 = load i32, i32* %nw.addr, align 4
  %87 = load i32, i32* %l, align 4
  %sub76 = sub nsw i32 %86, %87
  %idxprom77 = sext i32 %sub76 to i64
  %88 = load double*, double** %w.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %88, i64 %idxprom77
  call void @cftmdl2(i32 %83, double* %arrayidx75, double* %arrayidx78)
  %89 = load i32, i32* %l, align 4
  %90 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %90 to i64
  %91 = load double*, double** %a.addr, align 8
  %arrayidx80 = getelementptr inbounds double, double* %91, i64 %idxprom79
  %92 = load i32, i32* %nw.addr, align 4
  %93 = load double*, double** %w.addr, align 8
  call void @cftfx42(i32 %89, double* %arrayidx80, i32 %92, double* %93)
  %94 = load i32, i32* %l, align 4
  %95 = load i32, i32* %m, align 4
  %96 = load i32, i32* %j, align 4
  %add81 = add nsw i32 %95, %96
  %idxprom82 = sext i32 %add81 to i64
  %97 = load double*, double** %a.addr, align 8
  %arrayidx83 = getelementptr inbounds double, double* %97, i64 %idxprom82
  %98 = load i32, i32* %nw.addr, align 4
  %99 = load i32, i32* %l, align 4
  %sub84 = sub nsw i32 %98, %99
  %idxprom85 = sext i32 %sub84 to i64
  %100 = load double*, double** %w.addr, align 8
  %arrayidx86 = getelementptr inbounds double, double* %100, i64 %idxprom85
  call void @cftmdl2(i32 %94, double* %arrayidx83, double* %arrayidx86)
  %101 = load i32, i32* %l, align 4
  %102 = load i32, i32* %m, align 4
  %103 = load i32, i32* %j, align 4
  %add87 = add nsw i32 %102, %103
  %idxprom88 = sext i32 %add87 to i64
  %104 = load double*, double** %a.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %104, i64 %idxprom88
  %105 = load i32, i32* %nw.addr, align 4
  %106 = load double*, double** %w.addr, align 8
  call void @cftfx42(i32 %101, double* %arrayidx89, i32 %105, double* %106)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.73
  %107 = load i32, i32* %k, align 4
  %mul91 = mul nsw i32 4, %107
  %108 = load i32, i32* %j, align 4
  %add92 = add nsw i32 %108, %mul91
  store i32 %add92, i32* %j, align 4
  br label %for.cond.71

for.end.93:                                       ; preds = %for.cond.71
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %109 = load i32, i32* %k, align 4
  %shl95 = shl i32 %109, 2
  store i32 %shl95, i32* %k, align 4
  br label %for.cond.40

for.end.96:                                       ; preds = %for.cond.40
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftfx42(i32 %n, double* %a, i32 %nw, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %nw.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double*, double** %a.addr, align 8
  %2 = load i32, i32* %nw.addr, align 4
  %sub = sub nsw i32 %2, 8
  %idxprom = sext i32 %sub to i64
  %3 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  call void @cftf161(double* %1, double* %arrayidx)
  %4 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 32
  %5 = load i32, i32* %nw.addr, align 4
  %sub2 = sub nsw i32 %5, 32
  %idxprom3 = sext i32 %sub2 to i64
  %6 = load double*, double** %w.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 %idxprom3
  call void @cftf162(double* %arrayidx1, double* %arrayidx4)
  %7 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 64
  %8 = load i32, i32* %nw.addr, align 4
  %sub6 = sub nsw i32 %8, 8
  %idxprom7 = sext i32 %sub6 to i64
  %9 = load double*, double** %w.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %9, i64 %idxprom7
  call void @cftf161(double* %arrayidx5, double* %arrayidx8)
  %10 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %10, i64 96
  %11 = load i32, i32* %nw.addr, align 4
  %sub10 = sub nsw i32 %11, 32
  %idxprom11 = sext i32 %sub10 to i64
  %12 = load double*, double** %w.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %12, i64 %idxprom11
  call void @cftf162(double* %arrayidx9, double* %arrayidx12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load double*, double** %a.addr, align 8
  %14 = load i32, i32* %nw.addr, align 4
  %sub13 = sub nsw i32 %14, 16
  %idxprom14 = sext i32 %sub13 to i64
  %15 = load double*, double** %w.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %15, i64 %idxprom14
  call void @cftf081(double* %13, double* %arrayidx15)
  %16 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %16, i64 16
  %17 = load i32, i32* %nw.addr, align 4
  %sub17 = sub nsw i32 %17, 16
  %idxprom18 = sext i32 %sub17 to i64
  %18 = load double*, double** %w.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %18, i64 %idxprom18
  call void @cftf082(double* %arrayidx16, double* %arrayidx19)
  %19 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %19, i64 32
  %20 = load i32, i32* %nw.addr, align 4
  %sub21 = sub nsw i32 %20, 16
  %idxprom22 = sext i32 %sub21 to i64
  %21 = load double*, double** %w.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %21, i64 %idxprom22
  call void @cftf081(double* %arrayidx20, double* %arrayidx23)
  %22 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %22, i64 48
  %23 = load i32, i32* %nw.addr, align 4
  %sub25 = sub nsw i32 %23, 16
  %idxprom26 = sext i32 %sub25 to i64
  %24 = load double*, double** %w.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %24, i64 %idxprom26
  call void @cftf082(double* %arrayidx24, double* %arrayidx27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftf162(double* %a, double* %w) #0 {
entry:
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %wn4r = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk2r = alloca double, align 8
  %wk2i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %y0r = alloca double, align 8
  %y0i = alloca double, align 8
  %y1r = alloca double, align 8
  %y1i = alloca double, align 8
  %y2r = alloca double, align 8
  %y2i = alloca double, align 8
  %y3r = alloca double, align 8
  %y3i = alloca double, align 8
  %y4r = alloca double, align 8
  %y4i = alloca double, align 8
  %y5r = alloca double, align 8
  %y5i = alloca double, align 8
  %y6r = alloca double, align 8
  %y6i = alloca double, align 8
  %y7r = alloca double, align 8
  %y7i = alloca double, align 8
  %y8r = alloca double, align 8
  %y8i = alloca double, align 8
  %y9r = alloca double, align 8
  %y9i = alloca double, align 8
  %y10r = alloca double, align 8
  %y10i = alloca double, align 8
  %y11r = alloca double, align 8
  %y11i = alloca double, align 8
  %y12r = alloca double, align 8
  %y12i = alloca double, align 8
  %y13r = alloca double, align 8
  %y13i = alloca double, align 8
  %y14r = alloca double, align 8
  %y14i = alloca double, align 8
  %y15r = alloca double, align 8
  %y15i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %wn4r, align 8
  %2 = load double*, double** %w.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 4
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %wk1r, align 8
  %4 = load double*, double** %w.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 5
  %5 = load double, double* %arrayidx2, align 8
  store double %5, double* %wk1i, align 8
  %6 = load double*, double** %w.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 6
  %7 = load double, double* %arrayidx3, align 8
  store double %7, double* %wk3r, align 8
  %8 = load double*, double** %w.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 7
  %9 = load double, double* %arrayidx4, align 8
  store double %9, double* %wk3i, align 8
  %10 = load double*, double** %w.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 8
  %11 = load double, double* %arrayidx5, align 8
  store double %11, double* %wk2r, align 8
  %12 = load double*, double** %w.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 9
  %13 = load double, double* %arrayidx6, align 8
  store double %13, double* %wk2i, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 0
  %15 = load double, double* %arrayidx7, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 17
  %17 = load double, double* %arrayidx8, align 8
  %sub = fsub double %15, %17
  store double %sub, double* %x1r, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 1
  %19 = load double, double* %arrayidx9, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 16
  %21 = load double, double* %arrayidx10, align 8
  %add = fadd double %19, %21
  store double %add, double* %x1i, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %22, i64 8
  %23 = load double, double* %arrayidx11, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %24, i64 25
  %25 = load double, double* %arrayidx12, align 8
  %sub13 = fsub double %23, %25
  store double %sub13, double* %x0r, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %26, i64 9
  %27 = load double, double* %arrayidx14, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %28, i64 24
  %29 = load double, double* %arrayidx15, align 8
  %add16 = fadd double %27, %29
  store double %add16, double* %x0i, align 8
  %30 = load double, double* %wn4r, align 8
  %31 = load double, double* %x0r, align 8
  %32 = load double, double* %x0i, align 8
  %sub17 = fsub double %31, %32
  %mul = fmul double %30, %sub17
  store double %mul, double* %x2r, align 8
  %33 = load double, double* %wn4r, align 8
  %34 = load double, double* %x0i, align 8
  %35 = load double, double* %x0r, align 8
  %add18 = fadd double %34, %35
  %mul19 = fmul double %33, %add18
  store double %mul19, double* %x2i, align 8
  %36 = load double, double* %x1r, align 8
  %37 = load double, double* %x2r, align 8
  %add20 = fadd double %36, %37
  store double %add20, double* %y0r, align 8
  %38 = load double, double* %x1i, align 8
  %39 = load double, double* %x2i, align 8
  %add21 = fadd double %38, %39
  store double %add21, double* %y0i, align 8
  %40 = load double, double* %x1r, align 8
  %41 = load double, double* %x2r, align 8
  %sub22 = fsub double %40, %41
  store double %sub22, double* %y4r, align 8
  %42 = load double, double* %x1i, align 8
  %43 = load double, double* %x2i, align 8
  %sub23 = fsub double %42, %43
  store double %sub23, double* %y4i, align 8
  %44 = load double*, double** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %44, i64 0
  %45 = load double, double* %arrayidx24, align 8
  %46 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %46, i64 17
  %47 = load double, double* %arrayidx25, align 8
  %add26 = fadd double %45, %47
  store double %add26, double* %x1r, align 8
  %48 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %48, i64 1
  %49 = load double, double* %arrayidx27, align 8
  %50 = load double*, double** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %50, i64 16
  %51 = load double, double* %arrayidx28, align 8
  %sub29 = fsub double %49, %51
  store double %sub29, double* %x1i, align 8
  %52 = load double*, double** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %52, i64 8
  %53 = load double, double* %arrayidx30, align 8
  %54 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %54, i64 25
  %55 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %53, %55
  store double %add32, double* %x0r, align 8
  %56 = load double*, double** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %56, i64 9
  %57 = load double, double* %arrayidx33, align 8
  %58 = load double*, double** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %58, i64 24
  %59 = load double, double* %arrayidx34, align 8
  %sub35 = fsub double %57, %59
  store double %sub35, double* %x0i, align 8
  %60 = load double, double* %wn4r, align 8
  %61 = load double, double* %x0r, align 8
  %62 = load double, double* %x0i, align 8
  %sub36 = fsub double %61, %62
  %mul37 = fmul double %60, %sub36
  store double %mul37, double* %x2r, align 8
  %63 = load double, double* %wn4r, align 8
  %64 = load double, double* %x0i, align 8
  %65 = load double, double* %x0r, align 8
  %add38 = fadd double %64, %65
  %mul39 = fmul double %63, %add38
  store double %mul39, double* %x2i, align 8
  %66 = load double, double* %x1r, align 8
  %67 = load double, double* %x2i, align 8
  %sub40 = fsub double %66, %67
  store double %sub40, double* %y8r, align 8
  %68 = load double, double* %x1i, align 8
  %69 = load double, double* %x2r, align 8
  %add41 = fadd double %68, %69
  store double %add41, double* %y8i, align 8
  %70 = load double, double* %x1r, align 8
  %71 = load double, double* %x2i, align 8
  %add42 = fadd double %70, %71
  store double %add42, double* %y12r, align 8
  %72 = load double, double* %x1i, align 8
  %73 = load double, double* %x2r, align 8
  %sub43 = fsub double %72, %73
  store double %sub43, double* %y12i, align 8
  %74 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %74, i64 2
  %75 = load double, double* %arrayidx44, align 8
  %76 = load double*, double** %a.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %76, i64 19
  %77 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double %75, %77
  store double %sub46, double* %x0r, align 8
  %78 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %78, i64 3
  %79 = load double, double* %arrayidx47, align 8
  %80 = load double*, double** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %80, i64 18
  %81 = load double, double* %arrayidx48, align 8
  %add49 = fadd double %79, %81
  store double %add49, double* %x0i, align 8
  %82 = load double, double* %wk1r, align 8
  %83 = load double, double* %x0r, align 8
  %mul50 = fmul double %82, %83
  %84 = load double, double* %wk1i, align 8
  %85 = load double, double* %x0i, align 8
  %mul51 = fmul double %84, %85
  %sub52 = fsub double %mul50, %mul51
  store double %sub52, double* %x1r, align 8
  %86 = load double, double* %wk1r, align 8
  %87 = load double, double* %x0i, align 8
  %mul53 = fmul double %86, %87
  %88 = load double, double* %wk1i, align 8
  %89 = load double, double* %x0r, align 8
  %mul54 = fmul double %88, %89
  %add55 = fadd double %mul53, %mul54
  store double %add55, double* %x1i, align 8
  %90 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %90, i64 10
  %91 = load double, double* %arrayidx56, align 8
  %92 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %92, i64 27
  %93 = load double, double* %arrayidx57, align 8
  %sub58 = fsub double %91, %93
  store double %sub58, double* %x0r, align 8
  %94 = load double*, double** %a.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %94, i64 11
  %95 = load double, double* %arrayidx59, align 8
  %96 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %96, i64 26
  %97 = load double, double* %arrayidx60, align 8
  %add61 = fadd double %95, %97
  store double %add61, double* %x0i, align 8
  %98 = load double, double* %wk3i, align 8
  %99 = load double, double* %x0r, align 8
  %mul62 = fmul double %98, %99
  %100 = load double, double* %wk3r, align 8
  %101 = load double, double* %x0i, align 8
  %mul63 = fmul double %100, %101
  %sub64 = fsub double %mul62, %mul63
  store double %sub64, double* %x2r, align 8
  %102 = load double, double* %wk3i, align 8
  %103 = load double, double* %x0i, align 8
  %mul65 = fmul double %102, %103
  %104 = load double, double* %wk3r, align 8
  %105 = load double, double* %x0r, align 8
  %mul66 = fmul double %104, %105
  %add67 = fadd double %mul65, %mul66
  store double %add67, double* %x2i, align 8
  %106 = load double, double* %x1r, align 8
  %107 = load double, double* %x2r, align 8
  %add68 = fadd double %106, %107
  store double %add68, double* %y1r, align 8
  %108 = load double, double* %x1i, align 8
  %109 = load double, double* %x2i, align 8
  %add69 = fadd double %108, %109
  store double %add69, double* %y1i, align 8
  %110 = load double, double* %x1r, align 8
  %111 = load double, double* %x2r, align 8
  %sub70 = fsub double %110, %111
  store double %sub70, double* %y5r, align 8
  %112 = load double, double* %x1i, align 8
  %113 = load double, double* %x2i, align 8
  %sub71 = fsub double %112, %113
  store double %sub71, double* %y5i, align 8
  %114 = load double*, double** %a.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %114, i64 2
  %115 = load double, double* %arrayidx72, align 8
  %116 = load double*, double** %a.addr, align 8
  %arrayidx73 = getelementptr inbounds double, double* %116, i64 19
  %117 = load double, double* %arrayidx73, align 8
  %add74 = fadd double %115, %117
  store double %add74, double* %x0r, align 8
  %118 = load double*, double** %a.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %118, i64 3
  %119 = load double, double* %arrayidx75, align 8
  %120 = load double*, double** %a.addr, align 8
  %arrayidx76 = getelementptr inbounds double, double* %120, i64 18
  %121 = load double, double* %arrayidx76, align 8
  %sub77 = fsub double %119, %121
  store double %sub77, double* %x0i, align 8
  %122 = load double, double* %wk3r, align 8
  %123 = load double, double* %x0r, align 8
  %mul78 = fmul double %122, %123
  %124 = load double, double* %wk3i, align 8
  %125 = load double, double* %x0i, align 8
  %mul79 = fmul double %124, %125
  %sub80 = fsub double %mul78, %mul79
  store double %sub80, double* %x1r, align 8
  %126 = load double, double* %wk3r, align 8
  %127 = load double, double* %x0i, align 8
  %mul81 = fmul double %126, %127
  %128 = load double, double* %wk3i, align 8
  %129 = load double, double* %x0r, align 8
  %mul82 = fmul double %128, %129
  %add83 = fadd double %mul81, %mul82
  store double %add83, double* %x1i, align 8
  %130 = load double*, double** %a.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %130, i64 10
  %131 = load double, double* %arrayidx84, align 8
  %132 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %132, i64 27
  %133 = load double, double* %arrayidx85, align 8
  %add86 = fadd double %131, %133
  store double %add86, double* %x0r, align 8
  %134 = load double*, double** %a.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %134, i64 11
  %135 = load double, double* %arrayidx87, align 8
  %136 = load double*, double** %a.addr, align 8
  %arrayidx88 = getelementptr inbounds double, double* %136, i64 26
  %137 = load double, double* %arrayidx88, align 8
  %sub89 = fsub double %135, %137
  store double %sub89, double* %x0i, align 8
  %138 = load double, double* %wk1r, align 8
  %139 = load double, double* %x0r, align 8
  %mul90 = fmul double %138, %139
  %140 = load double, double* %wk1i, align 8
  %141 = load double, double* %x0i, align 8
  %mul91 = fmul double %140, %141
  %add92 = fadd double %mul90, %mul91
  store double %add92, double* %x2r, align 8
  %142 = load double, double* %wk1r, align 8
  %143 = load double, double* %x0i, align 8
  %mul93 = fmul double %142, %143
  %144 = load double, double* %wk1i, align 8
  %145 = load double, double* %x0r, align 8
  %mul94 = fmul double %144, %145
  %sub95 = fsub double %mul93, %mul94
  store double %sub95, double* %x2i, align 8
  %146 = load double, double* %x1r, align 8
  %147 = load double, double* %x2r, align 8
  %sub96 = fsub double %146, %147
  store double %sub96, double* %y9r, align 8
  %148 = load double, double* %x1i, align 8
  %149 = load double, double* %x2i, align 8
  %sub97 = fsub double %148, %149
  store double %sub97, double* %y9i, align 8
  %150 = load double, double* %x1r, align 8
  %151 = load double, double* %x2r, align 8
  %add98 = fadd double %150, %151
  store double %add98, double* %y13r, align 8
  %152 = load double, double* %x1i, align 8
  %153 = load double, double* %x2i, align 8
  %add99 = fadd double %152, %153
  store double %add99, double* %y13i, align 8
  %154 = load double*, double** %a.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %154, i64 4
  %155 = load double, double* %arrayidx100, align 8
  %156 = load double*, double** %a.addr, align 8
  %arrayidx101 = getelementptr inbounds double, double* %156, i64 21
  %157 = load double, double* %arrayidx101, align 8
  %sub102 = fsub double %155, %157
  store double %sub102, double* %x0r, align 8
  %158 = load double*, double** %a.addr, align 8
  %arrayidx103 = getelementptr inbounds double, double* %158, i64 5
  %159 = load double, double* %arrayidx103, align 8
  %160 = load double*, double** %a.addr, align 8
  %arrayidx104 = getelementptr inbounds double, double* %160, i64 20
  %161 = load double, double* %arrayidx104, align 8
  %add105 = fadd double %159, %161
  store double %add105, double* %x0i, align 8
  %162 = load double, double* %wk2r, align 8
  %163 = load double, double* %x0r, align 8
  %mul106 = fmul double %162, %163
  %164 = load double, double* %wk2i, align 8
  %165 = load double, double* %x0i, align 8
  %mul107 = fmul double %164, %165
  %sub108 = fsub double %mul106, %mul107
  store double %sub108, double* %x1r, align 8
  %166 = load double, double* %wk2r, align 8
  %167 = load double, double* %x0i, align 8
  %mul109 = fmul double %166, %167
  %168 = load double, double* %wk2i, align 8
  %169 = load double, double* %x0r, align 8
  %mul110 = fmul double %168, %169
  %add111 = fadd double %mul109, %mul110
  store double %add111, double* %x1i, align 8
  %170 = load double*, double** %a.addr, align 8
  %arrayidx112 = getelementptr inbounds double, double* %170, i64 12
  %171 = load double, double* %arrayidx112, align 8
  %172 = load double*, double** %a.addr, align 8
  %arrayidx113 = getelementptr inbounds double, double* %172, i64 29
  %173 = load double, double* %arrayidx113, align 8
  %sub114 = fsub double %171, %173
  store double %sub114, double* %x0r, align 8
  %174 = load double*, double** %a.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %174, i64 13
  %175 = load double, double* %arrayidx115, align 8
  %176 = load double*, double** %a.addr, align 8
  %arrayidx116 = getelementptr inbounds double, double* %176, i64 28
  %177 = load double, double* %arrayidx116, align 8
  %add117 = fadd double %175, %177
  store double %add117, double* %x0i, align 8
  %178 = load double, double* %wk2i, align 8
  %179 = load double, double* %x0r, align 8
  %mul118 = fmul double %178, %179
  %180 = load double, double* %wk2r, align 8
  %181 = load double, double* %x0i, align 8
  %mul119 = fmul double %180, %181
  %sub120 = fsub double %mul118, %mul119
  store double %sub120, double* %x2r, align 8
  %182 = load double, double* %wk2i, align 8
  %183 = load double, double* %x0i, align 8
  %mul121 = fmul double %182, %183
  %184 = load double, double* %wk2r, align 8
  %185 = load double, double* %x0r, align 8
  %mul122 = fmul double %184, %185
  %add123 = fadd double %mul121, %mul122
  store double %add123, double* %x2i, align 8
  %186 = load double, double* %x1r, align 8
  %187 = load double, double* %x2r, align 8
  %add124 = fadd double %186, %187
  store double %add124, double* %y2r, align 8
  %188 = load double, double* %x1i, align 8
  %189 = load double, double* %x2i, align 8
  %add125 = fadd double %188, %189
  store double %add125, double* %y2i, align 8
  %190 = load double, double* %x1r, align 8
  %191 = load double, double* %x2r, align 8
  %sub126 = fsub double %190, %191
  store double %sub126, double* %y6r, align 8
  %192 = load double, double* %x1i, align 8
  %193 = load double, double* %x2i, align 8
  %sub127 = fsub double %192, %193
  store double %sub127, double* %y6i, align 8
  %194 = load double*, double** %a.addr, align 8
  %arrayidx128 = getelementptr inbounds double, double* %194, i64 4
  %195 = load double, double* %arrayidx128, align 8
  %196 = load double*, double** %a.addr, align 8
  %arrayidx129 = getelementptr inbounds double, double* %196, i64 21
  %197 = load double, double* %arrayidx129, align 8
  %add130 = fadd double %195, %197
  store double %add130, double* %x0r, align 8
  %198 = load double*, double** %a.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %198, i64 5
  %199 = load double, double* %arrayidx131, align 8
  %200 = load double*, double** %a.addr, align 8
  %arrayidx132 = getelementptr inbounds double, double* %200, i64 20
  %201 = load double, double* %arrayidx132, align 8
  %sub133 = fsub double %199, %201
  store double %sub133, double* %x0i, align 8
  %202 = load double, double* %wk2i, align 8
  %203 = load double, double* %x0r, align 8
  %mul134 = fmul double %202, %203
  %204 = load double, double* %wk2r, align 8
  %205 = load double, double* %x0i, align 8
  %mul135 = fmul double %204, %205
  %sub136 = fsub double %mul134, %mul135
  store double %sub136, double* %x1r, align 8
  %206 = load double, double* %wk2i, align 8
  %207 = load double, double* %x0i, align 8
  %mul137 = fmul double %206, %207
  %208 = load double, double* %wk2r, align 8
  %209 = load double, double* %x0r, align 8
  %mul138 = fmul double %208, %209
  %add139 = fadd double %mul137, %mul138
  store double %add139, double* %x1i, align 8
  %210 = load double*, double** %a.addr, align 8
  %arrayidx140 = getelementptr inbounds double, double* %210, i64 12
  %211 = load double, double* %arrayidx140, align 8
  %212 = load double*, double** %a.addr, align 8
  %arrayidx141 = getelementptr inbounds double, double* %212, i64 29
  %213 = load double, double* %arrayidx141, align 8
  %add142 = fadd double %211, %213
  store double %add142, double* %x0r, align 8
  %214 = load double*, double** %a.addr, align 8
  %arrayidx143 = getelementptr inbounds double, double* %214, i64 13
  %215 = load double, double* %arrayidx143, align 8
  %216 = load double*, double** %a.addr, align 8
  %arrayidx144 = getelementptr inbounds double, double* %216, i64 28
  %217 = load double, double* %arrayidx144, align 8
  %sub145 = fsub double %215, %217
  store double %sub145, double* %x0i, align 8
  %218 = load double, double* %wk2r, align 8
  %219 = load double, double* %x0r, align 8
  %mul146 = fmul double %218, %219
  %220 = load double, double* %wk2i, align 8
  %221 = load double, double* %x0i, align 8
  %mul147 = fmul double %220, %221
  %sub148 = fsub double %mul146, %mul147
  store double %sub148, double* %x2r, align 8
  %222 = load double, double* %wk2r, align 8
  %223 = load double, double* %x0i, align 8
  %mul149 = fmul double %222, %223
  %224 = load double, double* %wk2i, align 8
  %225 = load double, double* %x0r, align 8
  %mul150 = fmul double %224, %225
  %add151 = fadd double %mul149, %mul150
  store double %add151, double* %x2i, align 8
  %226 = load double, double* %x1r, align 8
  %227 = load double, double* %x2r, align 8
  %sub152 = fsub double %226, %227
  store double %sub152, double* %y10r, align 8
  %228 = load double, double* %x1i, align 8
  %229 = load double, double* %x2i, align 8
  %sub153 = fsub double %228, %229
  store double %sub153, double* %y10i, align 8
  %230 = load double, double* %x1r, align 8
  %231 = load double, double* %x2r, align 8
  %add154 = fadd double %230, %231
  store double %add154, double* %y14r, align 8
  %232 = load double, double* %x1i, align 8
  %233 = load double, double* %x2i, align 8
  %add155 = fadd double %232, %233
  store double %add155, double* %y14i, align 8
  %234 = load double*, double** %a.addr, align 8
  %arrayidx156 = getelementptr inbounds double, double* %234, i64 6
  %235 = load double, double* %arrayidx156, align 8
  %236 = load double*, double** %a.addr, align 8
  %arrayidx157 = getelementptr inbounds double, double* %236, i64 23
  %237 = load double, double* %arrayidx157, align 8
  %sub158 = fsub double %235, %237
  store double %sub158, double* %x0r, align 8
  %238 = load double*, double** %a.addr, align 8
  %arrayidx159 = getelementptr inbounds double, double* %238, i64 7
  %239 = load double, double* %arrayidx159, align 8
  %240 = load double*, double** %a.addr, align 8
  %arrayidx160 = getelementptr inbounds double, double* %240, i64 22
  %241 = load double, double* %arrayidx160, align 8
  %add161 = fadd double %239, %241
  store double %add161, double* %x0i, align 8
  %242 = load double, double* %wk3r, align 8
  %243 = load double, double* %x0r, align 8
  %mul162 = fmul double %242, %243
  %244 = load double, double* %wk3i, align 8
  %245 = load double, double* %x0i, align 8
  %mul163 = fmul double %244, %245
  %sub164 = fsub double %mul162, %mul163
  store double %sub164, double* %x1r, align 8
  %246 = load double, double* %wk3r, align 8
  %247 = load double, double* %x0i, align 8
  %mul165 = fmul double %246, %247
  %248 = load double, double* %wk3i, align 8
  %249 = load double, double* %x0r, align 8
  %mul166 = fmul double %248, %249
  %add167 = fadd double %mul165, %mul166
  store double %add167, double* %x1i, align 8
  %250 = load double*, double** %a.addr, align 8
  %arrayidx168 = getelementptr inbounds double, double* %250, i64 14
  %251 = load double, double* %arrayidx168, align 8
  %252 = load double*, double** %a.addr, align 8
  %arrayidx169 = getelementptr inbounds double, double* %252, i64 31
  %253 = load double, double* %arrayidx169, align 8
  %sub170 = fsub double %251, %253
  store double %sub170, double* %x0r, align 8
  %254 = load double*, double** %a.addr, align 8
  %arrayidx171 = getelementptr inbounds double, double* %254, i64 15
  %255 = load double, double* %arrayidx171, align 8
  %256 = load double*, double** %a.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %256, i64 30
  %257 = load double, double* %arrayidx172, align 8
  %add173 = fadd double %255, %257
  store double %add173, double* %x0i, align 8
  %258 = load double, double* %wk1i, align 8
  %259 = load double, double* %x0r, align 8
  %mul174 = fmul double %258, %259
  %260 = load double, double* %wk1r, align 8
  %261 = load double, double* %x0i, align 8
  %mul175 = fmul double %260, %261
  %sub176 = fsub double %mul174, %mul175
  store double %sub176, double* %x2r, align 8
  %262 = load double, double* %wk1i, align 8
  %263 = load double, double* %x0i, align 8
  %mul177 = fmul double %262, %263
  %264 = load double, double* %wk1r, align 8
  %265 = load double, double* %x0r, align 8
  %mul178 = fmul double %264, %265
  %add179 = fadd double %mul177, %mul178
  store double %add179, double* %x2i, align 8
  %266 = load double, double* %x1r, align 8
  %267 = load double, double* %x2r, align 8
  %add180 = fadd double %266, %267
  store double %add180, double* %y3r, align 8
  %268 = load double, double* %x1i, align 8
  %269 = load double, double* %x2i, align 8
  %add181 = fadd double %268, %269
  store double %add181, double* %y3i, align 8
  %270 = load double, double* %x1r, align 8
  %271 = load double, double* %x2r, align 8
  %sub182 = fsub double %270, %271
  store double %sub182, double* %y7r, align 8
  %272 = load double, double* %x1i, align 8
  %273 = load double, double* %x2i, align 8
  %sub183 = fsub double %272, %273
  store double %sub183, double* %y7i, align 8
  %274 = load double*, double** %a.addr, align 8
  %arrayidx184 = getelementptr inbounds double, double* %274, i64 6
  %275 = load double, double* %arrayidx184, align 8
  %276 = load double*, double** %a.addr, align 8
  %arrayidx185 = getelementptr inbounds double, double* %276, i64 23
  %277 = load double, double* %arrayidx185, align 8
  %add186 = fadd double %275, %277
  store double %add186, double* %x0r, align 8
  %278 = load double*, double** %a.addr, align 8
  %arrayidx187 = getelementptr inbounds double, double* %278, i64 7
  %279 = load double, double* %arrayidx187, align 8
  %280 = load double*, double** %a.addr, align 8
  %arrayidx188 = getelementptr inbounds double, double* %280, i64 22
  %281 = load double, double* %arrayidx188, align 8
  %sub189 = fsub double %279, %281
  store double %sub189, double* %x0i, align 8
  %282 = load double, double* %wk1i, align 8
  %283 = load double, double* %x0r, align 8
  %mul190 = fmul double %282, %283
  %284 = load double, double* %wk1r, align 8
  %285 = load double, double* %x0i, align 8
  %mul191 = fmul double %284, %285
  %add192 = fadd double %mul190, %mul191
  store double %add192, double* %x1r, align 8
  %286 = load double, double* %wk1i, align 8
  %287 = load double, double* %x0i, align 8
  %mul193 = fmul double %286, %287
  %288 = load double, double* %wk1r, align 8
  %289 = load double, double* %x0r, align 8
  %mul194 = fmul double %288, %289
  %sub195 = fsub double %mul193, %mul194
  store double %sub195, double* %x1i, align 8
  %290 = load double*, double** %a.addr, align 8
  %arrayidx196 = getelementptr inbounds double, double* %290, i64 14
  %291 = load double, double* %arrayidx196, align 8
  %292 = load double*, double** %a.addr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %292, i64 31
  %293 = load double, double* %arrayidx197, align 8
  %add198 = fadd double %291, %293
  store double %add198, double* %x0r, align 8
  %294 = load double*, double** %a.addr, align 8
  %arrayidx199 = getelementptr inbounds double, double* %294, i64 15
  %295 = load double, double* %arrayidx199, align 8
  %296 = load double*, double** %a.addr, align 8
  %arrayidx200 = getelementptr inbounds double, double* %296, i64 30
  %297 = load double, double* %arrayidx200, align 8
  %sub201 = fsub double %295, %297
  store double %sub201, double* %x0i, align 8
  %298 = load double, double* %wk3i, align 8
  %299 = load double, double* %x0r, align 8
  %mul202 = fmul double %298, %299
  %300 = load double, double* %wk3r, align 8
  %301 = load double, double* %x0i, align 8
  %mul203 = fmul double %300, %301
  %sub204 = fsub double %mul202, %mul203
  store double %sub204, double* %x2r, align 8
  %302 = load double, double* %wk3i, align 8
  %303 = load double, double* %x0i, align 8
  %mul205 = fmul double %302, %303
  %304 = load double, double* %wk3r, align 8
  %305 = load double, double* %x0r, align 8
  %mul206 = fmul double %304, %305
  %add207 = fadd double %mul205, %mul206
  store double %add207, double* %x2i, align 8
  %306 = load double, double* %x1r, align 8
  %307 = load double, double* %x2r, align 8
  %add208 = fadd double %306, %307
  store double %add208, double* %y11r, align 8
  %308 = load double, double* %x1i, align 8
  %309 = load double, double* %x2i, align 8
  %add209 = fadd double %308, %309
  store double %add209, double* %y11i, align 8
  %310 = load double, double* %x1r, align 8
  %311 = load double, double* %x2r, align 8
  %sub210 = fsub double %310, %311
  store double %sub210, double* %y15r, align 8
  %312 = load double, double* %x1i, align 8
  %313 = load double, double* %x2i, align 8
  %sub211 = fsub double %312, %313
  store double %sub211, double* %y15i, align 8
  %314 = load double, double* %y0r, align 8
  %315 = load double, double* %y2r, align 8
  %add212 = fadd double %314, %315
  store double %add212, double* %x1r, align 8
  %316 = load double, double* %y0i, align 8
  %317 = load double, double* %y2i, align 8
  %add213 = fadd double %316, %317
  store double %add213, double* %x1i, align 8
  %318 = load double, double* %y1r, align 8
  %319 = load double, double* %y3r, align 8
  %add214 = fadd double %318, %319
  store double %add214, double* %x2r, align 8
  %320 = load double, double* %y1i, align 8
  %321 = load double, double* %y3i, align 8
  %add215 = fadd double %320, %321
  store double %add215, double* %x2i, align 8
  %322 = load double, double* %x1r, align 8
  %323 = load double, double* %x2r, align 8
  %add216 = fadd double %322, %323
  %324 = load double*, double** %a.addr, align 8
  %arrayidx217 = getelementptr inbounds double, double* %324, i64 0
  store double %add216, double* %arrayidx217, align 8
  %325 = load double, double* %x1i, align 8
  %326 = load double, double* %x2i, align 8
  %add218 = fadd double %325, %326
  %327 = load double*, double** %a.addr, align 8
  %arrayidx219 = getelementptr inbounds double, double* %327, i64 1
  store double %add218, double* %arrayidx219, align 8
  %328 = load double, double* %x1r, align 8
  %329 = load double, double* %x2r, align 8
  %sub220 = fsub double %328, %329
  %330 = load double*, double** %a.addr, align 8
  %arrayidx221 = getelementptr inbounds double, double* %330, i64 2
  store double %sub220, double* %arrayidx221, align 8
  %331 = load double, double* %x1i, align 8
  %332 = load double, double* %x2i, align 8
  %sub222 = fsub double %331, %332
  %333 = load double*, double** %a.addr, align 8
  %arrayidx223 = getelementptr inbounds double, double* %333, i64 3
  store double %sub222, double* %arrayidx223, align 8
  %334 = load double, double* %y0r, align 8
  %335 = load double, double* %y2r, align 8
  %sub224 = fsub double %334, %335
  store double %sub224, double* %x1r, align 8
  %336 = load double, double* %y0i, align 8
  %337 = load double, double* %y2i, align 8
  %sub225 = fsub double %336, %337
  store double %sub225, double* %x1i, align 8
  %338 = load double, double* %y1r, align 8
  %339 = load double, double* %y3r, align 8
  %sub226 = fsub double %338, %339
  store double %sub226, double* %x2r, align 8
  %340 = load double, double* %y1i, align 8
  %341 = load double, double* %y3i, align 8
  %sub227 = fsub double %340, %341
  store double %sub227, double* %x2i, align 8
  %342 = load double, double* %x1r, align 8
  %343 = load double, double* %x2i, align 8
  %sub228 = fsub double %342, %343
  %344 = load double*, double** %a.addr, align 8
  %arrayidx229 = getelementptr inbounds double, double* %344, i64 4
  store double %sub228, double* %arrayidx229, align 8
  %345 = load double, double* %x1i, align 8
  %346 = load double, double* %x2r, align 8
  %add230 = fadd double %345, %346
  %347 = load double*, double** %a.addr, align 8
  %arrayidx231 = getelementptr inbounds double, double* %347, i64 5
  store double %add230, double* %arrayidx231, align 8
  %348 = load double, double* %x1r, align 8
  %349 = load double, double* %x2i, align 8
  %add232 = fadd double %348, %349
  %350 = load double*, double** %a.addr, align 8
  %arrayidx233 = getelementptr inbounds double, double* %350, i64 6
  store double %add232, double* %arrayidx233, align 8
  %351 = load double, double* %x1i, align 8
  %352 = load double, double* %x2r, align 8
  %sub234 = fsub double %351, %352
  %353 = load double*, double** %a.addr, align 8
  %arrayidx235 = getelementptr inbounds double, double* %353, i64 7
  store double %sub234, double* %arrayidx235, align 8
  %354 = load double, double* %y4r, align 8
  %355 = load double, double* %y6i, align 8
  %sub236 = fsub double %354, %355
  store double %sub236, double* %x1r, align 8
  %356 = load double, double* %y4i, align 8
  %357 = load double, double* %y6r, align 8
  %add237 = fadd double %356, %357
  store double %add237, double* %x1i, align 8
  %358 = load double, double* %y5r, align 8
  %359 = load double, double* %y7i, align 8
  %sub238 = fsub double %358, %359
  store double %sub238, double* %x0r, align 8
  %360 = load double, double* %y5i, align 8
  %361 = load double, double* %y7r, align 8
  %add239 = fadd double %360, %361
  store double %add239, double* %x0i, align 8
  %362 = load double, double* %wn4r, align 8
  %363 = load double, double* %x0r, align 8
  %364 = load double, double* %x0i, align 8
  %sub240 = fsub double %363, %364
  %mul241 = fmul double %362, %sub240
  store double %mul241, double* %x2r, align 8
  %365 = load double, double* %wn4r, align 8
  %366 = load double, double* %x0i, align 8
  %367 = load double, double* %x0r, align 8
  %add242 = fadd double %366, %367
  %mul243 = fmul double %365, %add242
  store double %mul243, double* %x2i, align 8
  %368 = load double, double* %x1r, align 8
  %369 = load double, double* %x2r, align 8
  %add244 = fadd double %368, %369
  %370 = load double*, double** %a.addr, align 8
  %arrayidx245 = getelementptr inbounds double, double* %370, i64 8
  store double %add244, double* %arrayidx245, align 8
  %371 = load double, double* %x1i, align 8
  %372 = load double, double* %x2i, align 8
  %add246 = fadd double %371, %372
  %373 = load double*, double** %a.addr, align 8
  %arrayidx247 = getelementptr inbounds double, double* %373, i64 9
  store double %add246, double* %arrayidx247, align 8
  %374 = load double, double* %x1r, align 8
  %375 = load double, double* %x2r, align 8
  %sub248 = fsub double %374, %375
  %376 = load double*, double** %a.addr, align 8
  %arrayidx249 = getelementptr inbounds double, double* %376, i64 10
  store double %sub248, double* %arrayidx249, align 8
  %377 = load double, double* %x1i, align 8
  %378 = load double, double* %x2i, align 8
  %sub250 = fsub double %377, %378
  %379 = load double*, double** %a.addr, align 8
  %arrayidx251 = getelementptr inbounds double, double* %379, i64 11
  store double %sub250, double* %arrayidx251, align 8
  %380 = load double, double* %y4r, align 8
  %381 = load double, double* %y6i, align 8
  %add252 = fadd double %380, %381
  store double %add252, double* %x1r, align 8
  %382 = load double, double* %y4i, align 8
  %383 = load double, double* %y6r, align 8
  %sub253 = fsub double %382, %383
  store double %sub253, double* %x1i, align 8
  %384 = load double, double* %y5r, align 8
  %385 = load double, double* %y7i, align 8
  %add254 = fadd double %384, %385
  store double %add254, double* %x0r, align 8
  %386 = load double, double* %y5i, align 8
  %387 = load double, double* %y7r, align 8
  %sub255 = fsub double %386, %387
  store double %sub255, double* %x0i, align 8
  %388 = load double, double* %wn4r, align 8
  %389 = load double, double* %x0r, align 8
  %390 = load double, double* %x0i, align 8
  %sub256 = fsub double %389, %390
  %mul257 = fmul double %388, %sub256
  store double %mul257, double* %x2r, align 8
  %391 = load double, double* %wn4r, align 8
  %392 = load double, double* %x0i, align 8
  %393 = load double, double* %x0r, align 8
  %add258 = fadd double %392, %393
  %mul259 = fmul double %391, %add258
  store double %mul259, double* %x2i, align 8
  %394 = load double, double* %x1r, align 8
  %395 = load double, double* %x2i, align 8
  %sub260 = fsub double %394, %395
  %396 = load double*, double** %a.addr, align 8
  %arrayidx261 = getelementptr inbounds double, double* %396, i64 12
  store double %sub260, double* %arrayidx261, align 8
  %397 = load double, double* %x1i, align 8
  %398 = load double, double* %x2r, align 8
  %add262 = fadd double %397, %398
  %399 = load double*, double** %a.addr, align 8
  %arrayidx263 = getelementptr inbounds double, double* %399, i64 13
  store double %add262, double* %arrayidx263, align 8
  %400 = load double, double* %x1r, align 8
  %401 = load double, double* %x2i, align 8
  %add264 = fadd double %400, %401
  %402 = load double*, double** %a.addr, align 8
  %arrayidx265 = getelementptr inbounds double, double* %402, i64 14
  store double %add264, double* %arrayidx265, align 8
  %403 = load double, double* %x1i, align 8
  %404 = load double, double* %x2r, align 8
  %sub266 = fsub double %403, %404
  %405 = load double*, double** %a.addr, align 8
  %arrayidx267 = getelementptr inbounds double, double* %405, i64 15
  store double %sub266, double* %arrayidx267, align 8
  %406 = load double, double* %y8r, align 8
  %407 = load double, double* %y10r, align 8
  %add268 = fadd double %406, %407
  store double %add268, double* %x1r, align 8
  %408 = load double, double* %y8i, align 8
  %409 = load double, double* %y10i, align 8
  %add269 = fadd double %408, %409
  store double %add269, double* %x1i, align 8
  %410 = load double, double* %y9r, align 8
  %411 = load double, double* %y11r, align 8
  %sub270 = fsub double %410, %411
  store double %sub270, double* %x2r, align 8
  %412 = load double, double* %y9i, align 8
  %413 = load double, double* %y11i, align 8
  %sub271 = fsub double %412, %413
  store double %sub271, double* %x2i, align 8
  %414 = load double, double* %x1r, align 8
  %415 = load double, double* %x2r, align 8
  %add272 = fadd double %414, %415
  %416 = load double*, double** %a.addr, align 8
  %arrayidx273 = getelementptr inbounds double, double* %416, i64 16
  store double %add272, double* %arrayidx273, align 8
  %417 = load double, double* %x1i, align 8
  %418 = load double, double* %x2i, align 8
  %add274 = fadd double %417, %418
  %419 = load double*, double** %a.addr, align 8
  %arrayidx275 = getelementptr inbounds double, double* %419, i64 17
  store double %add274, double* %arrayidx275, align 8
  %420 = load double, double* %x1r, align 8
  %421 = load double, double* %x2r, align 8
  %sub276 = fsub double %420, %421
  %422 = load double*, double** %a.addr, align 8
  %arrayidx277 = getelementptr inbounds double, double* %422, i64 18
  store double %sub276, double* %arrayidx277, align 8
  %423 = load double, double* %x1i, align 8
  %424 = load double, double* %x2i, align 8
  %sub278 = fsub double %423, %424
  %425 = load double*, double** %a.addr, align 8
  %arrayidx279 = getelementptr inbounds double, double* %425, i64 19
  store double %sub278, double* %arrayidx279, align 8
  %426 = load double, double* %y8r, align 8
  %427 = load double, double* %y10r, align 8
  %sub280 = fsub double %426, %427
  store double %sub280, double* %x1r, align 8
  %428 = load double, double* %y8i, align 8
  %429 = load double, double* %y10i, align 8
  %sub281 = fsub double %428, %429
  store double %sub281, double* %x1i, align 8
  %430 = load double, double* %y9r, align 8
  %431 = load double, double* %y11r, align 8
  %add282 = fadd double %430, %431
  store double %add282, double* %x2r, align 8
  %432 = load double, double* %y9i, align 8
  %433 = load double, double* %y11i, align 8
  %add283 = fadd double %432, %433
  store double %add283, double* %x2i, align 8
  %434 = load double, double* %x1r, align 8
  %435 = load double, double* %x2i, align 8
  %sub284 = fsub double %434, %435
  %436 = load double*, double** %a.addr, align 8
  %arrayidx285 = getelementptr inbounds double, double* %436, i64 20
  store double %sub284, double* %arrayidx285, align 8
  %437 = load double, double* %x1i, align 8
  %438 = load double, double* %x2r, align 8
  %add286 = fadd double %437, %438
  %439 = load double*, double** %a.addr, align 8
  %arrayidx287 = getelementptr inbounds double, double* %439, i64 21
  store double %add286, double* %arrayidx287, align 8
  %440 = load double, double* %x1r, align 8
  %441 = load double, double* %x2i, align 8
  %add288 = fadd double %440, %441
  %442 = load double*, double** %a.addr, align 8
  %arrayidx289 = getelementptr inbounds double, double* %442, i64 22
  store double %add288, double* %arrayidx289, align 8
  %443 = load double, double* %x1i, align 8
  %444 = load double, double* %x2r, align 8
  %sub290 = fsub double %443, %444
  %445 = load double*, double** %a.addr, align 8
  %arrayidx291 = getelementptr inbounds double, double* %445, i64 23
  store double %sub290, double* %arrayidx291, align 8
  %446 = load double, double* %y12r, align 8
  %447 = load double, double* %y14i, align 8
  %sub292 = fsub double %446, %447
  store double %sub292, double* %x1r, align 8
  %448 = load double, double* %y12i, align 8
  %449 = load double, double* %y14r, align 8
  %add293 = fadd double %448, %449
  store double %add293, double* %x1i, align 8
  %450 = load double, double* %y13r, align 8
  %451 = load double, double* %y15i, align 8
  %add294 = fadd double %450, %451
  store double %add294, double* %x0r, align 8
  %452 = load double, double* %y13i, align 8
  %453 = load double, double* %y15r, align 8
  %sub295 = fsub double %452, %453
  store double %sub295, double* %x0i, align 8
  %454 = load double, double* %wn4r, align 8
  %455 = load double, double* %x0r, align 8
  %456 = load double, double* %x0i, align 8
  %sub296 = fsub double %455, %456
  %mul297 = fmul double %454, %sub296
  store double %mul297, double* %x2r, align 8
  %457 = load double, double* %wn4r, align 8
  %458 = load double, double* %x0i, align 8
  %459 = load double, double* %x0r, align 8
  %add298 = fadd double %458, %459
  %mul299 = fmul double %457, %add298
  store double %mul299, double* %x2i, align 8
  %460 = load double, double* %x1r, align 8
  %461 = load double, double* %x2r, align 8
  %add300 = fadd double %460, %461
  %462 = load double*, double** %a.addr, align 8
  %arrayidx301 = getelementptr inbounds double, double* %462, i64 24
  store double %add300, double* %arrayidx301, align 8
  %463 = load double, double* %x1i, align 8
  %464 = load double, double* %x2i, align 8
  %add302 = fadd double %463, %464
  %465 = load double*, double** %a.addr, align 8
  %arrayidx303 = getelementptr inbounds double, double* %465, i64 25
  store double %add302, double* %arrayidx303, align 8
  %466 = load double, double* %x1r, align 8
  %467 = load double, double* %x2r, align 8
  %sub304 = fsub double %466, %467
  %468 = load double*, double** %a.addr, align 8
  %arrayidx305 = getelementptr inbounds double, double* %468, i64 26
  store double %sub304, double* %arrayidx305, align 8
  %469 = load double, double* %x1i, align 8
  %470 = load double, double* %x2i, align 8
  %sub306 = fsub double %469, %470
  %471 = load double*, double** %a.addr, align 8
  %arrayidx307 = getelementptr inbounds double, double* %471, i64 27
  store double %sub306, double* %arrayidx307, align 8
  %472 = load double, double* %y12r, align 8
  %473 = load double, double* %y14i, align 8
  %add308 = fadd double %472, %473
  store double %add308, double* %x1r, align 8
  %474 = load double, double* %y12i, align 8
  %475 = load double, double* %y14r, align 8
  %sub309 = fsub double %474, %475
  store double %sub309, double* %x1i, align 8
  %476 = load double, double* %y13r, align 8
  %477 = load double, double* %y15i, align 8
  %sub310 = fsub double %476, %477
  store double %sub310, double* %x0r, align 8
  %478 = load double, double* %y13i, align 8
  %479 = load double, double* %y15r, align 8
  %add311 = fadd double %478, %479
  store double %add311, double* %x0i, align 8
  %480 = load double, double* %wn4r, align 8
  %481 = load double, double* %x0r, align 8
  %482 = load double, double* %x0i, align 8
  %sub312 = fsub double %481, %482
  %mul313 = fmul double %480, %sub312
  store double %mul313, double* %x2r, align 8
  %483 = load double, double* %wn4r, align 8
  %484 = load double, double* %x0i, align 8
  %485 = load double, double* %x0r, align 8
  %add314 = fadd double %484, %485
  %mul315 = fmul double %483, %add314
  store double %mul315, double* %x2i, align 8
  %486 = load double, double* %x1r, align 8
  %487 = load double, double* %x2i, align 8
  %sub316 = fsub double %486, %487
  %488 = load double*, double** %a.addr, align 8
  %arrayidx317 = getelementptr inbounds double, double* %488, i64 28
  store double %sub316, double* %arrayidx317, align 8
  %489 = load double, double* %x1i, align 8
  %490 = load double, double* %x2r, align 8
  %add318 = fadd double %489, %490
  %491 = load double*, double** %a.addr, align 8
  %arrayidx319 = getelementptr inbounds double, double* %491, i64 29
  store double %add318, double* %arrayidx319, align 8
  %492 = load double, double* %x1r, align 8
  %493 = load double, double* %x2i, align 8
  %add320 = fadd double %492, %493
  %494 = load double*, double** %a.addr, align 8
  %arrayidx321 = getelementptr inbounds double, double* %494, i64 30
  store double %add320, double* %arrayidx321, align 8
  %495 = load double, double* %x1i, align 8
  %496 = load double, double* %x2r, align 8
  %sub322 = fsub double %495, %496
  %497 = load double*, double** %a.addr, align 8
  %arrayidx323 = getelementptr inbounds double, double* %497, i64 31
  store double %sub322, double* %arrayidx323, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cftf082(double* %a, double* %w) #0 {
entry:
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %wn4r = alloca double, align 8
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %y0r = alloca double, align 8
  %y0i = alloca double, align 8
  %y1r = alloca double, align 8
  %y1i = alloca double, align 8
  %y2r = alloca double, align 8
  %y2i = alloca double, align 8
  %y3r = alloca double, align 8
  %y3i = alloca double, align 8
  %y4r = alloca double, align 8
  %y4i = alloca double, align 8
  %y5r = alloca double, align 8
  %y5i = alloca double, align 8
  %y6r = alloca double, align 8
  %y6i = alloca double, align 8
  %y7r = alloca double, align 8
  %y7i = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %wn4r, align 8
  %2 = load double*, double** %w.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 4
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %wk1r, align 8
  %4 = load double*, double** %w.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 5
  %5 = load double, double* %arrayidx2, align 8
  store double %5, double* %wk1i, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 0
  %7 = load double, double* %arrayidx3, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 9
  %9 = load double, double* %arrayidx4, align 8
  %sub = fsub double %7, %9
  store double %sub, double* %y0r, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 1
  %11 = load double, double* %arrayidx5, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 8
  %13 = load double, double* %arrayidx6, align 8
  %add = fadd double %11, %13
  store double %add, double* %y0i, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 0
  %15 = load double, double* %arrayidx7, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 9
  %17 = load double, double* %arrayidx8, align 8
  %add9 = fadd double %15, %17
  store double %add9, double* %y1r, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 1
  %19 = load double, double* %arrayidx10, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %20, i64 8
  %21 = load double, double* %arrayidx11, align 8
  %sub12 = fsub double %19, %21
  store double %sub12, double* %y1i, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %22, i64 4
  %23 = load double, double* %arrayidx13, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 13
  %25 = load double, double* %arrayidx14, align 8
  %sub15 = fsub double %23, %25
  store double %sub15, double* %x0r, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %26, i64 5
  %27 = load double, double* %arrayidx16, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %28, i64 12
  %29 = load double, double* %arrayidx17, align 8
  %add18 = fadd double %27, %29
  store double %add18, double* %x0i, align 8
  %30 = load double, double* %wn4r, align 8
  %31 = load double, double* %x0r, align 8
  %32 = load double, double* %x0i, align 8
  %sub19 = fsub double %31, %32
  %mul = fmul double %30, %sub19
  store double %mul, double* %y2r, align 8
  %33 = load double, double* %wn4r, align 8
  %34 = load double, double* %x0i, align 8
  %35 = load double, double* %x0r, align 8
  %add20 = fadd double %34, %35
  %mul21 = fmul double %33, %add20
  store double %mul21, double* %y2i, align 8
  %36 = load double*, double** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %36, i64 4
  %37 = load double, double* %arrayidx22, align 8
  %38 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %38, i64 13
  %39 = load double, double* %arrayidx23, align 8
  %add24 = fadd double %37, %39
  store double %add24, double* %x0r, align 8
  %40 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %40, i64 5
  %41 = load double, double* %arrayidx25, align 8
  %42 = load double*, double** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %42, i64 12
  %43 = load double, double* %arrayidx26, align 8
  %sub27 = fsub double %41, %43
  store double %sub27, double* %x0i, align 8
  %44 = load double, double* %wn4r, align 8
  %45 = load double, double* %x0r, align 8
  %46 = load double, double* %x0i, align 8
  %sub28 = fsub double %45, %46
  %mul29 = fmul double %44, %sub28
  store double %mul29, double* %y3r, align 8
  %47 = load double, double* %wn4r, align 8
  %48 = load double, double* %x0i, align 8
  %49 = load double, double* %x0r, align 8
  %add30 = fadd double %48, %49
  %mul31 = fmul double %47, %add30
  store double %mul31, double* %y3i, align 8
  %50 = load double*, double** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %50, i64 2
  %51 = load double, double* %arrayidx32, align 8
  %52 = load double*, double** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %52, i64 11
  %53 = load double, double* %arrayidx33, align 8
  %sub34 = fsub double %51, %53
  store double %sub34, double* %x0r, align 8
  %54 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %54, i64 3
  %55 = load double, double* %arrayidx35, align 8
  %56 = load double*, double** %a.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %56, i64 10
  %57 = load double, double* %arrayidx36, align 8
  %add37 = fadd double %55, %57
  store double %add37, double* %x0i, align 8
  %58 = load double, double* %wk1r, align 8
  %59 = load double, double* %x0r, align 8
  %mul38 = fmul double %58, %59
  %60 = load double, double* %wk1i, align 8
  %61 = load double, double* %x0i, align 8
  %mul39 = fmul double %60, %61
  %sub40 = fsub double %mul38, %mul39
  store double %sub40, double* %y4r, align 8
  %62 = load double, double* %wk1r, align 8
  %63 = load double, double* %x0i, align 8
  %mul41 = fmul double %62, %63
  %64 = load double, double* %wk1i, align 8
  %65 = load double, double* %x0r, align 8
  %mul42 = fmul double %64, %65
  %add43 = fadd double %mul41, %mul42
  store double %add43, double* %y4i, align 8
  %66 = load double*, double** %a.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %66, i64 2
  %67 = load double, double* %arrayidx44, align 8
  %68 = load double*, double** %a.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %68, i64 11
  %69 = load double, double* %arrayidx45, align 8
  %add46 = fadd double %67, %69
  store double %add46, double* %x0r, align 8
  %70 = load double*, double** %a.addr, align 8
  %arrayidx47 = getelementptr inbounds double, double* %70, i64 3
  %71 = load double, double* %arrayidx47, align 8
  %72 = load double*, double** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %72, i64 10
  %73 = load double, double* %arrayidx48, align 8
  %sub49 = fsub double %71, %73
  store double %sub49, double* %x0i, align 8
  %74 = load double, double* %wk1i, align 8
  %75 = load double, double* %x0r, align 8
  %mul50 = fmul double %74, %75
  %76 = load double, double* %wk1r, align 8
  %77 = load double, double* %x0i, align 8
  %mul51 = fmul double %76, %77
  %sub52 = fsub double %mul50, %mul51
  store double %sub52, double* %y5r, align 8
  %78 = load double, double* %wk1i, align 8
  %79 = load double, double* %x0i, align 8
  %mul53 = fmul double %78, %79
  %80 = load double, double* %wk1r, align 8
  %81 = load double, double* %x0r, align 8
  %mul54 = fmul double %80, %81
  %add55 = fadd double %mul53, %mul54
  store double %add55, double* %y5i, align 8
  %82 = load double*, double** %a.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %82, i64 6
  %83 = load double, double* %arrayidx56, align 8
  %84 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %84, i64 15
  %85 = load double, double* %arrayidx57, align 8
  %sub58 = fsub double %83, %85
  store double %sub58, double* %x0r, align 8
  %86 = load double*, double** %a.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %86, i64 7
  %87 = load double, double* %arrayidx59, align 8
  %88 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %88, i64 14
  %89 = load double, double* %arrayidx60, align 8
  %add61 = fadd double %87, %89
  store double %add61, double* %x0i, align 8
  %90 = load double, double* %wk1i, align 8
  %91 = load double, double* %x0r, align 8
  %mul62 = fmul double %90, %91
  %92 = load double, double* %wk1r, align 8
  %93 = load double, double* %x0i, align 8
  %mul63 = fmul double %92, %93
  %sub64 = fsub double %mul62, %mul63
  store double %sub64, double* %y6r, align 8
  %94 = load double, double* %wk1i, align 8
  %95 = load double, double* %x0i, align 8
  %mul65 = fmul double %94, %95
  %96 = load double, double* %wk1r, align 8
  %97 = load double, double* %x0r, align 8
  %mul66 = fmul double %96, %97
  %add67 = fadd double %mul65, %mul66
  store double %add67, double* %y6i, align 8
  %98 = load double*, double** %a.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %98, i64 6
  %99 = load double, double* %arrayidx68, align 8
  %100 = load double*, double** %a.addr, align 8
  %arrayidx69 = getelementptr inbounds double, double* %100, i64 15
  %101 = load double, double* %arrayidx69, align 8
  %add70 = fadd double %99, %101
  store double %add70, double* %x0r, align 8
  %102 = load double*, double** %a.addr, align 8
  %arrayidx71 = getelementptr inbounds double, double* %102, i64 7
  %103 = load double, double* %arrayidx71, align 8
  %104 = load double*, double** %a.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %104, i64 14
  %105 = load double, double* %arrayidx72, align 8
  %sub73 = fsub double %103, %105
  store double %sub73, double* %x0i, align 8
  %106 = load double, double* %wk1r, align 8
  %107 = load double, double* %x0r, align 8
  %mul74 = fmul double %106, %107
  %108 = load double, double* %wk1i, align 8
  %109 = load double, double* %x0i, align 8
  %mul75 = fmul double %108, %109
  %sub76 = fsub double %mul74, %mul75
  store double %sub76, double* %y7r, align 8
  %110 = load double, double* %wk1r, align 8
  %111 = load double, double* %x0i, align 8
  %mul77 = fmul double %110, %111
  %112 = load double, double* %wk1i, align 8
  %113 = load double, double* %x0r, align 8
  %mul78 = fmul double %112, %113
  %add79 = fadd double %mul77, %mul78
  store double %add79, double* %y7i, align 8
  %114 = load double, double* %y0r, align 8
  %115 = load double, double* %y2r, align 8
  %add80 = fadd double %114, %115
  store double %add80, double* %x0r, align 8
  %116 = load double, double* %y0i, align 8
  %117 = load double, double* %y2i, align 8
  %add81 = fadd double %116, %117
  store double %add81, double* %x0i, align 8
  %118 = load double, double* %y4r, align 8
  %119 = load double, double* %y6r, align 8
  %add82 = fadd double %118, %119
  store double %add82, double* %x1r, align 8
  %120 = load double, double* %y4i, align 8
  %121 = load double, double* %y6i, align 8
  %add83 = fadd double %120, %121
  store double %add83, double* %x1i, align 8
  %122 = load double, double* %x0r, align 8
  %123 = load double, double* %x1r, align 8
  %add84 = fadd double %122, %123
  %124 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %124, i64 0
  store double %add84, double* %arrayidx85, align 8
  %125 = load double, double* %x0i, align 8
  %126 = load double, double* %x1i, align 8
  %add86 = fadd double %125, %126
  %127 = load double*, double** %a.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %127, i64 1
  store double %add86, double* %arrayidx87, align 8
  %128 = load double, double* %x0r, align 8
  %129 = load double, double* %x1r, align 8
  %sub88 = fsub double %128, %129
  %130 = load double*, double** %a.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %130, i64 2
  store double %sub88, double* %arrayidx89, align 8
  %131 = load double, double* %x0i, align 8
  %132 = load double, double* %x1i, align 8
  %sub90 = fsub double %131, %132
  %133 = load double*, double** %a.addr, align 8
  %arrayidx91 = getelementptr inbounds double, double* %133, i64 3
  store double %sub90, double* %arrayidx91, align 8
  %134 = load double, double* %y0r, align 8
  %135 = load double, double* %y2r, align 8
  %sub92 = fsub double %134, %135
  store double %sub92, double* %x0r, align 8
  %136 = load double, double* %y0i, align 8
  %137 = load double, double* %y2i, align 8
  %sub93 = fsub double %136, %137
  store double %sub93, double* %x0i, align 8
  %138 = load double, double* %y4r, align 8
  %139 = load double, double* %y6r, align 8
  %sub94 = fsub double %138, %139
  store double %sub94, double* %x1r, align 8
  %140 = load double, double* %y4i, align 8
  %141 = load double, double* %y6i, align 8
  %sub95 = fsub double %140, %141
  store double %sub95, double* %x1i, align 8
  %142 = load double, double* %x0r, align 8
  %143 = load double, double* %x1i, align 8
  %sub96 = fsub double %142, %143
  %144 = load double*, double** %a.addr, align 8
  %arrayidx97 = getelementptr inbounds double, double* %144, i64 4
  store double %sub96, double* %arrayidx97, align 8
  %145 = load double, double* %x0i, align 8
  %146 = load double, double* %x1r, align 8
  %add98 = fadd double %145, %146
  %147 = load double*, double** %a.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %147, i64 5
  store double %add98, double* %arrayidx99, align 8
  %148 = load double, double* %x0r, align 8
  %149 = load double, double* %x1i, align 8
  %add100 = fadd double %148, %149
  %150 = load double*, double** %a.addr, align 8
  %arrayidx101 = getelementptr inbounds double, double* %150, i64 6
  store double %add100, double* %arrayidx101, align 8
  %151 = load double, double* %x0i, align 8
  %152 = load double, double* %x1r, align 8
  %sub102 = fsub double %151, %152
  %153 = load double*, double** %a.addr, align 8
  %arrayidx103 = getelementptr inbounds double, double* %153, i64 7
  store double %sub102, double* %arrayidx103, align 8
  %154 = load double, double* %y1r, align 8
  %155 = load double, double* %y3i, align 8
  %sub104 = fsub double %154, %155
  store double %sub104, double* %x0r, align 8
  %156 = load double, double* %y1i, align 8
  %157 = load double, double* %y3r, align 8
  %add105 = fadd double %156, %157
  store double %add105, double* %x0i, align 8
  %158 = load double, double* %y5r, align 8
  %159 = load double, double* %y7r, align 8
  %sub106 = fsub double %158, %159
  store double %sub106, double* %x1r, align 8
  %160 = load double, double* %y5i, align 8
  %161 = load double, double* %y7i, align 8
  %sub107 = fsub double %160, %161
  store double %sub107, double* %x1i, align 8
  %162 = load double, double* %x0r, align 8
  %163 = load double, double* %x1r, align 8
  %add108 = fadd double %162, %163
  %164 = load double*, double** %a.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %164, i64 8
  store double %add108, double* %arrayidx109, align 8
  %165 = load double, double* %x0i, align 8
  %166 = load double, double* %x1i, align 8
  %add110 = fadd double %165, %166
  %167 = load double*, double** %a.addr, align 8
  %arrayidx111 = getelementptr inbounds double, double* %167, i64 9
  store double %add110, double* %arrayidx111, align 8
  %168 = load double, double* %x0r, align 8
  %169 = load double, double* %x1r, align 8
  %sub112 = fsub double %168, %169
  %170 = load double*, double** %a.addr, align 8
  %arrayidx113 = getelementptr inbounds double, double* %170, i64 10
  store double %sub112, double* %arrayidx113, align 8
  %171 = load double, double* %x0i, align 8
  %172 = load double, double* %x1i, align 8
  %sub114 = fsub double %171, %172
  %173 = load double*, double** %a.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %173, i64 11
  store double %sub114, double* %arrayidx115, align 8
  %174 = load double, double* %y1r, align 8
  %175 = load double, double* %y3i, align 8
  %add116 = fadd double %174, %175
  store double %add116, double* %x0r, align 8
  %176 = load double, double* %y1i, align 8
  %177 = load double, double* %y3r, align 8
  %sub117 = fsub double %176, %177
  store double %sub117, double* %x0i, align 8
  %178 = load double, double* %y5r, align 8
  %179 = load double, double* %y7r, align 8
  %add118 = fadd double %178, %179
  store double %add118, double* %x1r, align 8
  %180 = load double, double* %y5i, align 8
  %181 = load double, double* %y7i, align 8
  %add119 = fadd double %180, %181
  store double %add119, double* %x1i, align 8
  %182 = load double, double* %x0r, align 8
  %183 = load double, double* %x1i, align 8
  %sub120 = fsub double %182, %183
  %184 = load double*, double** %a.addr, align 8
  %arrayidx121 = getelementptr inbounds double, double* %184, i64 12
  store double %sub120, double* %arrayidx121, align 8
  %185 = load double, double* %x0i, align 8
  %186 = load double, double* %x1r, align 8
  %add122 = fadd double %185, %186
  %187 = load double*, double** %a.addr, align 8
  %arrayidx123 = getelementptr inbounds double, double* %187, i64 13
  store double %add122, double* %arrayidx123, align 8
  %188 = load double, double* %x0r, align 8
  %189 = load double, double* %x1i, align 8
  %add124 = fadd double %188, %189
  %190 = load double*, double** %a.addr, align 8
  %arrayidx125 = getelementptr inbounds double, double* %190, i64 14
  store double %add124, double* %arrayidx125, align 8
  %191 = load double, double* %x0i, align 8
  %192 = load double, double* %x1r, align 8
  %sub126 = fsub double %191, %192
  %193 = load double*, double** %a.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %193, i64 15
  store double %sub126, double* %arrayidx127, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
