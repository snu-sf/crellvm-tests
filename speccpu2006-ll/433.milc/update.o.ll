; ModuleID = 'update.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

@steps = external global i32, align 4
@epsilon = external global double, align 8
@nflavors = external global i32, align 4
@lattice = external global %struct.site*, align 8
@mass = external global double, align 8
@niter = external global i32, align 4
@rsqmin = external global double, align 8

; Function Attrs: nounwind uwtable
define i32 @update() #0 {
entry:
  %retval = alloca i32, align 4
  %step = alloca i32, align 4
  %iters = alloca i32, align 4
  %final_rsq = alloca double, align 8
  %cg_time = alloca double, align 8
  %old_cg_time = alloca double, align 8
  %next_cg_time = alloca double, align 8
  store i32 0, i32* %iters, align 4
  call void @ranmom()
  store i32 1, i32* %step, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %step, align 4
  %1 = load i32, i32* @steps, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* @epsilon, align 8
  %3 = load i32, i32* @nflavors, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %conv, 8.000000e+00
  %sub = fsub double 5.000000e-01, %div
  %mul = fmul double %2, %sub
  call void @update_u(double %mul)
  %4 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %4, i64 0
  %phi = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 11
  %5 = bitcast %struct.su3_vector* %phi to i8*
  %6 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx1 = getelementptr inbounds %struct.site, %struct.site* %6, i64 0
  %7 = bitcast %struct.site* %arrayidx1 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  %8 = load double, double* @mass, align 8
  call void @grsource_imp(i32 %conv2, double %8, i32 2)
  store double -1.000000e+06, double* %cg_time, align 8
  %9 = load double, double* @epsilon, align 8
  %10 = load i32, i32* @nflavors, align 4
  %conv3 = sitofp i32 %10 to double
  %mul4 = fmul double %9, %conv3
  %div5 = fdiv double %mul4, 8.000000e+00
  call void @update_u(double %div5)
  %11 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx6 = getelementptr inbounds %struct.site, %struct.site* %11, i64 0
  %phi7 = getelementptr inbounds %struct.site, %struct.site* %arrayidx6, i32 0, i32 11
  %12 = bitcast %struct.su3_vector* %phi7 to i8*
  %13 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx8 = getelementptr inbounds %struct.site, %struct.site* %13, i64 0
  %14 = bitcast %struct.site* %arrayidx8 to i8*
  %sub.ptr.lhs.cast9 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %14 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %conv12 = trunc i64 %sub.ptr.sub11 to i32
  %15 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx13 = getelementptr inbounds %struct.site, %struct.site* %15, i64 0
  %xxx = getelementptr inbounds %struct.site, %struct.site* %arrayidx13, i32 0, i32 14
  %16 = bitcast %struct.su3_vector* %xxx to i8*
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx14 = getelementptr inbounds %struct.site, %struct.site* %17, i64 0
  %18 = bitcast %struct.site* %arrayidx14 to i8*
  %sub.ptr.lhs.cast15 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %18 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %conv18 = trunc i64 %sub.ptr.sub17 to i32
  %19 = load double, double* @mass, align 8
  %20 = load i32, i32* @niter, align 4
  %21 = load double, double* @rsqmin, align 8
  %call = call i32 @ks_congrad(i32 %conv12, i32 %conv18, double %19, i32 %20, double %21, i32 2, double* %final_rsq)
  %22 = load i32, i32* %iters, align 4
  %add = add nsw i32 %22, %call
  store i32 %add, i32* %iters, align 4
  %23 = load i32, i32* %step, align 4
  %conv19 = sitofp i32 %23 to double
  %sub20 = fsub double %conv19, 5.000000e-01
  %24 = load double, double* @epsilon, align 8
  %mul21 = fmul double %sub20, %24
  store double %mul21, double* %cg_time, align 8
  %25 = load double, double* @epsilon, align 8
  call void @update_h(double %25)
  %26 = load double, double* @epsilon, align 8
  %mul22 = fmul double %26, 5.000000e-01
  call void @update_u(double %mul22)
  call void @rephase(i32 0)
  call void @reunitarize()
  call void @rephase(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %step, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %step, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* @steps, align 4
  %cmp23 = icmp sgt i32 %28, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %29 = load i32, i32* %iters, align 4
  %30 = load i32, i32* @steps, align 4
  %div25 = sdiv i32 %29, %30
  store i32 %div25, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  store i32 -99, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @ranmom() #1

declare void @update_u(double) #1

declare void @grsource_imp(i32, double, i32) #1

declare i32 @ks_congrad(i32, i32, double, i32, double, i32, double*) #1

declare void @update_h(double) #1

declare void @rephase(i32) #1

declare void @reunitarize() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
