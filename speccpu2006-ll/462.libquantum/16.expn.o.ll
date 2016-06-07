; ModuleID = 'expn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

; Function Attrs: nounwind uwtable
define void @quantum_exp_mod_n(i32 %N, i32 %x, i32 %width_input, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width_input.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %width_input, i32* %width_input.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 2
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add, %struct.quantum_reg_struct* %1)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %width_input.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %N.addr, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %f, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %f, align 4
  %9 = load i32, i32* %f, align 4
  %mul4 = mul nsw i32 %9, %8
  store i32 %mul4, i32* %f, align 4
  %10 = load i32, i32* %f, align 4
  %11 = load i32, i32* %N.addr, align 4
  %rem5 = srem i32 %10, %11
  store i32 %rem5, i32* %f, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %13 = load i32, i32* %N.addr, align 4
  %14 = load i32, i32* %f, align 4
  %15 = load i32, i32* %width.addr, align 4
  %mul6 = mul nsw i32 3, %15
  %add7 = add nsw i32 %mul6, 1
  %16 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %add7, %16
  %17 = load i32, i32* %width.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @mul_mod_n(i32 %13, i32 %14, i32 %add8, i32 %17, %struct.quantum_reg_struct* %18)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  ret void
}

declare void @quantum_sigma_x(i32, %struct.quantum_reg_struct*) #1

declare void @mul_mod_n(i32, i32, i32, i32, %struct.quantum_reg_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
