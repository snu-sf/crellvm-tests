; ModuleID = './MultiSource.Benchmarks.Fhourstones/1.time.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@millisecs.Time = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define i64 @millisecs() #0 {
entry:
  %0 = load i64, i64* @millisecs.Time, align 8
  %inc = add nsw i64 %0, 1
  store i64 %inc, i64* @millisecs.Time, align 8
  ret i64 %inc
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
