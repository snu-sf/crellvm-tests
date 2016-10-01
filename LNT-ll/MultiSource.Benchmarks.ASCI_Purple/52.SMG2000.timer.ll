; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/52.SMG2000.timer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @time_getWallclockSeconds() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define double @time_getCPUSeconds() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define double @time_get_wallclock_seconds_() #0 {
entry:
  %call = call double @time_getWallclockSeconds()
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @time_get_cpu_seconds_() #0 {
entry:
  %call = call double @time_getCPUSeconds()
  ret double %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
