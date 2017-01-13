; ModuleID = './MultiSource.Benchmarks.McCat/10.05-eks.Jacobi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @ApplyGivens(double** %A, double %s, double %c, i32 %i, i32 %j, i32 %start, i32 %end) #0 {
entry:
  %A.addr = alloca double**, align 8
  %s.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %k = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %c, double* %c.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %end.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %5, i64 %idxprom1
  %6 = load double*, double** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx2, align 8
  store double %7, double* %t1, align 8
  %8 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32, i32* %j.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load double**, double*** %A.addr, align 8
  %arrayidx5 = getelementptr inbounds double*, double** %10, i64 %idxprom4
  %11 = load double*, double** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds double, double* %11, i64 %idxprom3
  %12 = load double, double* %arrayidx6, align 8
  store double %12, double* %t2, align 8
  %13 = load double, double* %c.addr, align 8
  %14 = load double, double* %t1, align 8
  %mul = fmul double %13, %14
  %15 = load double, double* %s.addr, align 8
  %16 = load double, double* %t2, align 8
  %mul7 = fmul double %15, %16
  %sub = fsub double %mul, %mul7
  %17 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load i32, i32* %i.addr, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load double**, double*** %A.addr, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %19, i64 %idxprom9
  %20 = load double*, double** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds double, double* %20, i64 %idxprom8
  store double %sub, double* %arrayidx11, align 8
  %21 = load double, double* %s.addr, align 8
  %22 = load double, double* %t1, align 8
  %mul12 = fmul double %21, %22
  %23 = load double, double* %c.addr, align 8
  %24 = load double, double* %t2, align 8
  %mul13 = fmul double %23, %24
  %add = fadd double %mul12, %mul13
  %25 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %25 to i64
  %26 = load i32, i32* %j.addr, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load double**, double*** %A.addr, align 8
  %arrayidx16 = getelementptr inbounds double*, double** %27, i64 %idxprom15
  %28 = load double*, double** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds double, double* %28, i64 %idxprom14
  store double %add, double* %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %k, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %start.addr, align 4
  store i32 %30, i32* %k, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.43, %for.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %end.addr, align 4
  %cmp19 = icmp sle i32 %31, %32
  br i1 %cmp19, label %for.body.20, label %for.end.45

for.body.20:                                      ; preds = %for.cond.18
  %33 = load i32, i32* %i.addr, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load double**, double*** %A.addr, align 8
  %arrayidx23 = getelementptr inbounds double*, double** %35, i64 %idxprom22
  %36 = load double*, double** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds double, double* %36, i64 %idxprom21
  %37 = load double, double* %arrayidx24, align 8
  store double %37, double* %t1, align 8
  %38 = load i32, i32* %j.addr, align 4
  %idxprom25 = sext i32 %38 to i64
  %39 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load double**, double*** %A.addr, align 8
  %arrayidx27 = getelementptr inbounds double*, double** %40, i64 %idxprom26
  %41 = load double*, double** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds double, double* %41, i64 %idxprom25
  %42 = load double, double* %arrayidx28, align 8
  store double %42, double* %t2, align 8
  %43 = load double, double* %c.addr, align 8
  %44 = load double, double* %t1, align 8
  %mul29 = fmul double %43, %44
  %45 = load double, double* %s.addr, align 8
  %46 = load double, double* %t2, align 8
  %mul30 = fmul double %45, %46
  %sub31 = fsub double %mul29, %mul30
  %47 = load i32, i32* %i.addr, align 4
  %idxprom32 = sext i32 %47 to i64
  %48 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %48 to i64
  %49 = load double**, double*** %A.addr, align 8
  %arrayidx34 = getelementptr inbounds double*, double** %49, i64 %idxprom33
  %50 = load double*, double** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds double, double* %50, i64 %idxprom32
  store double %sub31, double* %arrayidx35, align 8
  %51 = load double, double* %s.addr, align 8
  %52 = load double, double* %t1, align 8
  %mul36 = fmul double %51, %52
  %53 = load double, double* %c.addr, align 8
  %54 = load double, double* %t2, align 8
  %mul37 = fmul double %53, %54
  %add38 = fadd double %mul36, %mul37
  %55 = load i32, i32* %j.addr, align 4
  %idxprom39 = sext i32 %55 to i64
  %56 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %56 to i64
  %57 = load double**, double*** %A.addr, align 8
  %arrayidx41 = getelementptr inbounds double*, double** %57, i64 %idxprom40
  %58 = load double*, double** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds double, double* %58, i64 %idxprom39
  store double %add38, double* %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.20
  %59 = load i32, i32* %k, align 4
  %inc44 = add nsw i32 %59, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond.18

for.end.45:                                       ; preds = %for.cond.18
  ret void
}

; Function Attrs: nounwind uwtable
define double** @Jacobi(double** %A, i32 %bw) #0 {
entry:
  %A.addr = alloca double**, align 8
  %bw.addr = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %s = alloca double, align 8
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %U = alloca double**, align 8
  store double** %A, double*** %A.addr, align 8
  store i32 %bw, i32* %bw.addr, align 4
  %call = call double** @newIdMatrix()
  store double** %call, double*** %U, align 8
  %0 = load i32, i32* %bw.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 51, %3
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, %5
  %sub4 = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub4 to i64
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %7, i64 %idxprom5
  %8 = load double*, double** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx6, align 8
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %10, %11
  %idxprom8 = sext i32 %add7 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load double**, double*** %A.addr, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %13, i64 %idxprom9
  %14 = load double*, double** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds double, double* %14, i64 %idxprom8
  %15 = load double, double* %arrayidx11, align 8
  call void @Givens(double %9, double %15, double* %s, double* %c)
  %16 = load double**, double*** %A.addr, align 8
  %17 = load double, double* %s, align 8
  %18 = load double, double* %c, align 8
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %19, %20
  %sub13 = sub nsw i32 %add12, 1
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %21, %22
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %25
  %add15 = add nsw i32 %24, %mul
  %cmp16 = icmp slt i32 %add15, 51
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %i, align 4
  %mul17 = mul nsw i32 2, %27
  %add18 = add nsw i32 %26, %mul17
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add18, %cond.true ], [ 50, %cond.false ]
  call void @ApplyGivens(double** %16, double %17, double %18, i32 %sub13, i32 %add14, i32 %23, i32 %cond)
  %28 = load double**, double*** %U, align 8
  %29 = load double, double* %s, align 8
  %30 = load double, double* %c, align 8
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %31, %32
  %sub20 = sub nsw i32 %add19, 1
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %33, %34
  call void @ApplyRGivens(double** %28, double %29, double %30, i32 %sub20, i32 %add21)
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %35, %36
  store i32 %add22, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.49, %cond.end
  %37 = load i32, i32* %m, align 4
  %38 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 51, %38
  %cmp24 = icmp slt i32 %37, %sub23
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, i32* %m, align 4
  %40 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %39, %40
  %sub26 = sub nsw i32 %add25, 1
  %idxprom27 = sext i32 %sub26 to i64
  %41 = load i32, i32* %m, align 4
  %sub28 = sub nsw i32 %41, 1
  %idxprom29 = sext i32 %sub28 to i64
  %42 = load double**, double*** %A.addr, align 8
  %arrayidx30 = getelementptr inbounds double*, double** %42, i64 %idxprom29
  %43 = load double*, double** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds double, double* %43, i64 %idxprom27
  %44 = load double, double* %arrayidx31, align 8
  %45 = load i32, i32* %m, align 4
  %46 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %45, %46
  %idxprom33 = sext i32 %add32 to i64
  %47 = load i32, i32* %m, align 4
  %sub34 = sub nsw i32 %47, 1
  %idxprom35 = sext i32 %sub34 to i64
  %48 = load double**, double*** %A.addr, align 8
  %arrayidx36 = getelementptr inbounds double*, double** %48, i64 %idxprom35
  %49 = load double*, double** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds double, double* %49, i64 %idxprom33
  %50 = load double, double* %arrayidx37, align 8
  call void @Givens(double %44, double %50, double* %s, double* %c)
  %51 = load double**, double*** %A.addr, align 8
  %52 = load double, double* %s, align 8
  %53 = load double, double* %c, align 8
  %54 = load i32, i32* %m, align 4
  %55 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %54, %55
  %sub39 = sub nsw i32 %add38, 1
  %56 = load i32, i32* %m, align 4
  %57 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %56, %57
  %58 = load i32, i32* %m, align 4
  %sub41 = sub nsw i32 %58, 1
  %59 = load i32, i32* %m, align 4
  %60 = load i32, i32* %i, align 4
  %mul42 = mul nsw i32 2, %60
  %add43 = add nsw i32 %59, %mul42
  %cmp44 = icmp slt i32 %add43, 51
  br i1 %cmp44, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %while.body
  %61 = load i32, i32* %m, align 4
  %62 = load i32, i32* %i, align 4
  %mul46 = mul nsw i32 2, %62
  %add47 = add nsw i32 %61, %mul46
  br label %cond.end.49

cond.false.48:                                    ; preds = %while.body
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.45
  %cond50 = phi i32 [ %add47, %cond.true.45 ], [ 50, %cond.false.48 ]
  call void @ApplyGivens(double** %51, double %52, double %53, i32 %sub39, i32 %add40, i32 %sub41, i32 %cond50)
  %63 = load double**, double*** %U, align 8
  %64 = load double, double* %s, align 8
  %65 = load double, double* %c, align 8
  %66 = load i32, i32* %m, align 4
  %67 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %66, %67
  %sub52 = sub nsw i32 %add51, 1
  %68 = load i32, i32* %m, align 4
  %69 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %68, %69
  call void @ApplyRGivens(double** %63, double %64, double %65, i32 %sub52, i32 %add53)
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %m, align 4
  %add54 = add nsw i32 %71, %70
  store i32 %add54, i32* %m, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %72 = load i32, i32* %j, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %73 = load i32, i32* %i, align 4
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  %74 = load double**, double*** %U, align 8
  ret double** %74
}

declare double** @newIdMatrix() #1

declare void @Givens(double, double, double*, double*) #1

declare void @ApplyRGivens(double**, double, double, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
