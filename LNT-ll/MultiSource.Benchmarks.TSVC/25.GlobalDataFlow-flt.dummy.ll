; ModuleID = './MultiSource.Benchmarks.TSVC/25.GlobalDataFlow-flt.dummy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dummy(float* %a, float* %b, float* %c, float* %d, float* %e, [256 x float]* %aa, [256 x float]* %bb, [256 x float]* %cc, float %s) #0 {
entry:
  %a.addr = alloca float*, align 8
  %b.addr = alloca float*, align 8
  %c.addr = alloca float*, align 8
  %d.addr = alloca float*, align 8
  %e.addr = alloca float*, align 8
  %aa.addr = alloca [256 x float]*, align 8
  %bb.addr = alloca [256 x float]*, align 8
  %cc.addr = alloca [256 x float]*, align 8
  %s.addr = alloca float, align 4
  store float* %a, float** %a.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %c, float** %c.addr, align 8
  store float* %d, float** %d.addr, align 8
  store float* %e, float** %e.addr, align 8
  store [256 x float]* %aa, [256 x float]** %aa.addr, align 8
  store [256 x float]* %bb, [256 x float]** %bb.addr, align 8
  store [256 x float]* %cc, [256 x float]** %cc.addr, align 8
  store float %s, float* %s.addr, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
