; ModuleID = './MultiSource.Benchmarks.Prolangs-C/39.gnugo.suicide.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lib = external global i32, align 4
@umove = external global i32, align 4
@p = external global [19 x [19 x i8]], align 16
@mymove = external global i32, align 4
@l = external global [19 x [19 x i8]], align 16
@uik = external global i32, align 4
@ujk = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @suicide(i32 %i, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* @lib, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %2 = load i32, i32* @umove, align 4
  call void @countlib(i32 %0, i32 %1, i32 %2)
  %3 = load i32, i32* @lib, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else.40

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @umove, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx2, align 1
  %7 = load i32, i32* @mymove, align 4
  call void @eval(i32 %7)
  store i32 0, i32* %k, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then
  %8 = load i32, i32* %m, align 4
  %cmp3 = icmp slt i32 %8, 19
  br i1 %cmp3, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %n, align 4
  %cmp6 = icmp slt i32 %9, 19
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %10 = load i32, i32* %n, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i32, i32* %m, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx11, i32 0, i64 %idxprom9
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %13 = load i32, i32* @mymove, align 4
  %cmp14 = icmp eq i32 %conv13, %13
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.8
  %14 = load i32, i32* %n, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i32, i32* %m, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx18, i32 0, i64 %idxprom16
  %16 = load i8, i8* %arrayidx19, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %n, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %n, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %19 = load i32, i32* %m, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %m, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %20 = load i32, i32* %k, align 4
  %cmp25 = icmp eq i32 %20, 0
  br i1 %cmp25, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.24
  %21 = load i32, i32* %k, align 4
  %cmp27 = icmp eq i32 %21, 1
  br i1 %cmp27, label %land.lhs.true.29, label %if.else

land.lhs.true.29:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* %i.addr, align 4
  %23 = load i32, i32* @uik, align 4
  %cmp30 = icmp eq i32 %22, %23
  br i1 %cmp30, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %24 = load i32, i32* %j.addr, align 4
  %25 = load i32, i32* @ujk, align 4
  %cmp33 = icmp eq i32 %24, %25
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %land.lhs.true.32, %for.end.24
  %26 = load i32, i32* %j.addr, align 4
  %idxprom36 = sext i32 %26 to i64
  %27 = load i32, i32* %i.addr, align 4
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx38, i32 0, i64 %idxprom36
  store i8 0, i8* %arrayidx39, align 1
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.32, %land.lhs.true.29, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.else.40:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.40, %if.else, %if.then.35
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @countlib(i32, i32, i32) #1

declare void @eval(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
