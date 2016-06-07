; ModuleID = 'update_u.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@valid_longlinks = external global i32, align 4
@valid_fatlinks = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @update_u(double %eps) #0 {
entry:
  %eps.addr = alloca double, align 8
  %i = alloca i32, align 4
  %dir = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %link = alloca %struct.su3_matrix*, align 8
  %temp1 = alloca %struct.su3_matrix, align 8
  %temp2 = alloca %struct.su3_matrix, align 8
  %htemp = alloca %struct.su3_matrix, align 8
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  %t4 = alloca double, align 8
  %t5 = alloca double, align 8
  %t6 = alloca double, align 8
  store double %eps, double* %eps.addr, align 8
  %0 = load double, double* %eps.addr, align 8
  %div = fdiv double %0, 2.000000e+00
  store double %div, double* %t2, align 8
  %1 = load double, double* %eps.addr, align 8
  %div1 = fdiv double %1, 3.000000e+00
  store double %div1, double* %t3, align 8
  %2 = load double, double* %eps.addr, align 8
  %div2 = fdiv double %2, 4.000000e+00
  store double %div2, double* %t4, align 8
  %3 = load double, double* %eps.addr, align 8
  %div3 = fdiv double %3, 5.000000e+00
  store double %div3, double* %t5, align 8
  %4 = load double, double* %eps.addr, align 8
  %div4 = fdiv double %4, 6.000000e+00
  store double %div4, double* %t6, align 8
  store i32 0, i32* %i, align 4
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %5, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %dir, align 4
  %cmp6 = icmp sle i32 %8, 3
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %9 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.site*, %struct.site** %s, align 8
  %mom = getelementptr inbounds %struct.site, %struct.site* %10, i32 0, i32 9
  %arrayidx = getelementptr inbounds [4 x %struct.anti_hermitmat], [4 x %struct.anti_hermitmat]* %mom, i32 0, i64 %idxprom
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %arrayidx, %struct.su3_matrix* %htemp)
  %11 = load i32, i32* %dir, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.site*, %struct.site** %s, align 8
  %link9 = getelementptr inbounds %struct.site, %struct.site* %12, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link9, i32 0, i64 %idxprom8
  store %struct.su3_matrix* %arrayidx10, %struct.su3_matrix** %link, align 8
  %13 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %13, %struct.su3_matrix* %temp1)
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  %15 = load double, double* %t6, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %14, %struct.su3_matrix* %temp1, double %15, %struct.su3_matrix* %temp2)
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1)
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  %17 = load double, double* %t5, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %16, %struct.su3_matrix* %temp1, double %17, %struct.su3_matrix* %temp2)
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1)
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  %19 = load double, double* %t4, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %18, %struct.su3_matrix* %temp1, double %19, %struct.su3_matrix* %temp2)
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1)
  %20 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  %21 = load double, double* %t3, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %20, %struct.su3_matrix* %temp1, double %21, %struct.su3_matrix* %temp2)
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1)
  %22 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  %23 = load double, double* %t2, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %22, %struct.su3_matrix* %temp1, double %23, %struct.su3_matrix* %temp2)
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1)
  %24 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  %25 = load double, double* %eps.addr, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %24, %struct.su3_matrix* %temp1, double %25, %struct.su3_matrix* %temp2)
  %26 = load %struct.su3_matrix*, %struct.su3_matrix** %link, align 8
  call void @su3mat_copy(%struct.su3_matrix* %temp2, %struct.su3_matrix* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %27 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %28, 1
  store i32 %inc12, i32* %i, align 4
  %29 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %29, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i32 0, i32* @valid_longlinks, align 4
  store i32 0, i32* @valid_fatlinks, align 4
  ret void
}

declare void @uncompress_anti_hermitian(%struct.anti_hermitmat*, %struct.su3_matrix*) #1

declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @scalar_mult_add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, double, %struct.su3_matrix*) #1

declare void @su3mat_copy(%struct.su3_matrix*, %struct.su3_matrix*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
