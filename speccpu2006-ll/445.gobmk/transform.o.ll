; ModuleID = 'patterns/transform.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@transformation2 = constant [8 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 -1]]], align 16
@transformation = common global [1369 x [8 x i32]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @transformation_init() #0 {
entry:
  %k = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  store i32 -18, i32* %dy, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.36, %for.body
  %1 = load i32, i32* %dy, align 4
  %cmp2 = icmp sle i32 %1, 18
  br i1 %cmp2, label %for.body.3, label %for.end.38

for.body.3:                                       ; preds = %for.cond.1
  store i32 -18, i32* %dx, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %2 = load i32, i32* %dx, align 4
  %cmp5 = icmp sle i32 %2, 18
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  br label %do.body

do.body:                                          ; preds = %for.body.6
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom
  %arrayidx7 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 0
  %4 = load i32, i32* %arrayidx8, align 4
  %5 = load i32, i32* %dx, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i32 0, i64 1
  %7 = load i32, i32* %arrayidx12, align 4
  %8 = load i32, i32* %dy, align 4
  %mul13 = mul nsw i32 %7, %8
  %add = add nsw i32 %mul, %mul13
  store i32 %add, i32* %tx, align 4
  %9 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx15, i32 0, i64 1
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 0
  %10 = load i32, i32* %arrayidx17, align 4
  %11 = load i32, i32* %dx, align 4
  %mul18 = mul nsw i32 %10, %11
  %12 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx20, i32 0, i64 1
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx21, i32 0, i64 1
  %13 = load i32, i32* %arrayidx22, align 4
  %14 = load i32, i32* %dy, align 4
  %mul23 = mul nsw i32 %13, %14
  %add24 = add nsw i32 %mul18, %mul23
  store i32 %add24, i32* %ty, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i32, i32* %tx, align 4
  %mul25 = mul nsw i32 %15, 20
  %16 = load i32, i32* %ty, align 4
  %add26 = add nsw i32 %mul25, %16
  %17 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %17 to i64
  %18 = load i32, i32* %dy, align 4
  %add28 = add nsw i32 %18, 19
  %sub = sub nsw i32 %add28, 1
  %mul29 = mul nsw i32 %sub, 37
  %19 = load i32, i32* %dx, align 4
  %add30 = add nsw i32 %19, 19
  %sub31 = sub nsw i32 %add30, 1
  %add32 = add nsw i32 %mul29, %sub31
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx34, i32 0, i64 %idxprom27
  store i32 %add26, i32* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %20 = load i32, i32* %dx, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %dx, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %21 = load i32, i32* %dy, align 4
  %inc37 = add nsw i32 %21, 1
  store i32 %inc37, i32* %dy, align 4
  br label %for.cond.1

for.end.38:                                       ; preds = %for.cond.1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %22 = load i32, i32* %k, align 4
  %inc40 = add nsw i32 %22, 1
  store i32 %inc40, i32* %k, align 4
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
