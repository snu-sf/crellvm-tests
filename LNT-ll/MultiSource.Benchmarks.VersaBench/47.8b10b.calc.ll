; ModuleID = './MultiSource.Benchmarks.VersaBench/47.8b10b.calc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lookupTable5B = global [64 x i32] [i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 65760, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034, i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 655586, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034], align 16
@lookupTable3B = global [16 x i32] [i32 786440, i32 786436, i32 65545, i32 65548, i32 65553, i32 65556, i32 131096, i32 655388, i32 786440, i32 786436, i32 262153, i32 262156, i32 262161, i32 262164, i32 131096, i32 655373], align 16
@disparity0 = global i32 0, align 4
@disparity1 = global i32 1, align 4
@bigTable = common global [1024 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @calcSetup() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @calc(i32 %theWord, i32 %k) #0 {
entry:
  %theWord.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %index5 = alloca i32, align 4
  %index3 = alloca i32, align 4
  %lookup5 = alloca i32, align 4
  %lookup3 = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %theWord, i32* %theWord.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %theWord.addr, align 4
  %shr = lshr i32 %0, 3
  %and = and i32 %shr, 31
  %1 = load i32, i32* %k.addr, align 4
  %shl = shl i32 %1, 5
  %or = or i32 %and, %shl
  store i32 %or, i32* %index5, align 4
  %2 = load i32, i32* %theWord.addr, align 4
  %and1 = and i32 %2, 7
  %3 = load i32, i32* %k.addr, align 4
  %shl2 = shl i32 %3, 3
  %or3 = or i32 %and1, %shl2
  store i32 %or3, i32* %index3, align 4
  %4 = load i32, i32* %index5, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @lookupTable5B, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %lookup5, align 4
  %6 = load i32, i32* %index3, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* @lookupTable3B, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  store i32 %7, i32* %lookup3, align 4
  %8 = load i32, i32* %lookup5, align 4
  %shr6 = lshr i32 %8, 16
  %and7 = and i32 %shr6, 1
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %lookup5, align 4
  %and8 = and i32 %9, 994
  store i32 %and8, i32* %result, align 4
  %10 = load i32, i32* @disparity0, align 4
  store i32 %10, i32* @disparity1, align 4
  br label %if.end.22

if.else:                                          ; preds = %entry
  %11 = load i32, i32* @disparity0, align 4
  %12 = load i32, i32* %lookup5, align 4
  %shr9 = lshr i32 %12, 18
  %and10 = and i32 %shr9, 1
  %cmp = icmp eq i32 %11, %and10
  br i1 %cmp, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else
  %13 = load i32, i32* %lookup5, align 4
  %and12 = and i32 %13, 994
  store i32 %and12, i32* %result, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %14 = load i32, i32* %lookup5, align 4
  %and14 = and i32 %14, 994
  %xor = xor i32 %and14, 994
  store i32 %xor, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.11
  %15 = load i32, i32* %lookup5, align 4
  %shr15 = lshr i32 %15, 19
  %and16 = and i32 %shr15, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.end
  %16 = load i32, i32* @disparity0, align 4
  %xor19 = xor i32 %16, 1
  store i32 %xor19, i32* @disparity1, align 4
  br label %if.end.21

if.else.20:                                       ; preds = %if.end
  %17 = load i32, i32* @disparity0, align 4
  store i32 %17, i32* @disparity1, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %18 = load i32, i32* %lookup3, align 4
  %shr23 = lshr i32 %18, 16
  %and24 = and i32 %shr23, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.end.22
  %19 = load i32, i32* %lookup3, align 4
  %and27 = and i32 %19, 29
  %20 = load i32, i32* %result, align 4
  %or28 = or i32 %20, %and27
  store i32 %or28, i32* %result, align 4
  %21 = load i32, i32* @disparity1, align 4
  store i32 %21, i32* @disparity0, align 4
  br label %if.end.48

if.else.29:                                       ; preds = %if.end.22
  %22 = load i32, i32* @disparity1, align 4
  %23 = load i32, i32* %lookup3, align 4
  %shr30 = lshr i32 %23, 18
  %and31 = and i32 %shr30, 1
  %cmp32 = icmp eq i32 %22, %and31
  br i1 %cmp32, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %if.else.29
  %24 = load i32, i32* %lookup3, align 4
  %and34 = and i32 %24, 29
  %25 = load i32, i32* %result, align 4
  %or35 = or i32 %25, %and34
  store i32 %or35, i32* %result, align 4
  br label %if.end.40

if.else.36:                                       ; preds = %if.else.29
  %26 = load i32, i32* %lookup3, align 4
  %and37 = and i32 %26, 29
  %xor38 = xor i32 %and37, 29
  %27 = load i32, i32* %result, align 4
  %or39 = or i32 %27, %xor38
  store i32 %or39, i32* %result, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.36, %if.then.33
  %28 = load i32, i32* %lookup3, align 4
  %shr41 = lshr i32 %28, 19
  %and42 = and i32 %shr41, 1
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.40
  %29 = load i32, i32* @disparity1, align 4
  %xor45 = xor i32 %29, 1
  store i32 %xor45, i32* @disparity0, align 4
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.40
  %30 = load i32, i32* @disparity1, align 4
  store i32 %30, i32* @disparity0, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.26
  %31 = load i32, i32* %result, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @bigTableCalc(i32 %theWord) #0 {
entry:
  %theWord.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %theWord, i32* %theWord.addr, align 4
  %0 = load i32, i32* @disparity0, align 4
  %shl = shl i32 %0, 9
  %1 = load i32, i32* %theWord.addr, align 4
  %or = or i32 %shl, %1
  %idxprom = zext i32 %or to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @bigTable, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %result, align 4
  %3 = load i32, i32* %result, align 4
  %shr = lshr i32 %3, 16
  store i32 %shr, i32* @disparity0, align 4
  %4 = load i32, i32* %result, align 4
  %and = and i32 %4, 1023
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define void @resetDisparity() #0 {
entry:
  store i32 0, i32* @disparity0, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bigTableSetup() #0 {
entry:
  %counter = alloca i32, align 4
  %tempResult = alloca i32, align 4
  store i32 0, i32* %counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %counter, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %counter, align 4
  %shr = ashr i32 %1, 9
  store i32 %shr, i32* @disparity0, align 4
  %2 = load i32, i32* %counter, align 4
  %and = and i32 %2, 255
  %3 = load i32, i32* %counter, align 4
  %shr1 = ashr i32 %3, 8
  %and2 = and i32 %shr1, 1
  %call = call i32 @calc(i32 %and, i32 %and2)
  store i32 %call, i32* %tempResult, align 4
  %4 = load i32, i32* %tempResult, align 4
  %5 = load i32, i32* @disparity0, align 4
  %shl = shl i32 %5, 16
  %or = or i32 %4, %shl
  %6 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @bigTable, i32 0, i64 %idxprom
  store i32 %or, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %counter, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @resetDisparity()
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
