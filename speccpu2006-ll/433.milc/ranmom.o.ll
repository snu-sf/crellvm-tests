; ModuleID = 'ranmom.c'
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

; Function Attrs: nounwind uwtable
define void @ranmom() #0 {
entry:
  %i = alloca i32, align 4
  %dir = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %0, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %dir, align 4
  %cmp2 = icmp sle i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** %s, align 8
  %mom = getelementptr inbounds %struct.site, %struct.site* %5, i32 0, i32 9
  %arrayidx = getelementptr inbounds [4 x %struct.anti_hermitmat], [4 x %struct.anti_hermitmat]* %mom, i32 0, i64 %idxprom
  %6 = load %struct.site*, %struct.site** %s, align 8
  %site_prn = getelementptr inbounds %struct.site, %struct.site* %6, i32 0, i32 6
  call void @random_anti_hermitian(%struct.anti_hermitmat* %arrayidx, %struct.double_prn* %site_prn)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %7 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* %i, align 4
  %9 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %9, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  ret void
}

declare void @random_anti_hermitian(%struct.anti_hermitmat*, %struct.double_prn*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
