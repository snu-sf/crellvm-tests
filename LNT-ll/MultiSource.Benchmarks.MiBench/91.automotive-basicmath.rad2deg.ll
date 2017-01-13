; ModuleID = './MultiSource.Benchmarks.MiBench/91.automotive-basicmath.rad2deg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @rad2deg(double %rad) #0 {
entry:
  %rad.addr = alloca double, align 8
  store double %rad, double* %rad.addr, align 8
  %0 = load double, double* %rad.addr, align 8
  %mul = fmul double 1.800000e+02, %0
  %call = call double @atan(double 1.000000e+00) #2
  %mul1 = fmul double 4.000000e+00, %call
  %div = fdiv double %mul, %mul1
  ret double %div
}

; Function Attrs: nounwind
declare double @atan(double) #1

; Function Attrs: nounwind uwtable
define double @deg2rad(double %deg) #0 {
entry:
  %deg.addr = alloca double, align 8
  store double %deg, double* %deg.addr, align 8
  %call = call double @atan(double 1.000000e+00) #2
  %mul = fmul double 4.000000e+00, %call
  %0 = load double, double* %deg.addr, align 8
  %mul1 = fmul double %mul, %0
  %div = fdiv double %mul1, 1.800000e+02
  ret double %div
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
