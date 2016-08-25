; ModuleID = './_math.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @_Py_acosh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %t45 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__isnanf(float %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__isnan(double %1) #3
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #3
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* %x.addr, align 8
  %add = fadd double %3, %4
  store double %add, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %5 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %5, 1.000000e+00
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %call10 = call i32* @__errno_location() #3
  store i32 33, i32* %call10, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load double, double* %x.addr, align 8
  %cmp11 = fcmp oge double %6, 0x41B0000000000000
  br i1 %cmp11, label %if.then.13, label %if.else.31

if.then.13:                                       ; preds = %if.else
  br i1 false, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %if.then.13
  %7 = load double, double* %x.addr, align 8
  %conv15 = fptrunc double %7 to float
  %call16 = call i32 @__isinff(float %conv15) #3
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.26, label %if.else.28

cond.false.18:                                    ; preds = %if.then.13
  br i1 true, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.false.18
  %8 = load double, double* %x.addr, align 8
  %call20 = call i32 @__isinf(double %8) #3
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.26, label %if.else.28

cond.false.22:                                    ; preds = %cond.false.18
  %9 = load double, double* %x.addr, align 8
  %conv23 = fpext double %9 to x86_fp80
  %call24 = call i32 @__isinfl(x86_fp80 %conv23) #3
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true.14
  %10 = load double, double* %x.addr, align 8
  %11 = load double, double* %x.addr, align 8
  %add27 = fadd double %10, %11
  store double %add27, double* %retval
  br label %return

if.else.28:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true.14
  %12 = load double, double* %x.addr, align 8
  %call29 = call double @log(double %12) #4
  %add30 = fadd double %call29, 0x3FE62E42FEFA39EF
  store double %add30, double* %retval
  br label %return

if.else.31:                                       ; preds = %if.else
  %13 = load double, double* %x.addr, align 8
  %cmp32 = fcmp oeq double %13, 1.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.31
  store double 0.000000e+00, double* %retval
  br label %return

if.else.35:                                       ; preds = %if.else.31
  %14 = load double, double* %x.addr, align 8
  %cmp36 = fcmp ogt double %14, 2.000000e+00
  br i1 %cmp36, label %if.then.38, label %if.else.44

if.then.38:                                       ; preds = %if.else.35
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %x.addr, align 8
  %mul = fmul double %15, %16
  store double %mul, double* %t, align 8
  %17 = load double, double* %x.addr, align 8
  %mul39 = fmul double 2.000000e+00, %17
  %18 = load double, double* %x.addr, align 8
  %19 = load double, double* %t, align 8
  %sub = fsub double %19, 1.000000e+00
  %call40 = call double @sqrt(double %sub) #4
  %add41 = fadd double %18, %call40
  %div = fdiv double 1.000000e+00, %add41
  %sub42 = fsub double %mul39, %div
  %call43 = call double @log(double %sub42) #4
  store double %call43, double* %retval
  br label %return

if.else.44:                                       ; preds = %if.else.35
  %20 = load double, double* %x.addr, align 8
  %sub46 = fsub double %20, 1.000000e+00
  store double %sub46, double* %t45, align 8
  %21 = load double, double* %t45, align 8
  %22 = load double, double* %t45, align 8
  %mul47 = fmul double 2.000000e+00, %22
  %23 = load double, double* %t45, align 8
  %24 = load double, double* %t45, align 8
  %mul48 = fmul double %23, %24
  %add49 = fadd double %mul47, %mul48
  %call50 = call double @sqrt(double %add49) #4
  %add51 = fadd double %21, %call50
  %call52 = call double @_Py_log1p(double %add51)
  store double %call52, double* %retval
  br label %return

return:                                           ; preds = %if.else.44, %if.then.38, %if.then.34, %if.else.28, %if.then.26, %if.then.9, %if.then
  %25 = load double, double* %retval
  ret double %25
}

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #1

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #1

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #1

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #1

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #1

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define double @_Py_log1p(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  store double %1, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  %call = call double @log1p(double %2) #4
  store double %call, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %retval
  ret double %3
}

; Function Attrs: nounwind uwtable
define double @_Py_asinh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %w = alloca double, align 8
  %absx = alloca double, align 8
  %t = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %call = call double @fabs(double %0) #3
  store double %call, double* %absx, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %conv = fptrunc double %1 to float
  %call1 = call i32 @__isnanf(float %conv) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.2, label %cond.false.5

cond.true.2:                                      ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %call3 = call i32 @__isnan(double %2) #3
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false

cond.false.5:                                     ; preds = %cond.false
  %3 = load double, double* %x.addr, align 8
  %conv6 = fpext double %3 to x86_fp80
  %call7 = call i32 @__isnanl(x86_fp80 %conv6) #3
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.5, %cond.true.2, %cond.true
  br i1 false, label %cond.true.9, label %cond.false.13

cond.true.9:                                      ; preds = %lor.lhs.false
  %4 = load double, double* %x.addr, align 8
  %conv10 = fptrunc double %4 to float
  %call11 = call i32 @__isinff(float %conv10) #3
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %if.end

cond.false.13:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.14, label %cond.false.17

cond.true.14:                                     ; preds = %cond.false.13
  %5 = load double, double* %x.addr, align 8
  %call15 = call i32 @__isinf(double %5) #3
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %if.end

cond.false.17:                                    ; preds = %cond.false.13
  %6 = load double, double* %x.addr, align 8
  %conv18 = fpext double %6 to x86_fp80
  %call19 = call i32 @__isinfl(x86_fp80 %conv18) #3
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.17, %cond.true.14, %cond.true.9, %cond.false.5, %cond.true.2, %cond.true
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %x.addr, align 8
  %add = fadd double %7, %8
  store double %add, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.17, %cond.true.14, %cond.true.9
  %9 = load double, double* %absx, align 8
  %cmp = fcmp olt double %9, 0x3E30000000000000
  br i1 %cmp, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end
  %10 = load double, double* %x.addr, align 8
  store double %10, double* %retval
  br label %return

if.end.23:                                        ; preds = %if.end
  %11 = load double, double* %absx, align 8
  %cmp24 = fcmp ogt double %11, 0x41B0000000000000
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.23
  %12 = load double, double* %absx, align 8
  %call27 = call double @log(double %12) #4
  %add28 = fadd double %call27, 0x3FE62E42FEFA39EF
  store double %add28, double* %w, align 8
  br label %if.end.47

if.else:                                          ; preds = %if.end.23
  %13 = load double, double* %absx, align 8
  %cmp29 = fcmp ogt double %13, 2.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.else.38

if.then.31:                                       ; preds = %if.else
  %14 = load double, double* %absx, align 8
  %mul = fmul double 2.000000e+00, %14
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %x.addr, align 8
  %mul32 = fmul double %15, %16
  %add33 = fadd double %mul32, 1.000000e+00
  %call34 = call double @sqrt(double %add33) #4
  %17 = load double, double* %absx, align 8
  %add35 = fadd double %call34, %17
  %div = fdiv double 1.000000e+00, %add35
  %add36 = fadd double %mul, %div
  %call37 = call double @log(double %add36) #4
  store double %call37, double* %w, align 8
  br label %if.end.46

if.else.38:                                       ; preds = %if.else
  %18 = load double, double* %x.addr, align 8
  %19 = load double, double* %x.addr, align 8
  %mul39 = fmul double %18, %19
  store double %mul39, double* %t, align 8
  %20 = load double, double* %absx, align 8
  %21 = load double, double* %t, align 8
  %22 = load double, double* %t, align 8
  %add40 = fadd double 1.000000e+00, %22
  %call41 = call double @sqrt(double %add40) #4
  %add42 = fadd double 1.000000e+00, %call41
  %div43 = fdiv double %21, %add42
  %add44 = fadd double %20, %div43
  %call45 = call double @_Py_log1p(double %add44)
  store double %call45, double* %w, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.38, %if.then.31
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.26
  %23 = load double, double* %w, align 8
  %24 = load double, double* %x.addr, align 8
  %call48 = call double @copysign(double %23, double %24) #3
  store double %call48, double* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.22, %if.then
  %25 = load double, double* %retval
  ret double %25
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #1

; Function Attrs: nounwind uwtable
define double @_Py_atanh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %absx = alloca double, align 8
  %t = alloca double, align 8
  store double %x, double* %x.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__isnanf(float %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8
  %call2 = call i32 @__isnan(double %1) #3
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #3
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* %x.addr, align 8
  %add = fadd double %3, %4
  store double %add, double* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %5 = load double, double* %x.addr, align 8
  %call8 = call double @fabs(double %5) #3
  store double %call8, double* %absx, align 8
  %6 = load double, double* %absx, align 8
  %cmp = fcmp oge double %6, 1.000000e+00
  br i1 %cmp, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i32* @__errno_location() #3
  store i32 33, i32* %call11, align 4
  store double 0x7FF8000000000000, double* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %7 = load double, double* %absx, align 8
  %cmp13 = fcmp olt double %7, 0x3E30000000000000
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %8 = load double, double* %x.addr, align 8
  store double %8, double* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %9 = load double, double* %absx, align 8
  %cmp17 = fcmp olt double %9, 5.000000e-01
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %10 = load double, double* %absx, align 8
  %11 = load double, double* %absx, align 8
  %add20 = fadd double %10, %11
  store double %add20, double* %t, align 8
  %12 = load double, double* %t, align 8
  %13 = load double, double* %t, align 8
  %14 = load double, double* %absx, align 8
  %mul = fmul double %13, %14
  %15 = load double, double* %absx, align 8
  %sub = fsub double 1.000000e+00, %15
  %div = fdiv double %mul, %sub
  %add21 = fadd double %12, %div
  %call22 = call double @_Py_log1p(double %add21)
  %mul23 = fmul double 5.000000e-01, %call22
  store double %mul23, double* %t, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.end.16
  %16 = load double, double* %absx, align 8
  %17 = load double, double* %absx, align 8
  %add24 = fadd double %16, %17
  %18 = load double, double* %absx, align 8
  %sub25 = fsub double 1.000000e+00, %18
  %div26 = fdiv double %add24, %sub25
  %call27 = call double @_Py_log1p(double %div26)
  %mul28 = fmul double 5.000000e-01, %call27
  store double %mul28, double* %t, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.19
  %19 = load double, double* %t, align 8
  %20 = load double, double* %x.addr, align 8
  %call30 = call double @copysign(double %19, double %20) #3
  store double %call30, double* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.15, %if.then.10, %if.then
  %21 = load double, double* %retval
  ret double %21
}

; Function Attrs: nounwind uwtable
define double @_Py_expm1(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %u = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %call = call double @fabs(double %0) #3
  %cmp = fcmp olt double %call, 7.000000e-01
  br i1 %cmp, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %call1 = call double @exp(double %1) #4
  store double %call1, double* %u, align 8
  %2 = load double, double* %u, align 8
  %cmp2 = fcmp oeq double %2, 1.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %3 = load double, double* %x.addr, align 8
  store double %3, double* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load double, double* %u, align 8
  %sub = fsub double %4, 1.000000e+00
  %5 = load double, double* %x.addr, align 8
  %mul = fmul double %sub, %5
  %6 = load double, double* %u, align 8
  %call4 = call double @log(double %6) #4
  %div = fdiv double %mul, %call4
  store double %div, double* %retval
  br label %return

if.else.5:                                        ; preds = %entry
  %7 = load double, double* %x.addr, align 8
  %call6 = call double @exp(double %7) #4
  %sub7 = fsub double %call6, 1.000000e+00
  store double %sub7, double* %retval
  br label %return

return:                                           ; preds = %if.else.5, %if.else, %if.then.3
  %8 = load double, double* %retval
  ret double %8
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare double @log1p(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
