; ModuleID = './MultiSource.Benchmarks.Olden/1.health.poisson.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define float @my_rand(i64 %idum) #0 {
entry:
  %idum.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %answer = alloca float, align 4
  store i64 %idum, i64* %idum.addr, align 8
  %0 = load i64, i64* %idum.addr, align 8
  %xor = xor i64 %0, 123459876
  store i64 %xor, i64* %idum.addr, align 8
  %1 = load i64, i64* %idum.addr, align 8
  %div = sdiv i64 %1, 127773
  store i64 %div, i64* %k, align 8
  %2 = load i64, i64* %idum.addr, align 8
  %3 = load i64, i64* %k, align 8
  %mul = mul nsw i64 %3, 127773
  %sub = sub nsw i64 %2, %mul
  %mul1 = mul nsw i64 16807, %sub
  %4 = load i64, i64* %k, align 8
  %mul2 = mul nsw i64 2836, %4
  %sub3 = sub nsw i64 %mul1, %mul2
  store i64 %sub3, i64* %idum.addr, align 8
  %5 = load i64, i64* %idum.addr, align 8
  %xor4 = xor i64 %5, 123459876
  store i64 %xor4, i64* %idum.addr, align 8
  %6 = load i64, i64* %idum.addr, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %idum.addr, align 8
  %add = add nsw i64 %7, 2147483647
  store i64 %add, i64* %idum.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %idum.addr, align 8
  %conv = sitofp i64 %8 to double
  %mul5 = fmul double 0x3E00000000200000, %conv
  %conv6 = fptrunc double %mul5 to float
  store float %conv6, float* %answer, align 4
  %9 = load float, float* %answer, align 4
  ret float %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
