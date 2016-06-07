; ModuleID = 'measure.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1

; Function Attrs: nounwind uwtable
define double @quantum_frand() #0 {
entry:
  %call = call double @spec_rand()
  ret double %call
}

declare double @spec_rand() #1

; Function Attrs: nounwind uwtable
define i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca i64, align 8
  %r = alloca double, align 8
  %i = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext -128)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call double @quantum_frand()
  store double %call1, double* %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %3, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  %5 = load <2 x float>, <2 x float>* %4, align 4
  %call2 = call float @quantum_prob_inline(<2 x float> %5)
  %conv = fpext float %call2 to double
  %6 = load double, double* %r, align 8
  %sub = fsub double %6, %conv
  store double %sub, double* %r, align 8
  %7 = load double, double* %r, align 8
  %cmp3 = fcmp oge double 0.000000e+00, %7
  br i1 %cmp3, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %node7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node7, align 8
  %arrayidx8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx8, i32 0, i32 1
  %10 = load i64, i64* %state, align 8
  store i64 %10, i64* %retval
  br label %return

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i32 @quantum_objcode_put(i8 zeroext, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline(<2 x float> %a.coerce) #2 {
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
define i32 @quantum_bmeasure(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %pa = alloca double, align 8
  %r = alloca double, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %result, align 4
  store double 0.000000e+00, double* %pa, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext -127, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %7, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %state, align 8
  %9 = load i64, i64* %pos2, align 8
  %and = and i64 %8, %9
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.end.7, label %if.then.2

if.then.2:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node4, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %12, i64 %idxprom3
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %13 = bitcast { float, float }* %coerce to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %call6 = call float @quantum_prob_inline(<2 x float> %14)
  %conv = fpext float %call6 to double
  %15 = load double, double* %pa, align 8
  %add = fadd double %15, %conv
  store double %add, double* %pa, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call8 = call double @quantum_frand()
  store double %call8, double* %r, align 8
  %17 = load double, double* %r, align 8
  %18 = load double, double* %pa, align 8
  %cmp9 = fcmp ogt double %17, %18
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  store i32 1, i32* %result, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.end
  %19 = load i32, i32* %pos.addr, align 4
  %20 = load i32, i32* %result, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_state_collapse(%struct.quantum_reg_struct* sret %tmp, i32 %19, i32 %20, %struct.quantum_reg_struct* byval align 8 %21)
  %22 = bitcast %struct.quantum_reg_struct* %out to i8*
  %23 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %24)
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %26 = bitcast %struct.quantum_reg_struct* %25 to i8*
  %27 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load i32, i32* %result, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @quantum_state_collapse(%struct.quantum_reg_struct* sret, i32, i32, %struct.quantum_reg_struct* byval align 8) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @quantum_bmeasure_bitpreserve(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %result = alloca i32, align 4
  %d = alloca double, align 8
  %pa = alloca double, align 8
  %r = alloca double, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %coerce38 = alloca { float, float }, align 4
  %coerce60 = alloca { float, float }, align 4
  %coerce113 = alloca { float, float }, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %size, align 4
  store i32 0, i32* %result, align 4
  store double 0.000000e+00, double* %d, align 8
  store double 0.000000e+00, double* %pa, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext -126, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %7, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %state, align 8
  %9 = load i64, i64* %pos2, align 8
  %and = and i64 %8, %9
  %tobool2 = icmp ne i64 %and, 0
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node5, align 8
  %arrayidx6 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %12, i64 %idxprom4
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx6, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %13 = bitcast { float, float }* %coerce to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %call7 = call float @quantum_prob_inline(<2 x float> %14)
  %conv = fpext float %call7 to double
  %15 = load double, double* %pa, align 8
  %add = fadd double %15, %conv
  store double %add, double* %pa, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call double @quantum_frand()
  store double %call9, double* %r, align 8
  %17 = load double, double* %r, align 8
  %18 = load double, double* %pa, align 8
  %cmp10 = fcmp ogt double %17, %18
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  store i32 1, i32* %result, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.69, %if.end.13
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %size15, align 4
  %cmp16 = icmp slt i32 %19, %21
  br i1 %cmp16, label %for.body.18, label %for.end.71

for.body.18:                                      ; preds = %for.cond.14
  %22 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node20 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 3
  %24 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node20, align 8
  %arrayidx21 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %24, i64 %idxprom19
  %state22 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx21, i32 0, i32 1
  %25 = load i64, i64* %state22, align 8
  %26 = load i64, i64* %pos2, align 8
  %and23 = and i64 %25, %26
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.46

if.then.25:                                       ; preds = %for.body.18
  %27 = load i32, i32* %result, align 4
  %tobool26 = icmp ne i32 %27, 0
  br i1 %tobool26, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node29 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %29, i32 0, i32 3
  %30 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node29, align 8
  %arrayidx30 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %30, i64 %idxprom28
  %amplitude31 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx30, i32 0, i32 0
  %real32 = getelementptr inbounds { float, float }, { float, float }* %amplitude31, i32 0, i32 0
  %imag33 = getelementptr inbounds { float, float }, { float, float }* %amplitude31, i32 0, i32 1
  store float 0.000000e+00, float* %real32, align 4
  store float 0.000000e+00, float* %imag33, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.then.25
  %31 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %31 to i64
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node35 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %32, i32 0, i32 3
  %33 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node35, align 8
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %33, i64 %idxprom34
  %amplitude37 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 0
  %amplitude37.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude37, i32 0, i32 0
  %amplitude37.real = load float, float* %amplitude37.realp, align 4
  %amplitude37.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude37, i32 0, i32 1
  %amplitude37.imag = load float, float* %amplitude37.imagp, align 4
  %real39 = getelementptr inbounds { float, float }, { float, float }* %coerce38, i32 0, i32 0
  %imag40 = getelementptr inbounds { float, float }, { float, float }* %coerce38, i32 0, i32 1
  store float %amplitude37.real, float* %real39, align 4
  store float %amplitude37.imag, float* %imag40, align 4
  %34 = bitcast { float, float }* %coerce38 to <2 x float>*
  %35 = load <2 x float>, <2 x float>* %34, align 4
  %call41 = call float @quantum_prob_inline(<2 x float> %35)
  %conv42 = fpext float %call41 to double
  %36 = load double, double* %d, align 8
  %add43 = fadd double %36, %conv42
  store double %add43, double* %d, align 8
  %37 = load i32, i32* %size, align 4
  %inc44 = add nsw i32 %37, 1
  store i32 %inc44, i32* %size, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.27
  br label %if.end.68

if.else.46:                                       ; preds = %for.body.18
  %38 = load i32, i32* %result, align 4
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %if.else.46
  %39 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %39 to i64
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node50 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %40, i32 0, i32 3
  %41 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node50, align 8
  %arrayidx51 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %41, i64 %idxprom49
  %amplitude52 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx51, i32 0, i32 0
  %real53 = getelementptr inbounds { float, float }, { float, float }* %amplitude52, i32 0, i32 0
  %imag54 = getelementptr inbounds { float, float }, { float, float }* %amplitude52, i32 0, i32 1
  store float 0.000000e+00, float* %real53, align 4
  store float 0.000000e+00, float* %imag54, align 4
  br label %if.end.67

if.else.55:                                       ; preds = %if.else.46
  %42 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node57 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %43, i32 0, i32 3
  %44 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node57, align 8
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %44, i64 %idxprom56
  %amplitude59 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 0
  %amplitude59.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude59, i32 0, i32 0
  %amplitude59.real = load float, float* %amplitude59.realp, align 4
  %amplitude59.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude59, i32 0, i32 1
  %amplitude59.imag = load float, float* %amplitude59.imagp, align 4
  %real61 = getelementptr inbounds { float, float }, { float, float }* %coerce60, i32 0, i32 0
  %imag62 = getelementptr inbounds { float, float }, { float, float }* %coerce60, i32 0, i32 1
  store float %amplitude59.real, float* %real61, align 4
  store float %amplitude59.imag, float* %imag62, align 4
  %45 = bitcast { float, float }* %coerce60 to <2 x float>*
  %46 = load <2 x float>, <2 x float>* %45, align 4
  %call63 = call float @quantum_prob_inline(<2 x float> %46)
  %conv64 = fpext float %call63 to double
  %47 = load double, double* %d, align 8
  %add65 = fadd double %47, %conv64
  store double %add65, double* %d, align 8
  %48 = load i32, i32* %size, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, i32* %size, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.55, %if.then.48
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.45
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %49 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %49, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.14

for.end.71:                                       ; preds = %for.cond.14
  %50 = load i32, i32* %size, align 4
  %size72 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 1
  store i32 %50, i32* %size72, align 4
  %51 = load i32, i32* %size, align 4
  %conv73 = sext i32 %51 to i64
  %call74 = call noalias i8* @calloc(i64 %conv73, i64 16) #3
  %52 = bitcast i8* %call74 to %struct.quantum_reg_node_struct*
  %node75 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %52, %struct.quantum_reg_node_struct** %node75, align 8
  %node76 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %53 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node76, align 8
  %tobool77 = icmp ne %struct.quantum_reg_node_struct* %53, null
  br i1 %tobool77, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %for.end.71
  %54 = load i32, i32* %size, align 4
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i32 %54)
  call void @exit(i32 1) #6
  unreachable

if.end.80:                                        ; preds = %for.end.71
  %55 = load i32, i32* %size, align 4
  %conv81 = sext i32 %55 to i64
  %mul = mul i64 %conv81, 16
  %call82 = call i64 @quantum_memman(i64 %mul)
  %56 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %56, i32 0, i32 2
  %57 = load i32, i32* %hashw, align 4
  %hashw83 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 2
  store i32 %57, i32* %hashw83, align 4
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %58, i32 0, i32 4
  %59 = load i32*, i32** %hash, align 8
  %hash84 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 4
  store i32* %59, i32** %hash84, align 8
  %60 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %60, i32 0, i32 0
  %61 = load i32, i32* %width, align 4
  %width85 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 0
  store i32 %61, i32* %width85, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.124, %if.end.80
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size87 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %63, i32 0, i32 1
  %64 = load i32, i32* %size87, align 4
  %cmp88 = icmp slt i32 %62, %64
  br i1 %cmp88, label %for.body.90, label %for.end.126

for.body.90:                                      ; preds = %for.cond.86
  %65 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %65 to i64
  %66 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node92 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %66, i32 0, i32 3
  %67 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node92, align 8
  %arrayidx93 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %67, i64 %idxprom91
  %amplitude94 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx93, i32 0, i32 0
  %amplitude94.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude94, i32 0, i32 0
  %amplitude94.real = load float, float* %amplitude94.realp, align 4
  %amplitude94.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude94, i32 0, i32 1
  %amplitude94.imag = load float, float* %amplitude94.imagp, align 4
  %tobool95 = fcmp une float %amplitude94.real, 0.000000e+00
  %tobool96 = fcmp une float %amplitude94.imag, 0.000000e+00
  %tobool97 = or i1 %tobool95, %tobool96
  br i1 %tobool97, label %if.then.98, label %if.end.123

if.then.98:                                       ; preds = %for.body.90
  %68 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %68 to i64
  %69 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node100 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %69, i32 0, i32 3
  %70 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node100, align 8
  %arrayidx101 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %70, i64 %idxprom99
  %state102 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx101, i32 0, i32 1
  %71 = load i64, i64* %state102, align 8
  %72 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %72 to i64
  %node104 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %73 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node104, align 8
  %arrayidx105 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %73, i64 %idxprom103
  %state106 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx105, i32 0, i32 1
  store i64 %71, i64* %state106, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %74 to i64
  %75 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node108 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %75, i32 0, i32 3
  %76 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node108, align 8
  %arrayidx109 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %76, i64 %idxprom107
  %amplitude110 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx109, i32 0, i32 0
  %amplitude110.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude110, i32 0, i32 0
  %amplitude110.real = load float, float* %amplitude110.realp, align 4
  %amplitude110.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude110, i32 0, i32 1
  %amplitude110.imag = load float, float* %amplitude110.imagp, align 4
  %mul_ac = fmul float %amplitude110.real, 1.000000e+00
  %mul_bd = fmul float %amplitude110.imag, 0.000000e+00
  %mul_ad = fmul float %amplitude110.real, 0.000000e+00
  %mul_bc = fmul float %amplitude110.imag, 1.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.98
  %isnan_cmp111 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp111, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call112 = call <2 x float> @__mulsc3(float %amplitude110.real, float %amplitude110.imag, float 1.000000e+00, float 0.000000e+00) #3
  %77 = bitcast { float, float }* %coerce113 to <2 x float>*
  store <2 x float> %call112, <2 x float>* %77, align 4
  %coerce113.realp = getelementptr inbounds { float, float }, { float, float }* %coerce113, i32 0, i32 0
  %coerce113.real = load float, float* %coerce113.realp, align 4
  %coerce113.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce113, i32 0, i32 1
  %coerce113.imag = load float, float* %coerce113.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.98
  %real_mul_phi = phi float [ %mul_r, %if.then.98 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce113.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.98 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce113.imag, %complex_mul_libcall ]
  %78 = load double, double* %d, align 8
  %call114 = call double @sqrt(double %78) #3
  %conv115 = fptrunc double %call114 to float
  %79 = fdiv float %real_mul_phi, %conv115
  %80 = fdiv float %imag_mul_phi, %conv115
  %81 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %81 to i64
  %node117 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %82 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node117, align 8
  %arrayidx118 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %82, i64 %idxprom116
  %amplitude119 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx118, i32 0, i32 0
  %real120 = getelementptr inbounds { float, float }, { float, float }* %amplitude119, i32 0, i32 0
  %imag121 = getelementptr inbounds { float, float }, { float, float }* %amplitude119, i32 0, i32 1
  store float %79, float* %real120, align 4
  store float %80, float* %imag121, align 4
  %83 = load i32, i32* %j, align 4
  %inc122 = add nsw i32 %83, 1
  store i32 %inc122, i32* %j, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %complex_mul_cont, %for.body.90
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %84 = load i32, i32* %i, align 4
  %inc125 = add nsw i32 %84, 1
  store i32 %inc125, i32* %i, align 4
  br label %for.cond.86

for.end.126:                                      ; preds = %for.cond.86
  %85 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %85)
  %86 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %87 = bitcast %struct.quantum_reg_struct* %86 to i8*
  %88 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 32, i32 8, i1 false)
  %89 = load i32, i32* %result, align 4
  store i32 %89, i32* %retval
  br label %return

return:                                           ; preds = %for.end.126, %if.then
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i64 @quantum_memman(i64) #1

declare <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real(<2 x float> %a.coerce) #2 {
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
define internal float @quantum_imag(<2 x float> %a.coerce) #2 {
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
