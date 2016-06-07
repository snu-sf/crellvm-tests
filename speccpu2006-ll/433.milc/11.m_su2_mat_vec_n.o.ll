; ModuleID = 'm_su2_mat_vec_n.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* %u, %struct.complex* %x0, %struct.complex* %x1) #0 {
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
  %6 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %7 = load double, double* %real, align 8
  %real2 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %8 = load double, double* %real2, align 8
  %mul = fmul double %7, %8
  %9 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e3 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %9, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx4, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 1
  %10 = load double, double* %imag, align 8
  %imag6 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %11 = load double, double* %imag6, align 8
  %mul7 = fmul double %10, %11
  %sub = fsub double %mul, %mul7
  %real8 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 0
  store double %sub, double* %real8, align 8
  %12 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e9 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %12, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx10, i32 0, i64 0
  %real12 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx11, i32 0, i32 0
  %13 = load double, double* %real12, align 8
  %imag13 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %14 = load double, double* %imag13, align 8
  %mul14 = fmul double %13, %14
  %15 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e15 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %15, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx16, i32 0, i64 0
  %imag18 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx17, i32 0, i32 1
  %16 = load double, double* %imag18, align 8
  %real19 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %17 = load double, double* %real19, align 8
  %mul20 = fmul double %16, %17
  %add = fadd double %mul14, %mul20
  %imag21 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 1
  store double %add, double* %imag21, align 8
  %18 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e22 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %18, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e22, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx23, i32 0, i64 1
  %real25 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx24, i32 0, i32 0
  %19 = load double, double* %real25, align 8
  %real26 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %20 = load double, double* %real26, align 8
  %mul27 = fmul double %19, %20
  %21 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e28 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %21, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e28, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx29, i32 0, i64 1
  %imag31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 1
  %22 = load double, double* %imag31, align 8
  %imag32 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %23 = load double, double* %imag32, align 8
  %mul33 = fmul double %22, %23
  %sub34 = fsub double %mul27, %mul33
  %real35 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 0
  store double %sub34, double* %real35, align 8
  %24 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e36 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %24, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e36, i32 0, i64 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx37, i32 0, i64 1
  %real39 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx38, i32 0, i32 0
  %25 = load double, double* %real39, align 8
  %imag40 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %26 = load double, double* %imag40, align 8
  %mul41 = fmul double %25, %26
  %27 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e42 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %27, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e42, i32 0, i64 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx43, i32 0, i64 1
  %imag45 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx44, i32 0, i32 1
  %28 = load double, double* %imag45, align 8
  %real46 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %29 = load double, double* %real46, align 8
  %mul47 = fmul double %28, %29
  %add48 = fadd double %mul41, %mul47
  %imag49 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 1
  store double %add48, double* %imag49, align 8
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
  %36 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e58 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %36, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e58, i32 0, i64 1
  %arrayidx60 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx59, i32 0, i64 0
  %real61 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx60, i32 0, i32 0
  %37 = load double, double* %real61, align 8
  %real62 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %38 = load double, double* %real62, align 8
  %mul63 = fmul double %37, %38
  %39 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e64 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %39, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e64, i32 0, i64 1
  %arrayidx66 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx65, i32 0, i64 0
  %imag67 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx66, i32 0, i32 1
  %40 = load double, double* %imag67, align 8
  %imag68 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %41 = load double, double* %imag68, align 8
  %mul69 = fmul double %40, %41
  %sub70 = fsub double %mul63, %mul69
  %real71 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 0
  store double %sub70, double* %real71, align 8
  %42 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e72 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %42, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e72, i32 0, i64 1
  %arrayidx74 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx73, i32 0, i64 0
  %real75 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx74, i32 0, i32 0
  %43 = load double, double* %real75, align 8
  %imag76 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 1
  %44 = load double, double* %imag76, align 8
  %mul77 = fmul double %43, %44
  %45 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e78 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %45, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e78, i32 0, i64 1
  %arrayidx80 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx79, i32 0, i64 0
  %imag81 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx80, i32 0, i32 1
  %46 = load double, double* %imag81, align 8
  %real82 = getelementptr inbounds %struct.complex, %struct.complex* %t0, i32 0, i32 0
  %47 = load double, double* %real82, align 8
  %mul83 = fmul double %46, %47
  %add84 = fadd double %mul77, %mul83
  %imag85 = getelementptr inbounds %struct.complex, %struct.complex* %z0, i32 0, i32 1
  store double %add84, double* %imag85, align 8
  %48 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e86 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %48, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e86, i32 0, i64 1
  %arrayidx88 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx87, i32 0, i64 1
  %real89 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx88, i32 0, i32 0
  %49 = load double, double* %real89, align 8
  %real90 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %50 = load double, double* %real90, align 8
  %mul91 = fmul double %49, %50
  %51 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e92 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %51, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e92, i32 0, i64 1
  %arrayidx94 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx93, i32 0, i64 1
  %imag95 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx94, i32 0, i32 1
  %52 = load double, double* %imag95, align 8
  %imag96 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %53 = load double, double* %imag96, align 8
  %mul97 = fmul double %52, %53
  %sub98 = fsub double %mul91, %mul97
  %real99 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 0
  store double %sub98, double* %real99, align 8
  %54 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e100 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %54, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e100, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx101, i32 0, i64 1
  %real103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 0
  %55 = load double, double* %real103, align 8
  %imag104 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 1
  %56 = load double, double* %imag104, align 8
  %mul105 = fmul double %55, %56
  %57 = load %struct.su2_matrix*, %struct.su2_matrix** %u.addr, align 8
  %e106 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %57, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e106, i32 0, i64 1
  %arrayidx108 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx107, i32 0, i64 1
  %imag109 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx108, i32 0, i32 1
  %58 = load double, double* %imag109, align 8
  %real110 = getelementptr inbounds %struct.complex, %struct.complex* %t1, i32 0, i32 0
  %59 = load double, double* %real110, align 8
  %mul111 = fmul double %58, %59
  %add112 = fadd double %mul105, %mul111
  %imag113 = getelementptr inbounds %struct.complex, %struct.complex* %z1, i32 0, i32 1
  store double %add112, double* %imag113, align 8
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
