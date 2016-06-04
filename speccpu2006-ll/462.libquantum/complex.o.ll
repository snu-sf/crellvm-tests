; ModuleID = 'complex.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_conj(<2 x float> %a.coerce) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call8 = call float @quantum_imag(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %i, align 4
  %mul.rl = fmul float 0.000000e+00, %6
  %mul.il = fmul float 1.000000e+00, %6
  %sub.r = fsub float %5, %mul.rl
  %sub.i = fsub float -0.000000e+00, %mul.il
  %real9 = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %imag10 = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float %sub.r, float* %real9, align 4
  store float %sub.i, float* %imag10, align 4
  %7 = bitcast { float, float }* %retval to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 4
  ret <2 x float> %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real(<2 x float> %a.coerce) #1 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag(<2 x float> %a.coerce) #1 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: nounwind uwtable
define float @quantum_prob(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 8
  %coerce = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_prob_inline(<2 x float> %2)
  ret float %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline(<2 x float> %a.coerce) #1 {
entry:
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call8 = call float @quantum_imag(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float, float* %i, align 4
  %8 = load float, float* %i, align 4
  %mul9 = fmul float %7, %8
  %add = fadd float %mul, %mul9
  ret float %add
}

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_cexp(float %phi) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %phi.addr = alloca float, align 4
  store float %phi, float* %phi.addr, align 4
  %0 = load float, float* %phi.addr, align 4
  %conv = fpext float %0 to double
  %call = call double @cos(double %conv) #3
  %1 = load float, float* %phi.addr, align 4
  %conv1 = fpext float %1 to double
  %call2 = call double @sin(double %conv1) #3
  %mul.rl = fmul double 0.000000e+00, %call2
  %mul.il = fmul double 1.000000e+00, %call2
  %add.r = fadd double %call, %mul.rl
  %conv3 = fptrunc double %add.r to float
  %conv4 = fptrunc double %mul.il to float
  %real = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float %conv3, float* %real, align 4
  store float %conv4, float* %imag, align 4
  %2 = bitcast { float, float }* %retval to <2 x float>*
  %3 = load <2 x float>, <2 x float>* %2, align 4
  ret <2 x float> %3
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
