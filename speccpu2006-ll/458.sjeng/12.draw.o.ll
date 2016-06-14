; ModuleID = 'draw.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fifty = external global i32, align 4
@move_number = external global i32, align 4
@ply = external global i32, align 4
@hash = external global i32, align 4
@hash_history = external global [600 x i32], align 16

; Function Attrs: nounwind uwtable
define i32 @is_draw() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %repeats = alloca i32, align 4
  %end = alloca i32, align 4
  %start = alloca i32, align 4
  store i32 0, i32* %repeats, align 4
  %0 = load i32, i32* @fifty, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @move_number, align 4
  %2 = load i32, i32* @move_number, align 4
  %3 = load i32, i32* @ply, align 4
  %add = add nsw i32 %2, %3
  %sub = sub nsw i32 %add, 1
  %4 = load i32, i32* @fifty, align 4
  %sub1 = sub nsw i32 %sub, %4
  %cmp2 = icmp slt i32 %1, %sub1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* @move_number, align 4
  %6 = load i32, i32* @ply, align 4
  %add4 = add nsw i32 %5, %6
  %sub5 = sub nsw i32 %add4, 1
  %7 = load i32, i32* @fifty, align 4
  %sub6 = sub nsw i32 %sub5, %7
  store i32 %sub6, i32* %end, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* @move_number, align 4
  store i32 %8, i32* %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %9 = load i32, i32* @move_number, align 4
  %10 = load i32, i32* @ply, align 4
  %add7 = add nsw i32 %9, %10
  %sub8 = sub nsw i32 %add7, 3
  store i32 %sub8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %11, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %end, align 4
  %cmp10 = icmp sge i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load i32, i32* @hash, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %cmp11 = icmp eq i32 %15, %17
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %18 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %18, 2
  store i32 %sub14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %entry
  %19 = load i32, i32* @fifty, align 4
  %cmp16 = icmp sge i32 %19, 6
  br i1 %cmp16, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %if.end.15
  %20 = load i32, i32* @move_number, align 4
  %sub18 = sub nsw i32 %20, 1
  %21 = load i32, i32* @ply, align 4
  %rem = srem i32 %21, 2
  %sub19 = sub nsw i32 %sub18, %rem
  store i32 %sub19, i32* %start, align 4
  %22 = load i32, i32* @move_number, align 4
  %23 = load i32, i32* @ply, align 4
  %add20 = add nsw i32 %22, %23
  %sub21 = sub nsw i32 %add20, 1
  %24 = load i32, i32* @fifty, align 4
  %sub22 = sub nsw i32 %sub21, %24
  store i32 %sub22, i32* %end, align 4
  %25 = load i32, i32* %start, align 4
  store i32 %25, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.37, %if.then.17
  %26 = load i32, i32* %i, align 4
  %cmp24 = icmp sge i32 %26, 0
  br i1 %cmp24, label %land.rhs.25, label %land.end.27

land.rhs.25:                                      ; preds = %for.cond.23
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %end, align 4
  %cmp26 = icmp sge i32 %27, %28
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.25, %for.cond.23
  %29 = phi i1 [ false, %for.cond.23 ], [ %cmp26, %land.rhs.25 ]
  br i1 %29, label %for.body.28, label %for.end.39

for.body.28:                                      ; preds = %land.end.27
  %30 = load i32, i32* @hash, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom29
  %32 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %30, %32
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.28
  %33 = load i32, i32* %repeats, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %repeats, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.body.28
  %34 = load i32, i32* %repeats, align 4
  %cmp34 = icmp sge i32 %34, 2
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.33
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %35 = load i32, i32* %i, align 4
  %sub38 = sub nsw i32 %35, 2
  store i32 %sub38, i32* %i, align 4
  br label %for.cond.23

for.end.39:                                       ; preds = %land.end.27
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.35, %if.then.12
  %36 = load i32, i32* %retval
  ret i32 %36
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
