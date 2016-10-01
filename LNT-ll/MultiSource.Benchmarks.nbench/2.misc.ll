; ModuleID = './MultiSource.Benchmarks.nbench/2.misc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randnum.randw = internal global [2 x i32] [i32 13, i32 117], align 4

; Function Attrs: nounwind uwtable
define i32 @randwc(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  %call = call i32 @randnum(i32 0)
  %0 = load i32, i32* %num.addr, align 4
  %rem = srem i32 %call, %0
  ret i32 %rem
}

; Function Attrs: nounwind uwtable
define i32 @randnum(i32 %lngval) #0 {
entry:
  %lngval.addr = alloca i32, align 4
  %interm = alloca i32, align 4
  store i32 %lngval, i32* %lngval.addr, align 4
  %0 = load i32, i32* %lngval.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 13, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i32 0, i64 0), align 4
  store i32 117, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i32 0, i64 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i32 0, i64 0), align 4
  %mul = mul nsw i32 %1, 254754
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i32 0, i64 1), align 4
  %mul1 = mul nsw i32 %2, 529562
  %add = add nsw i32 %mul, %mul1
  %rem = srem i32 %add, 999563
  store i32 %rem, i32* %interm, align 4
  %3 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i32 0, i64 0), align 4
  store i32 %3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i32 0, i64 1), align 4
  %4 = load i32, i32* %interm, align 4
  store i32 %4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i32 0, i64 0), align 4
  %5 = load i32, i32* %interm, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @abs_randwc(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %call = call i32 @randwc(i32 %0)
  store i32 %call, i32* %temp, align 4
  %1 = load i32, i32* %temp, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %temp, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %temp, align 4
  ret i32 %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
