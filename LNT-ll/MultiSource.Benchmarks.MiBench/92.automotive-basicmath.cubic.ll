; ModuleID = './MultiSource.Benchmarks.MiBench/92.automotive-basicmath.cubic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @SolveCubic(double %a, double %b, double %c, double %d, i32* %solutions, double* %x) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  %solutions.addr = alloca i32*, align 8
  %x.addr = alloca double*, align 8
  %a1 = alloca x86_fp80, align 16
  %a2 = alloca x86_fp80, align 16
  %a3 = alloca x86_fp80, align 16
  %Q = alloca x86_fp80, align 16
  %R = alloca x86_fp80, align 16
  %R2_Q3 = alloca double, align 8
  %theta = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double %c, double* %c.addr, align 8
  store double %d, double* %d.addr, align 8
  store i32* %solutions, i32** %solutions.addr, align 8
  store double* %x, double** %x.addr, align 8
  %0 = load double, double* %b.addr, align 8
  %1 = load double, double* %a.addr, align 8
  %div = fdiv double %0, %1
  %conv = fpext double %div to x86_fp80
  store x86_fp80 %conv, x86_fp80* %a1, align 16
  %2 = load double, double* %c.addr, align 8
  %3 = load double, double* %a.addr, align 8
  %div1 = fdiv double %2, %3
  %conv2 = fpext double %div1 to x86_fp80
  store x86_fp80 %conv2, x86_fp80* %a2, align 16
  %4 = load double, double* %d.addr, align 8
  %5 = load double, double* %a.addr, align 8
  %div3 = fdiv double %4, %5
  %conv4 = fpext double %div3 to x86_fp80
  store x86_fp80 %conv4, x86_fp80* %a3, align 16
  %6 = load x86_fp80, x86_fp80* %a1, align 16
  %7 = load x86_fp80, x86_fp80* %a1, align 16
  %mul = fmul x86_fp80 %6, %7
  %8 = load x86_fp80, x86_fp80* %a2, align 16
  %mul5 = fmul x86_fp80 0xK4000C000000000000000, %8
  %sub = fsub x86_fp80 %mul, %mul5
  %div6 = fdiv x86_fp80 %sub, 0xK40029000000000000000
  store x86_fp80 %div6, x86_fp80* %Q, align 16
  %9 = load x86_fp80, x86_fp80* %a1, align 16
  %mul7 = fmul x86_fp80 0xK40008000000000000000, %9
  %10 = load x86_fp80, x86_fp80* %a1, align 16
  %mul8 = fmul x86_fp80 %mul7, %10
  %11 = load x86_fp80, x86_fp80* %a1, align 16
  %mul9 = fmul x86_fp80 %mul8, %11
  %12 = load x86_fp80, x86_fp80* %a1, align 16
  %mul10 = fmul x86_fp80 0xK40029000000000000000, %12
  %13 = load x86_fp80, x86_fp80* %a2, align 16
  %mul11 = fmul x86_fp80 %mul10, %13
  %sub12 = fsub x86_fp80 %mul9, %mul11
  %14 = load x86_fp80, x86_fp80* %a3, align 16
  %mul13 = fmul x86_fp80 0xK4003D800000000000000, %14
  %add = fadd x86_fp80 %sub12, %mul13
  %div14 = fdiv x86_fp80 %add, 0xK4004D800000000000000
  store x86_fp80 %div14, x86_fp80* %R, align 16
  %15 = load x86_fp80, x86_fp80* %R, align 16
  %16 = load x86_fp80, x86_fp80* %R, align 16
  %mul15 = fmul x86_fp80 %15, %16
  %17 = load x86_fp80, x86_fp80* %Q, align 16
  %18 = load x86_fp80, x86_fp80* %Q, align 16
  %mul16 = fmul x86_fp80 %17, %18
  %19 = load x86_fp80, x86_fp80* %Q, align 16
  %mul17 = fmul x86_fp80 %mul16, %19
  %sub18 = fsub x86_fp80 %mul15, %mul17
  %conv19 = fptrunc x86_fp80 %sub18 to double
  store double %conv19, double* %R2_Q3, align 8
  %20 = load double, double* %R2_Q3, align 8
  %cmp = fcmp ole double %20, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load i32*, i32** %solutions.addr, align 8
  store i32 3, i32* %21, align 4
  %22 = load x86_fp80, x86_fp80* %R, align 16
  %23 = load x86_fp80, x86_fp80* %Q, align 16
  %24 = load x86_fp80, x86_fp80* %Q, align 16
  %mul21 = fmul x86_fp80 %23, %24
  %25 = load x86_fp80, x86_fp80* %Q, align 16
  %mul22 = fmul x86_fp80 %mul21, %25
  %conv23 = fptrunc x86_fp80 %mul22 to double
  %call = call double @sqrt(double %conv23) #3
  %conv24 = fpext double %call to x86_fp80
  %div25 = fdiv x86_fp80 %22, %conv24
  %conv26 = fptrunc x86_fp80 %div25 to double
  %call27 = call double @acos(double %conv26) #3
  store double %call27, double* %theta, align 8
  %26 = load x86_fp80, x86_fp80* %Q, align 16
  %conv28 = fptrunc x86_fp80 %26 to double
  %call29 = call double @sqrt(double %conv28) #3
  %mul30 = fmul double -2.000000e+00, %call29
  %27 = load double, double* %theta, align 8
  %div31 = fdiv double %27, 3.000000e+00
  %call32 = call double @cos(double %div31) #3
  %mul33 = fmul double %mul30, %call32
  %conv34 = fpext double %mul33 to x86_fp80
  %28 = load x86_fp80, x86_fp80* %a1, align 16
  %div35 = fdiv x86_fp80 %28, 0xK4000C000000000000000
  %sub36 = fsub x86_fp80 %conv34, %div35
  %conv37 = fptrunc x86_fp80 %sub36 to double
  %29 = load double*, double** %x.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %29, i64 0
  store double %conv37, double* %arrayidx, align 8
  %30 = load x86_fp80, x86_fp80* %Q, align 16
  %conv38 = fptrunc x86_fp80 %30 to double
  %call39 = call double @sqrt(double %conv38) #3
  %mul40 = fmul double -2.000000e+00, %call39
  %31 = load double, double* %theta, align 8
  %call41 = call double @atan(double 1.000000e+00) #3
  %mul42 = fmul double 4.000000e+00, %call41
  %mul43 = fmul double 2.000000e+00, %mul42
  %add44 = fadd double %31, %mul43
  %div45 = fdiv double %add44, 3.000000e+00
  %call46 = call double @cos(double %div45) #3
  %mul47 = fmul double %mul40, %call46
  %conv48 = fpext double %mul47 to x86_fp80
  %32 = load x86_fp80, x86_fp80* %a1, align 16
  %div49 = fdiv x86_fp80 %32, 0xK4000C000000000000000
  %sub50 = fsub x86_fp80 %conv48, %div49
  %conv51 = fptrunc x86_fp80 %sub50 to double
  %33 = load double*, double** %x.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %33, i64 1
  store double %conv51, double* %arrayidx52, align 8
  %34 = load x86_fp80, x86_fp80* %Q, align 16
  %conv53 = fptrunc x86_fp80 %34 to double
  %call54 = call double @sqrt(double %conv53) #3
  %mul55 = fmul double -2.000000e+00, %call54
  %35 = load double, double* %theta, align 8
  %call56 = call double @atan(double 1.000000e+00) #3
  %mul57 = fmul double 4.000000e+00, %call56
  %mul58 = fmul double 4.000000e+00, %mul57
  %add59 = fadd double %35, %mul58
  %div60 = fdiv double %add59, 3.000000e+00
  %call61 = call double @cos(double %div60) #3
  %mul62 = fmul double %mul55, %call61
  %conv63 = fpext double %mul62 to x86_fp80
  %36 = load x86_fp80, x86_fp80* %a1, align 16
  %div64 = fdiv x86_fp80 %36, 0xK4000C000000000000000
  %sub65 = fsub x86_fp80 %conv63, %div64
  %conv66 = fptrunc x86_fp80 %sub65 to double
  %37 = load double*, double** %x.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %37, i64 2
  store double %conv66, double* %arrayidx67, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %38 = load i32*, i32** %solutions.addr, align 8
  store i32 1, i32* %38, align 4
  %39 = load double, double* %R2_Q3, align 8
  %call68 = call double @sqrt(double %39) #3
  %40 = load x86_fp80, x86_fp80* %R, align 16
  %conv69 = fptrunc x86_fp80 %40 to double
  %call70 = call double @fabs(double %conv69) #4
  %add71 = fadd double %call68, %call70
  %call72 = call double @pow(double %add71, double 0x3FD5555555555555) #3
  %41 = load double*, double** %x.addr, align 8
  %arrayidx73 = getelementptr inbounds double, double* %41, i64 0
  store double %call72, double* %arrayidx73, align 8
  %42 = load x86_fp80, x86_fp80* %Q, align 16
  %43 = load double*, double** %x.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %43, i64 0
  %44 = load double, double* %arrayidx74, align 8
  %conv75 = fpext double %44 to x86_fp80
  %div76 = fdiv x86_fp80 %42, %conv75
  %45 = load double*, double** %x.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %45, i64 0
  %46 = load double, double* %arrayidx77, align 8
  %conv78 = fpext double %46 to x86_fp80
  %add79 = fadd x86_fp80 %conv78, %div76
  %conv80 = fptrunc x86_fp80 %add79 to double
  store double %conv80, double* %arrayidx77, align 8
  %47 = load x86_fp80, x86_fp80* %R, align 16
  %cmp81 = fcmp olt x86_fp80 %47, 0xK00000000000000000000
  %cond = select i1 %cmp81, i32 1, i32 -1
  %conv83 = sitofp i32 %cond to double
  %48 = load double*, double** %x.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %48, i64 0
  %49 = load double, double* %arrayidx84, align 8
  %mul85 = fmul double %49, %conv83
  store double %mul85, double* %arrayidx84, align 8
  %50 = load x86_fp80, x86_fp80* %a1, align 16
  %div86 = fdiv x86_fp80 %50, 0xK4000C000000000000000
  %51 = load double*, double** %x.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %51, i64 0
  %52 = load double, double* %arrayidx87, align 8
  %conv88 = fpext double %52 to x86_fp80
  %sub89 = fsub x86_fp80 %conv88, %div86
  %conv90 = fptrunc x86_fp80 %sub89 to double
  store double %conv90, double* %arrayidx87, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @acos(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @atan(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
