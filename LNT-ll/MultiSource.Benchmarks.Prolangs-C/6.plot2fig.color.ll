; ModuleID = './MultiSource.Benchmarks.Prolangs-C/6.plot2fig.color.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fgcolor_red = global double 0.000000e+00, align 8
@fgcolor_green = global double 0.000000e+00, align 8
@fgcolor_blue = global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @color(i32 %red, i32 %green, i32 %blue) #0 {
entry:
  %red.addr = alloca i32, align 4
  %green.addr = alloca i32, align 4
  %blue.addr = alloca i32, align 4
  store i32 %red, i32* %red.addr, align 4
  store i32 %green, i32* %green.addr, align 4
  store i32 %blue, i32* %blue.addr, align 4
  %0 = load i32, i32* %red.addr, align 4
  %div = sdiv i32 %0, 65535
  %conv = sitofp i32 %div to double
  store double %conv, double* @fgcolor_red, align 8
  %1 = load i32, i32* %green.addr, align 4
  %div1 = sdiv i32 %1, 65535
  %conv2 = sitofp i32 %div1 to double
  store double %conv2, double* @fgcolor_green, align 8
  %2 = load i32, i32* %blue.addr, align 4
  %div3 = sdiv i32 %2, 65535
  %conv4 = sitofp i32 %div3 to double
  store double %conv4, double* @fgcolor_blue, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
