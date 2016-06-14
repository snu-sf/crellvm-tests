; ModuleID = 'm_amat_hwvec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.half_wilson_vector = type { [2 x %struct.su3_vector] }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind uwtable
define void @mult_adj_su3_mat_hwvec(%struct.su3_matrix* %mat, %struct.half_wilson_vector* %src, %struct.half_wilson_vector* %dest) #0 {
entry:
  %mat.addr = alloca %struct.su3_matrix*, align 8
  %src.addr = alloca %struct.half_wilson_vector*, align 8
  %dest.addr = alloca %struct.half_wilson_vector*, align 8
  %a0r = alloca double, align 8
  %a0i = alloca double, align 8
  %a1r = alloca double, align 8
  %a1i = alloca double, align 8
  %a2r = alloca double, align 8
  %a2i = alloca double, align 8
  %b0r = alloca double, align 8
  %b0i = alloca double, align 8
  %b1r = alloca double, align 8
  %b1i = alloca double, align 8
  %b2r = alloca double, align 8
  %b2i = alloca double, align 8
  store %struct.su3_matrix* %mat, %struct.su3_matrix** %mat.addr, align 8
  store %struct.half_wilson_vector* %src, %struct.half_wilson_vector** %src.addr, align 8
  store %struct.half_wilson_vector* %dest, %struct.half_wilson_vector** %dest.addr, align 8
  %0 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %1 = load double, double* %real, align 8
  store double %1, double* %a0r, align 8
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e2 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx3, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  store double %3, double* %a0i, align 8
  %4 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h, i32 0, i64 0
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx5, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 0
  %real7 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx6, i32 0, i32 0
  %5 = load double, double* %real7, align 8
  store double %5, double* %b0r, align 8
  %6 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h8 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %6, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h8, i32 0, i64 0
  %c10 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c10, i32 0, i64 0
  %imag12 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx11, i32 0, i32 1
  %7 = load double, double* %imag12, align 8
  store double %7, double* %b0i, align 8
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e13 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e13, i32 0, i64 1
  %arrayidx15 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx14, i32 0, i64 0
  %real16 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx15, i32 0, i32 0
  %9 = load double, double* %real16, align 8
  store double %9, double* %a1r, align 8
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e17 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %10, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e17, i32 0, i64 1
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx18, i32 0, i64 0
  %imag20 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 1
  %11 = load double, double* %imag20, align 8
  store double %11, double* %a1i, align 8
  %12 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h21 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %12, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h21, i32 0, i64 0
  %c23 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c23, i32 0, i64 1
  %real25 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx24, i32 0, i32 0
  %13 = load double, double* %real25, align 8
  store double %13, double* %b1r, align 8
  %14 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h26 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %14, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h26, i32 0, i64 0
  %c28 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx27, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c28, i32 0, i64 1
  %imag30 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx29, i32 0, i32 1
  %15 = load double, double* %imag30, align 8
  store double %15, double* %b1i, align 8
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e31 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e31, i32 0, i64 2
  %arrayidx33 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx32, i32 0, i64 0
  %real34 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx33, i32 0, i32 0
  %17 = load double, double* %real34, align 8
  store double %17, double* %a2r, align 8
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e35 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %18, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e35, i32 0, i64 2
  %arrayidx37 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx36, i32 0, i64 0
  %imag38 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx37, i32 0, i32 1
  %19 = load double, double* %imag38, align 8
  store double %19, double* %a2i, align 8
  %20 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h39 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %20, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h39, i32 0, i64 0
  %c41 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c41, i32 0, i64 2
  %real43 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx42, i32 0, i32 0
  %21 = load double, double* %real43, align 8
  store double %21, double* %b2r, align 8
  %22 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h44 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %22, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h44, i32 0, i64 0
  %c46 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c46, i32 0, i64 2
  %imag48 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx47, i32 0, i32 1
  %23 = load double, double* %imag48, align 8
  store double %23, double* %b2i, align 8
  %24 = load double, double* %a0r, align 8
  %25 = load double, double* %b0r, align 8
  %mul = fmul double %24, %25
  %26 = load double, double* %a0i, align 8
  %27 = load double, double* %b0i, align 8
  %mul49 = fmul double %26, %27
  %add = fadd double %mul, %mul49
  %28 = load double, double* %a1r, align 8
  %29 = load double, double* %b1r, align 8
  %mul50 = fmul double %28, %29
  %add51 = fadd double %add, %mul50
  %30 = load double, double* %a1i, align 8
  %31 = load double, double* %b1i, align 8
  %mul52 = fmul double %30, %31
  %add53 = fadd double %add51, %mul52
  %32 = load double, double* %a2r, align 8
  %33 = load double, double* %b2r, align 8
  %mul54 = fmul double %32, %33
  %add55 = fadd double %add53, %mul54
  %34 = load double, double* %a2i, align 8
  %35 = load double, double* %b2i, align 8
  %mul56 = fmul double %34, %35
  %add57 = fadd double %add55, %mul56
  %36 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h58 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %36, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h58, i32 0, i64 0
  %c60 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c60, i32 0, i64 0
  %real62 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx61, i32 0, i32 0
  store double %add57, double* %real62, align 8
  %37 = load double, double* %a0r, align 8
  %38 = load double, double* %b0i, align 8
  %mul63 = fmul double %37, %38
  %39 = load double, double* %a0i, align 8
  %40 = load double, double* %b0r, align 8
  %mul64 = fmul double %39, %40
  %sub = fsub double %mul63, %mul64
  %41 = load double, double* %a1r, align 8
  %42 = load double, double* %b1i, align 8
  %mul65 = fmul double %41, %42
  %add66 = fadd double %sub, %mul65
  %43 = load double, double* %a1i, align 8
  %44 = load double, double* %b1r, align 8
  %mul67 = fmul double %43, %44
  %sub68 = fsub double %add66, %mul67
  %45 = load double, double* %a2r, align 8
  %46 = load double, double* %b2i, align 8
  %mul69 = fmul double %45, %46
  %add70 = fadd double %sub68, %mul69
  %47 = load double, double* %a2i, align 8
  %48 = load double, double* %b2r, align 8
  %mul71 = fmul double %47, %48
  %sub72 = fsub double %add70, %mul71
  %49 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h73 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %49, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h73, i32 0, i64 0
  %c75 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx74, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c75, i32 0, i64 0
  %imag77 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx76, i32 0, i32 1
  store double %sub72, double* %imag77, align 8
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e78 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %50, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e78, i32 0, i64 0
  %arrayidx80 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx79, i32 0, i64 1
  %real81 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx80, i32 0, i32 0
  %51 = load double, double* %real81, align 8
  store double %51, double* %a0r, align 8
  %52 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e82 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %52, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e82, i32 0, i64 0
  %arrayidx84 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx83, i32 0, i64 1
  %imag85 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx84, i32 0, i32 1
  %53 = load double, double* %imag85, align 8
  store double %53, double* %a0i, align 8
  %54 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h86 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %54, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h86, i32 0, i64 0
  %c88 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx87, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c88, i32 0, i64 0
  %real90 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx89, i32 0, i32 0
  %55 = load double, double* %real90, align 8
  store double %55, double* %b0r, align 8
  %56 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h91 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %56, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h91, i32 0, i64 0
  %c93 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx92, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c93, i32 0, i64 0
  %imag95 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx94, i32 0, i32 1
  %57 = load double, double* %imag95, align 8
  store double %57, double* %b0i, align 8
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e96 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e96, i32 0, i64 1
  %arrayidx98 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx97, i32 0, i64 1
  %real99 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx98, i32 0, i32 0
  %59 = load double, double* %real99, align 8
  store double %59, double* %a1r, align 8
  %60 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e100 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %60, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e100, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx101, i32 0, i64 1
  %imag103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 1
  %61 = load double, double* %imag103, align 8
  store double %61, double* %a1i, align 8
  %62 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h104 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %62, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h104, i32 0, i64 0
  %c106 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c106, i32 0, i64 1
  %real108 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx107, i32 0, i32 0
  %63 = load double, double* %real108, align 8
  store double %63, double* %b1r, align 8
  %64 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h109 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %64, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h109, i32 0, i64 0
  %c111 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c111, i32 0, i64 1
  %imag113 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx112, i32 0, i32 1
  %65 = load double, double* %imag113, align 8
  store double %65, double* %b1i, align 8
  %66 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e114 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %66, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e114, i32 0, i64 2
  %arrayidx116 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx115, i32 0, i64 1
  %real117 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx116, i32 0, i32 0
  %67 = load double, double* %real117, align 8
  store double %67, double* %a2r, align 8
  %68 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e118 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %68, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e118, i32 0, i64 2
  %arrayidx120 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx119, i32 0, i64 1
  %imag121 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx120, i32 0, i32 1
  %69 = load double, double* %imag121, align 8
  store double %69, double* %a2i, align 8
  %70 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h122 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %70, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h122, i32 0, i64 0
  %c124 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c124, i32 0, i64 2
  %real126 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx125, i32 0, i32 0
  %71 = load double, double* %real126, align 8
  store double %71, double* %b2r, align 8
  %72 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h127 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %72, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h127, i32 0, i64 0
  %c129 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c129, i32 0, i64 2
  %imag131 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx130, i32 0, i32 1
  %73 = load double, double* %imag131, align 8
  store double %73, double* %b2i, align 8
  %74 = load double, double* %a0r, align 8
  %75 = load double, double* %b0r, align 8
  %mul132 = fmul double %74, %75
  %76 = load double, double* %a0i, align 8
  %77 = load double, double* %b0i, align 8
  %mul133 = fmul double %76, %77
  %add134 = fadd double %mul132, %mul133
  %78 = load double, double* %a1r, align 8
  %79 = load double, double* %b1r, align 8
  %mul135 = fmul double %78, %79
  %add136 = fadd double %add134, %mul135
  %80 = load double, double* %a1i, align 8
  %81 = load double, double* %b1i, align 8
  %mul137 = fmul double %80, %81
  %add138 = fadd double %add136, %mul137
  %82 = load double, double* %a2r, align 8
  %83 = load double, double* %b2r, align 8
  %mul139 = fmul double %82, %83
  %add140 = fadd double %add138, %mul139
  %84 = load double, double* %a2i, align 8
  %85 = load double, double* %b2i, align 8
  %mul141 = fmul double %84, %85
  %add142 = fadd double %add140, %mul141
  %86 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h143 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %86, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h143, i32 0, i64 0
  %c145 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c145, i32 0, i64 1
  %real147 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx146, i32 0, i32 0
  store double %add142, double* %real147, align 8
  %87 = load double, double* %a0r, align 8
  %88 = load double, double* %b0i, align 8
  %mul148 = fmul double %87, %88
  %89 = load double, double* %a0i, align 8
  %90 = load double, double* %b0r, align 8
  %mul149 = fmul double %89, %90
  %sub150 = fsub double %mul148, %mul149
  %91 = load double, double* %a1r, align 8
  %92 = load double, double* %b1i, align 8
  %mul151 = fmul double %91, %92
  %add152 = fadd double %sub150, %mul151
  %93 = load double, double* %a1i, align 8
  %94 = load double, double* %b1r, align 8
  %mul153 = fmul double %93, %94
  %sub154 = fsub double %add152, %mul153
  %95 = load double, double* %a2r, align 8
  %96 = load double, double* %b2i, align 8
  %mul155 = fmul double %95, %96
  %add156 = fadd double %sub154, %mul155
  %97 = load double, double* %a2i, align 8
  %98 = load double, double* %b2r, align 8
  %mul157 = fmul double %97, %98
  %sub158 = fsub double %add156, %mul157
  %99 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h159 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %99, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h159, i32 0, i64 0
  %c161 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx160, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c161, i32 0, i64 1
  %imag163 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx162, i32 0, i32 1
  store double %sub158, double* %imag163, align 8
  %100 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e164 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %100, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e164, i32 0, i64 0
  %arrayidx166 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx165, i32 0, i64 2
  %real167 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx166, i32 0, i32 0
  %101 = load double, double* %real167, align 8
  store double %101, double* %a0r, align 8
  %102 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e168 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %102, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e168, i32 0, i64 0
  %arrayidx170 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx169, i32 0, i64 2
  %imag171 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx170, i32 0, i32 1
  %103 = load double, double* %imag171, align 8
  store double %103, double* %a0i, align 8
  %104 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h172 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %104, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h172, i32 0, i64 0
  %c174 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c174, i32 0, i64 0
  %real176 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx175, i32 0, i32 0
  %105 = load double, double* %real176, align 8
  store double %105, double* %b0r, align 8
  %106 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h177 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %106, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h177, i32 0, i64 0
  %c179 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c179, i32 0, i64 0
  %imag181 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx180, i32 0, i32 1
  %107 = load double, double* %imag181, align 8
  store double %107, double* %b0i, align 8
  %108 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e182 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %108, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e182, i32 0, i64 1
  %arrayidx184 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx183, i32 0, i64 2
  %real185 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx184, i32 0, i32 0
  %109 = load double, double* %real185, align 8
  store double %109, double* %a1r, align 8
  %110 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e186 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %110, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e186, i32 0, i64 1
  %arrayidx188 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx187, i32 0, i64 2
  %imag189 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx188, i32 0, i32 1
  %111 = load double, double* %imag189, align 8
  store double %111, double* %a1i, align 8
  %112 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h190 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %112, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h190, i32 0, i64 0
  %c192 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c192, i32 0, i64 1
  %real194 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx193, i32 0, i32 0
  %113 = load double, double* %real194, align 8
  store double %113, double* %b1r, align 8
  %114 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h195 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %114, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h195, i32 0, i64 0
  %c197 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c197, i32 0, i64 1
  %imag199 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx198, i32 0, i32 1
  %115 = load double, double* %imag199, align 8
  store double %115, double* %b1i, align 8
  %116 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e200 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %116, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e200, i32 0, i64 2
  %arrayidx202 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx201, i32 0, i64 2
  %real203 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx202, i32 0, i32 0
  %117 = load double, double* %real203, align 8
  store double %117, double* %a2r, align 8
  %118 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e204 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %118, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e204, i32 0, i64 2
  %arrayidx206 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx205, i32 0, i64 2
  %imag207 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx206, i32 0, i32 1
  %119 = load double, double* %imag207, align 8
  store double %119, double* %a2i, align 8
  %120 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h208 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %120, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h208, i32 0, i64 0
  %c210 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c210, i32 0, i64 2
  %real212 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx211, i32 0, i32 0
  %121 = load double, double* %real212, align 8
  store double %121, double* %b2r, align 8
  %122 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h213 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %122, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h213, i32 0, i64 0
  %c215 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c215, i32 0, i64 2
  %imag217 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx216, i32 0, i32 1
  %123 = load double, double* %imag217, align 8
  store double %123, double* %b2i, align 8
  %124 = load double, double* %a0r, align 8
  %125 = load double, double* %b0r, align 8
  %mul218 = fmul double %124, %125
  %126 = load double, double* %a0i, align 8
  %127 = load double, double* %b0i, align 8
  %mul219 = fmul double %126, %127
  %add220 = fadd double %mul218, %mul219
  %128 = load double, double* %a1r, align 8
  %129 = load double, double* %b1r, align 8
  %mul221 = fmul double %128, %129
  %add222 = fadd double %add220, %mul221
  %130 = load double, double* %a1i, align 8
  %131 = load double, double* %b1i, align 8
  %mul223 = fmul double %130, %131
  %add224 = fadd double %add222, %mul223
  %132 = load double, double* %a2r, align 8
  %133 = load double, double* %b2r, align 8
  %mul225 = fmul double %132, %133
  %add226 = fadd double %add224, %mul225
  %134 = load double, double* %a2i, align 8
  %135 = load double, double* %b2i, align 8
  %mul227 = fmul double %134, %135
  %add228 = fadd double %add226, %mul227
  %136 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h229 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %136, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h229, i32 0, i64 0
  %c231 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c231, i32 0, i64 2
  %real233 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx232, i32 0, i32 0
  store double %add228, double* %real233, align 8
  %137 = load double, double* %a0r, align 8
  %138 = load double, double* %b0i, align 8
  %mul234 = fmul double %137, %138
  %139 = load double, double* %a0i, align 8
  %140 = load double, double* %b0r, align 8
  %mul235 = fmul double %139, %140
  %sub236 = fsub double %mul234, %mul235
  %141 = load double, double* %a1r, align 8
  %142 = load double, double* %b1i, align 8
  %mul237 = fmul double %141, %142
  %add238 = fadd double %sub236, %mul237
  %143 = load double, double* %a1i, align 8
  %144 = load double, double* %b1r, align 8
  %mul239 = fmul double %143, %144
  %sub240 = fsub double %add238, %mul239
  %145 = load double, double* %a2r, align 8
  %146 = load double, double* %b2i, align 8
  %mul241 = fmul double %145, %146
  %add242 = fadd double %sub240, %mul241
  %147 = load double, double* %a2i, align 8
  %148 = load double, double* %b2r, align 8
  %mul243 = fmul double %147, %148
  %sub244 = fsub double %add242, %mul243
  %149 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h245 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %149, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h245, i32 0, i64 0
  %c247 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c247, i32 0, i64 2
  %imag249 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx248, i32 0, i32 1
  store double %sub244, double* %imag249, align 8
  %150 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e250 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %150, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e250, i32 0, i64 0
  %arrayidx252 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx251, i32 0, i64 0
  %real253 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx252, i32 0, i32 0
  %151 = load double, double* %real253, align 8
  store double %151, double* %a0r, align 8
  %152 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e254 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %152, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e254, i32 0, i64 0
  %arrayidx256 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx255, i32 0, i64 0
  %imag257 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx256, i32 0, i32 1
  %153 = load double, double* %imag257, align 8
  store double %153, double* %a0i, align 8
  %154 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h258 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %154, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h258, i32 0, i64 1
  %c260 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c260, i32 0, i64 0
  %real262 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx261, i32 0, i32 0
  %155 = load double, double* %real262, align 8
  store double %155, double* %b0r, align 8
  %156 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h263 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %156, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h263, i32 0, i64 1
  %c265 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c265, i32 0, i64 0
  %imag267 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx266, i32 0, i32 1
  %157 = load double, double* %imag267, align 8
  store double %157, double* %b0i, align 8
  %158 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e268 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %158, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e268, i32 0, i64 1
  %arrayidx270 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx269, i32 0, i64 0
  %real271 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx270, i32 0, i32 0
  %159 = load double, double* %real271, align 8
  store double %159, double* %a1r, align 8
  %160 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e272 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %160, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e272, i32 0, i64 1
  %arrayidx274 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx273, i32 0, i64 0
  %imag275 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx274, i32 0, i32 1
  %161 = load double, double* %imag275, align 8
  store double %161, double* %a1i, align 8
  %162 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h276 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %162, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h276, i32 0, i64 1
  %c278 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx277, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c278, i32 0, i64 1
  %real280 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx279, i32 0, i32 0
  %163 = load double, double* %real280, align 8
  store double %163, double* %b1r, align 8
  %164 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h281 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %164, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h281, i32 0, i64 1
  %c283 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx282, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c283, i32 0, i64 1
  %imag285 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx284, i32 0, i32 1
  %165 = load double, double* %imag285, align 8
  store double %165, double* %b1i, align 8
  %166 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e286 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %166, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e286, i32 0, i64 2
  %arrayidx288 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx287, i32 0, i64 0
  %real289 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx288, i32 0, i32 0
  %167 = load double, double* %real289, align 8
  store double %167, double* %a2r, align 8
  %168 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e290 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %168, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e290, i32 0, i64 2
  %arrayidx292 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx291, i32 0, i64 0
  %imag293 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx292, i32 0, i32 1
  %169 = load double, double* %imag293, align 8
  store double %169, double* %a2i, align 8
  %170 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h294 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %170, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h294, i32 0, i64 1
  %c296 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx295, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c296, i32 0, i64 2
  %real298 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx297, i32 0, i32 0
  %171 = load double, double* %real298, align 8
  store double %171, double* %b2r, align 8
  %172 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h299 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %172, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h299, i32 0, i64 1
  %c301 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c301, i32 0, i64 2
  %imag303 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx302, i32 0, i32 1
  %173 = load double, double* %imag303, align 8
  store double %173, double* %b2i, align 8
  %174 = load double, double* %a0r, align 8
  %175 = load double, double* %b0r, align 8
  %mul304 = fmul double %174, %175
  %176 = load double, double* %a0i, align 8
  %177 = load double, double* %b0i, align 8
  %mul305 = fmul double %176, %177
  %add306 = fadd double %mul304, %mul305
  %178 = load double, double* %a1r, align 8
  %179 = load double, double* %b1r, align 8
  %mul307 = fmul double %178, %179
  %add308 = fadd double %add306, %mul307
  %180 = load double, double* %a1i, align 8
  %181 = load double, double* %b1i, align 8
  %mul309 = fmul double %180, %181
  %add310 = fadd double %add308, %mul309
  %182 = load double, double* %a2r, align 8
  %183 = load double, double* %b2r, align 8
  %mul311 = fmul double %182, %183
  %add312 = fadd double %add310, %mul311
  %184 = load double, double* %a2i, align 8
  %185 = load double, double* %b2i, align 8
  %mul313 = fmul double %184, %185
  %add314 = fadd double %add312, %mul313
  %186 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h315 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %186, i32 0, i32 0
  %arrayidx316 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h315, i32 0, i64 1
  %c317 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c317, i32 0, i64 0
  %real319 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx318, i32 0, i32 0
  store double %add314, double* %real319, align 8
  %187 = load double, double* %a0r, align 8
  %188 = load double, double* %b0i, align 8
  %mul320 = fmul double %187, %188
  %189 = load double, double* %a0i, align 8
  %190 = load double, double* %b0r, align 8
  %mul321 = fmul double %189, %190
  %sub322 = fsub double %mul320, %mul321
  %191 = load double, double* %a1r, align 8
  %192 = load double, double* %b1i, align 8
  %mul323 = fmul double %191, %192
  %add324 = fadd double %sub322, %mul323
  %193 = load double, double* %a1i, align 8
  %194 = load double, double* %b1r, align 8
  %mul325 = fmul double %193, %194
  %sub326 = fsub double %add324, %mul325
  %195 = load double, double* %a2r, align 8
  %196 = load double, double* %b2i, align 8
  %mul327 = fmul double %195, %196
  %add328 = fadd double %sub326, %mul327
  %197 = load double, double* %a2i, align 8
  %198 = load double, double* %b2r, align 8
  %mul329 = fmul double %197, %198
  %sub330 = fsub double %add328, %mul329
  %199 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h331 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %199, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h331, i32 0, i64 1
  %c333 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c333, i32 0, i64 0
  %imag335 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx334, i32 0, i32 1
  store double %sub330, double* %imag335, align 8
  %200 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e336 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %200, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e336, i32 0, i64 0
  %arrayidx338 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx337, i32 0, i64 1
  %real339 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx338, i32 0, i32 0
  %201 = load double, double* %real339, align 8
  store double %201, double* %a0r, align 8
  %202 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e340 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %202, i32 0, i32 0
  %arrayidx341 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e340, i32 0, i64 0
  %arrayidx342 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx341, i32 0, i64 1
  %imag343 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx342, i32 0, i32 1
  %203 = load double, double* %imag343, align 8
  store double %203, double* %a0i, align 8
  %204 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h344 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %204, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h344, i32 0, i64 1
  %c346 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c346, i32 0, i64 0
  %real348 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx347, i32 0, i32 0
  %205 = load double, double* %real348, align 8
  store double %205, double* %b0r, align 8
  %206 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h349 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %206, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h349, i32 0, i64 1
  %c351 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx350, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c351, i32 0, i64 0
  %imag353 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx352, i32 0, i32 1
  %207 = load double, double* %imag353, align 8
  store double %207, double* %b0i, align 8
  %208 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e354 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %208, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e354, i32 0, i64 1
  %arrayidx356 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx355, i32 0, i64 1
  %real357 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx356, i32 0, i32 0
  %209 = load double, double* %real357, align 8
  store double %209, double* %a1r, align 8
  %210 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e358 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %210, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e358, i32 0, i64 1
  %arrayidx360 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx359, i32 0, i64 1
  %imag361 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx360, i32 0, i32 1
  %211 = load double, double* %imag361, align 8
  store double %211, double* %a1i, align 8
  %212 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h362 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %212, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h362, i32 0, i64 1
  %c364 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx363, i32 0, i32 0
  %arrayidx365 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c364, i32 0, i64 1
  %real366 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx365, i32 0, i32 0
  %213 = load double, double* %real366, align 8
  store double %213, double* %b1r, align 8
  %214 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h367 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %214, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h367, i32 0, i64 1
  %c369 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx368, i32 0, i32 0
  %arrayidx370 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c369, i32 0, i64 1
  %imag371 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx370, i32 0, i32 1
  %215 = load double, double* %imag371, align 8
  store double %215, double* %b1i, align 8
  %216 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e372 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %216, i32 0, i32 0
  %arrayidx373 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e372, i32 0, i64 2
  %arrayidx374 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx373, i32 0, i64 1
  %real375 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx374, i32 0, i32 0
  %217 = load double, double* %real375, align 8
  store double %217, double* %a2r, align 8
  %218 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e376 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %218, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e376, i32 0, i64 2
  %arrayidx378 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx377, i32 0, i64 1
  %imag379 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx378, i32 0, i32 1
  %219 = load double, double* %imag379, align 8
  store double %219, double* %a2i, align 8
  %220 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h380 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %220, i32 0, i32 0
  %arrayidx381 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h380, i32 0, i64 1
  %c382 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c382, i32 0, i64 2
  %real384 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx383, i32 0, i32 0
  %221 = load double, double* %real384, align 8
  store double %221, double* %b2r, align 8
  %222 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h385 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %222, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h385, i32 0, i64 1
  %c387 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx386, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c387, i32 0, i64 2
  %imag389 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx388, i32 0, i32 1
  %223 = load double, double* %imag389, align 8
  store double %223, double* %b2i, align 8
  %224 = load double, double* %a0r, align 8
  %225 = load double, double* %b0r, align 8
  %mul390 = fmul double %224, %225
  %226 = load double, double* %a0i, align 8
  %227 = load double, double* %b0i, align 8
  %mul391 = fmul double %226, %227
  %add392 = fadd double %mul390, %mul391
  %228 = load double, double* %a1r, align 8
  %229 = load double, double* %b1r, align 8
  %mul393 = fmul double %228, %229
  %add394 = fadd double %add392, %mul393
  %230 = load double, double* %a1i, align 8
  %231 = load double, double* %b1i, align 8
  %mul395 = fmul double %230, %231
  %add396 = fadd double %add394, %mul395
  %232 = load double, double* %a2r, align 8
  %233 = load double, double* %b2r, align 8
  %mul397 = fmul double %232, %233
  %add398 = fadd double %add396, %mul397
  %234 = load double, double* %a2i, align 8
  %235 = load double, double* %b2i, align 8
  %mul399 = fmul double %234, %235
  %add400 = fadd double %add398, %mul399
  %236 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h401 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %236, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h401, i32 0, i64 1
  %c403 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx402, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c403, i32 0, i64 1
  %real405 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx404, i32 0, i32 0
  store double %add400, double* %real405, align 8
  %237 = load double, double* %a0r, align 8
  %238 = load double, double* %b0i, align 8
  %mul406 = fmul double %237, %238
  %239 = load double, double* %a0i, align 8
  %240 = load double, double* %b0r, align 8
  %mul407 = fmul double %239, %240
  %sub408 = fsub double %mul406, %mul407
  %241 = load double, double* %a1r, align 8
  %242 = load double, double* %b1i, align 8
  %mul409 = fmul double %241, %242
  %add410 = fadd double %sub408, %mul409
  %243 = load double, double* %a1i, align 8
  %244 = load double, double* %b1r, align 8
  %mul411 = fmul double %243, %244
  %sub412 = fsub double %add410, %mul411
  %245 = load double, double* %a2r, align 8
  %246 = load double, double* %b2i, align 8
  %mul413 = fmul double %245, %246
  %add414 = fadd double %sub412, %mul413
  %247 = load double, double* %a2i, align 8
  %248 = load double, double* %b2r, align 8
  %mul415 = fmul double %247, %248
  %sub416 = fsub double %add414, %mul415
  %249 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h417 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %249, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h417, i32 0, i64 1
  %c419 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx418, i32 0, i32 0
  %arrayidx420 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c419, i32 0, i64 1
  %imag421 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx420, i32 0, i32 1
  store double %sub416, double* %imag421, align 8
  %250 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e422 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %250, i32 0, i32 0
  %arrayidx423 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e422, i32 0, i64 0
  %arrayidx424 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx423, i32 0, i64 2
  %real425 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx424, i32 0, i32 0
  %251 = load double, double* %real425, align 8
  store double %251, double* %a0r, align 8
  %252 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e426 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %252, i32 0, i32 0
  %arrayidx427 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e426, i32 0, i64 0
  %arrayidx428 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx427, i32 0, i64 2
  %imag429 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx428, i32 0, i32 1
  %253 = load double, double* %imag429, align 8
  store double %253, double* %a0i, align 8
  %254 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h430 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %254, i32 0, i32 0
  %arrayidx431 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h430, i32 0, i64 1
  %c432 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c432, i32 0, i64 0
  %real434 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx433, i32 0, i32 0
  %255 = load double, double* %real434, align 8
  store double %255, double* %b0r, align 8
  %256 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h435 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %256, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h435, i32 0, i64 1
  %c437 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx436, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c437, i32 0, i64 0
  %imag439 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx438, i32 0, i32 1
  %257 = load double, double* %imag439, align 8
  store double %257, double* %b0i, align 8
  %258 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e440 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %258, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e440, i32 0, i64 1
  %arrayidx442 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx441, i32 0, i64 2
  %real443 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx442, i32 0, i32 0
  %259 = load double, double* %real443, align 8
  store double %259, double* %a1r, align 8
  %260 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e444 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %260, i32 0, i32 0
  %arrayidx445 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e444, i32 0, i64 1
  %arrayidx446 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx445, i32 0, i64 2
  %imag447 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx446, i32 0, i32 1
  %261 = load double, double* %imag447, align 8
  store double %261, double* %a1i, align 8
  %262 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h448 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %262, i32 0, i32 0
  %arrayidx449 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h448, i32 0, i64 1
  %c450 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx449, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c450, i32 0, i64 1
  %real452 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx451, i32 0, i32 0
  %263 = load double, double* %real452, align 8
  store double %263, double* %b1r, align 8
  %264 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h453 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %264, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h453, i32 0, i64 1
  %c455 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx454, i32 0, i32 0
  %arrayidx456 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c455, i32 0, i64 1
  %imag457 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx456, i32 0, i32 1
  %265 = load double, double* %imag457, align 8
  store double %265, double* %b1i, align 8
  %266 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e458 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %266, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e458, i32 0, i64 2
  %arrayidx460 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx459, i32 0, i64 2
  %real461 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx460, i32 0, i32 0
  %267 = load double, double* %real461, align 8
  store double %267, double* %a2r, align 8
  %268 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e462 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %268, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e462, i32 0, i64 2
  %arrayidx464 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx463, i32 0, i64 2
  %imag465 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx464, i32 0, i32 1
  %269 = load double, double* %imag465, align 8
  store double %269, double* %a2i, align 8
  %270 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h466 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %270, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h466, i32 0, i64 1
  %c468 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c468, i32 0, i64 2
  %real470 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx469, i32 0, i32 0
  %271 = load double, double* %real470, align 8
  store double %271, double* %b2r, align 8
  %272 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %h471 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %272, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h471, i32 0, i64 1
  %c473 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx472, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c473, i32 0, i64 2
  %imag475 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx474, i32 0, i32 1
  %273 = load double, double* %imag475, align 8
  store double %273, double* %b2i, align 8
  %274 = load double, double* %a0r, align 8
  %275 = load double, double* %b0r, align 8
  %mul476 = fmul double %274, %275
  %276 = load double, double* %a0i, align 8
  %277 = load double, double* %b0i, align 8
  %mul477 = fmul double %276, %277
  %add478 = fadd double %mul476, %mul477
  %278 = load double, double* %a1r, align 8
  %279 = load double, double* %b1r, align 8
  %mul479 = fmul double %278, %279
  %add480 = fadd double %add478, %mul479
  %280 = load double, double* %a1i, align 8
  %281 = load double, double* %b1i, align 8
  %mul481 = fmul double %280, %281
  %add482 = fadd double %add480, %mul481
  %282 = load double, double* %a2r, align 8
  %283 = load double, double* %b2r, align 8
  %mul483 = fmul double %282, %283
  %add484 = fadd double %add482, %mul483
  %284 = load double, double* %a2i, align 8
  %285 = load double, double* %b2i, align 8
  %mul485 = fmul double %284, %285
  %add486 = fadd double %add484, %mul485
  %286 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h487 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %286, i32 0, i32 0
  %arrayidx488 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h487, i32 0, i64 1
  %c489 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c489, i32 0, i64 2
  %real491 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx490, i32 0, i32 0
  store double %add486, double* %real491, align 8
  %287 = load double, double* %a0r, align 8
  %288 = load double, double* %b0i, align 8
  %mul492 = fmul double %287, %288
  %289 = load double, double* %a0i, align 8
  %290 = load double, double* %b0r, align 8
  %mul493 = fmul double %289, %290
  %sub494 = fsub double %mul492, %mul493
  %291 = load double, double* %a1r, align 8
  %292 = load double, double* %b1i, align 8
  %mul495 = fmul double %291, %292
  %add496 = fadd double %sub494, %mul495
  %293 = load double, double* %a1i, align 8
  %294 = load double, double* %b1r, align 8
  %mul497 = fmul double %293, %294
  %sub498 = fsub double %add496, %mul497
  %295 = load double, double* %a2r, align 8
  %296 = load double, double* %b2i, align 8
  %mul499 = fmul double %295, %296
  %add500 = fadd double %sub498, %mul499
  %297 = load double, double* %a2i, align 8
  %298 = load double, double* %b2r, align 8
  %mul501 = fmul double %297, %298
  %sub502 = fsub double %add500, %mul501
  %299 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %h503 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %299, i32 0, i32 0
  %arrayidx504 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h503, i32 0, i64 1
  %c505 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx504, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c505, i32 0, i64 2
  %imag507 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx506, i32 0, i32 1
  store double %sub502, double* %imag507, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
