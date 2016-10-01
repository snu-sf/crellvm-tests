; ModuleID = './MultiSource.Benchmarks.TSVC/44.LoopRerolling-dbl.dummy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dummy(double* %a, double* %b, double* %c, double* %d, double* %e, [256 x double]* %aa, [256 x double]* %bb, [256 x double]* %cc, double %s) #0 {
entry:
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %c.addr = alloca double*, align 8
  %d.addr = alloca double*, align 8
  %e.addr = alloca double*, align 8
  %aa.addr = alloca [256 x double]*, align 8
  %bb.addr = alloca [256 x double]*, align 8
  %cc.addr = alloca [256 x double]*, align 8
  %s.addr = alloca double, align 8
  store double* %a, double** %a.addr, align 8
  store double* %b, double** %b.addr, align 8
  store double* %c, double** %c.addr, align 8
  store double* %d, double** %d.addr, align 8
  store double* %e, double** %e.addr, align 8
  store [256 x double]* %aa, [256 x double]** %aa.addr, align 8
  store [256 x double]* %bb, [256 x double]** %bb.addr, align 8
  store [256 x double]* %cc, [256 x double]** %cc.addr, align 8
  store double %s, double* %s.addr, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
