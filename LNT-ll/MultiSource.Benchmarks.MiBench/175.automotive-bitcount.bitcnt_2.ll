; ModuleID = './MultiSource.Benchmarks.MiBench/175.automotive-bitcount.bitcnt_2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @bitcount(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %and = and i64 %0, 2863311530
  %shr = ashr i64 %and, 1
  %1 = load i64, i64* %i.addr, align 8
  %and1 = and i64 %1, 1431655765
  %add = add nsw i64 %shr, %and1
  store i64 %add, i64* %i.addr, align 8
  %2 = load i64, i64* %i.addr, align 8
  %and2 = and i64 %2, 3435973836
  %shr3 = ashr i64 %and2, 2
  %3 = load i64, i64* %i.addr, align 8
  %and4 = and i64 %3, 858993459
  %add5 = add nsw i64 %shr3, %and4
  store i64 %add5, i64* %i.addr, align 8
  %4 = load i64, i64* %i.addr, align 8
  %and6 = and i64 %4, 4042322160
  %shr7 = ashr i64 %and6, 4
  %5 = load i64, i64* %i.addr, align 8
  %and8 = and i64 %5, 252645135
  %add9 = add nsw i64 %shr7, %and8
  store i64 %add9, i64* %i.addr, align 8
  %6 = load i64, i64* %i.addr, align 8
  %and10 = and i64 %6, 4278255360
  %shr11 = ashr i64 %and10, 8
  %7 = load i64, i64* %i.addr, align 8
  %and12 = and i64 %7, 16711935
  %add13 = add nsw i64 %shr11, %and12
  store i64 %add13, i64* %i.addr, align 8
  %8 = load i64, i64* %i.addr, align 8
  %and14 = and i64 %8, 4294901760
  %shr15 = ashr i64 %and14, 16
  %9 = load i64, i64* %i.addr, align 8
  %and16 = and i64 %9, 65535
  %add17 = add nsw i64 %shr15, %and16
  store i64 %add17, i64* %i.addr, align 8
  %10 = load i64, i64* %i.addr, align 8
  %conv = trunc i64 %10 to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
