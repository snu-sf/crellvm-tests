; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/48.SMG2000.random.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Seed = internal global i32 13579, align 4

; Function Attrs: nounwind uwtable
define void @hypre_SeedRand(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %mul = mul nsw i32 2, %0
  %sub = sub nsw i32 %mul, 1
  %rem = srem i32 %sub, 1024
  store i32 %rem, i32* @Seed, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define double @hypre_Rand() #0 {
entry:
  %0 = load i32, i32* @Seed, align 4
  %mul = mul nsw i32 1664525, %0
  %rem = srem i32 %mul, 1024
  store i32 %rem, i32* @Seed, align 4
  %1 = load i32, i32* @Seed, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 1.024000e+03
  ret double %div
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
