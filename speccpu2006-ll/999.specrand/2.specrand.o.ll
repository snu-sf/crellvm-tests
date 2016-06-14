; ModuleID = 'specrand.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seedi = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @spec_srand(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  store i32 %0, i32* @seedi, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define double @spec_rand() #0 {
entry:
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %test = alloca i32, align 4
  %0 = load i32, i32* @seedi, align 4
  %conv = sext i32 %0 to i64
  %div = sdiv i64 %conv, 127773
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %hi, align 4
  %1 = load i32, i32* @seedi, align 4
  %conv2 = sext i32 %1 to i64
  %rem = srem i64 %conv2, 127773
  %conv3 = trunc i64 %rem to i32
  store i32 %conv3, i32* %lo, align 4
  %2 = load i32, i32* %lo, align 4
  %conv4 = sext i32 %2 to i64
  %mul = mul nsw i64 16807, %conv4
  %3 = load i32, i32* %hi, align 4
  %conv5 = sext i32 %3 to i64
  %mul6 = mul nsw i64 2836, %conv5
  %sub = sub nsw i64 %mul, %mul6
  %conv7 = trunc i64 %sub to i32
  store i32 %conv7, i32* %test, align 4
  %4 = load i32, i32* %test, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %test, align 4
  store i32 %5, i32* @seedi, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %test, align 4
  %conv9 = sext i32 %6 to i64
  %add = add nsw i64 %conv9, 2147483647
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, i32* @seedi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* @seedi, align 4
  %conv11 = sitofp i32 %7 to double
  %div12 = fdiv double %conv11, 0x41DFFFFFFFC00000
  ret double %div12
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
