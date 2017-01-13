; ModuleID = './MultiSource.Benchmarks.Prolangs-C/49.gnugo.findsavr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external global [19 x [19 x i8]], align 16
@mymove = external global i32, align 4
@l = external global [19 x [19 x i8]], align 16

; Function Attrs: nounwind uwtable
define i32 @findsaver(i32* %i, i32* %j, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %val.addr = alloca i32*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %minlib = alloca i32, align 4
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %tval = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %0, align 4
  %1 = load i32*, i32** %j.addr, align 8
  store i32 -1, i32* %1, align 4
  %2 = load i32*, i32** %val.addr, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %minlib, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %3 = load i32, i32* %minlib, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.23, %for.body
  %4 = load i32, i32* %m, align 4
  %cmp2 = icmp slt i32 %4, 19
  br i1 %cmp2, label %for.body.3, label %for.end.25

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %n, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %5 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %5, 19
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %n, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %m, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* @mymove, align 4
  %cmp9 = icmp eq i32 %conv, %9
  br i1 %cmp9, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.body.6
  %10 = load i32, i32* %n, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load i32, i32* %m, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx13, i32 0, i64 %idxprom11
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %13 = load i32, i32* %minlib, align 4
  %cmp16 = icmp eq i32 %conv15, %13
  br i1 %cmp16, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  call void @initmark()
  %14 = load i32, i32* %m, align 4
  %15 = load i32, i32* %n, align 4
  %16 = load i32, i32* %minlib, align 4
  %call = call i32 @findnextmove(i32 %14, i32 %15, i32* %ti, i32* %tj, i32* %tval, i32 %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %if.then
  %17 = load i32, i32* %tval, align 4
  %18 = load i32*, i32** %val.addr, align 8
  %19 = load i32, i32* %18, align 4
  %cmp19 = icmp sgt i32 %17, %19
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true.18
  %20 = load i32, i32* %tval, align 4
  %21 = load i32*, i32** %val.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %ti, align 4
  %23 = load i32*, i32** %i.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %tj, align 4
  %25 = load i32*, i32** %j.addr, align 8
  store i32 %24, i32* %25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %land.lhs.true.18, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %26 = load i32, i32* %n, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %27 = load i32, i32* %m, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %m, align 4
  br label %for.cond.1

for.end.25:                                       ; preds = %for.cond.1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.25
  %28 = load i32, i32* %minlib, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* %minlib, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %29 = load i32*, i32** %val.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp29 = icmp sgt i32 %30, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.end.28
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.31
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @initmark() #1

declare i32 @findnextmove(i32, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
