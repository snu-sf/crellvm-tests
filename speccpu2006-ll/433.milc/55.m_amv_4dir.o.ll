; ModuleID = 'm_amv_4dir.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind uwtable
define void @mult_adj_su3_mat_vec_4dir(%struct.su3_matrix* %mat, %struct.su3_vector* %src, %struct.su3_vector* %dest) #0 {
entry:
  %mat.addr = alloca %struct.su3_matrix*, align 8
  %src.addr = alloca %struct.su3_vector*, align 8
  %dest.addr = alloca %struct.su3_vector*, align 8
  %n = alloca i32, align 4
  %c0r = alloca double, align 8
  %c0i = alloca double, align 8
  %c1r = alloca double, align 8
  %c1i = alloca double, align 8
  %c2r = alloca double, align 8
  %c2i = alloca double, align 8
  %br = alloca double, align 8
  %bi = alloca double, align 8
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a = alloca %struct.su3_matrix*, align 8
  %b = alloca %struct.su3_vector*, align 8
  %c = alloca %struct.su3_vector*, align 8
  store %struct.su3_matrix* %mat, %struct.su3_matrix** %mat.addr, align 8
  store %struct.su3_vector* %src, %struct.su3_vector** %src.addr, align 8
  store %struct.su3_vector* %dest, %struct.su3_vector** %dest.addr, align 8
  %0 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  store %struct.su3_matrix* %0, %struct.su3_matrix** %a, align 8
  %1 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  store %struct.su3_vector* %1, %struct.su3_vector** %c, align 8
  %2 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  store %struct.su3_vector* %2, %struct.su3_vector** %b, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %5 = load double, double* %real, align 8
  store double %5, double* %br, align 8
  %6 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c2 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %6, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c2, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx3, i32 0, i32 1
  %7 = load double, double* %imag, align 8
  store double %7, double* %bi, align 8
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx4, i32 0, i64 0
  %real6 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 0
  %9 = load double, double* %real6, align 8
  store double %9, double* %a0, align 8
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e7 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %10, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e7, i32 0, i64 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx8, i32 0, i64 1
  %real10 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx9, i32 0, i32 0
  %11 = load double, double* %real10, align 8
  store double %11, double* %a1, align 8
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e11 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e11, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx12, i32 0, i64 2
  %real14 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx13, i32 0, i32 0
  %13 = load double, double* %real14, align 8
  store double %13, double* %a2, align 8
  %14 = load double, double* %a0, align 8
  %15 = load double, double* %br, align 8
  %mul = fmul double %14, %15
  store double %mul, double* %c0r, align 8
  %16 = load double, double* %a1, align 8
  %17 = load double, double* %br, align 8
  %mul15 = fmul double %16, %17
  store double %mul15, double* %c1r, align 8
  %18 = load double, double* %a2, align 8
  %19 = load double, double* %br, align 8
  %mul16 = fmul double %18, %19
  store double %mul16, double* %c2r, align 8
  %20 = load double, double* %a0, align 8
  %21 = load double, double* %bi, align 8
  %mul17 = fmul double %20, %21
  store double %mul17, double* %c0i, align 8
  %22 = load double, double* %a1, align 8
  %23 = load double, double* %bi, align 8
  %mul18 = fmul double %22, %23
  store double %mul18, double* %c1i, align 8
  %24 = load double, double* %a2, align 8
  %25 = load double, double* %bi, align 8
  %mul19 = fmul double %24, %25
  store double %mul19, double* %c2i, align 8
  %26 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e20 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %26, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e20, i32 0, i64 0
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx21, i32 0, i64 0
  %imag23 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx22, i32 0, i32 1
  %27 = load double, double* %imag23, align 8
  store double %27, double* %a0, align 8
  %28 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e24 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %28, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e24, i32 0, i64 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx25, i32 0, i64 1
  %imag27 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx26, i32 0, i32 1
  %29 = load double, double* %imag27, align 8
  store double %29, double* %a1, align 8
  %30 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %30, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 2
  %imag31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 1
  %31 = load double, double* %imag31, align 8
  store double %31, double* %a2, align 8
  %32 = load double, double* %a0, align 8
  %33 = load double, double* %bi, align 8
  %mul32 = fmul double %32, %33
  %34 = load double, double* %c0r, align 8
  %add = fadd double %34, %mul32
  store double %add, double* %c0r, align 8
  %35 = load double, double* %a1, align 8
  %36 = load double, double* %bi, align 8
  %mul33 = fmul double %35, %36
  %37 = load double, double* %c1r, align 8
  %add34 = fadd double %37, %mul33
  store double %add34, double* %c1r, align 8
  %38 = load double, double* %a2, align 8
  %39 = load double, double* %bi, align 8
  %mul35 = fmul double %38, %39
  %40 = load double, double* %c2r, align 8
  %add36 = fadd double %40, %mul35
  store double %add36, double* %c2r, align 8
  %41 = load double, double* %a0, align 8
  %42 = load double, double* %br, align 8
  %mul37 = fmul double %41, %42
  %43 = load double, double* %c0i, align 8
  %sub = fsub double %43, %mul37
  store double %sub, double* %c0i, align 8
  %44 = load double, double* %a1, align 8
  %45 = load double, double* %br, align 8
  %mul38 = fmul double %44, %45
  %46 = load double, double* %c1i, align 8
  %sub39 = fsub double %46, %mul38
  store double %sub39, double* %c1i, align 8
  %47 = load double, double* %a2, align 8
  %48 = load double, double* %br, align 8
  %mul40 = fmul double %47, %48
  %49 = load double, double* %c2i, align 8
  %sub41 = fsub double %49, %mul40
  store double %sub41, double* %c2i, align 8
  %50 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c42 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %50, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c42, i32 0, i64 1
  %real44 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx43, i32 0, i32 0
  %51 = load double, double* %real44, align 8
  store double %51, double* %br, align 8
  %52 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c45 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %52, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c45, i32 0, i64 1
  %imag47 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx46, i32 0, i32 1
  %53 = load double, double* %imag47, align 8
  store double %53, double* %bi, align 8
  %54 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e48 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %54, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e48, i32 0, i64 1
  %arrayidx50 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx49, i32 0, i64 0
  %real51 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx50, i32 0, i32 0
  %55 = load double, double* %real51, align 8
  store double %55, double* %a0, align 8
  %56 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e52 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %56, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e52, i32 0, i64 1
  %arrayidx54 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx53, i32 0, i64 1
  %real55 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx54, i32 0, i32 0
  %57 = load double, double* %real55, align 8
  store double %57, double* %a1, align 8
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e56 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e56, i32 0, i64 1
  %arrayidx58 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx57, i32 0, i64 2
  %real59 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx58, i32 0, i32 0
  %59 = load double, double* %real59, align 8
  store double %59, double* %a2, align 8
  %60 = load double, double* %a0, align 8
  %61 = load double, double* %br, align 8
  %mul60 = fmul double %60, %61
  %62 = load double, double* %c0r, align 8
  %add61 = fadd double %62, %mul60
  store double %add61, double* %c0r, align 8
  %63 = load double, double* %a1, align 8
  %64 = load double, double* %br, align 8
  %mul62 = fmul double %63, %64
  %65 = load double, double* %c1r, align 8
  %add63 = fadd double %65, %mul62
  store double %add63, double* %c1r, align 8
  %66 = load double, double* %a2, align 8
  %67 = load double, double* %br, align 8
  %mul64 = fmul double %66, %67
  %68 = load double, double* %c2r, align 8
  %add65 = fadd double %68, %mul64
  store double %add65, double* %c2r, align 8
  %69 = load double, double* %a0, align 8
  %70 = load double, double* %bi, align 8
  %mul66 = fmul double %69, %70
  %71 = load double, double* %c0i, align 8
  %add67 = fadd double %71, %mul66
  store double %add67, double* %c0i, align 8
  %72 = load double, double* %a1, align 8
  %73 = load double, double* %bi, align 8
  %mul68 = fmul double %72, %73
  %74 = load double, double* %c1i, align 8
  %add69 = fadd double %74, %mul68
  store double %add69, double* %c1i, align 8
  %75 = load double, double* %a2, align 8
  %76 = load double, double* %bi, align 8
  %mul70 = fmul double %75, %76
  %77 = load double, double* %c2i, align 8
  %add71 = fadd double %77, %mul70
  store double %add71, double* %c2i, align 8
  %78 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e72 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %78, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e72, i32 0, i64 1
  %arrayidx74 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx73, i32 0, i64 0
  %imag75 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx74, i32 0, i32 1
  %79 = load double, double* %imag75, align 8
  store double %79, double* %a0, align 8
  %80 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e76 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %80, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e76, i32 0, i64 1
  %arrayidx78 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx77, i32 0, i64 1
  %imag79 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx78, i32 0, i32 1
  %81 = load double, double* %imag79, align 8
  store double %81, double* %a1, align 8
  %82 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e80 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %82, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e80, i32 0, i64 1
  %arrayidx82 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx81, i32 0, i64 2
  %imag83 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx82, i32 0, i32 1
  %83 = load double, double* %imag83, align 8
  store double %83, double* %a2, align 8
  %84 = load double, double* %a0, align 8
  %85 = load double, double* %bi, align 8
  %mul84 = fmul double %84, %85
  %86 = load double, double* %c0r, align 8
  %add85 = fadd double %86, %mul84
  store double %add85, double* %c0r, align 8
  %87 = load double, double* %a1, align 8
  %88 = load double, double* %bi, align 8
  %mul86 = fmul double %87, %88
  %89 = load double, double* %c1r, align 8
  %add87 = fadd double %89, %mul86
  store double %add87, double* %c1r, align 8
  %90 = load double, double* %a2, align 8
  %91 = load double, double* %bi, align 8
  %mul88 = fmul double %90, %91
  %92 = load double, double* %c2r, align 8
  %add89 = fadd double %92, %mul88
  store double %add89, double* %c2r, align 8
  %93 = load double, double* %a0, align 8
  %94 = load double, double* %br, align 8
  %mul90 = fmul double %93, %94
  %95 = load double, double* %c0i, align 8
  %sub91 = fsub double %95, %mul90
  store double %sub91, double* %c0i, align 8
  %96 = load double, double* %a1, align 8
  %97 = load double, double* %br, align 8
  %mul92 = fmul double %96, %97
  %98 = load double, double* %c1i, align 8
  %sub93 = fsub double %98, %mul92
  store double %sub93, double* %c1i, align 8
  %99 = load double, double* %a2, align 8
  %100 = load double, double* %br, align 8
  %mul94 = fmul double %99, %100
  %101 = load double, double* %c2i, align 8
  %sub95 = fsub double %101, %mul94
  store double %sub95, double* %c2i, align 8
  %102 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c96 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %102, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c96, i32 0, i64 2
  %real98 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx97, i32 0, i32 0
  %103 = load double, double* %real98, align 8
  store double %103, double* %br, align 8
  %104 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c99 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %104, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c99, i32 0, i64 2
  %imag101 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx100, i32 0, i32 1
  %105 = load double, double* %imag101, align 8
  store double %105, double* %bi, align 8
  %106 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e102 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %106, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e102, i32 0, i64 2
  %arrayidx104 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx103, i32 0, i64 0
  %real105 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx104, i32 0, i32 0
  %107 = load double, double* %real105, align 8
  store double %107, double* %a0, align 8
  %108 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e106 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %108, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e106, i32 0, i64 2
  %arrayidx108 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx107, i32 0, i64 1
  %real109 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx108, i32 0, i32 0
  %109 = load double, double* %real109, align 8
  store double %109, double* %a1, align 8
  %110 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e110 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %110, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e110, i32 0, i64 2
  %arrayidx112 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx111, i32 0, i64 2
  %real113 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx112, i32 0, i32 0
  %111 = load double, double* %real113, align 8
  store double %111, double* %a2, align 8
  %112 = load double, double* %a0, align 8
  %113 = load double, double* %br, align 8
  %mul114 = fmul double %112, %113
  %114 = load double, double* %c0r, align 8
  %add115 = fadd double %114, %mul114
  store double %add115, double* %c0r, align 8
  %115 = load double, double* %a1, align 8
  %116 = load double, double* %br, align 8
  %mul116 = fmul double %115, %116
  %117 = load double, double* %c1r, align 8
  %add117 = fadd double %117, %mul116
  store double %add117, double* %c1r, align 8
  %118 = load double, double* %a2, align 8
  %119 = load double, double* %br, align 8
  %mul118 = fmul double %118, %119
  %120 = load double, double* %c2r, align 8
  %add119 = fadd double %120, %mul118
  store double %add119, double* %c2r, align 8
  %121 = load double, double* %a0, align 8
  %122 = load double, double* %bi, align 8
  %mul120 = fmul double %121, %122
  %123 = load double, double* %c0i, align 8
  %add121 = fadd double %123, %mul120
  store double %add121, double* %c0i, align 8
  %124 = load double, double* %a1, align 8
  %125 = load double, double* %bi, align 8
  %mul122 = fmul double %124, %125
  %126 = load double, double* %c1i, align 8
  %add123 = fadd double %126, %mul122
  store double %add123, double* %c1i, align 8
  %127 = load double, double* %a2, align 8
  %128 = load double, double* %bi, align 8
  %mul124 = fmul double %127, %128
  %129 = load double, double* %c2i, align 8
  %add125 = fadd double %129, %mul124
  store double %add125, double* %c2i, align 8
  %130 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e126 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %130, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e126, i32 0, i64 2
  %arrayidx128 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx127, i32 0, i64 0
  %imag129 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx128, i32 0, i32 1
  %131 = load double, double* %imag129, align 8
  store double %131, double* %a0, align 8
  %132 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e130 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %132, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e130, i32 0, i64 2
  %arrayidx132 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx131, i32 0, i64 1
  %imag133 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx132, i32 0, i32 1
  %133 = load double, double* %imag133, align 8
  store double %133, double* %a1, align 8
  %134 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e134 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %134, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e134, i32 0, i64 2
  %arrayidx136 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx135, i32 0, i64 2
  %imag137 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx136, i32 0, i32 1
  %135 = load double, double* %imag137, align 8
  store double %135, double* %a2, align 8
  %136 = load double, double* %a0, align 8
  %137 = load double, double* %bi, align 8
  %mul138 = fmul double %136, %137
  %138 = load double, double* %c0r, align 8
  %add139 = fadd double %138, %mul138
  store double %add139, double* %c0r, align 8
  %139 = load double, double* %a1, align 8
  %140 = load double, double* %bi, align 8
  %mul140 = fmul double %139, %140
  %141 = load double, double* %c1r, align 8
  %add141 = fadd double %141, %mul140
  store double %add141, double* %c1r, align 8
  %142 = load double, double* %a2, align 8
  %143 = load double, double* %bi, align 8
  %mul142 = fmul double %142, %143
  %144 = load double, double* %c2r, align 8
  %add143 = fadd double %144, %mul142
  store double %add143, double* %c2r, align 8
  %145 = load double, double* %a0, align 8
  %146 = load double, double* %br, align 8
  %mul144 = fmul double %145, %146
  %147 = load double, double* %c0i, align 8
  %sub145 = fsub double %147, %mul144
  store double %sub145, double* %c0i, align 8
  %148 = load double, double* %a1, align 8
  %149 = load double, double* %br, align 8
  %mul146 = fmul double %148, %149
  %150 = load double, double* %c1i, align 8
  %sub147 = fsub double %150, %mul146
  store double %sub147, double* %c1i, align 8
  %151 = load double, double* %a2, align 8
  %152 = load double, double* %br, align 8
  %mul148 = fmul double %151, %152
  %153 = load double, double* %c2i, align 8
  %sub149 = fsub double %153, %mul148
  store double %sub149, double* %c2i, align 8
  %154 = load double, double* %c0r, align 8
  %155 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c150 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %155, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c150, i32 0, i64 0
  %real152 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx151, i32 0, i32 0
  store double %154, double* %real152, align 8
  %156 = load double, double* %c0i, align 8
  %157 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c153 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %157, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c153, i32 0, i64 0
  %imag155 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx154, i32 0, i32 1
  store double %156, double* %imag155, align 8
  %158 = load double, double* %c1r, align 8
  %159 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c156 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %159, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c156, i32 0, i64 1
  %real158 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx157, i32 0, i32 0
  store double %158, double* %real158, align 8
  %160 = load double, double* %c1i, align 8
  %161 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c159 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %161, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c159, i32 0, i64 1
  %imag161 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx160, i32 0, i32 1
  store double %160, double* %imag161, align 8
  %162 = load double, double* %c2r, align 8
  %163 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c162 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %163, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c162, i32 0, i64 2
  %real164 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx163, i32 0, i32 0
  store double %162, double* %real164, align 8
  %164 = load double, double* %c2i, align 8
  %165 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c165 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %165, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c165, i32 0, i64 2
  %imag167 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx166, i32 0, i32 1
  store double %164, double* %imag167, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %166 = load i32, i32* %n, align 4
  %inc = add nsw i32 %166, 1
  store i32 %inc, i32* %n, align 4
  %167 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %incdec.ptr = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %167, i32 1
  store %struct.su3_matrix* %incdec.ptr, %struct.su3_matrix** %a, align 8
  %168 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %incdec.ptr168 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %168, i32 1
  store %struct.su3_vector* %incdec.ptr168, %struct.su3_vector** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
