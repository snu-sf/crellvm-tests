; ModuleID = 'omuln.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

; Function Attrs: nounwind uwtable
define void @emul(i32 %a, i32 %L, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %i, align 4
  %shr = ashr i32 %2, %3
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 %mul, 2
  %5 = load i32, i32* %L.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %6, %7
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add, i32 %5, i32 %add1, %struct.quantum_reg_struct* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @quantum_toffoli(i32, i32, i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @muln(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %L = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %L, align 4
  %1 = load i32, i32* %ctl.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %2
  %add2 = add nsw i32 %mul1, 2
  %3 = load i32, i32* %L, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %1, i32 %add2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %a.addr, align 4
  %6 = load i32, i32* %N.addr, align 4
  %rem = srem i32 %5, %6
  %7 = load i32, i32* %L, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @emul(i32 %rem, i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  %10 = load i32, i32* %ctl.addr, align 4
  %11 = load i32, i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %11
  %add4 = add nsw i32 %mul3, 2
  %12 = load i32, i32* %L, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %10, i32 %add4, i32 %12, %struct.quantum_reg_struct* %13)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ctl.addr, align 4
  %17 = load i32, i32* %width.addr, align 4
  %mul5 = mul nsw i32 2, %17
  %add6 = add nsw i32 %mul5, 2
  %18 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %add6, %18
  %19 = load i32, i32* %L, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %16, i32 %add7, i32 %19, %struct.quantum_reg_struct* %20)
  %21 = load i32, i32* %N.addr, align 4
  %22 = load i32, i32* %i, align 4
  %shl = shl i32 1, %22
  %23 = load i32, i32* %a.addr, align 4
  %mul8 = mul nsw i32 %shl, %23
  %24 = load i32, i32* %N.addr, align 4
  %rem9 = srem i32 %mul8, %24
  %25 = load i32, i32* %width.addr, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @add_mod_n(i32 %21, i32 %rem9, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %ctl.addr, align 4
  %28 = load i32, i32* %width.addr, align 4
  %mul10 = mul nsw i32 2, %28
  %add11 = add nsw i32 %mul10, 2
  %29 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %add11, %29
  %30 = load i32, i32* %L, align 4
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %add12, i32 %30, %struct.quantum_reg_struct* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @add_mod_n(i32, i32, i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @muln_inv(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %L = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %L, align 4
  %1 = load i32, i32* %N.addr, align 4
  %2 = load i32, i32* %a.addr, align 4
  %call = call i32 @quantum_inverse_mod(i32 %1, i32 %2)
  store i32 %call, i32* %a.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %ctl.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %6
  %add2 = add nsw i32 %mul1, 2
  %7 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %add2, %7
  %8 = load i32, i32* %L, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %5, i32 %add3, i32 %8, %struct.quantum_reg_struct* %9)
  %10 = load i32, i32* %N.addr, align 4
  %11 = load i32, i32* %N.addr, align 4
  %12 = load i32, i32* %i, align 4
  %shl = shl i32 1, %12
  %13 = load i32, i32* %a.addr, align 4
  %mul4 = mul nsw i32 %shl, %13
  %14 = load i32, i32* %N.addr, align 4
  %rem = srem i32 %mul4, %14
  %sub5 = sub nsw i32 %11, %rem
  %15 = load i32, i32* %width.addr, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @add_mod_n(i32 %10, i32 %sub5, i32 %15, %struct.quantum_reg_struct* %16)
  %17 = load i32, i32* %ctl.addr, align 4
  %18 = load i32, i32* %width.addr, align 4
  %mul6 = mul nsw i32 2, %18
  %add7 = add nsw i32 %mul6, 2
  %19 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %add7, %19
  %20 = load i32, i32* %L, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %17, i32 %add8, i32 %20, %struct.quantum_reg_struct* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %ctl.addr, align 4
  %24 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %24
  %add10 = add nsw i32 %mul9, 2
  %25 = load i32, i32* %L, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %23, i32 %add10, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %a.addr, align 4
  %28 = load i32, i32* %N.addr, align 4
  %rem11 = srem i32 %27, %28
  %29 = load i32, i32* %L, align 4
  %30 = load i32, i32* %width.addr, align 4
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @emul(i32 %rem11, i32 %29, i32 %30, %struct.quantum_reg_struct* %31)
  %32 = load i32, i32* %ctl.addr, align 4
  %33 = load i32, i32* %width.addr, align 4
  %mul12 = mul nsw i32 2, %33
  %add13 = add nsw i32 %mul12, 2
  %34 = load i32, i32* %L, align 4
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %32, i32 %add13, i32 %34, %struct.quantum_reg_struct* %35)
  ret void
}

declare i32 @quantum_inverse_mod(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @mul_mod_n(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %ctl.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muln(i32 %0, i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %ctl.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads_omuln_controlled(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %N.addr, align 4
  %9 = load i32, i32* %a.addr, align 4
  %10 = load i32, i32* %ctl.addr, align 4
  %11 = load i32, i32* %width.addr, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muln_inv(i32 %8, i32 %9, i32 %10, i32 %11, %struct.quantum_reg_struct* %12)
  ret void
}

declare void @quantum_swaptheleads_omuln_controlled(i32, i32, %struct.quantum_reg_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
