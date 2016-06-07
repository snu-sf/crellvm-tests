; ModuleID = 'qft.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

; Function Attrs: nounwind uwtable
define void @quantum_qft(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %8 = load i32, i32* %j, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %9, %struct.quantum_reg_struct* %10)
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %dec6 = add nsw i32 %11, -1
  store i32 %dec6, i32* %i, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  ret void
}

declare void @quantum_cond_phase(i32, i32, %struct.quantum_reg_struct*) #1

declare void @quantum_hadamard(i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @quantum_qft_inv(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase_inv(i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  ret void
}

declare void @quantum_cond_phase_inv(i32, i32, %struct.quantum_reg_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
