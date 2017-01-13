; ModuleID = './MultiSource.Benchmarks.Prolangs-C/40.gnugo.openregn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external global [19 x [19 x i8]], align 16

; Function Attrs: nounwind uwtable
define i32 @openregion(i32 %i1, i32 %j1, i32 %i2, i32 %j2) #0 {
entry:
  %retval = alloca i32, align 4
  %i1.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %j2.addr = alloca i32, align 4
  %minx = alloca i32, align 4
  %maxx = alloca i32, align 4
  %miny = alloca i32, align 4
  %maxy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  store i32 %j2, i32* %j2.addr, align 4
  %0 = load i32, i32* %i1.addr, align 4
  %1 = load i32, i32* %i2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i1.addr, align 4
  store i32 %2, i32* %miny, align 4
  %3 = load i32, i32* %i2.addr, align 4
  store i32 %3, i32* %maxy, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %i2.addr, align 4
  store i32 %4, i32* %miny, align 4
  %5 = load i32, i32* %i1.addr, align 4
  store i32 %5, i32* %maxy, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %j1.addr, align 4
  %7 = load i32, i32* %j2.addr, align 4
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %j1.addr, align 4
  store i32 %8, i32* %minx, align 4
  %9 = load i32, i32* %j2.addr, align 4
  store i32 %9, i32* %maxx, align 4
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  %10 = load i32, i32* %j2.addr, align 4
  store i32 %10, i32* %minx, align 4
  %11 = load i32, i32* %j1.addr, align 4
  store i32 %11, i32* %maxx, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %12 = load i32, i32* %miny, align 4
  store i32 %12, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.end.4
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %maxy, align 4
  %cmp5 = icmp sle i32 %13, %14
  br i1 %cmp5, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %minx, align 4
  store i32 %15, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %maxx, align 4
  %cmp7 = icmp sle i32 %16, %17
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i32, i32* %x, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32, i32* %y, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %20 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.8
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %21 = load i32, i32* %x, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %22 = load i32, i32* %y, align 4
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, i32* %y, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %if.then.13
  %23 = load i32, i32* %retval
  ret i32 %23
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
