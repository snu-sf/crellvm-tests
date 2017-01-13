; ModuleID = './SingleSource.Regression.C/23.matrixTranspose.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"Checksum before = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Checksum  after = %lf\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @complex_transpose(float* %rA, float* %iA, i32 %n, i32 %is, i32 %js) #0 {
entry:
  %rA.addr = alloca float*, align 8
  %iA.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %is.addr = alloca i32, align 4
  %js.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ar = alloca float, align 4
  %ai = alloca float, align 4
  %br = alloca float, align 4
  %bi = alloca float, align 4
  store float* %rA, float** %rA.addr, align 8
  store float* %iA, float** %iA.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %is, i32* %is.addr, align 4
  store i32 %js, i32* %js.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %is.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %js.addr, align 4
  %mul4 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, %mul4
  %idxprom = sext i32 %add to i64
  %8 = load float*, float** %rA.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  %9 = load float, float* %arrayidx, align 4
  store float %9, float* %ar, align 4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %is.addr, align 4
  %mul5 = mul nsw i32 %10, %11
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %js.addr, align 4
  %mul6 = mul nsw i32 %12, %13
  %add7 = add nsw i32 %mul5, %mul6
  %idxprom8 = sext i32 %add7 to i64
  %14 = load float*, float** %iA.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %15 = load float, float* %arrayidx9, align 4
  store float %15, float* %ai, align 4
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %is.addr, align 4
  %mul10 = mul nsw i32 %16, %17
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %js.addr, align 4
  %mul11 = mul nsw i32 %18, %19
  %add12 = add nsw i32 %mul10, %mul11
  %idxprom13 = sext i32 %add12 to i64
  %20 = load float*, float** %rA.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %20, i64 %idxprom13
  %21 = load float, float* %arrayidx14, align 4
  store float %21, float* %br, align 4
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %is.addr, align 4
  %mul15 = mul nsw i32 %22, %23
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %js.addr, align 4
  %mul16 = mul nsw i32 %24, %25
  %add17 = add nsw i32 %mul15, %mul16
  %idxprom18 = sext i32 %add17 to i64
  %26 = load float*, float** %iA.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %26, i64 %idxprom18
  %27 = load float, float* %arrayidx19, align 4
  store float %27, float* %bi, align 4
  %28 = load float, float* %ar, align 4
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %is.addr, align 4
  %mul20 = mul nsw i32 %29, %30
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %js.addr, align 4
  %mul21 = mul nsw i32 %31, %32
  %add22 = add nsw i32 %mul20, %mul21
  %idxprom23 = sext i32 %add22 to i64
  %33 = load float*, float** %rA.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %33, i64 %idxprom23
  store float %28, float* %arrayidx24, align 4
  %34 = load float, float* %ai, align 4
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %is.addr, align 4
  %mul25 = mul nsw i32 %35, %36
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %js.addr, align 4
  %mul26 = mul nsw i32 %37, %38
  %add27 = add nsw i32 %mul25, %mul26
  %idxprom28 = sext i32 %add27 to i64
  %39 = load float*, float** %iA.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %39, i64 %idxprom28
  store float %34, float* %arrayidx29, align 4
  %40 = load float, float* %br, align 4
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %is.addr, align 4
  %mul30 = mul nsw i32 %41, %42
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %js.addr, align 4
  %mul31 = mul nsw i32 %43, %44
  %add32 = add nsw i32 %mul30, %mul31
  %idxprom33 = sext i32 %add32 to i64
  %45 = load float*, float** %rA.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %45, i64 %idxprom33
  store float %40, float* %arrayidx34, align 4
  %46 = load float, float* %bi, align 4
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %is.addr, align 4
  %mul35 = mul nsw i32 %47, %48
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %js.addr, align 4
  %mul36 = mul nsw i32 %49, %50
  %add37 = add nsw i32 %mul35, %mul36
  %idxprom38 = sext i32 %add37 to i64
  %51 = load float*, float** %iA.addr, align 8
  %arrayidx39 = getelementptr inbounds float, float* %51, i64 %idxprom38
  store float %46, float* %arrayidx39, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %52 = load i32, i32* %j, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %53 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %53, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %sum = alloca float, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to float
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* @A, i32 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  %3 = load float, float* %sum, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i32 0, i64 %idxprom1
  %5 = load float, float* %arrayidx2, align 4
  %add = fadd float %3, %5
  store float %add, float* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load float, float* %sum, align 4
  %conv3 = fpext float %7 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), double %conv3)
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.8, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %8, 10
  br i1 %cmp5, label %for.body.7, label %for.end.10

for.body.7:                                       ; preds = %for.cond.4
  call void @complex_transpose(float* getelementptr inbounds ([2048 x float], [2048 x float]* @A, i32 0, i32 0), float* getelementptr inbounds ([2048 x float], [2048 x float]* @A, i32 0, i64 1), i32 32, i32 2, i32 64)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.7
  %9 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.4

for.end.10:                                       ; preds = %for.cond.4
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.end.10
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 2048
  br i1 %cmp12, label %for.body.14, label %for.end.20

for.body.14:                                      ; preds = %for.cond.11
  %11 = load float, float* %sum, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i32 0, i64 %idxprom15
  %13 = load float, float* %arrayidx16, align 4
  %add17 = fadd float %11, %13
  store float %add17, float* %sum, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.14
  %14 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  %15 = load float, float* %sum, align 4
  %conv21 = fpext float %15 to double
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), double %conv21)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
