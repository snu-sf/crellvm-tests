; ModuleID = 'decoherence.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

@status = global i32 0, align 4
@lambda = global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [48 x i8] c"Not enough memory for %i-sized array of float!\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @quantum_get_decoherence() #0 {
entry:
  %0 = load float, float* @lambda, align 4
  ret float %0
}

; Function Attrs: nounwind uwtable
define void @quantum_set_decoherence(float %l) #0 {
entry:
  %l.addr = alloca float, align 4
  store float %l, float* %l.addr, align 4
  %0 = load float, float* %l.addr, align 4
  %tobool = fcmp une float %0, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @status, align 4
  %1 = load float, float* %l.addr, align 4
  store float %1, float* @lambda, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_decohere(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %s = alloca float, align 4
  %x = alloca float, align 4
  %nrands = alloca float*, align 8
  %angle = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce66 = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call i32 @quantum_gate_counter(i32 1)
  %0 = load i32, i32* @status, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.75

if.then:                                          ; preds = %entry
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4
  %conv = sext i32 %2 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 4) #4
  %3 = bitcast i8* %call1 to float*
  store float* %3, float** %nrands, align 8
  %4 = load float*, float** %nrands, align 8
  %tobool2 = icmp ne float* %4, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %width4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %6)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %width6, align 4
  %conv7 = sext i32 %8 to i64
  %mul = mul i64 %conv7, 4
  %call8 = call i64 @quantum_memman(i64 %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %width9, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %call11 = call double (...) @quantum_frand()
  %mul12 = fmul double 2.000000e+00, %call11
  %sub = fsub double %mul12, 1.000000e+00
  %conv13 = fptrunc double %sub to float
  store float %conv13, float* %u, align 4
  %call14 = call double (...) @quantum_frand()
  %mul15 = fmul double 2.000000e+00, %call14
  %sub16 = fsub double %mul15, 1.000000e+00
  %conv17 = fptrunc double %sub16 to float
  store float %conv17, float* %v, align 4
  %12 = load float, float* %u, align 4
  %13 = load float, float* %u, align 4
  %mul18 = fmul float %12, %13
  %14 = load float, float* %v, align 4
  %15 = load float, float* %v, align 4
  %mul19 = fmul float %14, %15
  %add = fadd float %mul18, %mul19
  store float %add, float* %s, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load float, float* %s, align 4
  %cmp20 = fcmp oge float %16, 1.000000e+00
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load float, float* %u, align 4
  %conv22 = fpext float %17 to double
  %18 = load float, float* %s, align 4
  %conv23 = fpext float %18 to double
  %call24 = call double @log(double %conv23) #4
  %mul25 = fmul double -2.000000e+00, %call24
  %19 = load float, float* %s, align 4
  %conv26 = fpext float %19 to double
  %div = fdiv double %mul25, %conv26
  %call27 = call double @sqrt(double %div) #4
  %mul28 = fmul double %conv22, %call27
  %conv29 = fptrunc double %mul28 to float
  store float %conv29, float* %x, align 4
  %20 = load float, float* @lambda, align 4
  %mul30 = fmul float 2.000000e+00, %20
  %conv31 = fpext float %mul30 to double
  %call32 = call double @sqrt(double %conv31) #4
  %21 = load float, float* %x, align 4
  %conv33 = fpext float %21 to double
  %mul34 = fmul double %conv33, %call32
  %conv35 = fptrunc double %mul34 to float
  store float %conv35, float* %x, align 4
  %22 = load float, float* %x, align 4
  %div36 = fdiv float %22, 2.000000e+00
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load float*, float** %nrands, align 8
  %arrayidx = getelementptr inbounds float, float* %24, i64 %idxprom
  store float %div36, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.67, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %size, align 4
  %cmp38 = icmp slt i32 %26, %28
  br i1 %cmp38, label %for.body.40, label %for.end.69

for.body.40:                                      ; preds = %for.cond.37
  store float 0.000000e+00, float* %angle, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.57, %for.body.40
  %29 = load i32, i32* %j, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width42 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %width42, align 4
  %cmp43 = icmp slt i32 %29, %31
  br i1 %cmp43, label %for.body.45, label %for.end.59

for.body.45:                                      ; preds = %for.cond.41
  %32 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %32 to i64
  %33 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %33, i32 0, i32 3
  %34 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx47 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %34, i64 %idxprom46
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx47, i32 0, i32 1
  %35 = load i64, i64* %state, align 8
  %36 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %36 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %35, %shl
  %tobool48 = icmp ne i64 %and, 0
  br i1 %tobool48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %for.body.45
  %37 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load float*, float** %nrands, align 8
  %arrayidx51 = getelementptr inbounds float, float* %38, i64 %idxprom50
  %39 = load float, float* %arrayidx51, align 4
  %40 = load float, float* %angle, align 4
  %add52 = fadd float %40, %39
  store float %add52, float* %angle, align 4
  br label %if.end.56

if.else:                                          ; preds = %for.body.45
  %41 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load float*, float** %nrands, align 8
  %arrayidx54 = getelementptr inbounds float, float* %42, i64 %idxprom53
  %43 = load float, float* %arrayidx54, align 4
  %44 = load float, float* %angle, align 4
  %sub55 = fsub float %44, %43
  store float %sub55, float* %angle, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.49
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %45 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %45, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond.41

for.end.59:                                       ; preds = %for.cond.41
  %46 = load float, float* %angle, align 4
  %call60 = call <2 x float> @quantum_cexp(float %46)
  %47 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call60, <2 x float>* %47, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %48 to i64
  %49 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node62 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %49, i32 0, i32 3
  %50 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node62, align 8
  %arrayidx63 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %50, i64 %idxprom61
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx63, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %coerce.real
  %mul_bd = fmul float %amplitude.imag, %coerce.imag
  %mul_ad = fmul float %amplitude.real, %coerce.imag
  %mul_bc = fmul float %amplitude.imag, %coerce.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.end.59
  %isnan_cmp64 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp64, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call65 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %coerce.real, float %coerce.imag) #4
  %51 = bitcast { float, float }* %coerce66 to <2 x float>*
  store <2 x float> %call65, <2 x float>* %51, align 4
  %coerce66.realp = getelementptr inbounds { float, float }, { float, float }* %coerce66, i32 0, i32 0
  %coerce66.real = load float, float* %coerce66.realp, align 4
  %coerce66.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce66, i32 0, i32 1
  %coerce66.imag = load float, float* %coerce66.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.end.59
  %real_mul_phi = phi float [ %mul_r, %for.end.59 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce66.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.end.59 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce66.imag, %complex_mul_libcall ]
  %real = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real, align 4
  store float %imag_mul_phi, float* %imag, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %complex_mul_cont
  %52 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %52, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.37

for.end.69:                                       ; preds = %for.cond.37
  %53 = load float*, float** %nrands, align 8
  %54 = bitcast float* %53 to i8*
  call void @free(i8* %54) #4
  %55 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width70 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %55, i32 0, i32 0
  %56 = load i32, i32* %width70, align 4
  %sub71 = sub nsw i32 0, %56
  %conv72 = sext i32 %sub71 to i64
  %mul73 = mul i64 %conv72, 4
  %call74 = call i64 @quantum_memman(i64 %mul73)
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.69, %entry
  ret void
}

declare i32 @quantum_gate_counter(i32) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i64 @quantum_memman(i64) #1

declare double @quantum_frand(...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

declare <2 x float> @quantum_cexp(float) #1

declare <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
