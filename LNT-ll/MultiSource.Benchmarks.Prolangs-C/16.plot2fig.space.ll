; ModuleID = './MultiSource.Benchmarks.Prolangs-C/16.plot2fig.space.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x_input_min = global double 0.000000e+00, align 8
@y_input_min = global double 0.000000e+00, align 8
@x_output_min = global double 6.000000e+01, align 8
@y_output_min = global double 6.600000e+02, align 8
@x_output_max = global double 5.400000e+02, align 8
@y_output_max = global double 1.800000e+02, align 8
@scaleup = global double 1.000000e+00, align 8
@x_scale = global double 1.000000e+00, align 8
@y_scale = global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @space(i32 %x0, i32 %y0, i32 %x1, i32 %y1) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  %0 = load i32, i32* %x0.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* @x_input_min, align 8
  %1 = load i32, i32* %y0.addr, align 4
  %conv1 = sitofp i32 %1 to double
  store double %conv1, double* @y_input_min, align 8
  %2 = load i32, i32* %x1.addr, align 4
  %3 = load i32, i32* %x0.addr, align 4
  %sub = sub nsw i32 %2, %3
  %conv2 = sitofp i32 %sub to double
  %4 = load double, double* @x_output_max, align 8
  %5 = load double, double* @x_output_min, align 8
  %sub3 = fsub double %4, %5
  %div = fdiv double %conv2, %sub3
  store double %div, double* @x_scale, align 8
  %6 = load i32, i32* %y1.addr, align 4
  %7 = load i32, i32* %y0.addr, align 4
  %sub4 = sub nsw i32 %6, %7
  %conv5 = sitofp i32 %sub4 to double
  %8 = load double, double* @y_output_max, align 8
  %9 = load double, double* @y_output_min, align 8
  %sub6 = fsub double %8, %9
  %div7 = fdiv double %conv5, %sub6
  store double %div7, double* @y_scale, align 8
  %10 = load double, double* @x_scale, align 8
  %call = call double @fabs(double %10) #2
  %11 = load double, double* @y_scale, align 8
  %call8 = call double @fabs(double %11) #2
  %cmp = fcmp ogt double %call, %call8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load double, double* @x_scale, align 8
  %call10 = call double @fabs(double %12) #2
  store double %call10, double* @scaleup, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load double, double* @y_scale, align 8
  %call11 = call double @fabs(double %13) #2
  store double %call11, double* @scaleup, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
