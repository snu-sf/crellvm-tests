; ModuleID = './SingleSource.Benchmarks.Misc/1.mandel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@accum = common global { double, double } zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @emit(double %X.coerce0, double %X.coerce1) #0 {
entry:
  %X = alloca { double, double }, align 8
  %0 = getelementptr { double, double }, { double, double }* %X, i32 0, i32 0
  store double %X.coerce0, double* %0
  %1 = getelementptr { double, double }, { double, double }* %X, i32 0, i32 1
  store double %X.coerce1, double* %1
  %X.realp = getelementptr inbounds { double, double }, { double, double }* %X, i32 0, i32 0
  %X.real = load double, double* %X.realp, align 8
  %X.imagp = getelementptr inbounds { double, double }, { double, double }* %X, i32 0, i32 1
  %X.imag = load double, double* %X.imagp, align 8
  %accum.real = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  %accum.imag = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  %add.r = fadd double %accum.real, %X.real
  %add.i = fadd double %accum.imag, %X.imag
  store volatile double %add.r, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  store volatile double %add.i, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @mandel() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca { double, double }, align 8
  %z = alloca { double, double }, align 8
  %coerce = alloca { double, double }, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.31, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 5000
  br i1 %cmp2, label %for.body.3, label %for.end.33

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %x, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %conv, 4.000000e+00
  %div = fdiv double %mul, 5.000000e+03
  %add = fadd double -2.000000e+00, %div
  %3 = load i32, i32* %y, align 4
  %conv4 = sitofp i32 %3 to double
  %mul5 = fmul double %conv4, 4.000000e+00
  %div6 = fdiv double %mul5, 5.000000e+03
  %sub = fsub double -2.000000e+00, %div6
  %mul.rl = fmul double %sub, 0.000000e+00
  %mul.ir = fmul double %sub, 1.000000e+00
  %add.r = fadd double %add, %mul.rl
  %real = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 0
  %imag = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 1
  store double %add.r, double* %real, align 8
  store double %mul.ir, double* %imag, align 8
  %real7 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %imag8 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  store double 0.000000e+00, double* %real7, align 8
  store double 0.000000e+00, double* %imag8, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %4, 10
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %z.realp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real = load double, double* %z.realp, align 8
  %z.imagp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag = load double, double* %z.imagp, align 8
  %z.realp13 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real14 = load double, double* %z.realp13, align 8
  %z.imagp15 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag16 = load double, double* %z.imagp15, align 8
  %mul_ac = fmul double %z.real, %z.real14
  %mul_bd = fmul double %z.imag, %z.imag16
  %mul_ad = fmul double %z.real, %z.imag16
  %mul_bc = fmul double %z.imag, %z.real14
  %mul_r = fsub double %mul_ac, %mul_bd
  %mul_i = fadd double %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno double %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.body.12
  %isnan_cmp17 = fcmp uno double %mul_i, %mul_i
  br i1 %isnan_cmp17, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { double, double } @__muldc3(double %z.real, double %z.imag, double %z.real14, double %z.imag16) #4
  %5 = extractvalue { double, double } %call, 0
  %6 = extractvalue { double, double } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body.12
  %real_mul_phi = phi double [ %mul_r, %for.body.12 ], [ %mul_r, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %imag_mul_phi = phi double [ %mul_i, %for.body.12 ], [ %mul_i, %complex_mul_imag_nan ], [ %6, %complex_mul_libcall ]
  %c.realp = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 0
  %c.real = load double, double* %c.realp, align 8
  %c.imagp = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 1
  %c.imag = load double, double* %c.imagp, align 8
  %add.r18 = fadd double %real_mul_phi, %c.real
  %add.i = fadd double %imag_mul_phi, %c.imag
  %real19 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %imag20 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  store double %add.r18, double* %real19, align 8
  store double %add.i, double* %imag20, align 8
  %idx = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %7 = load double, double* %idx
  %idx21 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %8 = load double, double* %idx21
  %call22 = call double @_ZL10__tg_hypotdd(double %7, double %8)
  %cmp23 = fcmp oge double %call22, 2.000000e+00
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %complex_mul_cont
  br label %for.end

if.end:                                           ; preds = %complex_mul_cont
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %n, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.9

for.end:                                          ; preds = %if.then, %for.cond.9
  %z.realp25 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real26 = load double, double* %z.realp25, align 8
  %z.imagp27 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag28 = load double, double* %z.imagp27, align 8
  %real29 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %imag30 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  store double %z.real26, double* %real29, align 8
  store double %z.imag28, double* %imag30, align 8
  %10 = getelementptr { double, double }, { double, double }* %coerce, i32 0, i32 0
  %11 = load double, double* %10, align 1
  %12 = getelementptr { double, double }, { double, double }* %coerce, i32 0, i32 1
  %13 = load double, double* %12, align 1
  call void @emit(double %11, double %13)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %14 = load i32, i32* %y, align 4
  %inc32 = add nsw i32 %14, 1
  store i32 %inc32, i32* %y, align 4
  br label %for.cond.1

for.end.33:                                       ; preds = %for.cond.1
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %15 = load i32, i32* %x, align 4
  %inc35 = add nsw i32 %15, 1
  store i32 %inc35, i32* %x, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  ret void
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: alwaysinline nounwind uwtable
define internal double @_ZL10__tg_hypotdd(double %__x, double %__y) #1 {
entry:
  %__x.addr = alloca double, align 8
  %__y.addr = alloca double, align 8
  store double %__x, double* %__x.addr, align 8
  store double %__y, double* %__y.addr, align 8
  %0 = load double, double* %__x.addr, align 8
  %1 = load double, double* %__y.addr, align 8
  %call = call double @hypot(double %0, double %1) #4
  ret double %call
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @mandel()
  %accum.real = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  %accum.imag = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  %conv = fptosi double %accum.real to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %conv)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @hypot(double, double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
