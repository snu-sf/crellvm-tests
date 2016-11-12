; ModuleID = './lib/binary-io.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: inlinehint nounwind uwtable
define i32 @set_binary_mode(i32 %fd, i32 %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %mode.addr, align 4
  ret i32 0
}

attributes #0 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
