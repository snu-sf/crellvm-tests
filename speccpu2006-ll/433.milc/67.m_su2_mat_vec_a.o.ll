; ModuleID = 'm_su2_mat_vec_a.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @mult_su2_mat_vec_elem_a(%struct.su2_matrix* %u, %struct.complex* %x0, %struct.complex* %x1) #0 {
entry:
  %u.addr = alloca %struct.su2_matrix*, align 8
  %x0.addr = alloca %struct.complex*, align 8
  %x1.addr = alloca %struct.complex*, align 8
  %z0 = alloca %struct.complex, align 8
  %z1 = alloca %struct.complex, align 8
  %t0 = alloca %struct.complex, align 8
  %t1 = alloca %struct.complex, align 8
  store %struct.su2_matrix* %u, %struct.su2_matrix** %u.addr, align 8
  store %struct.complex* %x0, %struct.complex** %x0.addr, align 8
  store %struct.complex* %x1, %struct.complex** %x1.addr, align 8
  %0 = load %struct.complex*, %struct.complex** %x0.addr, align 8
  %1 = bitcast %struct.complex* %t0 to i8*
  %2 = bitcast %struct.complex* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %struct.complex*, %struct.complex** %x1.addr, align 8
  %4 = bitcast %struct.complex* %t1 to i8*
  %5 = bitcast %struct.complex* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %real = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %6 = load double, double* %real, align 8
  %7 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real2 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %8 = load double, double* %real2, align 8
  %mul = fmul double %6, %8
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %9 = load double, double* %imag, align 8
  %10 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e3 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %10, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx4, i32 0, i64 0
  %imag6 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 1
  %11 = load double, double* %imag6, align 8
  %mul7 = fmul double %9, %11
  %add = fadd double %mul, %mul7
  %real8 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 0
  store double %add, double* %real8, align 8
  %imag9 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %12 = load double, double* %imag9, align 8
  %13 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e10 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %13, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx11, i32 0, i64 0
  %real13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 0
  %14 = load double, double* %real13, align 8
  %mul14 = fmul double %12, %14
  %real15 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %15 = load double, double* %real15, align 8
  %16 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e16 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %16, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e16, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx17, i32 0, i64 0
  %imag19 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx18, i32 0, i32 1
  %17 = load double, double* %imag19, align 8
  %mul20 = fmul double %15, %17
  %sub = fsub double %mul14, %mul20
  %imag21 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 1
  store double %sub, double* %imag21, align 8
  %real22 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %18 = load double, double* %real22, align 8
  %19 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e23 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %19, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e23, i32 0, i64 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx24, i32 0, i64 1
  %real26 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 0
  %20 = load double, double* %real26, align 8
  %mul27 = fmul double %18, %20
  %imag28 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %21 = load double, double* %imag28, align 8
  %22 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e29 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %22, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e29, i32 0, i64 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx30, i32 0, i64 1
  %imag32 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx31, i32 0, i32 1
  %23 = load double, double* %imag32, align 8
  %mul33 = fmul double %21, %23
  %add34 = fadd double %mul27, %mul33
  %real35 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 0
  store double %add34, double* %real35, align 8
  %imag36 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %24 = load double, double* %imag36, align 8
  %25 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e37 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %25, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e37, i32 0, i64 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx38, i32 0, i64 1
  %real40 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx39, i32 0, i32 0
  %26 = load double, double* %real40, align 8
  %mul41 = fmul double %24, %26
  %real42 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %27 = load double, double* %real42, align 8
  %28 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e43 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %28, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e43, i32 0, i64 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx44, i32 0, i64 1
  %imag46 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx45, i32 0, i32 1
  %29 = load double, double* %imag46, align 8
  %mul47 = fmul double %27, %29
  %sub48 = fsub double %mul41, %mul47
  %imag49 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 1
  store double %sub48, double* %imag49, align 8
  %real50 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 0
  %30 = load double, double* %real50, align 8
  %real51 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 0
  %31 = load double, double* %real51, align 8
  %add52 = fadd double %30, %31
  %32 = load %struct.complex*, %struct.complex** %x0.addr, align 8
  %real53 = getelementptr inbounds %struct.complex, %struct.complex* %32, i32 0, i32 0
  store double %add52, double* %real53, align 8
  %imag54 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 1
  %33 = load double, double* %imag54, align 8
  %imag55 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 1
  %34 = load double, double* %imag55, align 8
  %add56 = fadd double %33, %34
  %35 = load %struct.complex*, %struct.complex** %x0.addr, align 8
  %imag57 = getelementptr inbounds %struct.complex, %struct.complex* %35, i32 0, i32 1
  store double %add56, double* %imag57, align 8
  %real58 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %36 = load double, double* %real58, align 8
  %37 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e59 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %37, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e59, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx60, i32 0, i64 0
  %real62 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx61, i32 0, i32 0
  %38 = load double, double* %real62, align 8
  %mul63 = fmul double %36, %38
  %imag64 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %39 = load double, double* %imag64, align 8
  %40 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e65 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %40, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e65, i32 0, i64 1
  %arrayidx67 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx66, i32 0, i64 0
  %imag68 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx67, i32 0, i32 1
  %41 = load double, double* %imag68, align 8
  %mul69 = fmul double %39, %41
  %add70 = fadd double %mul63, %mul69
  %real71 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 0
  store double %add70, double* %real71, align 8
  %imag72 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %42 = load double, double* %imag72, align 8
  %43 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e73 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %43, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e73, i32 0, i64 1
  %arrayidx75 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx74, i32 0, i64 0
  %real76 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx75, i32 0, i32 0
  %44 = load double, double* %real76, align 8
  %mul77 = fmul double %42, %44
  %real78 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %45 = load double, double* %real78, align 8
  %46 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e79 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %46, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e79, i32 0, i64 1
  %arrayidx81 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx80, i32 0, i64 0
  %imag82 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx81, i32 0, i32 1
  %47 = load double, double* %imag82, align 8
  %mul83 = fmul double %45, %47
  %sub84 = fsub double %mul77, %mul83
  %imag85 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 1
  store double %sub84, double* %imag85, align 8
  %real86 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %48 = load double, double* %real86, align 8
  %49 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e87 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %49, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e87, i32 0, i64 1
  %arrayidx89 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx88, i32 0, i64 1
  %real90 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx89, i32 0, i32 0
  %50 = load double, double* %real90, align 8
  %mul91 = fmul double %48, %50
  %imag92 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %51 = load double, double* %imag92, align 8
  %52 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e93 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %52, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e93, i32 0, i64 1
  %arrayidx95 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx94, i32 0, i64 1
  %imag96 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx95, i32 0, i32 1
  %53 = load double, double* %imag96, align 8
  %mul97 = fmul double %51, %53
  %add98 = fadd double %mul91, %mul97
  %real99 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 0
  store double %add98, double* %real99, align 8
  %imag100 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %54 = load double, double* %imag100, align 8
  %55 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e101 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %55, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e101, i32 0, i64 1
  %arrayidx103 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx102, i32 0, i64 1
  %real104 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx103, i32 0, i32 0
  %56 = load double, double* %real104, align 8
  %mul105 = fmul double %54, %56
  %real106 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %57 = load double, double* %real106, align 8
  %58 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e107 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %58, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e107, i32 0, i64 1
  %arrayidx109 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx108, i32 0, i64 1
  %imag110 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx109, i32 0, i32 1
  %59 = load double, double* %imag110, align 8
  %mul111 = fmul double %57, %59
  %sub112 = fsub double %mul105, %mul111
  %imag113 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 1
  store double %sub112, double* %imag113, align 8
  %real114 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 0
  %60 = load double, double* %real114, align 8
  %real115 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 0
  %61 = load double, double* %real115, align 8
  %add116 = fadd double %60, %61
  %62 = load %struct.complex*, %struct.complex** %x1.addr, align 8
  %real117 = getelementptr inbounds %struct.complex, %struct.complex* %62, i32 0, i32 0
  store double %add116, double* %real117, align 8
  %imag118 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 1
  %63 = load double, double* %imag118, align 8
  %imag119 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 1
  %64 = load double, double* %imag119, align 8
  %add120 = fadd double %63, %64
  %65 = load %struct.complex*, %struct.complex** %x1.addr, align 8
  %imag121 = getelementptr inbounds %struct.complex, %struct.complex* %65, i32 0, i32 1
  store double %add120, double* %imag121, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
