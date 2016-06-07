; ModuleID = 'gaussrand.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

@gaussian_rand_no.iset = internal global i32 0, align 4
@gaussian_rand_no.gset = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define double @gaussian_rand_no(%struct.double_prn* %prn_pt) #0 {
entry:
  %retval = alloca double, align 8
  %prn_pt.addr = alloca %struct.double_prn*, align 8
  %fac = alloca double, align 8
  %r = alloca double, align 8
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  store %struct.double_prn* %prn_pt, %struct.double_prn** %prn_pt.addr, align 8
  %0 = load i32, i32* @gaussian_rand_no.iset, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call = call double @myrand(%struct.double_prn* %1)
  %mul = fmul double 2.000000e+00, %call
  %sub = fsub double %mul, 1.000000e+00
  store double %sub, double* %v1, align 8
  %2 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %call1 = call double @myrand(%struct.double_prn* %2)
  %mul2 = fmul double 2.000000e+00, %call1
  %sub3 = fsub double %mul2, 1.000000e+00
  store double %sub3, double* %v2, align 8
  %3 = load double, double* %v1, align 8
  %4 = load double, double* %v1, align 8
  %mul4 = fmul double %3, %4
  %5 = load double, double* %v2, align 8
  %6 = load double, double* %v2, align 8
  %mul5 = fmul double %5, %6
  %add = fadd double %mul4, %mul5
  store double %add, double* %r, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load double, double* %r, align 8
  %cmp6 = fcmp oge double %7, 1.000000e+00
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load double, double* %r, align 8
  %call7 = call double @log(double %8) #3
  %sub8 = fsub double -0.000000e+00, %call7
  %9 = load double, double* %r, align 8
  %div = fdiv double %sub8, %9
  %call9 = call double @sqrt(double %div) #3
  store double %call9, double* %fac, align 8
  %10 = load double, double* %v1, align 8
  %11 = load double, double* %fac, align 8
  %mul10 = fmul double %10, %11
  store double %mul10, double* @gaussian_rand_no.gset, align 8
  store i32 1, i32* @gaussian_rand_no.iset, align 4
  %12 = load double, double* %v2, align 8
  %13 = load double, double* %fac, align 8
  %mul11 = fmul double %12, %13
  store double %mul11, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* @gaussian_rand_no.iset, align 4
  %14 = load double, double* @gaussian_rand_no.gset, align 8
  store double %14, double* %retval
  br label %return

return:                                           ; preds = %if.else, %do.end
  %15 = load double, double* %retval
  ret double %15
}

declare double @myrand(%struct.double_prn*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
