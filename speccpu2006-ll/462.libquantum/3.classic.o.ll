; ModuleID = 'classic.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 1, i32* %r, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %r, align 4
  %mul = mul nsw i32 %3, %2
  store i32 %mul, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %r, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #0 {
entry:
  %u.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %u, i32* %u.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %v.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %u.addr, align 4
  %2 = load i32, i32* %v.addr, align 4
  %rem = srem i32 %1, %2
  store i32 %rem, i32* %r, align 4
  %3 = load i32, i32* %v.addr, align 4
  store i32 %3, i32* %u.addr, align 4
  %4 = load i32, i32* %r, align 4
  store i32 %4, i32* %v.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %u.addr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @quantum_frac_approx(i32* %a, i32* %b, i32 %width) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %width.addr = alloca i32, align 4
  %f = alloca float, align 4
  %g = alloca float, align 4
  %i = alloca i32, align 4
  %num2 = alloca i32, align 4
  %den2 = alloca i32, align 4
  %num1 = alloca i32, align 4
  %den1 = alloca i32, align 4
  %num = alloca i32, align 4
  %den = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sitofp i32 %1 to float
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv1 = sitofp i32 %3 to float
  %div = fdiv float %conv, %conv1
  store float %div, float* %f, align 4
  %4 = load float, float* %f, align 4
  store float %4, float* %g, align 4
  store i32 0, i32* %num2, align 4
  store i32 1, i32* %den2, align 4
  store i32 1, i32* %num1, align 4
  store i32 0, i32* %den1, align 4
  store i32 0, i32* %num, align 4
  store i32 0, i32* %den, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load float, float* %g, align 4
  %conv2 = fpext float %5 to double
  %add = fadd double %conv2, 5.000000e-06
  %conv3 = fptosi double %add to i32
  store i32 %conv3, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %conv4 = sitofp i32 %6 to double
  %sub = fsub double %conv4, 5.000000e-06
  %7 = load float, float* %g, align 4
  %conv5 = fpext float %7 to double
  %sub6 = fsub double %conv5, %sub
  %conv7 = fptrunc double %sub6 to float
  store float %conv7, float* %g, align 4
  %8 = load float, float* %g, align 4
  %conv8 = fpext float %8 to double
  %div9 = fdiv double 1.000000e+00, %conv8
  %conv10 = fptrunc double %div9 to float
  store float %conv10, float* %g, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %den1, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %den2, align 4
  %add11 = add nsw i32 %mul, %11
  %12 = load i32, i32* %width.addr, align 4
  %shl = shl i32 1, %12
  %cmp = icmp sgt i32 %add11, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %num1, align 4
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32, i32* %num2, align 4
  %add14 = add nsw i32 %mul13, %15
  store i32 %add14, i32* %num, align 4
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %den1, align 4
  %mul15 = mul nsw i32 %16, %17
  %18 = load i32, i32* %den2, align 4
  %add16 = add nsw i32 %mul15, %18
  store i32 %add16, i32* %den, align 4
  %19 = load i32, i32* %num1, align 4
  store i32 %19, i32* %num2, align 4
  %20 = load i32, i32* %den1, align 4
  store i32 %20, i32* %den2, align 4
  %21 = load i32, i32* %num, align 4
  store i32 %21, i32* %num1, align 4
  %22 = load i32, i32* %den, align 4
  store i32 %22, i32* %den1, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %23 = load i32, i32* %num, align 4
  %conv17 = sitofp i32 %23 to float
  %24 = load i32, i32* %den, align 4
  %conv18 = sitofp i32 %24 to float
  %div19 = fdiv float %conv17, %conv18
  %25 = load float, float* %f, align 4
  %sub20 = fsub float %div19, %25
  %call = call float @fabsf(float %sub20) #2
  %conv21 = fpext float %call to double
  %26 = load i32, i32* %width.addr, align 4
  %shl22 = shl i32 1, %26
  %mul23 = mul nsw i32 2, %shl22
  %conv24 = sitofp i32 %mul23 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  %cmp26 = fcmp ogt double %conv21, %div25
  br i1 %cmp26, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %27 = load i32, i32* %num, align 4
  %28 = load i32*, i32** %a.addr, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %den, align 4
  %30 = load i32*, i32** %b.addr, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare float @fabsf(float) #1

; Function Attrs: nounwind uwtable
define i32 @quantum_getwidth(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %shl = shl i32 1, %0
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %shl, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %c.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %2
  %cmp = icmp ne i32 %rem, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
