; ModuleID = './SingleSource.UnitTests/71.2005-07-17-INT-To-FP.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tests = global [11 x i32] [i32 -2147483648, i32 -123456792, i32 -10, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 10, i32 123456792, i32 2147483520], align 16
@.str = private unnamed_addr constant [19 x i8] c"%d %f, %f, %f, %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %shl = shl i32 %2, 2
  %conv = trunc i32 %shl to i8
  %conv1 = sitofp i8 %conv to double
  %3 = load i32, i32* %i, align 4
  %shl2 = shl i32 %3, 10
  %conv3 = trunc i32 %shl2 to i16
  %conv4 = sitofp i16 %conv3 to double
  %4 = load i32, i32* %i, align 4
  %shl5 = shl i32 %4, 26
  %conv6 = sitofp i32 %shl5 to double
  %5 = load i32, i32* %i, align 4
  %conv7 = zext i32 %5 to i64
  %shl8 = shl i64 %conv7, 58
  %conv9 = sitofp i64 %shl8 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %1, double %conv1, double %conv4, double %conv6, double %conv9)
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %shl10 = shl i32 %7, 2
  %conv11 = trunc i32 %shl10 to i8
  %conv12 = uitofp i8 %conv11 to double
  %8 = load i32, i32* %i, align 4
  %shl13 = shl i32 %8, 10
  %conv14 = trunc i32 %shl13 to i16
  %conv15 = uitofp i16 %conv14 to double
  %9 = load i32, i32* %i, align 4
  %shl16 = shl i32 %9, 26
  %conv17 = uitofp i32 %shl16 to double
  %10 = load i32, i32* %i, align 4
  %conv18 = zext i32 %10 to i64
  %shl19 = shl i64 %conv18, 58
  %conv20 = uitofp i64 %shl19 to double
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %6, double %conv12, double %conv15, double %conv17, double %conv20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.40, %for.end
  %12 = load i32, i32* %i, align 4
  %conv23 = zext i32 %12 to i64
  %cmp24 = icmp ult i64 %conv23, 11
  br i1 %cmp24, label %for.body.26, label %for.end.42

for.body.26:                                      ; preds = %for.cond.22
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %conv27 = uitofp i32 %15 to double
  %16 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i32 0, i64 %idxprom28
  %17 = load i32, i32* %arrayidx29, align 4
  %conv30 = sitofp i32 %17 to double
  %18 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i32 0, i64 %idxprom31
  %19 = load i32, i32* %arrayidx32, align 4
  %conv33 = sitofp i32 %19 to float
  %conv34 = fpext float %conv33 to double
  %20 = load i32, i32* %i, align 4
  %idxprom35 = zext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i32 0, i64 %idxprom35
  %21 = load i32, i32* %arrayidx36, align 4
  %conv37 = sitofp i32 %21 to float
  %conv38 = fpext float %conv37 to double
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %13, double %conv27, double %conv30, double %conv34, double %conv38)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.26
  %22 = load i32, i32* %i, align 4
  %inc41 = add i32 %22, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.22

for.end.42:                                       ; preds = %for.cond.22
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
