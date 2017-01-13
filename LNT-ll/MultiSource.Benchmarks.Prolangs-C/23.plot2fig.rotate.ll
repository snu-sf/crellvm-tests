; ModuleID = './MultiSource.Benchmarks.Prolangs-C/23.plot2fig.rotate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_rotation = global float 0.000000e+00, align 4

; Function Attrs: nounwind uwtable
define i32 @rotate(i32 %w, i32 %h, i32 %angle) #0 {
entry:
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %angle.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %angle, i32* %angle.addr, align 4
  %0 = load i32, i32* %angle.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  %conv1 = fptrunc double %div to float
  store float %conv1, float* @text_rotation, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
