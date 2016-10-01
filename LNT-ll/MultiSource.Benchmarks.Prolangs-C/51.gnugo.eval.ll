; ModuleID = './MultiSource.Benchmarks.Prolangs-C/51.gnugo.eval.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external global [19 x [19 x i8]], align 16
@lib = external global i32, align 4
@l = external global [19 x [19 x i8]], align 16

; Function Attrs: nounwind uwtable
define void @eval(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 19
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %color.addr, align 4
  %cmp6 = icmp eq i32 %conv, %5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i32 0, i32* @lib, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %color.addr, align 4
  call void @countlib(i32 %6, i32 %7, i32 %8)
  %9 = load i32, i32* @lib, align 4
  %conv8 = trunc i32 %9 to i8
  %10 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx11, i32 0, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

declare void @countlib(i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
