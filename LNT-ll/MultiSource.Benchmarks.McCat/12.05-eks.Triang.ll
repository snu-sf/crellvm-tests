; ModuleID = './MultiSource.Benchmarks.McCat/12.05-eks.Triang.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @norm(double** %A, i32 %col, i32 %rs, i32 %re) #0 {
entry:
  %A.addr = alloca double**, align 8
  %col.addr = alloca i32, align 4
  %rs.addr = alloca i32, align 4
  %re.addr = alloca i32, align 4
  %t = alloca double, align 8
  %i = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %rs, i32* %rs.addr, align 4
  store i32 %re, i32* %re.addr, align 4
  store double 0.000000e+00, double* %t, align 8
  %0 = load i32, i32* %rs.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %re.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %col.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %5, i64 %idxprom1
  %6 = load double*, double** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx2, align 8
  %8 = load i32, i32* %col.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load double**, double*** %A.addr, align 8
  %arrayidx5 = getelementptr inbounds double*, double** %10, i64 %idxprom4
  %11 = load double*, double** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds double, double* %11, i64 %idxprom3
  %12 = load double, double* %arrayidx6, align 8
  %mul = fmul double %7, %12
  %13 = load double, double* %t, align 8
  %add = fadd double %13, %mul
  store double %add, double* %t, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load double, double* %t, align 8
  %call = call double @sqrt(double %15) #3
  ret double %call
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define void @House(double** %A, double* %v, i32 %col, i32 %sr, i32 %er) #0 {
entry:
  %A.addr = alloca double**, align 8
  %v.addr = alloca double*, align 8
  %col.addr = alloca i32, align 4
  %sr.addr = alloca i32, align 4
  %er.addr = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %m = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store double* %v, double** %v.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %sr, i32* %sr.addr, align 4
  store i32 %er, i32* %er.addr, align 4
  %0 = load double**, double*** %A.addr, align 8
  %1 = load i32, i32* %col.addr, align 4
  %2 = load i32, i32* %sr.addr, align 4
  %3 = load i32, i32* %er.addr, align 4
  %call = call double @norm(double** %0, i32 %1, i32 %2, i32 %3)
  store double %call, double* %a, align 8
  %4 = load i32, i32* %col.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %sr.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %6, i64 %idxprom1
  %7 = load double*, double** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom
  %8 = load double, double* %arrayidx2, align 8
  %9 = load i32, i32* %col.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32, i32* %sr.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load double**, double*** %A.addr, align 8
  %arrayidx5 = getelementptr inbounds double*, double** %11, i64 %idxprom4
  %12 = load double*, double** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 %idxprom3
  %13 = load double, double* %arrayidx6, align 8
  %call7 = call i32 @sign(double %13)
  %conv = sitofp i32 %call7 to double
  %14 = load double, double* %a, align 8
  %mul = fmul double %conv, %14
  %add = fadd double %8, %mul
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %b, align 8
  %15 = load i32, i32* %sr.addr, align 4
  %add8 = add nsw i32 %15, 1
  store i32 %add8, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %er.addr, align 4
  %cmp = icmp sle i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %col.addr, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load i32, i32* %m, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load double**, double*** %A.addr, align 8
  %arrayidx12 = getelementptr inbounds double*, double** %20, i64 %idxprom11
  %21 = load double*, double** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds double, double* %21, i64 %idxprom10
  %22 = load double, double* %arrayidx13, align 8
  %23 = load double, double* %b, align 8
  %mul14 = fmul double %22, %23
  %24 = load i32, i32* %m, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load double*, double** %v.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %25, i64 %idxprom15
  store double %mul14, double* %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %m, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %sr.addr, align 4
  %idxprom17 = sext i32 %27 to i64
  %28 = load double*, double** %v.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %28, i64 %idxprom17
  store double 1.000000e+00, double* %arrayidx18, align 8
  ret void
}

declare i32 @sign(double) #2

; Function Attrs: nounwind uwtable
define double @xty(double* %x, double* %y, i32 %s, i32 %e) #0 {
entry:
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %s.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %t = alloca double, align 8
  %i = alloca i32, align 4
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  store double 0.000000e+00, double* %t, align 8
  %0 = load i32, i32* %s.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %e.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %x.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load double*, double** %y.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom1
  %8 = load double, double* %arrayidx2, align 8
  %mul = fmul double %5, %8
  %9 = load double, double* %t, align 8
  %add = fadd double %9, %mul
  store double %add, double* %t, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %t, align 8
  ret double %11
}

; Function Attrs: nounwind uwtable
define double** @Trianglelise(double** %A, i32 %i) #0 {
entry:
  %retval = alloca double**, align 8
  %A.addr = alloca double**, align 8
  %i.addr = alloca i32, align 4
  %U = alloca double**, align 8
  %P = alloca double**, align 8
  %T = alloca double**, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %v = alloca double*, align 8
  %w = alloca double*, align 8
  %p = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %h = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call double** @newMatrix()
  store double** %call, double*** %P, align 8
  %call1 = call double** @newIdMatrix()
  store double** %call1, double*** %U, align 8
  %call2 = call noalias i8* @malloc(i64 408) #3
  %0 = bitcast i8* %call2 to double*
  store double* %0, double** %v, align 8
  %call3 = call noalias i8* @malloc(i64 408) #3
  %1 = bitcast i8* %call3 to double*
  store double* %1, double** %w, align 8
  %call4 = call noalias i8* @malloc(i64 408) #3
  %2 = bitcast i8* %call4 to double*
  store double* %2, double** %p, align 8
  %3 = load i32, i32* %i.addr, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double**, double*** %A.addr, align 8
  store double** %4, double*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %i.addr, align 4
  store i32 %5, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.155, %if.end
  %6 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %6, 49
  br i1 %cmp5, label %for.body, label %for.end.157

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %l, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, i32* %i.addr, align 4
  %add6 = add nsw i32 %add, %9
  %cmp7 = icmp slt i32 %add6, 50
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %l, align 4
  %add8 = add nsw i32 %10, %11
  %12 = load i32, i32* %i.addr, align 4
  %add9 = add nsw i32 %add8, %12
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add9, %cond.true ], [ 50, %cond.false ]
  store i32 %cond, i32* %h, align 4
  %13 = load double**, double*** %A.addr, align 8
  %14 = load double*, double** %v, align 8
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %16, 1
  %17 = load i32, i32* %h, align 4
  call void @House(double** %13, double* %14, i32 %15, i32 %add10, i32 %17)
  %18 = load double*, double** %v, align 8
  %19 = load double*, double** %v, align 8
  %20 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %20, 1
  %21 = load i32, i32* %h, align 4
  %call12 = call double @xty(double* %18, double* %19, i32 %add11, i32 %21)
  %div = fdiv double 1.000000e+00, %call12
  store double %div, double* %b, align 8
  %22 = load i32, i32* %j, align 4
  store i32 %22, i32* %m, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %cond.end
  %23 = load i32, i32* %m, align 4
  %24 = load i32, i32* %h, align 4
  %cmp14 = icmp sle i32 %23, %24
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %25 = load i32, i32* %m, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %26, i64 %idxprom
  %27 = load double*, double** %arrayidx, align 8
  %28 = load double*, double** %v, align 8
  %29 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %29, 1
  %30 = load i32, i32* %h, align 4
  %call17 = call double @xty(double* %27, double* %28, i32 %add16, i32 %30)
  %mul = fmul double 2.000000e+00, %call17
  %31 = load double, double* %b, align 8
  %mul18 = fmul double %mul, %31
  %32 = load i32, i32* %m, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load double*, double** %p, align 8
  %arrayidx20 = getelementptr inbounds double, double* %33, i64 %idxprom19
  store double %mul18, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %34 = load i32, i32* %m, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %35 = load double*, double** %p, align 8
  %36 = load double*, double** %v, align 8
  %37 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %37, 1
  %38 = load i32, i32* %h, align 4
  %call22 = call double @xty(double* %35, double* %36, i32 %add21, i32 %38)
  %39 = load double, double* %b, align 8
  %mul23 = fmul double %call22, %39
  store double %mul23, double* %a, align 8
  %40 = load i32, i32* %j, align 4
  %add24 = add nsw i32 %40, 1
  store i32 %add24, i32* %m, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.35, %for.end
  %41 = load i32, i32* %m, align 4
  %42 = load i32, i32* %h, align 4
  %cmp26 = icmp sle i32 %41, %42
  br i1 %cmp26, label %for.body.27, label %for.end.37

for.body.27:                                      ; preds = %for.cond.25
  %43 = load i32, i32* %m, align 4
  %idxprom28 = sext i32 %43 to i64
  %44 = load double*, double** %p, align 8
  %arrayidx29 = getelementptr inbounds double, double* %44, i64 %idxprom28
  %45 = load double, double* %arrayidx29, align 8
  %46 = load double, double* %a, align 8
  %47 = load i32, i32* %m, align 4
  %idxprom30 = sext i32 %47 to i64
  %48 = load double*, double** %v, align 8
  %arrayidx31 = getelementptr inbounds double, double* %48, i64 %idxprom30
  %49 = load double, double* %arrayidx31, align 8
  %mul32 = fmul double %46, %49
  %sub = fsub double %45, %mul32
  %50 = load i32, i32* %m, align 4
  %idxprom33 = sext i32 %50 to i64
  %51 = load double*, double** %w, align 8
  %arrayidx34 = getelementptr inbounds double, double* %51, i64 %idxprom33
  store double %sub, double* %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.27
  %52 = load i32, i32* %m, align 4
  %inc36 = add nsw i32 %52, 1
  store i32 %inc36, i32* %m, align 4
  br label %for.cond.25

for.end.37:                                       ; preds = %for.cond.25
  %53 = load i32, i32* %j, align 4
  %add38 = add nsw i32 %53, 1
  store i32 %add38, i32* %m, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.72, %for.end.37
  %54 = load i32, i32* %m, align 4
  %55 = load i32, i32* %h, align 4
  %cmp40 = icmp sle i32 %54, %55
  br i1 %cmp40, label %for.body.41, label %for.end.74

for.body.41:                                      ; preds = %for.cond.39
  %56 = load i32, i32* %m, align 4
  store i32 %56, i32* %k, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.69, %for.body.41
  %57 = load i32, i32* %k, align 4
  %58 = load i32, i32* %h, align 4
  %cmp43 = icmp sle i32 %57, %58
  br i1 %cmp43, label %for.body.44, label %for.end.71

for.body.44:                                      ; preds = %for.cond.42
  %59 = load i32, i32* %m, align 4
  %idxprom45 = sext i32 %59 to i64
  %60 = load double*, double** %v, align 8
  %arrayidx46 = getelementptr inbounds double, double* %60, i64 %idxprom45
  %61 = load double, double* %arrayidx46, align 8
  %62 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %62 to i64
  %63 = load double*, double** %w, align 8
  %arrayidx48 = getelementptr inbounds double, double* %63, i64 %idxprom47
  %64 = load double, double* %arrayidx48, align 8
  %mul49 = fmul double %61, %64
  %65 = load i32, i32* %m, align 4
  %idxprom50 = sext i32 %65 to i64
  %66 = load double*, double** %w, align 8
  %arrayidx51 = getelementptr inbounds double, double* %66, i64 %idxprom50
  %67 = load double, double* %arrayidx51, align 8
  %68 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %68 to i64
  %69 = load double*, double** %v, align 8
  %arrayidx53 = getelementptr inbounds double, double* %69, i64 %idxprom52
  %70 = load double, double* %arrayidx53, align 8
  %mul54 = fmul double %67, %70
  %add55 = fadd double %mul49, %mul54
  %71 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %71 to i64
  %72 = load i32, i32* %m, align 4
  %idxprom57 = sext i32 %72 to i64
  %73 = load double**, double*** %A.addr, align 8
  %arrayidx58 = getelementptr inbounds double*, double** %73, i64 %idxprom57
  %74 = load double*, double** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds double, double* %74, i64 %idxprom56
  %75 = load double, double* %arrayidx59, align 8
  %sub60 = fsub double %75, %add55
  store double %sub60, double* %arrayidx59, align 8
  %76 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %76 to i64
  %77 = load i32, i32* %m, align 4
  %idxprom62 = sext i32 %77 to i64
  %78 = load double**, double*** %A.addr, align 8
  %arrayidx63 = getelementptr inbounds double*, double** %78, i64 %idxprom62
  %79 = load double*, double** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds double, double* %79, i64 %idxprom61
  %80 = load double, double* %arrayidx64, align 8
  %81 = load i32, i32* %m, align 4
  %idxprom65 = sext i32 %81 to i64
  %82 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %82 to i64
  %83 = load double**, double*** %A.addr, align 8
  %arrayidx67 = getelementptr inbounds double*, double** %83, i64 %idxprom66
  %84 = load double*, double** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds double, double* %84, i64 %idxprom65
  store double %80, double* %arrayidx68, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.44
  %85 = load i32, i32* %k, align 4
  %inc70 = add nsw i32 %85, 1
  store i32 %inc70, i32* %k, align 4
  br label %for.cond.42

for.end.71:                                       ; preds = %for.cond.42
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %86 = load i32, i32* %m, align 4
  %inc73 = add nsw i32 %86, 1
  store i32 %inc73, i32* %m, align 4
  br label %for.cond.39

for.end.74:                                       ; preds = %for.cond.39
  %87 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %87, 1
  %idxprom76 = sext i32 %add75 to i64
  %88 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %88 to i64
  %89 = load double**, double*** %A.addr, align 8
  %arrayidx78 = getelementptr inbounds double*, double** %89, i64 %idxprom77
  %90 = load double*, double** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds double, double* %90, i64 %idxprom76
  %91 = load double, double* %arrayidx79, align 8
  %92 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %92 to i64
  %93 = load double*, double** %p, align 8
  %arrayidx81 = getelementptr inbounds double, double* %93, i64 %idxprom80
  %94 = load double, double* %arrayidx81, align 8
  %sub82 = fsub double %91, %94
  %95 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %95, 1
  %idxprom84 = sext i32 %add83 to i64
  %96 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %96 to i64
  %97 = load double**, double*** %A.addr, align 8
  %arrayidx86 = getelementptr inbounds double*, double** %97, i64 %idxprom85
  %98 = load double*, double** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds double, double* %98, i64 %idxprom84
  store double %sub82, double* %arrayidx87, align 8
  %99 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %add89 = add nsw i32 %100, 1
  %idxprom90 = sext i32 %add89 to i64
  %101 = load double**, double*** %A.addr, align 8
  %arrayidx91 = getelementptr inbounds double*, double** %101, i64 %idxprom90
  %102 = load double*, double** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds double, double* %102, i64 %idxprom88
  store double %sub82, double* %arrayidx92, align 8
  %103 = load i32, i32* %j, align 4
  %add93 = add nsw i32 %103, 2
  store i32 %add93, i32* %m, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.105, %for.end.74
  %104 = load i32, i32* %m, align 4
  %105 = load i32, i32* %h, align 4
  %cmp95 = icmp sle i32 %104, %105
  br i1 %cmp95, label %for.body.96, label %for.end.107

for.body.96:                                      ; preds = %for.cond.94
  %106 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %106 to i64
  %107 = load i32, i32* %m, align 4
  %idxprom98 = sext i32 %107 to i64
  %108 = load double**, double*** %A.addr, align 8
  %arrayidx99 = getelementptr inbounds double*, double** %108, i64 %idxprom98
  %109 = load double*, double** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds double, double* %109, i64 %idxprom97
  store double 0.000000e+00, double* %arrayidx100, align 8
  %110 = load i32, i32* %m, align 4
  %idxprom101 = sext i32 %110 to i64
  %111 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %111 to i64
  %112 = load double**, double*** %A.addr, align 8
  %arrayidx103 = getelementptr inbounds double*, double** %112, i64 %idxprom102
  %113 = load double*, double** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds double, double* %113, i64 %idxprom101
  store double 0.000000e+00, double* %arrayidx104, align 8
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.96
  %114 = load i32, i32* %m, align 4
  %inc106 = add nsw i32 %114, 1
  store i32 %inc106, i32* %m, align 4
  br label %for.cond.94

for.end.107:                                      ; preds = %for.cond.94
  store i32 0, i32* %m, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.119, %for.end.107
  %115 = load i32, i32* %m, align 4
  %cmp109 = icmp slt i32 %115, 51
  br i1 %cmp109, label %for.body.110, label %for.end.121

for.body.110:                                     ; preds = %for.cond.108
  %116 = load double, double* %b, align 8
  %mul111 = fmul double 2.000000e+00, %116
  %117 = load i32, i32* %m, align 4
  %idxprom112 = sext i32 %117 to i64
  %118 = load double**, double*** %U, align 8
  %arrayidx113 = getelementptr inbounds double*, double** %118, i64 %idxprom112
  %119 = load double*, double** %arrayidx113, align 8
  %120 = load double*, double** %v, align 8
  %121 = load i32, i32* %j, align 4
  %add114 = add nsw i32 %121, 1
  %122 = load i32, i32* %h, align 4
  %call115 = call double @xty(double* %119, double* %120, i32 %add114, i32 %122)
  %mul116 = fmul double %mul111, %call115
  %123 = load i32, i32* %m, align 4
  %idxprom117 = sext i32 %123 to i64
  %124 = load double*, double** %w, align 8
  %arrayidx118 = getelementptr inbounds double, double* %124, i64 %idxprom117
  store double %mul116, double* %arrayidx118, align 8
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.110
  %125 = load i32, i32* %m, align 4
  %inc120 = add nsw i32 %125, 1
  store i32 %inc120, i32* %m, align 4
  br label %for.cond.108

for.end.121:                                      ; preds = %for.cond.108
  store i32 0, i32* %m, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.142, %for.end.121
  %126 = load i32, i32* %m, align 4
  %cmp123 = icmp slt i32 %126, 51
  br i1 %cmp123, label %for.body.124, label %for.end.144

for.body.124:                                     ; preds = %for.cond.122
  %127 = load i32, i32* %j, align 4
  %add125 = add nsw i32 %127, 1
  store i32 %add125, i32* %k, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.139, %for.body.124
  %128 = load i32, i32* %k, align 4
  %129 = load i32, i32* %h, align 4
  %cmp127 = icmp sle i32 %128, %129
  br i1 %cmp127, label %for.body.128, label %for.end.141

for.body.128:                                     ; preds = %for.cond.126
  %130 = load i32, i32* %m, align 4
  %idxprom129 = sext i32 %130 to i64
  %131 = load double*, double** %w, align 8
  %arrayidx130 = getelementptr inbounds double, double* %131, i64 %idxprom129
  %132 = load double, double* %arrayidx130, align 8
  %133 = load i32, i32* %k, align 4
  %idxprom131 = sext i32 %133 to i64
  %134 = load double*, double** %v, align 8
  %arrayidx132 = getelementptr inbounds double, double* %134, i64 %idxprom131
  %135 = load double, double* %arrayidx132, align 8
  %mul133 = fmul double %132, %135
  %136 = load i32, i32* %k, align 4
  %idxprom134 = sext i32 %136 to i64
  %137 = load i32, i32* %m, align 4
  %idxprom135 = sext i32 %137 to i64
  %138 = load double**, double*** %U, align 8
  %arrayidx136 = getelementptr inbounds double*, double** %138, i64 %idxprom135
  %139 = load double*, double** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds double, double* %139, i64 %idxprom134
  %140 = load double, double* %arrayidx137, align 8
  %sub138 = fsub double %140, %mul133
  store double %sub138, double* %arrayidx137, align 8
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.128
  %141 = load i32, i32* %k, align 4
  %inc140 = add nsw i32 %141, 1
  store i32 %inc140, i32* %k, align 4
  br label %for.cond.126

for.end.141:                                      ; preds = %for.cond.126
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %142 = load i32, i32* %m, align 4
  %inc143 = add nsw i32 %142, 1
  store i32 %inc143, i32* %m, align 4
  br label %for.cond.122

for.end.144:                                      ; preds = %for.cond.122
  %143 = load i32, i32* %j, align 4
  %144 = load i32, i32* %l, align 4
  %add145 = add nsw i32 %143, %144
  %145 = load i32, i32* %i.addr, align 4
  %sub146 = sub nsw i32 %145, 1
  %add147 = add nsw i32 %add145, %sub146
  %cmp148 = icmp slt i32 %add147, 50
  br i1 %cmp148, label %if.then.149, label %if.else

if.then.149:                                      ; preds = %for.end.144
  %146 = load i32, i32* %i.addr, align 4
  %sub150 = sub nsw i32 %146, 1
  %147 = load i32, i32* %l, align 4
  %add151 = add nsw i32 %147, %sub150
  store i32 %add151, i32* %l, align 4
  br label %if.end.154

if.else:                                          ; preds = %for.end.144
  %148 = load i32, i32* %j, align 4
  %add152 = add nsw i32 %148, 1
  %sub153 = sub nsw i32 50, %add152
  store i32 %sub153, i32* %l, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.else, %if.then.149
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %149 = load i32, i32* %j, align 4
  %inc156 = add nsw i32 %149, 1
  store i32 %inc156, i32* %j, align 4
  br label %for.cond

for.end.157:                                      ; preds = %for.cond
  %150 = load double*, double** %v, align 8
  %151 = bitcast double* %150 to i8*
  call void @free(i8* %151) #3
  %152 = load double*, double** %w, align 8
  %153 = bitcast double* %152 to i8*
  call void @free(i8* %153) #3
  %154 = load double*, double** %p, align 8
  %155 = bitcast double* %154 to i8*
  call void @free(i8* %155) #3
  %156 = load double**, double*** %U, align 8
  store double** %156, double*** %retval
  br label %return

return:                                           ; preds = %for.end.157, %if.then
  %157 = load double**, double*** %retval
  ret double** %157
}

declare double** @newMatrix() #2

declare double** @newIdMatrix() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
