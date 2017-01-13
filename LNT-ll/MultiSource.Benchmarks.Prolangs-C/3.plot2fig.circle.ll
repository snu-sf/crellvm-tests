; ModuleID = './MultiSource.Benchmarks.Prolangs-C/3.plot2fig.circle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @circle(i32 %x, i32 %y, i32 %r) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %r.addr, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %r.addr, align 4
  %add1 = add nsw i32 %5, %6
  %7 = load i32, i32* %y.addr, align 4
  %call = call i32 @arc(i32 %0, i32 %1, i32 %add, i32 %4, i32 %add1, i32 %7)
  ret i32 0
}

declare i32 @arc(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
