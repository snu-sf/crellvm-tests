; ModuleID = './MultiSource.Benchmarks.Fhourstones/3.play.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plycnt = common global i32 0, align 4
@dias = common global [19 x i32] zeroinitializer, align 16
@columns = common global [128 x i32] zeroinitializer, align 16
@height = common global [128 x i32] zeroinitializer, align 16
@rows = common global [8 x i32] zeroinitializer, align 16
@colthr = common global [128 x i32] zeroinitializer, align 16
@colwon = common global [128 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = common global [44 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @reset() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @plycnt, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.10, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 8
  br i1 %cmp2, label %for.body.3, label %for.end.12

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i32 0, i64 %idxprom4
  store i32 1, i32* %arrayidx5, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i32 0, i64 %idxprom6
  store i32 1, i32* %arrayidx7, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.3
  %7 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %7, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.1

for.end.12:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @play_init() #0 {
entry:
  %i = alloca i32, align 4
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 7
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i32 0, i64 %idxprom1
  store i32 2, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %3, 8
  store i32 %add3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 16, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, 128
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %5 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %5, 15
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i32 0, i64 %idxprom8
  store i32 1, i32* %arrayidx9, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i32 0, i64 %idxprom10
  store i32 1, i32* %arrayidx11, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.6
  %7 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %7, 16
  store i32 %add13, i32* %i, align 4
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  call void @reset()
  ret void
}

; Function Attrs: nounwind uwtable
define void @printMoves() #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @plycnt, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @wins(i32 %n, i32 %h, i32 %sidemask) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %sidemask.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %sidemask, i32* %sidemask.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 2, %0
  %1 = load i32, i32* %sidemask.addr, align 4
  %shl = shl i32 %1, %mul
  store i32 %shl, i32* %sidemask.addr, align 4
  %2 = load i32, i32* %h.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %sidemask.addr, align 4
  %or = or i32 %3, %4
  store i32 %or, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %x, align 4
  %shl1 = shl i32 %6, 2
  %and = and i32 %5, %shl1
  store i32 %and, i32* %y, align 4
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %y, align 4
  %shl2 = shl i32 %8, 4
  %and3 = and i32 %7, %shl2
  %cmp = icmp ne i32 %and3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 5, %9
  %10 = load i32, i32* %h.addr, align 4
  %add4 = add nsw i32 %add, %10
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i32 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %12 = load i32, i32* %sidemask.addr, align 4
  %or7 = or i32 %11, %12
  store i32 %or7, i32* %x, align 4
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %x, align 4
  %shl8 = shl i32 %14, 2
  %and9 = and i32 %13, %shl8
  store i32 %and9, i32* %y, align 4
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %y, align 4
  %shl10 = shl i32 %16, 4
  %and11 = and i32 %15, %shl10
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %17 = load i32, i32* %n.addr, align 4
  %add15 = add nsw i32 5, %17
  %18 = load i32, i32* %h.addr, align 4
  %sub = sub nsw i32 %add15, %18
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i32 0, i64 %idxprom16
  %19 = load i32, i32* %arrayidx17, align 4
  %20 = load i32, i32* %sidemask.addr, align 4
  %or18 = or i32 %19, %20
  store i32 %or18, i32* %x, align 4
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %x, align 4
  %shl19 = shl i32 %22, 2
  %and20 = and i32 %21, %shl19
  store i32 %and20, i32* %y, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %y, align 4
  %shl21 = shl i32 %24, 4
  %and22 = and i32 %23, %shl21
  %cmp23 = icmp ne i32 %and22, 0
  %conv = zext i1 %cmp23 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @backmove() #0 {
entry:
  %mask = alloca i32, align 4
  %d = alloca i32, align 4
  %h = alloca i32, align 4
  %n = alloca i32, align 4
  %side = alloca i32, align 4
  %0 = load i32, i32* @plycnt, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %side, align 4
  %1 = load i32, i32* @plycnt, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @plycnt, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %dec3 = add nsw i32 %4, -1
  store i32 %dec3, i32* %arrayidx2, align 4
  store i32 %dec3, i32* %h, align 4
  %5 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %shr = ashr i32 %6, 1
  store i32 %shr, i32* %arrayidx5, align 4
  %7 = load i32, i32* %n, align 4
  %mul = mul nsw i32 2, %7
  %8 = load i32, i32* %side, align 4
  %add = add nsw i32 %mul, %8
  %shl = shl i32 1, %add
  %neg = xor i32 %shl, -1
  store i32 %neg, i32* %mask, align 4
  %9 = load i32, i32* %mask, align 4
  %10 = load i32, i32* %h, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %11, %9
  store i32 %and8, i32* %arrayidx7, align 4
  %12 = load i32, i32* %mask, align 4
  %13 = load i32, i32* %n, align 4
  %add9 = add nsw i32 5, %13
  %14 = load i32, i32* %h, align 4
  %add10 = add nsw i32 %add9, %14
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i32 0, i64 %idxprom11
  %15 = load i32, i32* %arrayidx12, align 4
  %and13 = and i32 %15, %12
  store i32 %and13, i32* %arrayidx12, align 4
  %16 = load i32, i32* %mask, align 4
  %17 = load i32, i32* %n, align 4
  %add14 = add nsw i32 5, %17
  %18 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %add14, %18
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i32 0, i64 %idxprom15
  %19 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %19, %16
  store i32 %and17, i32* %arrayidx16, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @makemove(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %d = alloca i32, align 4
  %h = alloca i32, align 4
  %side = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* @plycnt, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @plycnt, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32, i32* @plycnt, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %side, align 4
  %3 = load i32, i32* %n.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, i32* %arrayidx2, align 4
  store i32 %4, i32* %h, align 4
  %5 = load i32, i32* %n.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %shl = shl i32 %6, 1
  %7 = load i32, i32* %side, align 4
  %add = add nsw i32 %shl, %7
  %8 = load i32, i32* %n.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i32 0, i64 %idxprom6
  store i32 %add, i32* %arrayidx7, align 4
  %9 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 2, %9
  %10 = load i32, i32* %side, align 4
  %add8 = add nsw i32 %mul, %10
  %shl9 = shl i32 1, %add8
  store i32 %shl9, i32* %mask, align 4
  %11 = load i32, i32* %mask, align 4
  %12 = load i32, i32* %h, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i32 0, i64 %idxprom10
  %13 = load i32, i32* %arrayidx11, align 4
  %or = or i32 %13, %11
  store i32 %or, i32* %arrayidx11, align 4
  %14 = load i32, i32* %mask, align 4
  %15 = load i32, i32* %n.addr, align 4
  %add12 = add nsw i32 5, %15
  %16 = load i32, i32* %h, align 4
  %add13 = add nsw i32 %add12, %16
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i32 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %or16 = or i32 %17, %14
  store i32 %or16, i32* %arrayidx15, align 4
  %18 = load i32, i32* %mask, align 4
  %19 = load i32, i32* %n.addr, align 4
  %add17 = add nsw i32 5, %19
  %20 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %add17, %20
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i32 0, i64 %idxprom18
  %21 = load i32, i32* %arrayidx19, align 4
  %or20 = or i32 %21, %18
  store i32 %or20, i32* %arrayidx19, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
