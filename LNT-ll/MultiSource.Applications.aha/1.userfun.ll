; ModuleID = './MultiSource.Applications.aha/1.userfun.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @userfun(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %and = and i32 %0, -4
  %1 = load i32, i32* %x.addr, align 4
  %and1 = and i32 %1, 1
  %shl = shl i32 %and1, 1
  %or = or i32 %and, %shl
  %2 = load i32, i32* %x.addr, align 4
  %and2 = and i32 %2, 2
  %shr = ashr i32 %and2, 1
  %or3 = or i32 %or, %shr
  ret i32 %or3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
