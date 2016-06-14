; ModuleID = 's_m_mat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @scalar_mult_su3_matrix(%struct.su3_matrix* %a, double %s, %struct.su3_matrix* %b) #0 {
entry:
  %a.addr = alloca %struct.su3_matrix*, align 8
  %s.addr = alloca double, align 8
  %b.addr = alloca %struct.su3_matrix*, align 8
  %ss = alloca double, align 8
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  store double %s, double* %s.addr, align 8
  store %struct.su3_matrix* %b, %struct.su3_matrix** %b.addr, align 8
  %0 = load double, double* %s.addr, align 8
  store double %0, double* %ss, align 8
  %1 = load double, double* %ss, align 8
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %3 = load double, double* %real, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e2 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %4, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx3, i32 0, i64 0
  %real5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  store double %mul, double* %real5, align 8
  %5 = load double, double* %ss, align 8
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e6 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %6, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx7, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 1
  %7 = load double, double* %imag, align 8
  %mul9 = fmul double %5, %7
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e10 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx11, i32 0, i64 0
  %imag13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  store double %mul9, double* %imag13, align 8
  %9 = load double, double* %ss, align 8
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e14 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %10, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e14, i32 0, i64 0
  %arrayidx16 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx15, i32 0, i64 1
  %real17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 0
  %11 = load double, double* %real17, align 8
  %mul18 = fmul double %9, %11
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e19 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e19, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx20, i32 0, i64 1
  %real22 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx21, i32 0, i32 0
  store double %mul18, double* %real22, align 8
  %13 = load double, double* %ss, align 8
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e23 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %14, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e23, i32 0, i64 0
  %arrayidx25 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx24, i32 0, i64 1
  %imag26 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 1
  %15 = load double, double* %imag26, align 8
  %mul27 = fmul double %13, %15
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 1
  %imag31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 1
  store double %mul27, double* %imag31, align 8
  %17 = load double, double* %ss, align 8
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e32 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %18, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e32, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx33, i32 0, i64 2
  %real35 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx34, i32 0, i32 0
  %19 = load double, double* %real35, align 8
  %mul36 = fmul double %17, %19
  %20 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e37 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %20, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e37, i32 0, i64 0
  %arrayidx39 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx38, i32 0, i64 2
  %real40 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx39, i32 0, i32 0
  store double %mul36, double* %real40, align 8
  %21 = load double, double* %ss, align 8
  %22 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e41 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %22, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e41, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx42, i32 0, i64 2
  %imag44 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx43, i32 0, i32 1
  %23 = load double, double* %imag44, align 8
  %mul45 = fmul double %21, %23
  %24 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e46 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %24, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e46, i32 0, i64 0
  %arrayidx48 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx47, i32 0, i64 2
  %imag49 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx48, i32 0, i32 1
  store double %mul45, double* %imag49, align 8
  %25 = load double, double* %ss, align 8
  %26 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e50 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %26, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx51, i32 0, i64 0
  %real53 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx52, i32 0, i32 0
  %27 = load double, double* %real53, align 8
  %mul54 = fmul double %25, %27
  %28 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e55 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %28, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e55, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx56, i32 0, i64 0
  %real58 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx57, i32 0, i32 0
  store double %mul54, double* %real58, align 8
  %29 = load double, double* %ss, align 8
  %30 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e59 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %30, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e59, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx60, i32 0, i64 0
  %imag62 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx61, i32 0, i32 1
  %31 = load double, double* %imag62, align 8
  %mul63 = fmul double %29, %31
  %32 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e64 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %32, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e64, i32 0, i64 1
  %arrayidx66 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx65, i32 0, i64 0
  %imag67 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx66, i32 0, i32 1
  store double %mul63, double* %imag67, align 8
  %33 = load double, double* %ss, align 8
  %34 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e68 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %34, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e68, i32 0, i64 1
  %arrayidx70 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx69, i32 0, i64 1
  %real71 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx70, i32 0, i32 0
  %35 = load double, double* %real71, align 8
  %mul72 = fmul double %33, %35
  %36 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e73 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %36, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e73, i32 0, i64 1
  %arrayidx75 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx74, i32 0, i64 1
  %real76 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx75, i32 0, i32 0
  store double %mul72, double* %real76, align 8
  %37 = load double, double* %ss, align 8
  %38 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e77 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %38, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e77, i32 0, i64 1
  %arrayidx79 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx78, i32 0, i64 1
  %imag80 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx79, i32 0, i32 1
  %39 = load double, double* %imag80, align 8
  %mul81 = fmul double %37, %39
  %40 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e82 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %40, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e82, i32 0, i64 1
  %arrayidx84 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx83, i32 0, i64 1
  %imag85 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx84, i32 0, i32 1
  store double %mul81, double* %imag85, align 8
  %41 = load double, double* %ss, align 8
  %42 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e86 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %42, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e86, i32 0, i64 1
  %arrayidx88 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx87, i32 0, i64 2
  %real89 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx88, i32 0, i32 0
  %43 = load double, double* %real89, align 8
  %mul90 = fmul double %41, %43
  %44 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e91 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %44, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e91, i32 0, i64 1
  %arrayidx93 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx92, i32 0, i64 2
  %real94 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx93, i32 0, i32 0
  store double %mul90, double* %real94, align 8
  %45 = load double, double* %ss, align 8
  %46 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e95 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %46, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e95, i32 0, i64 1
  %arrayidx97 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx96, i32 0, i64 2
  %imag98 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx97, i32 0, i32 1
  %47 = load double, double* %imag98, align 8
  %mul99 = fmul double %45, %47
  %48 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e100 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %48, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e100, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx101, i32 0, i64 2
  %imag103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 1
  store double %mul99, double* %imag103, align 8
  %49 = load double, double* %ss, align 8
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e104 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %50, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e104, i32 0, i64 2
  %arrayidx106 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx105, i32 0, i64 0
  %real107 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx106, i32 0, i32 0
  %51 = load double, double* %real107, align 8
  %mul108 = fmul double %49, %51
  %52 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e109 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %52, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e109, i32 0, i64 2
  %arrayidx111 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx110, i32 0, i64 0
  %real112 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx111, i32 0, i32 0
  store double %mul108, double* %real112, align 8
  %53 = load double, double* %ss, align 8
  %54 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e113 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %54, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e113, i32 0, i64 2
  %arrayidx115 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx114, i32 0, i64 0
  %imag116 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx115, i32 0, i32 1
  %55 = load double, double* %imag116, align 8
  %mul117 = fmul double %53, %55
  %56 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e118 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %56, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e118, i32 0, i64 2
  %arrayidx120 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx119, i32 0, i64 0
  %imag121 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx120, i32 0, i32 1
  store double %mul117, double* %imag121, align 8
  %57 = load double, double* %ss, align 8
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e122 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e122, i32 0, i64 2
  %arrayidx124 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx123, i32 0, i64 1
  %real125 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx124, i32 0, i32 0
  %59 = load double, double* %real125, align 8
  %mul126 = fmul double %57, %59
  %60 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e127 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %60, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e127, i32 0, i64 2
  %arrayidx129 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx128, i32 0, i64 1
  %real130 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx129, i32 0, i32 0
  store double %mul126, double* %real130, align 8
  %61 = load double, double* %ss, align 8
  %62 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e131 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %62, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e131, i32 0, i64 2
  %arrayidx133 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx132, i32 0, i64 1
  %imag134 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx133, i32 0, i32 1
  %63 = load double, double* %imag134, align 8
  %mul135 = fmul double %61, %63
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e136 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %64, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e136, i32 0, i64 2
  %arrayidx138 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx137, i32 0, i64 1
  %imag139 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx138, i32 0, i32 1
  store double %mul135, double* %imag139, align 8
  %65 = load double, double* %ss, align 8
  %66 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e140 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %66, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e140, i32 0, i64 2
  %arrayidx142 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx141, i32 0, i64 2
  %real143 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx142, i32 0, i32 0
  %67 = load double, double* %real143, align 8
  %mul144 = fmul double %65, %67
  %68 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e145 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %68, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e145, i32 0, i64 2
  %arrayidx147 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx146, i32 0, i64 2
  %real148 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx147, i32 0, i32 0
  store double %mul144, double* %real148, align 8
  %69 = load double, double* %ss, align 8
  %70 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e149 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %70, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e149, i32 0, i64 2
  %arrayidx151 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx150, i32 0, i64 2
  %imag152 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx151, i32 0, i32 1
  %71 = load double, double* %imag152, align 8
  %mul153 = fmul double %69, %71
  %72 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e154 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %72, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e154, i32 0, i64 2
  %arrayidx156 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx155, i32 0, i64 2
  %imag157 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx156, i32 0, i32 1
  store double %mul153, double* %imag157, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
