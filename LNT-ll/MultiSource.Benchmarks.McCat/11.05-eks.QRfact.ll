; ModuleID = './MultiSource.Benchmarks.McCat/11.05-eks.QRfact.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @Givens(double %a, double %b, double* %s, double* %c) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %s.addr = alloca double*, align 8
  %c.addr = alloca double*, align 8
  %t = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double* %s, double** %s.addr, align 8
  store double* %c, double** %c.addr, align 8
  %0 = load double, double* %b.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double*, double** %c.addr, align 8
  store double 1.000000e+00, double* %1, align 8
  %2 = load double*, double** %s.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  br label %if.end.15

if.else:                                          ; preds = %entry
  %3 = load double, double* %b.addr, align 8
  %call = call double @fabs(double %3) #3
  %4 = load double, double* %a.addr, align 8
  %call1 = call double @fabs(double %4) #3
  %cmp2 = fcmp ogt double %call, %call1
  br i1 %cmp2, label %if.then.3, label %if.else.7

if.then.3:                                        ; preds = %if.else
  %5 = load double, double* %a.addr, align 8
  %sub = fsub double -0.000000e+00, %5
  %6 = load double, double* %b.addr, align 8
  %div = fdiv double %sub, %6
  store double %div, double* %t, align 8
  %7 = load double, double* %t, align 8
  %8 = load double, double* %t, align 8
  %mul = fmul double %7, %8
  %add = fadd double 1.000000e+00, %mul
  %call4 = call double @sqrt(double %add) #4
  %div5 = fdiv double 1.000000e+00, %call4
  %9 = load double*, double** %s.addr, align 8
  store double %div5, double* %9, align 8
  %10 = load double*, double** %s.addr, align 8
  %11 = load double, double* %10, align 8
  %12 = load double, double* %t, align 8
  %mul6 = fmul double %11, %12
  %13 = load double*, double** %c.addr, align 8
  store double %mul6, double* %13, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %14 = load double, double* %b.addr, align 8
  %sub8 = fsub double -0.000000e+00, %14
  %15 = load double, double* %a.addr, align 8
  %div9 = fdiv double %sub8, %15
  store double %div9, double* %t, align 8
  %16 = load double, double* %t, align 8
  %17 = load double, double* %t, align 8
  %mul10 = fmul double %16, %17
  %add11 = fadd double 1.000000e+00, %mul10
  %call12 = call double @sqrt(double %add11) #4
  %div13 = fdiv double 1.000000e+00, %call12
  %18 = load double*, double** %c.addr, align 8
  store double %div13, double* %18, align 8
  %19 = load double*, double** %c.addr, align 8
  %20 = load double, double* %19, align 8
  %21 = load double, double* %t, align 8
  %mul14 = fmul double %20, %21
  %22 = load double*, double** %s.addr, align 8
  store double %mul14, double* %22, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define i32 @sign(double %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @ApplyRGivens(double** %U, double %s, double %c, i32 %i, i32 %j) #0 {
entry:
  %U.addr = alloca double**, align 8
  %s.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  store double** %U, double*** %U.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %c, double* %c.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 51
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load double**, double*** %U.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %3, i64 %idxprom1
  %4 = load double*, double** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx2, align 8
  store double %5, double* %t1, align 8
  %6 = load i32, i32* %j.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load double**, double*** %U.addr, align 8
  %arrayidx5 = getelementptr inbounds double*, double** %8, i64 %idxprom4
  %9 = load double*, double** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds double, double* %9, i64 %idxprom3
  %10 = load double, double* %arrayidx6, align 8
  store double %10, double* %t2, align 8
  %11 = load double, double* %c.addr, align 8
  %12 = load double, double* %t1, align 8
  %mul = fmul double %11, %12
  %13 = load double, double* %s.addr, align 8
  %14 = load double, double* %t2, align 8
  %mul7 = fmul double %13, %14
  %sub = fsub double %mul, %mul7
  %15 = load i32, i32* %i.addr, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load double**, double*** %U.addr, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %17, i64 %idxprom9
  %18 = load double*, double** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom8
  store double %sub, double* %arrayidx11, align 8
  %19 = load double, double* %s.addr, align 8
  %20 = load double, double* %t1, align 8
  %mul12 = fmul double %19, %20
  %21 = load double, double* %c.addr, align 8
  %22 = load double, double* %t2, align 8
  %mul13 = fmul double %21, %22
  %add = fadd double %mul12, %mul13
  %23 = load i32, i32* %j.addr, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load double**, double*** %U.addr, align 8
  %arrayidx16 = getelementptr inbounds double*, double** %25, i64 %idxprom15
  %26 = load double*, double** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 %idxprom14
  store double %add, double* %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double** @QRiterate(double** %A, double** %U) #0 {
entry:
  %retval = alloca double**, align 8
  %A.addr = alloca double**, align 8
  %U.addr = alloca double**, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %app = alloca double, align 8
  %aqq = alloca double, align 8
  %apq = alloca double, align 8
  %a1p = alloca double, align 8
  %a1q = alloca double, align 8
  %a4p = alloca double, align 8
  %a4q = alloca double, align 8
  %d = alloca double, align 8
  %mu = alloca double, align 8
  %x = alloca double, align 8
  %z = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %notdone = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store double** %U, double*** %U.addr, align 8
  store i32 1, i32* %notdone, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.189, %entry
  %0 = load i32, i32* %notdone, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end.190

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %idxprom1 = sext i32 %add to i64
  %4 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom1
  %5 = load double*, double** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx2, align 8
  %call = call double @fabs(double %6) #3
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double**, double*** %A.addr, align 8
  %arrayidx5 = getelementptr inbounds double*, double** %9, i64 %idxprom4
  %10 = load double*, double** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 %idxprom3
  %11 = load double, double* %arrayidx6, align 8
  %call7 = call double @fabs(double %11) #3
  %12 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %12, 1
  %idxprom9 = sext i32 %add8 to i64
  %13 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %13, 1
  %idxprom11 = sext i32 %add10 to i64
  %14 = load double**, double*** %A.addr, align 8
  %arrayidx12 = getelementptr inbounds double*, double** %14, i64 %idxprom11
  %15 = load double*, double** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds double, double* %15, i64 %idxprom9
  %16 = load double, double* %arrayidx13, align 8
  %call14 = call double @fabs(double %16) #3
  %add15 = fadd double %call7, %call14
  %mul = fmul double %add15, 1.000000e-10
  %cmp16 = fcmp olt double %call, %mul
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %17, 1
  %idxprom18 = sext i32 %add17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load double**, double*** %A.addr, align 8
  %arrayidx20 = getelementptr inbounds double*, double** %19, i64 %idxprom19
  %20 = load double*, double** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds double, double* %20, i64 %idxprom18
  store double 0.000000e+00, double* %arrayidx21, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %22, 1
  %idxprom24 = sext i32 %add23 to i64
  %23 = load double**, double*** %A.addr, align 8
  %arrayidx25 = getelementptr inbounds double*, double** %23, i64 %idxprom24
  %24 = load double*, double** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds double, double* %24, i64 %idxprom22
  store double 0.000000e+00, double* %arrayidx26, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 50, i32* %q, align 4
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.34, %for.end
  %26 = load i32, i32* %q, align 4
  %cmp28 = icmp sgt i32 %26, 0
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.27
  %27 = load i32, i32* %q, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load i32, i32* %q, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom30 = sext i32 %sub to i64
  %29 = load double**, double*** %A.addr, align 8
  %arrayidx31 = getelementptr inbounds double*, double** %29, i64 %idxprom30
  %30 = load double*, double** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds double, double* %30, i64 %idxprom29
  %31 = load double, double* %arrayidx32, align 8
  %cmp33 = fcmp oeq double %31, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.27
  %32 = phi i1 [ false, %while.cond.27 ], [ %cmp33, %land.rhs ]
  br i1 %32, label %while.body.34, label %while.end

while.body.34:                                    ; preds = %land.end
  %33 = load i32, i32* %q, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %q, align 4
  br label %while.cond.27

while.end:                                        ; preds = %land.end
  %34 = load i32, i32* %q, align 4
  %cmp35 = icmp eq i32 %34, 0
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %while.end
  store i32 0, i32* %notdone, align 4
  br label %if.end.50

if.else:                                          ; preds = %while.end
  %35 = load i32, i32* %q, align 4
  store i32 %35, i32* %p, align 4
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.47, %if.else
  %36 = load i32, i32* %p, align 4
  %cmp38 = icmp sgt i32 %36, 0
  br i1 %cmp38, label %land.rhs.39, label %land.end.46

land.rhs.39:                                      ; preds = %while.cond.37
  %37 = load i32, i32* %p, align 4
  %idxprom40 = sext i32 %37 to i64
  %38 = load i32, i32* %p, align 4
  %sub41 = sub nsw i32 %38, 1
  %idxprom42 = sext i32 %sub41 to i64
  %39 = load double**, double*** %A.addr, align 8
  %arrayidx43 = getelementptr inbounds double*, double** %39, i64 %idxprom42
  %40 = load double*, double** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds double, double* %40, i64 %idxprom40
  %41 = load double, double* %arrayidx44, align 8
  %cmp45 = fcmp une double %41, 0.000000e+00
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.39, %while.cond.37
  %42 = phi i1 [ false, %while.cond.37 ], [ %cmp45, %land.rhs.39 ]
  br i1 %42, label %while.body.47, label %while.end.49

while.body.47:                                    ; preds = %land.end.46
  %43 = load i32, i32* %p, align 4
  %dec48 = add nsw i32 %43, -1
  store i32 %dec48, i32* %p, align 4
  br label %while.cond.37

while.end.49:                                     ; preds = %land.end.46
  br label %if.end.50

if.end.50:                                        ; preds = %while.end.49, %if.then.36
  %44 = load i32, i32* %notdone, align 4
  %tobool51 = icmp ne i32 %44, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.50
  br label %while.end.190

if.end.53:                                        ; preds = %if.end.50
  %45 = load i32, i32* %q, align 4
  %sub54 = sub nsw i32 %45, 1
  %idxprom55 = sext i32 %sub54 to i64
  %46 = load i32, i32* %q, align 4
  %sub56 = sub nsw i32 %46, 1
  %idxprom57 = sext i32 %sub56 to i64
  %47 = load double**, double*** %A.addr, align 8
  %arrayidx58 = getelementptr inbounds double*, double** %47, i64 %idxprom57
  %48 = load double*, double** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds double, double* %48, i64 %idxprom55
  %49 = load double, double* %arrayidx59, align 8
  %50 = load i32, i32* %q, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load i32, i32* %q, align 4
  %idxprom61 = sext i32 %51 to i64
  %52 = load double**, double*** %A.addr, align 8
  %arrayidx62 = getelementptr inbounds double*, double** %52, i64 %idxprom61
  %53 = load double*, double** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds double, double* %53, i64 %idxprom60
  %54 = load double, double* %arrayidx63, align 8
  %sub64 = fsub double %49, %54
  %div = fdiv double %sub64, 2.000000e+00
  store double %div, double* %d, align 8
  %55 = load i32, i32* %q, align 4
  %sub65 = sub nsw i32 %55, 1
  %idxprom66 = sext i32 %sub65 to i64
  %56 = load i32, i32* %q, align 4
  %idxprom67 = sext i32 %56 to i64
  %57 = load double**, double*** %A.addr, align 8
  %arrayidx68 = getelementptr inbounds double*, double** %57, i64 %idxprom67
  %58 = load double*, double** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds double, double* %58, i64 %idxprom66
  %59 = load double, double* %arrayidx69, align 8
  store double %59, double* %t, align 8
  %60 = load double, double* %t, align 8
  %61 = load double, double* %t, align 8
  %mul70 = fmul double %60, %61
  store double %mul70, double* %t, align 8
  %62 = load i32, i32* %q, align 4
  %idxprom71 = sext i32 %62 to i64
  %63 = load i32, i32* %q, align 4
  %idxprom72 = sext i32 %63 to i64
  %64 = load double**, double*** %A.addr, align 8
  %arrayidx73 = getelementptr inbounds double*, double** %64, i64 %idxprom72
  %65 = load double*, double** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds double, double* %65, i64 %idxprom71
  %66 = load double, double* %arrayidx74, align 8
  %67 = load double, double* %t, align 8
  %68 = load double, double* %d, align 8
  %69 = load double, double* %d, align 8
  %call75 = call i32 @sign(double %69)
  %conv = sitofp i32 %call75 to double
  %70 = load double, double* %d, align 8
  %71 = load double, double* %d, align 8
  %mul76 = fmul double %70, %71
  %72 = load double, double* %t, align 8
  %add77 = fadd double %mul76, %72
  %call78 = call double @sqrt(double %add77) #4
  %mul79 = fmul double %conv, %call78
  %add80 = fadd double %68, %mul79
  %div81 = fdiv double %67, %add80
  %sub82 = fsub double %66, %div81
  store double %sub82, double* %mu, align 8
  %73 = load i32, i32* %p, align 4
  %idxprom83 = sext i32 %73 to i64
  %74 = load i32, i32* %p, align 4
  %idxprom84 = sext i32 %74 to i64
  %75 = load double**, double*** %A.addr, align 8
  %arrayidx85 = getelementptr inbounds double*, double** %75, i64 %idxprom84
  %76 = load double*, double** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds double, double* %76, i64 %idxprom83
  %77 = load double, double* %arrayidx86, align 8
  %78 = load double, double* %mu, align 8
  %sub87 = fsub double %77, %78
  store double %sub87, double* %x, align 8
  %79 = load i32, i32* %p, align 4
  %idxprom88 = sext i32 %79 to i64
  %80 = load i32, i32* %p, align 4
  %add89 = add nsw i32 %80, 1
  %idxprom90 = sext i32 %add89 to i64
  %81 = load double**, double*** %A.addr, align 8
  %arrayidx91 = getelementptr inbounds double*, double** %81, i64 %idxprom90
  %82 = load double*, double** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds double, double* %82, i64 %idxprom88
  %83 = load double, double* %arrayidx92, align 8
  store double %83, double* %z, align 8
  %84 = load i32, i32* %p, align 4
  store i32 %84, i32* %i, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.187, %if.end.53
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %q, align 4
  %cmp94 = icmp slt i32 %85, %86
  br i1 %cmp94, label %for.body.96, label %for.end.189

for.body.96:                                      ; preds = %for.cond.93
  %87 = load double, double* %x, align 8
  %88 = load double, double* %z, align 8
  call void @Givens(double %87, double %88, double* %s, double* %c)
  %89 = load i32, i32* %i, align 4
  %sub97 = sub nsw i32 %89, 1
  %90 = load i32, i32* %p, align 4
  %cmp98 = icmp sgt i32 %sub97, %90
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.96
  %91 = load i32, i32* %i, align 4
  %sub100 = sub nsw i32 %91, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.96
  %92 = load i32, i32* %p, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub100, %cond.true ], [ %92, %cond.false ]
  store i32 %cond, i32* %l, align 4
  %93 = load i32, i32* %q, align 4
  %94 = load i32, i32* %i, align 4
  %add101 = add nsw i32 %94, 2
  %cmp102 = icmp slt i32 %93, %add101
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end
  %95 = load i32, i32* %q, align 4
  br label %cond.end.107

cond.false.105:                                   ; preds = %cond.end
  %96 = load i32, i32* %i, align 4
  %add106 = add nsw i32 %96, 2
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  %cond108 = phi i32 [ %95, %cond.true.104 ], [ %add106, %cond.false.105 ]
  store i32 %cond108, i32* %m, align 4
  %97 = load i32, i32* %l, align 4
  store i32 %97, i32* %k, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.137, %cond.end.107
  %98 = load i32, i32* %k, align 4
  %99 = load i32, i32* %m, align 4
  %cmp110 = icmp sle i32 %98, %99
  br i1 %cmp110, label %for.body.112, label %for.end.139

for.body.112:                                     ; preds = %for.cond.109
  %100 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %101 to i64
  %102 = load double**, double*** %A.addr, align 8
  %arrayidx115 = getelementptr inbounds double*, double** %102, i64 %idxprom114
  %103 = load double*, double** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds double, double* %103, i64 %idxprom113
  %104 = load double, double* %arrayidx116, align 8
  store double %104, double* %t1, align 8
  %105 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %add118 = add nsw i32 %106, 1
  %idxprom119 = sext i32 %add118 to i64
  %107 = load double**, double*** %A.addr, align 8
  %arrayidx120 = getelementptr inbounds double*, double** %107, i64 %idxprom119
  %108 = load double*, double** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds double, double* %108, i64 %idxprom117
  %109 = load double, double* %arrayidx121, align 8
  store double %109, double* %t2, align 8
  %110 = load double, double* %c, align 8
  %111 = load double, double* %t1, align 8
  %mul122 = fmul double %110, %111
  %112 = load double, double* %s, align 8
  %113 = load double, double* %t2, align 8
  %mul123 = fmul double %112, %113
  %sub124 = fsub double %mul122, %mul123
  %114 = load i32, i32* %k, align 4
  %idxprom125 = sext i32 %114 to i64
  %115 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %115 to i64
  %116 = load double**, double*** %A.addr, align 8
  %arrayidx127 = getelementptr inbounds double*, double** %116, i64 %idxprom126
  %117 = load double*, double** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds double, double* %117, i64 %idxprom125
  store double %sub124, double* %arrayidx128, align 8
  %118 = load double, double* %s, align 8
  %119 = load double, double* %t1, align 8
  %mul129 = fmul double %118, %119
  %120 = load double, double* %c, align 8
  %121 = load double, double* %t2, align 8
  %mul130 = fmul double %120, %121
  %add131 = fadd double %mul129, %mul130
  %122 = load i32, i32* %k, align 4
  %idxprom132 = sext i32 %122 to i64
  %123 = load i32, i32* %i, align 4
  %add133 = add nsw i32 %123, 1
  %idxprom134 = sext i32 %add133 to i64
  %124 = load double**, double*** %A.addr, align 8
  %arrayidx135 = getelementptr inbounds double*, double** %124, i64 %idxprom134
  %125 = load double*, double** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds double, double* %125, i64 %idxprom132
  store double %add131, double* %arrayidx136, align 8
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.112
  %126 = load i32, i32* %k, align 4
  %inc138 = add nsw i32 %126, 1
  store i32 %inc138, i32* %k, align 4
  br label %for.cond.109

for.end.139:                                      ; preds = %for.cond.109
  %127 = load i32, i32* %l, align 4
  store i32 %127, i32* %k, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.168, %for.end.139
  %128 = load i32, i32* %k, align 4
  %129 = load i32, i32* %m, align 4
  %cmp141 = icmp sle i32 %128, %129
  br i1 %cmp141, label %for.body.143, label %for.end.170

for.body.143:                                     ; preds = %for.cond.140
  %130 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %130 to i64
  %131 = load i32, i32* %k, align 4
  %idxprom145 = sext i32 %131 to i64
  %132 = load double**, double*** %A.addr, align 8
  %arrayidx146 = getelementptr inbounds double*, double** %132, i64 %idxprom145
  %133 = load double*, double** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds double, double* %133, i64 %idxprom144
  %134 = load double, double* %arrayidx147, align 8
  store double %134, double* %t1, align 8
  %135 = load i32, i32* %i, align 4
  %add148 = add nsw i32 %135, 1
  %idxprom149 = sext i32 %add148 to i64
  %136 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %136 to i64
  %137 = load double**, double*** %A.addr, align 8
  %arrayidx151 = getelementptr inbounds double*, double** %137, i64 %idxprom150
  %138 = load double*, double** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds double, double* %138, i64 %idxprom149
  %139 = load double, double* %arrayidx152, align 8
  store double %139, double* %t2, align 8
  %140 = load double, double* %c, align 8
  %141 = load double, double* %t1, align 8
  %mul153 = fmul double %140, %141
  %142 = load double, double* %s, align 8
  %143 = load double, double* %t2, align 8
  %mul154 = fmul double %142, %143
  %sub155 = fsub double %mul153, %mul154
  %144 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %144 to i64
  %145 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %145 to i64
  %146 = load double**, double*** %A.addr, align 8
  %arrayidx158 = getelementptr inbounds double*, double** %146, i64 %idxprom157
  %147 = load double*, double** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds double, double* %147, i64 %idxprom156
  store double %sub155, double* %arrayidx159, align 8
  %148 = load double, double* %s, align 8
  %149 = load double, double* %t1, align 8
  %mul160 = fmul double %148, %149
  %150 = load double, double* %c, align 8
  %151 = load double, double* %t2, align 8
  %mul161 = fmul double %150, %151
  %add162 = fadd double %mul160, %mul161
  %152 = load i32, i32* %i, align 4
  %add163 = add nsw i32 %152, 1
  %idxprom164 = sext i32 %add163 to i64
  %153 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %153 to i64
  %154 = load double**, double*** %A.addr, align 8
  %arrayidx166 = getelementptr inbounds double*, double** %154, i64 %idxprom165
  %155 = load double*, double** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds double, double* %155, i64 %idxprom164
  store double %add162, double* %arrayidx167, align 8
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.143
  %156 = load i32, i32* %k, align 4
  %inc169 = add nsw i32 %156, 1
  store i32 %inc169, i32* %k, align 4
  br label %for.cond.140

for.end.170:                                      ; preds = %for.cond.140
  %157 = load double**, double*** %U.addr, align 8
  %158 = load double, double* %s, align 8
  %159 = load double, double* %c, align 8
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %i, align 4
  %add171 = add nsw i32 %161, 1
  call void @ApplyRGivens(double** %157, double %158, double %159, i32 %160, i32 %add171)
  %162 = load i32, i32* %i, align 4
  %163 = load i32, i32* %q, align 4
  %sub172 = sub nsw i32 %163, 1
  %cmp173 = icmp slt i32 %162, %sub172
  br i1 %cmp173, label %if.then.175, label %if.end.186

if.then.175:                                      ; preds = %for.end.170
  %164 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %164 to i64
  %165 = load i32, i32* %i, align 4
  %add177 = add nsw i32 %165, 1
  %idxprom178 = sext i32 %add177 to i64
  %166 = load double**, double*** %A.addr, align 8
  %arrayidx179 = getelementptr inbounds double*, double** %166, i64 %idxprom178
  %167 = load double*, double** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds double, double* %167, i64 %idxprom176
  %168 = load double, double* %arrayidx180, align 8
  store double %168, double* %x, align 8
  %169 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %169 to i64
  %170 = load i32, i32* %i, align 4
  %add182 = add nsw i32 %170, 2
  %idxprom183 = sext i32 %add182 to i64
  %171 = load double**, double*** %A.addr, align 8
  %arrayidx184 = getelementptr inbounds double*, double** %171, i64 %idxprom183
  %172 = load double*, double** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds double, double* %172, i64 %idxprom181
  %173 = load double, double* %arrayidx185, align 8
  store double %173, double* %z, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.175, %for.end.170
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %174 = load i32, i32* %i, align 4
  %inc188 = add nsw i32 %174, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond.93

for.end.189:                                      ; preds = %for.cond.93
  br label %while.cond

while.end.190:                                    ; preds = %if.then.52, %while.cond
  %175 = load double**, double*** %retval
  ret double** %175
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
