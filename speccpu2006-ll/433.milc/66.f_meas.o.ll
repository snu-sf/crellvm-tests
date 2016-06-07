; ModuleID = 'f_meas.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

@valid_longlinks = external global i32, align 4
@valid_fatlinks = external global i32, align 4
@lattice = external global %struct.site*, align 8
@even_sites_on_node = external global i32, align 4
@sites_on_node = external global i32, align 4
@volume = external global i32, align 4
@this_node = external global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"PBP: mass %e     %e  %e ( %d of %d )\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"FACTION: mass = %e,  %e ( %d of %d )\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @f_meas_imp(i32 %phi_off, i32 %xxx_off, double %mass) #0 {
entry:
  %phi_off.addr = alloca i32, align 4
  %xxx_off.addr = alloca i32, align 4
  %mass.addr = alloca double, align 8
  %r_psi_bar_psi_even = alloca double, align 8
  %r_psi_bar_psi_odd = alloca double, align 8
  %r_ferm_action = alloca double, align 8
  %i = alloca i32, align 4
  %st = alloca %struct.site*, align 8
  %rpbp_e = alloca double, align 8
  %rpbp_o = alloca double, align 8
  %rfaction = alloca double, align 8
  %cc = alloca %struct.complex, align 8
  %npbp_reps = alloca i32, align 4
  %jpbp_reps = alloca i32, align 4
  %coerce = alloca %struct.complex, align 8
  %coerce17 = alloca %struct.complex, align 8
  %coerce29 = alloca %struct.complex, align 8
  store i32 %phi_off, i32* %phi_off.addr, align 4
  store i32 %xxx_off, i32* %xxx_off.addr, align 4
  store double %mass, double* %mass.addr, align 8
  store i32 1, i32* %npbp_reps, align 4
  %0 = load i32, i32* @valid_longlinks, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (...) @load_longlinks()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @valid_fatlinks, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (...) @load_fatlinks()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %jpbp_reps, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %if.end.3
  %2 = load i32, i32* %jpbp_reps, align 4
  %3 = load i32, i32* %npbp_reps, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %rfaction, align 8
  store double 0.000000e+00, double* %rpbp_o, align 8
  store double 0.000000e+00, double* %rpbp_e, align 8
  %4 = load i32, i32* %phi_off.addr, align 4
  %5 = load double, double* %mass.addr, align 8
  call void @grsource_imp(i32 %4, double %5, i32 3)
  %6 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %6, i64 0
  %g_rand = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 16
  %7 = bitcast %struct.su3_vector* %g_rand to i8*
  %8 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx5 = getelementptr inbounds %struct.site, %struct.site* %8, i64 0
  %9 = bitcast %struct.site* %arrayidx5 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %10 = load i32, i32* %xxx_off.addr, align 4
  %11 = load i32, i32* %phi_off.addr, align 4
  %12 = load double, double* %mass.addr, align 8
  %call = call i32 @mat_invert_uml(i32 %conv, i32 %10, i32 %11, double %12)
  store i32 0, i32* %i, align 4
  %13 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %13, %struct.site** %st, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @even_sites_on_node, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %16 = load %struct.site*, %struct.site** %st, align 8
  %17 = bitcast %struct.site* %16 to i8*
  %18 = load i32, i32* %phi_off.addr, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %19 = bitcast i8* %add.ptr to %struct.su3_vector*
  %20 = load %struct.site*, %struct.site** %st, align 8
  %21 = bitcast %struct.site* %20 to i8*
  %22 = load i32, i32* %xxx_off.addr, align 4
  %idx.ext10 = sext i32 %22 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %21, i64 %idx.ext10
  %23 = bitcast i8* %add.ptr11 to %struct.su3_vector*
  %call12 = call { double, double } @su3_dot(%struct.su3_vector* %19, %struct.su3_vector* %23)
  %24 = bitcast %struct.complex* %coerce to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = extractvalue { double, double } %call12, 0
  store double %26, double* %25, align 8
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = extractvalue { double, double } %call12, 1
  store double %28, double* %27, align 8
  %29 = bitcast %struct.complex* %cc to i8*
  %30 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %real = getelementptr inbounds %struct.complex, %struct.complex* %cc, i32 0, i32 0
  %31 = load double, double* %real, align 8
  %32 = load double, double* %rfaction, align 8
  %add = fadd double %32, %31
  store double %add, double* %rfaction, align 8
  %33 = load %struct.site*, %struct.site** %st, align 8
  %g_rand13 = getelementptr inbounds %struct.site, %struct.site* %33, i32 0, i32 16
  %34 = load %struct.site*, %struct.site** %st, align 8
  %35 = bitcast %struct.site* %34 to i8*
  %36 = load i32, i32* %xxx_off.addr, align 4
  %idx.ext14 = sext i32 %36 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %35, i64 %idx.ext14
  %37 = bitcast i8* %add.ptr15 to %struct.su3_vector*
  %call16 = call { double, double } @su3_dot(%struct.su3_vector* %g_rand13, %struct.su3_vector* %37)
  %38 = bitcast %struct.complex* %coerce17 to { double, double }*
  %39 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 0
  %40 = extractvalue { double, double } %call16, 0
  store double %40, double* %39, align 8
  %41 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 1
  %42 = extractvalue { double, double } %call16, 1
  store double %42, double* %41, align 8
  %43 = bitcast %struct.complex* %cc to i8*
  %44 = bitcast %struct.complex* %coerce17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %real18 = getelementptr inbounds %struct.complex, %struct.complex* %cc, i32 0, i32 0
  %45 = load double, double* %real18, align 8
  %46 = load double, double* %rpbp_e, align 8
  %add19 = fadd double %46, %45
  store double %add19, double* %rpbp_e, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  %48 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %48, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %st, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %49 = load i32, i32* @even_sites_on_node, align 4
  store i32 %49, i32* %i, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx20 = getelementptr inbounds %struct.site, %struct.site* %51, i64 %idxprom
  store %struct.site* %arrayidx20, %struct.site** %st, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.32, %for.end
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* @sites_on_node, align 4
  %cmp22 = icmp slt i32 %52, %53
  br i1 %cmp22, label %for.body.24, label %for.end.35

for.body.24:                                      ; preds = %for.cond.21
  %54 = load %struct.site*, %struct.site** %st, align 8
  %g_rand25 = getelementptr inbounds %struct.site, %struct.site* %54, i32 0, i32 16
  %55 = load %struct.site*, %struct.site** %st, align 8
  %56 = bitcast %struct.site* %55 to i8*
  %57 = load i32, i32* %xxx_off.addr, align 4
  %idx.ext26 = sext i32 %57 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %56, i64 %idx.ext26
  %58 = bitcast i8* %add.ptr27 to %struct.su3_vector*
  %call28 = call { double, double } @su3_dot(%struct.su3_vector* %g_rand25, %struct.su3_vector* %58)
  %59 = bitcast %struct.complex* %coerce29 to { double, double }*
  %60 = getelementptr { double, double }, { double, double }* %59, i32 0, i32 0
  %61 = extractvalue { double, double } %call28, 0
  store double %61, double* %60, align 8
  %62 = getelementptr { double, double }, { double, double }* %59, i32 0, i32 1
  %63 = extractvalue { double, double } %call28, 1
  store double %63, double* %62, align 8
  %64 = bitcast %struct.complex* %cc to i8*
  %65 = bitcast %struct.complex* %coerce29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false)
  %real30 = getelementptr inbounds %struct.complex, %struct.complex* %cc, i32 0, i32 0
  %66 = load double, double* %real30, align 8
  %67 = load double, double* %rpbp_o, align 8
  %add31 = fadd double %67, %66
  store double %add31, double* %rpbp_o, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.24
  %68 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %68, 1
  store i32 %inc33, i32* %i, align 4
  %69 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.site, %struct.site* %69, i32 1
  store %struct.site* %incdec.ptr34, %struct.site** %st, align 8
  br label %for.cond.21

for.end.35:                                       ; preds = %for.cond.21
  call void @g_doublesum(double* %rpbp_o)
  call void @g_doublesum(double* %rpbp_e)
  call void @g_doublesum(double* %rfaction)
  %70 = load double, double* %rpbp_o, align 8
  %71 = load i32, i32* @volume, align 4
  %conv36 = sitofp i32 %71 to double
  %div = fdiv double 2.000000e+00, %conv36
  %mul = fmul double %70, %div
  store double %mul, double* %r_psi_bar_psi_odd, align 8
  %72 = load double, double* %rpbp_e, align 8
  %73 = load i32, i32* @volume, align 4
  %conv37 = sitofp i32 %73 to double
  %div38 = fdiv double 2.000000e+00, %conv37
  %mul39 = fmul double %72, %div38
  store double %mul39, double* %r_psi_bar_psi_even, align 8
  %74 = load double, double* %rfaction, align 8
  %75 = load i32, i32* @volume, align 4
  %conv40 = sitofp i32 %75 to double
  %div41 = fdiv double 1.000000e+00, %conv40
  %mul42 = fmul double %74, %div41
  store double %mul42, double* %r_ferm_action, align 8
  %76 = load i32, i32* @this_node, align 4
  %cmp43 = icmp eq i32 %76, 0
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %for.end.35
  %77 = load double, double* %mass.addr, align 8
  %78 = load double, double* %r_psi_bar_psi_even, align 8
  %79 = load double, double* %r_psi_bar_psi_odd, align 8
  %80 = load i32, i32* %jpbp_reps, align 4
  %add46 = add nsw i32 %80, 1
  %81 = load i32, i32* %npbp_reps, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), double %77, double %78, double %79, i32 %add46, i32 %81)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %for.end.35
  %82 = load i32, i32* @this_node, align 4
  %cmp49 = icmp eq i32 %82, 0
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.48
  %83 = load double, double* %mass.addr, align 8
  %84 = load double, double* %r_ferm_action, align 8
  %85 = load i32, i32* %jpbp_reps, align 4
  %add52 = add nsw i32 %85, 1
  %86 = load i32, i32* %npbp_reps, align 4
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), double %83, double %84, i32 %add52, i32 %86)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.48
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %87 = load i32, i32* %jpbp_reps, align 4
  %inc56 = add nsw i32 %87, 1
  store i32 %inc56, i32* %jpbp_reps, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  ret void
}

declare void @load_longlinks(...) #1

declare void @load_fatlinks(...) #1

declare void @grsource_imp(i32, double, i32) #1

declare i32 @mat_invert_uml(i32, i32, i32, double) #1

declare { double, double } @su3_dot(%struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @g_doublesum(double*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
