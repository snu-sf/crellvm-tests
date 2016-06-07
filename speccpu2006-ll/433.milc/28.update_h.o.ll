; ModuleID = 'update_h.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

@lattice = external global %struct.site*, align 8
@nflavors = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @update_h(double %eps) #0 {
entry:
  %eps.addr = alloca double, align 8
  store double %eps, double* %eps.addr, align 8
  call void @rephase(i32 0)
  %0 = load double, double* %eps.addr, align 8
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %1, i64 0
  %mom = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 9
  %2 = bitcast [4 x %struct.anti_hermitmat]* %mom to i8*
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx1 = getelementptr inbounds %struct.site, %struct.site* %3, i64 0
  %4 = bitcast %struct.site* %arrayidx1 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @imp_gauge_force(double %0, i32 %conv)
  call void @rephase(i32 1)
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx2 = getelementptr inbounds %struct.site, %struct.site* %5, i64 0
  %xxx = getelementptr inbounds %struct.site, %struct.site* %arrayidx2, i32 0, i32 14
  %6 = bitcast %struct.su3_vector* %xxx to i8*
  %7 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx3 = getelementptr inbounds %struct.site, %struct.site* %7, i64 0
  %8 = bitcast %struct.site* %arrayidx3 to i8*
  %sub.ptr.lhs.cast4 = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %8 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %conv7 = trunc i64 %sub.ptr.sub6 to i32
  %9 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx8 = getelementptr inbounds %struct.site, %struct.site* %9, i64 0
  %xxx9 = getelementptr inbounds %struct.site, %struct.site* %arrayidx8, i32 0, i32 14
  %10 = bitcast %struct.su3_vector* %xxx9 to i8*
  %11 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx10 = getelementptr inbounds %struct.site, %struct.site* %11, i64 0
  %12 = bitcast %struct.site* %arrayidx10 to i8*
  %sub.ptr.lhs.cast11 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %12 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %conv14 = trunc i64 %sub.ptr.sub13 to i32
  call void @dslash_fn(i32 %conv7, i32 %conv14, i32 1)
  %13 = load double, double* %eps.addr, align 8
  %14 = load i32, i32* @nflavors, align 4
  %15 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx15 = getelementptr inbounds %struct.site, %struct.site* %15, i64 0
  %xxx16 = getelementptr inbounds %struct.site, %struct.site* %arrayidx15, i32 0, i32 14
  %16 = bitcast %struct.su3_vector* %xxx16 to i8*
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx17 = getelementptr inbounds %struct.site, %struct.site* %17, i64 0
  %18 = bitcast %struct.site* %arrayidx17 to i8*
  %sub.ptr.lhs.cast18 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %18 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %conv21 = trunc i64 %sub.ptr.sub20 to i32
  call void @eo_fermion_force(double %13, i32 %14, i32 %conv21)
  ret void
}

declare void @rephase(i32) #1

declare void @imp_gauge_force(double, i32) #1

declare void @dslash_fn(i32, i32, i32) #1

declare void @eo_fermion_force(double, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
