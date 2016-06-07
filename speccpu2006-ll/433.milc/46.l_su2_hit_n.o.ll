; ModuleID = 'l_su2_hit_n.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind uwtable
define void @left_su2_hit_n(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %link) #0 {
entry:
  %u.addr = alloca %struct.su2_matrix*, align 8
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %link.addr = alloca %struct.su3_matrix*, align 8
  %m = alloca i32, align 4
  store %struct.su2_matrix* %u, %struct.su2_matrix** %u.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  store %struct.su3_matrix* %link, %struct.su3_matrix** %link.addr, align 8
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %2 = load i32, i32* %m, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %p.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %link.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i32, i32* %m, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32, i32* %q.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.su3_matrix*, %struct.su3_matrix** %link.addr, align 8
  %e5 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %7, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e5, i32 0, i64 %idxprom4
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx6, i32 0, i64 %idxprom3
  call void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* %1, %struct.complex* %arrayidx2, %struct.complex* %arrayidx7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %m, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @mult_su2_mat_vec_elem_n(%struct.su2_matrix*, %struct.complex*, %struct.complex*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
