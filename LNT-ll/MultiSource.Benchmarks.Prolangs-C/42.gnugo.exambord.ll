; ModuleID = './MultiSource.Benchmarks.Prolangs-C/42.gnugo.exambord.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mymove = external global i32, align 4
@mik = external global i32, align 4
@mjk = external global i32, align 4
@uik = external global i32, align 4
@ujk = external global i32, align 4
@p = external global [19 x [19 x i8]], align 16
@l = external global [19 x [19 x i8]], align 16
@mk = external global i32, align 4
@uk = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @examboard(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  call void @eval(i32 %0)
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* @mymove, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %3, 19
  br i1 %cmp1, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %4, 19
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %conv, %8
  br i1 %cmp7, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body.4
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx11, i32 0, i64 %idxprom9
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx19, i32 0, i64 %idxprom17
  store i8 0, i8* %arrayidx20, align 1
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* @mymove, align 4
  %cmp21 = icmp eq i32 %14, %15
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.then.16
  %16 = load i32, i32* %i, align 4
  store i32 %16, i32* @mik, align 4
  %17 = load i32, i32* %j, align 4
  store i32 %17, i32* @mjk, align 4
  %18 = load i32, i32* @mk, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @mk, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %if.then.16
  %19 = load i32, i32* %i, align 4
  store i32 %19, i32* @uik, align 4
  %20 = load i32, i32* %j, align 4
  store i32 %20, i32* @ujk, align 4
  %21 = load i32, i32* @uk, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* @uk, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  %22 = load i32, i32* %n, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, i32* %n, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.26, %land.lhs.true, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %23 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %25 = load i32, i32* %color.addr, align 4
  %26 = load i32, i32* @mymove, align 4
  %cmp33 = icmp eq i32 %25, %26
  br i1 %cmp33, label %land.lhs.true.35, label %if.else.39

land.lhs.true.35:                                 ; preds = %for.end.32
  %27 = load i32, i32* %n, align 4
  %cmp36 = icmp sgt i32 %27, 1
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.35
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %if.end.44

if.else.39:                                       ; preds = %land.lhs.true.35, %for.end.32
  %28 = load i32, i32* %n, align 4
  %cmp40 = icmp sgt i32 %28, 1
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else.39
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.else.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.38
  ret void
}

declare void @eval(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
