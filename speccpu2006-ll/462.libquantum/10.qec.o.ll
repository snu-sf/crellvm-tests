; ModuleID = 'qec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

@type = global i32 0, align 4
@width = global i32 0, align 4
@quantum_qec_counter.counter = internal global i32 0, align 4
@quantum_qec_counter.freq = internal global i32 1073741824, align 4

; Function Attrs: nounwind uwtable
define void @quantum_qec_set_status(i32 %stype, i32 %swidth) #0 {
entry:
  %stype.addr = alloca i32, align 4
  %swidth.addr = alloca i32, align 4
  store i32 %stype, i32* %stype.addr, align 4
  store i32 %swidth, i32* %swidth.addr, align 4
  %0 = load i32, i32* %stype.addr, align 4
  store i32 %0, i32* @type, align 4
  %1 = load i32, i32* %swidth.addr, align 4
  store i32 %1, i32* @width, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_get_status(i32* %ptype, i32* %pwidth) #0 {
entry:
  %ptype.addr = alloca i32*, align 8
  %pwidth.addr = alloca i32*, align 8
  store i32* %ptype, i32** %ptype.addr, align 8
  store i32* %pwidth, i32** %pwidth.addr, align 8
  %0 = load i32*, i32** %ptype.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @type, align 4
  %2 = load i32*, i32** %ptype.addr, align 8
  store i32 %1, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %pwidth.addr, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* @width, align 4
  %5 = load i32*, i32** %pwidth.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_encode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call float (...) @quantum_get_decoherence()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %width1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %width2, align 4
  %sub = sub nsw i32 %5, 1
  %cmp3 = icmp eq i32 %3, %sub
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 0
  %10 = load i32, i32* %width6, align 4
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, %11
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add, %struct.quantum_reg_struct* %12)
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %width7, align 4
  %mul = mul nsw i32 2, %14
  %15 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %mul, %15
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add8, %struct.quantum_reg_struct* %16)
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %width9, align 4
  %19 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %18, %19
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add10, i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %22, i32 0, i32 0
  %23 = load i32, i32* %width11, align 4
  %mul12 = mul nsw i32 2, %23
  %24 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %mul12, %24
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add13, i32 %25, %struct.quantum_reg_struct* %26)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width14 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %28, i32 0, i32 0
  %29 = load i32, i32* %width14, align 4
  %30 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %29, %30
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %27, i32 %add15, %struct.quantum_reg_struct* %31)
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %33, i32 0, i32 0
  %34 = load i32, i32* %width16, align 4
  %mul17 = mul nsw i32 2, %34
  %35 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %mul17, %35
  %36 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %32, i32 %add18, %struct.quantum_reg_struct* %36)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width20 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %38, i32 0, i32 0
  %39 = load i32, i32* %width20, align 4
  call void @quantum_qec_set_status(i32 1, i32 %39)
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width21 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %40, i32 0, i32 0
  %41 = load i32, i32* %width21, align 4
  %mul22 = mul nsw i32 %41, 3
  store i32 %mul22, i32* %width21, align 4
  ret void
}

declare float @quantum_get_decoherence(...) #1

declare void @quantum_set_decoherence(float) #1

declare void @quantum_hadamard(i32, %struct.quantum_reg_struct*) #1

declare void @quantum_cnot(i32, i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @quantum_qec_decode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %swidth = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call float (...) @quantum_get_decoherence()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %width1, align 4
  %div = sdiv i32 %1, 3
  store i32 %div, i32* %swidth, align 4
  call void @quantum_qec_set_status(i32 0, i32 0)
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %width2, align 4
  %div3 = sdiv i32 %3, 3
  %sub = sub nsw i32 %div3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %swidth, align 4
  %mul = mul nsw i32 2, %9
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %10
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32, i32* %swidth, align 4
  %14 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %13, %14
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add7, i32 %15, %struct.quantum_reg_struct* %16)
  %17 = load i32, i32* %swidth, align 4
  %mul8 = mul nsw i32 2, %17
  %18 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %mul8, %18
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add9, %struct.quantum_reg_struct* %19)
  %20 = load i32, i32* %swidth, align 4
  %21 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %20, %21
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add10, %struct.quantum_reg_struct* %22)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %swidth, align 4
  %mul11 = mul nsw i32 2, %24
  %25 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %mul11, %25
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %23, i32 %add12, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %swidth, align 4
  %29 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %28, %29
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %27, i32 %add13, %struct.quantum_reg_struct* %30)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.30, %for.end
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %swidth, align 4
  %cmp16 = icmp sle i32 %32, %33
  br i1 %cmp16, label %for.body.17, label %for.end.31

for.body.17:                                      ; preds = %for.cond.15
  %34 = load i32, i32* %swidth, align 4
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call18 = call i32 @quantum_bmeasure(i32 %34, %struct.quantum_reg_struct* %35)
  store i32 %call18, i32* %a, align 4
  %36 = load i32, i32* %swidth, align 4
  %mul19 = mul nsw i32 2, %36
  %37 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %mul19, %37
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call21 = call i32 @quantum_bmeasure(i32 %sub20, %struct.quantum_reg_struct* %38)
  store i32 %call21, i32* %b, align 4
  %39 = load i32, i32* %a, align 4
  %cmp22 = icmp eq i32 %39, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %for.body.17
  %40 = load i32, i32* %b, align 4
  %cmp23 = icmp eq i32 %40, 1
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %41 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %41, 1
  %42 = load i32, i32* %width.addr, align 4
  %cmp26 = icmp slt i32 %sub25, %42
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true.24
  %43 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %43, 1
  %44 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_z(i32 %sub28, %struct.quantum_reg_struct* %44)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %land.lhs.true.24, %land.lhs.true, %for.body.17
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.15

for.end.31:                                       ; preds = %for.cond.15
  ret void
}

declare i32 @quantum_bmeasure(i32, %struct.quantum_reg_struct*) #1

declare void @quantum_sigma_z(i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @quantum_qec_counter(i32 %inc, i32 %frequency, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %inc.addr = alloca i32, align 4
  %frequency.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %inc, i32* %inc.addr, align 4
  store i32 %frequency, i32* %frequency.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %inc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %inc.addr, align 4
  %2 = load i32, i32* @quantum_qec_counter.counter, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @quantum_qec_counter.counter, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %inc.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store i32 0, i32* @quantum_qec_counter.counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %frequency.addr, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %5 = load i32, i32* %frequency.addr, align 4
  store i32 %5, i32* @quantum_qec_counter.freq, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %6 = load i32, i32* @quantum_qec_counter.counter, align 4
  %7 = load i32, i32* @quantum_qec_counter.freq, align 4
  %cmp7 = icmp sge i32 %6, %7
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* @quantum_qec_counter.counter, align 4
  %8 = load i32, i32* @type, align 4
  %9 = load i32, i32* @width, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_decode(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* @type, align 4
  %12 = load i32, i32* @width, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_encode(i32 %11, i32 %12, %struct.quantum_reg_struct* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %14 = load i32, i32* @quantum_qec_counter.counter, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_x_ft(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %tmp = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* @type, align 4
  store i32 %0, i32* %tmp, align 4
  store i32 0, i32* @type, align 4
  %call = call float (...) @quantum_get_decoherence()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %1 = load i32, i32* %target.addr, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %1, %struct.quantum_reg_struct* %2)
  %3 = load i32, i32* %target.addr, align 4
  %4 = load i32, i32* @width, align 4
  %add = add nsw i32 %3, %4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add, %struct.quantum_reg_struct* %5)
  %6 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  %7 = load i32, i32* %target.addr, align 4
  %8 = load i32, i32* @width, align 4
  %mul = mul nsw i32 2, %8
  %add2 = add nsw i32 %7, %mul
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add2, %struct.quantum_reg_struct* %9)
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call3 = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %tmp, align 4
  store i32 %11, i32* @type, align 4
  ret void
}

declare void @quantum_sigma_x(i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @quantum_cnot_ft(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %tmp = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* @type, align 4
  store i32 %0, i32* %tmp, align 4
  store i32 0, i32* @type, align 4
  %call = call float (...) @quantum_get_decoherence()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %1 = load i32, i32* %control.addr, align 4
  %2 = load i32, i32* %target.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %control.addr, align 4
  %5 = load i32, i32* @width, align 4
  %add = add nsw i32 %4, %5
  %6 = load i32, i32* %target.addr, align 4
  %7 = load i32, i32* @width, align 4
  %add2 = add nsw i32 %6, %7
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %add2, %struct.quantum_reg_struct* %8)
  %9 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %9)
  %10 = load i32, i32* %control.addr, align 4
  %11 = load i32, i32* @width, align 4
  %mul = mul nsw i32 2, %11
  %add3 = add nsw i32 %10, %mul
  %12 = load i32, i32* %target.addr, align 4
  %13 = load i32, i32* @width, align 4
  %mul4 = mul nsw i32 2, %13
  %add5 = add nsw i32 %12, %mul4
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add3, i32 %add5, %struct.quantum_reg_struct* %14)
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call6 = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %tmp, align 4
  store i32 %16, i32* @type, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_toffoli_ft(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control1.addr = alloca i32, align 4
  %control2.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %mask = alloca i64, align 8
  store i32 %control1, i32* %control1.addr, align 4
  store i32 %control2, i32* %control2.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1, %sh_prom
  %1 = load i32, i32* %target.addr, align 4
  %2 = load i32, i32* @width, align 4
  %add = add nsw i32 %1, %2
  %sh_prom1 = zext i32 %add to i64
  %shl2 = shl i64 1, %sh_prom1
  %add3 = add i64 %shl, %shl2
  %3 = load i32, i32* %target.addr, align 4
  %4 = load i32, i32* @width, align 4
  %mul = mul nsw i32 2, %4
  %add4 = add nsw i32 %3, %mul
  %sh_prom5 = zext i32 %add4 to i64
  %shl6 = shl i64 1, %sh_prom5
  %add7 = add i64 %add3, %shl6
  store i64 %add7, i64* %mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c1, align 4
  store i32 0, i32* %c2, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %control1.addr, align 4
  %sh_prom8 = zext i32 %12 to i64
  %shl9 = shl i64 1, %sh_prom8
  %and = and i64 %11, %shl9
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node11, align 8
  %arrayidx12 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %15, i64 %idxprom10
  %state13 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx12, i32 0, i32 1
  %16 = load i64, i64* %state13, align 8
  %17 = load i32, i32* %control1.addr, align 4
  %18 = load i32, i32* @width, align 4
  %add14 = add nsw i32 %17, %18
  %sh_prom15 = zext i32 %add14 to i64
  %shl16 = shl i64 1, %sh_prom15
  %and17 = and i64 %16, %shl16
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %19 = load i32, i32* %c1, align 4
  %xor = xor i32 %19, 1
  store i32 %xor, i32* %c1, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  %20 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node22 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %21, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node22, align 8
  %arrayidx23 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %22, i64 %idxprom21
  %state24 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx23, i32 0, i32 1
  %23 = load i64, i64* %state24, align 8
  %24 = load i32, i32* %control1.addr, align 4
  %25 = load i32, i32* @width, align 4
  %mul25 = mul nsw i32 2, %25
  %add26 = add nsw i32 %24, %mul25
  %sh_prom27 = zext i32 %add26 to i64
  %shl28 = shl i64 1, %sh_prom27
  %and29 = and i64 %23, %shl28
  %tobool30 = icmp ne i64 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.20
  %26 = load i32, i32* %c1, align 4
  %xor32 = xor i32 %26, 1
  store i32 %xor32, i32* %c1, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.20
  %27 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %27 to i64
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node35 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node35, align 8
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %29, i64 %idxprom34
  %state37 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 1
  %30 = load i64, i64* %state37, align 8
  %31 = load i32, i32* %control2.addr, align 4
  %sh_prom38 = zext i32 %31 to i64
  %shl39 = shl i64 1, %sh_prom38
  %and40 = and i64 %30, %shl39
  %tobool41 = icmp ne i64 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.33
  store i32 1, i32* %c2, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.33
  %32 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %32 to i64
  %33 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node45 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %33, i32 0, i32 3
  %34 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node45, align 8
  %arrayidx46 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %34, i64 %idxprom44
  %state47 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx46, i32 0, i32 1
  %35 = load i64, i64* %state47, align 8
  %36 = load i32, i32* %control2.addr, align 4
  %37 = load i32, i32* @width, align 4
  %add48 = add nsw i32 %36, %37
  %sh_prom49 = zext i32 %add48 to i64
  %shl50 = shl i64 1, %sh_prom49
  %and51 = and i64 %35, %shl50
  %tobool52 = icmp ne i64 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.43
  %38 = load i32, i32* %c2, align 4
  %xor54 = xor i32 %38, 1
  store i32 %xor54, i32* %c2, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.43
  %39 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %39 to i64
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node57 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %40, i32 0, i32 3
  %41 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node57, align 8
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %41, i64 %idxprom56
  %state59 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 1
  %42 = load i64, i64* %state59, align 8
  %43 = load i32, i32* %control2.addr, align 4
  %44 = load i32, i32* @width, align 4
  %mul60 = mul nsw i32 2, %44
  %add61 = add nsw i32 %43, %mul60
  %sh_prom62 = zext i32 %add61 to i64
  %shl63 = shl i64 1, %sh_prom62
  %and64 = and i64 %42, %shl63
  %tobool65 = icmp ne i64 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.55
  %45 = load i32, i32* %c2, align 4
  %xor67 = xor i32 %45, 1
  store i32 %xor67, i32* %c2, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.55
  %46 = load i32, i32* %c1, align 4
  %cmp69 = icmp eq i32 %46, 1
  br i1 %cmp69, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %if.end.68
  %47 = load i32, i32* %c2, align 4
  %cmp70 = icmp eq i32 %47, 1
  br i1 %cmp70, label %if.then.71, label %if.end.81

if.then.71:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %48 to i64
  %49 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node73 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %49, i32 0, i32 3
  %50 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node73, align 8
  %arrayidx74 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %50, i64 %idxprom72
  %state75 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx74, i32 0, i32 1
  %51 = load i64, i64* %state75, align 8
  %52 = load i64, i64* %mask, align 8
  %xor76 = xor i64 %51, %52
  %53 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %53 to i64
  %54 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node78 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %54, i32 0, i32 3
  %55 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node78, align 8
  %arrayidx79 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %55, i64 %idxprom77
  %state80 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx79, i32 0, i32 1
  store i64 %xor76, i64* %state80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.71, %land.lhs.true, %if.end.68
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %57)
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %58)
  ret void
}

declare void @quantum_decohere(%struct.quantum_reg_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
