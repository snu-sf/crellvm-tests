; ModuleID = 'm_amv_4vec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind uwtable
define void @mult_adj_su3_mat_4vec(%struct.su3_matrix* %mat, %struct.su3_vector* %src, %struct.su3_vector* %dest0, %struct.su3_vector* %dest1, %struct.su3_vector* %dest2, %struct.su3_vector* %dest3) #0 {
entry:
  %mat.addr = alloca %struct.su3_matrix*, align 8
  %src.addr = alloca %struct.su3_vector*, align 8
  %dest0.addr = alloca %struct.su3_vector*, align 8
  %dest1.addr = alloca %struct.su3_vector*, align 8
  %dest2.addr = alloca %struct.su3_vector*, align 8
  %dest3.addr = alloca %struct.su3_vector*, align 8
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
  %cc = alloca [4 x %struct.su3_vector*], align 16
  store %struct.su3_matrix* %mat, %struct.su3_matrix** %mat.addr, align 8
  store %struct.su3_vector* %src, %struct.su3_vector** %src.addr, align 8
  store %struct.su3_vector* %dest0, %struct.su3_vector** %dest0.addr, align 8
  store %struct.su3_vector* %dest1, %struct.su3_vector** %dest1.addr, align 8
  store %struct.su3_vector* %dest2, %struct.su3_vector** %dest2.addr, align 8
  store %struct.su3_vector* %dest3, %struct.su3_vector** %dest3.addr, align 8
  %0 = load %struct.su3_vector*, %struct.su3_vector** %dest0.addr, align 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %cc, i32 0, i64 0
  store %struct.su3_vector* %0, %struct.su3_vector** %arrayidx, align 8
  %1 = load %struct.su3_vector*, %struct.su3_vector** %dest1.addr, align 8
  %arrayidx1 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %cc, i32 0, i64 1
  store %struct.su3_vector* %1, %struct.su3_vector** %arrayidx1, align 8
  %2 = load %struct.su3_vector*, %struct.su3_vector** %dest2.addr, align 8
  %arrayidx2 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %cc, i32 0, i64 2
  store %struct.su3_vector* %2, %struct.su3_vector** %arrayidx2, align 8
  %3 = load %struct.su3_vector*, %struct.su3_vector** %dest3.addr, align 8
  %arrayidx3 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %cc, i32 0, i64 3
  store %struct.su3_vector* %3, %struct.su3_vector** %arrayidx3, align 8
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  store %struct.su3_matrix* %4, %struct.su3_matrix** %a, align 8
  %5 = load %struct.su3_vector*, %struct.su3_vector** %dest0.addr, align 8
  store %struct.su3_vector* %5, %struct.su3_vector** %c, align 8
  %6 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  store %struct.su3_vector* %6, %struct.su3_vector** %b, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %n, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %cc, i32 0, i64 %idxprom
  %9 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx4, align 8
  store %struct.su3_vector* %9, %struct.su3_vector** %c, align 8
  %10 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c5 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %10, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c5, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx6, i32 0, i32 0
  %11 = load double, double* %real, align 8
  store double %11, double* %br, align 8
  %12 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c7 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %12, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c7, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 1
  %13 = load double, double* %imag, align 8
  store double %13, double* %bi, align 8
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %14, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx9, i32 0, i64 0
  %real11 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx10, i32 0, i32 0
  %15 = load double, double* %real11, align 8
  store double %15, double* %a0, align 8
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e12 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx13, i32 0, i64 1
  %real15 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx14, i32 0, i32 0
  %17 = load double, double* %real15, align 8
  store double %17, double* %a1, align 8
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e16 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %18, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e16, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx17, i32 0, i64 2
  %real19 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx18, i32 0, i32 0
  %19 = load double, double* %real19, align 8
  store double %19, double* %a2, align 8
  %20 = load double, double* %a0, align 8
  %21 = load double, double* %br, align 8
  %mul = fmul double %20, %21
  store double %mul, double* %c0r, align 8
  %22 = load double, double* %a1, align 8
  %23 = load double, double* %br, align 8
  %mul20 = fmul double %22, %23
  store double %mul20, double* %c1r, align 8
  %24 = load double, double* %a2, align 8
  %25 = load double, double* %br, align 8
  %mul21 = fmul double %24, %25
  store double %mul21, double* %c2r, align 8
  %26 = load double, double* %a0, align 8
  %27 = load double, double* %bi, align 8
  %mul22 = fmul double %26, %27
  store double %mul22, double* %c0i, align 8
  %28 = load double, double* %a1, align 8
  %29 = load double, double* %bi, align 8
  %mul23 = fmul double %28, %29
  store double %mul23, double* %c1i, align 8
  %30 = load double, double* %a2, align 8
  %31 = load double, double* %bi, align 8
  %mul24 = fmul double %30, %31
  store double %mul24, double* %c2i, align 8
  %32 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e25 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %32, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e25, i32 0, i64 0
  %arrayidx27 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx26, i32 0, i64 0
  %imag28 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 1
  %33 = load double, double* %imag28, align 8
  store double %33, double* %a0, align 8
  %34 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e29 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %34, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e29, i32 0, i64 0
  %arrayidx31 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx30, i32 0, i64 1
  %imag32 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx31, i32 0, i32 1
  %35 = load double, double* %imag32, align 8
  store double %35, double* %a1, align 8
  %36 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e33 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %36, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e33, i32 0, i64 0
  %arrayidx35 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx34, i32 0, i64 2
  %imag36 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx35, i32 0, i32 1
  %37 = load double, double* %imag36, align 8
  store double %37, double* %a2, align 8
  %38 = load double, double* %a0, align 8
  %39 = load double, double* %bi, align 8
  %mul37 = fmul double %38, %39
  %40 = load double, double* %c0r, align 8
  %add = fadd double %40, %mul37
  store double %add, double* %c0r, align 8
  %41 = load double, double* %a1, align 8
  %42 = load double, double* %bi, align 8
  %mul38 = fmul double %41, %42
  %43 = load double, double* %c1r, align 8
  %add39 = fadd double %43, %mul38
  store double %add39, double* %c1r, align 8
  %44 = load double, double* %a2, align 8
  %45 = load double, double* %bi, align 8
  %mul40 = fmul double %44, %45
  %46 = load double, double* %c2r, align 8
  %add41 = fadd double %46, %mul40
  store double %add41, double* %c2r, align 8
  %47 = load double, double* %a0, align 8
  %48 = load double, double* %br, align 8
  %mul42 = fmul double %47, %48
  %49 = load double, double* %c0i, align 8
  %sub = fsub double %49, %mul42
  store double %sub, double* %c0i, align 8
  %50 = load double, double* %a1, align 8
  %51 = load double, double* %br, align 8
  %mul43 = fmul double %50, %51
  %52 = load double, double* %c1i, align 8
  %sub44 = fsub double %52, %mul43
  store double %sub44, double* %c1i, align 8
  %53 = load double, double* %a2, align 8
  %54 = load double, double* %br, align 8
  %mul45 = fmul double %53, %54
  %55 = load double, double* %c2i, align 8
  %sub46 = fsub double %55, %mul45
  store double %sub46, double* %c2i, align 8
  %56 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c47 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %56, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c47, i32 0, i64 1
  %real49 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx48, i32 0, i32 0
  %57 = load double, double* %real49, align 8
  store double %57, double* %br, align 8
  %58 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c50 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %58, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c50, i32 0, i64 1
  %imag52 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx51, i32 0, i32 1
  %59 = load double, double* %imag52, align 8
  store double %59, double* %bi, align 8
  %60 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e53 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %60, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e53, i32 0, i64 1
  %arrayidx55 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx54, i32 0, i64 0
  %real56 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx55, i32 0, i32 0
  %61 = load double, double* %real56, align 8
  store double %61, double* %a0, align 8
  %62 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e57 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %62, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e57, i32 0, i64 1
  %arrayidx59 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx58, i32 0, i64 1
  %real60 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx59, i32 0, i32 0
  %63 = load double, double* %real60, align 8
  store double %63, double* %a1, align 8
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e61 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %64, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e61, i32 0, i64 1
  %arrayidx63 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx62, i32 0, i64 2
  %real64 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx63, i32 0, i32 0
  %65 = load double, double* %real64, align 8
  store double %65, double* %a2, align 8
  %66 = load double, double* %a0, align 8
  %67 = load double, double* %br, align 8
  %mul65 = fmul double %66, %67
  %68 = load double, double* %c0r, align 8
  %add66 = fadd double %68, %mul65
  store double %add66, double* %c0r, align 8
  %69 = load double, double* %a1, align 8
  %70 = load double, double* %br, align 8
  %mul67 = fmul double %69, %70
  %71 = load double, double* %c1r, align 8
  %add68 = fadd double %71, %mul67
  store double %add68, double* %c1r, align 8
  %72 = load double, double* %a2, align 8
  %73 = load double, double* %br, align 8
  %mul69 = fmul double %72, %73
  %74 = load double, double* %c2r, align 8
  %add70 = fadd double %74, %mul69
  store double %add70, double* %c2r, align 8
  %75 = load double, double* %a0, align 8
  %76 = load double, double* %bi, align 8
  %mul71 = fmul double %75, %76
  %77 = load double, double* %c0i, align 8
  %add72 = fadd double %77, %mul71
  store double %add72, double* %c0i, align 8
  %78 = load double, double* %a1, align 8
  %79 = load double, double* %bi, align 8
  %mul73 = fmul double %78, %79
  %80 = load double, double* %c1i, align 8
  %add74 = fadd double %80, %mul73
  store double %add74, double* %c1i, align 8
  %81 = load double, double* %a2, align 8
  %82 = load double, double* %bi, align 8
  %mul75 = fmul double %81, %82
  %83 = load double, double* %c2i, align 8
  %add76 = fadd double %83, %mul75
  store double %add76, double* %c2i, align 8
  %84 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e77 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %84, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e77, i32 0, i64 1
  %arrayidx79 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx78, i32 0, i64 0
  %imag80 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx79, i32 0, i32 1
  %85 = load double, double* %imag80, align 8
  store double %85, double* %a0, align 8
  %86 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e81 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %86, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e81, i32 0, i64 1
  %arrayidx83 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx82, i32 0, i64 1
  %imag84 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx83, i32 0, i32 1
  %87 = load double, double* %imag84, align 8
  store double %87, double* %a1, align 8
  %88 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e85 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %88, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e85, i32 0, i64 1
  %arrayidx87 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx86, i32 0, i64 2
  %imag88 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx87, i32 0, i32 1
  %89 = load double, double* %imag88, align 8
  store double %89, double* %a2, align 8
  %90 = load double, double* %a0, align 8
  %91 = load double, double* %bi, align 8
  %mul89 = fmul double %90, %91
  %92 = load double, double* %c0r, align 8
  %add90 = fadd double %92, %mul89
  store double %add90, double* %c0r, align 8
  %93 = load double, double* %a1, align 8
  %94 = load double, double* %bi, align 8
  %mul91 = fmul double %93, %94
  %95 = load double, double* %c1r, align 8
  %add92 = fadd double %95, %mul91
  store double %add92, double* %c1r, align 8
  %96 = load double, double* %a2, align 8
  %97 = load double, double* %bi, align 8
  %mul93 = fmul double %96, %97
  %98 = load double, double* %c2r, align 8
  %add94 = fadd double %98, %mul93
  store double %add94, double* %c2r, align 8
  %99 = load double, double* %a0, align 8
  %100 = load double, double* %br, align 8
  %mul95 = fmul double %99, %100
  %101 = load double, double* %c0i, align 8
  %sub96 = fsub double %101, %mul95
  store double %sub96, double* %c0i, align 8
  %102 = load double, double* %a1, align 8
  %103 = load double, double* %br, align 8
  %mul97 = fmul double %102, %103
  %104 = load double, double* %c1i, align 8
  %sub98 = fsub double %104, %mul97
  store double %sub98, double* %c1i, align 8
  %105 = load double, double* %a2, align 8
  %106 = load double, double* %br, align 8
  %mul99 = fmul double %105, %106
  %107 = load double, double* %c2i, align 8
  %sub100 = fsub double %107, %mul99
  store double %sub100, double* %c2i, align 8
  %108 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c101 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %108, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c101, i32 0, i64 2
  %real103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 0
  %109 = load double, double* %real103, align 8
  store double %109, double* %br, align 8
  %110 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c104 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %110, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c104, i32 0, i64 2
  %imag106 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx105, i32 0, i32 1
  %111 = load double, double* %imag106, align 8
  store double %111, double* %bi, align 8
  %112 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e107 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %112, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e107, i32 0, i64 2
  %arrayidx109 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx108, i32 0, i64 0
  %real110 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx109, i32 0, i32 0
  %113 = load double, double* %real110, align 8
  store double %113, double* %a0, align 8
  %114 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e111 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %114, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e111, i32 0, i64 2
  %arrayidx113 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx112, i32 0, i64 1
  %real114 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx113, i32 0, i32 0
  %115 = load double, double* %real114, align 8
  store double %115, double* %a1, align 8
  %116 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e115 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %116, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e115, i32 0, i64 2
  %arrayidx117 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx116, i32 0, i64 2
  %real118 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx117, i32 0, i32 0
  %117 = load double, double* %real118, align 8
  store double %117, double* %a2, align 8
  %118 = load double, double* %a0, align 8
  %119 = load double, double* %br, align 8
  %mul119 = fmul double %118, %119
  %120 = load double, double* %c0r, align 8
  %add120 = fadd double %120, %mul119
  store double %add120, double* %c0r, align 8
  %121 = load double, double* %a1, align 8
  %122 = load double, double* %br, align 8
  %mul121 = fmul double %121, %122
  %123 = load double, double* %c1r, align 8
  %add122 = fadd double %123, %mul121
  store double %add122, double* %c1r, align 8
  %124 = load double, double* %a2, align 8
  %125 = load double, double* %br, align 8
  %mul123 = fmul double %124, %125
  %126 = load double, double* %c2r, align 8
  %add124 = fadd double %126, %mul123
  store double %add124, double* %c2r, align 8
  %127 = load double, double* %a0, align 8
  %128 = load double, double* %bi, align 8
  %mul125 = fmul double %127, %128
  %129 = load double, double* %c0i, align 8
  %add126 = fadd double %129, %mul125
  store double %add126, double* %c0i, align 8
  %130 = load double, double* %a1, align 8
  %131 = load double, double* %bi, align 8
  %mul127 = fmul double %130, %131
  %132 = load double, double* %c1i, align 8
  %add128 = fadd double %132, %mul127
  store double %add128, double* %c1i, align 8
  %133 = load double, double* %a2, align 8
  %134 = load double, double* %bi, align 8
  %mul129 = fmul double %133, %134
  %135 = load double, double* %c2i, align 8
  %add130 = fadd double %135, %mul129
  store double %add130, double* %c2i, align 8
  %136 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e131 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %136, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e131, i32 0, i64 2
  %arrayidx133 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx132, i32 0, i64 0
  %imag134 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx133, i32 0, i32 1
  %137 = load double, double* %imag134, align 8
  store double %137, double* %a0, align 8
  %138 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e135 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %138, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e135, i32 0, i64 2
  %arrayidx137 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx136, i32 0, i64 1
  %imag138 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx137, i32 0, i32 1
  %139 = load double, double* %imag138, align 8
  store double %139, double* %a1, align 8
  %140 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %e139 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %140, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e139, i32 0, i64 2
  %arrayidx141 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx140, i32 0, i64 2
  %imag142 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx141, i32 0, i32 1
  %141 = load double, double* %imag142, align 8
  store double %141, double* %a2, align 8
  %142 = load double, double* %a0, align 8
  %143 = load double, double* %bi, align 8
  %mul143 = fmul double %142, %143
  %144 = load double, double* %c0r, align 8
  %add144 = fadd double %144, %mul143
  store double %add144, double* %c0r, align 8
  %145 = load double, double* %a1, align 8
  %146 = load double, double* %bi, align 8
  %mul145 = fmul double %145, %146
  %147 = load double, double* %c1r, align 8
  %add146 = fadd double %147, %mul145
  store double %add146, double* %c1r, align 8
  %148 = load double, double* %a2, align 8
  %149 = load double, double* %bi, align 8
  %mul147 = fmul double %148, %149
  %150 = load double, double* %c2r, align 8
  %add148 = fadd double %150, %mul147
  store double %add148, double* %c2r, align 8
  %151 = load double, double* %a0, align 8
  %152 = load double, double* %br, align 8
  %mul149 = fmul double %151, %152
  %153 = load double, double* %c0i, align 8
  %sub150 = fsub double %153, %mul149
  store double %sub150, double* %c0i, align 8
  %154 = load double, double* %a1, align 8
  %155 = load double, double* %br, align 8
  %mul151 = fmul double %154, %155
  %156 = load double, double* %c1i, align 8
  %sub152 = fsub double %156, %mul151
  store double %sub152, double* %c1i, align 8
  %157 = load double, double* %a2, align 8
  %158 = load double, double* %br, align 8
  %mul153 = fmul double %157, %158
  %159 = load double, double* %c2i, align 8
  %sub154 = fsub double %159, %mul153
  store double %sub154, double* %c2i, align 8
  %160 = load double, double* %c0r, align 8
  %161 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c155 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %161, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c155, i32 0, i64 0
  %real157 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx156, i32 0, i32 0
  store double %160, double* %real157, align 8
  %162 = load double, double* %c0i, align 8
  %163 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c158 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %163, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c158, i32 0, i64 0
  %imag160 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx159, i32 0, i32 1
  store double %162, double* %imag160, align 8
  %164 = load double, double* %c1r, align 8
  %165 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c161 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %165, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c161, i32 0, i64 1
  %real163 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx162, i32 0, i32 0
  store double %164, double* %real163, align 8
  %166 = load double, double* %c1i, align 8
  %167 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c164 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %167, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c164, i32 0, i64 1
  %imag166 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx165, i32 0, i32 1
  store double %166, double* %imag166, align 8
  %168 = load double, double* %c2r, align 8
  %169 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c167 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %169, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c167, i32 0, i64 2
  %real169 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx168, i32 0, i32 0
  store double %168, double* %real169, align 8
  %170 = load double, double* %c2i, align 8
  %171 = load %struct.su3_vector*, %struct.su3_vector** %c, align 8
  %c170 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %171, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c170, i32 0, i64 2
  %imag172 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx171, i32 0, i32 1
  store double %170, double* %imag172, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %172 = load i32, i32* %n, align 4
  %inc = add nsw i32 %172, 1
  store i32 %inc, i32* %n, align 4
  %173 = load %struct.su3_matrix*, %struct.su3_matrix** %a, align 8
  %incdec.ptr = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %173, i32 1
  store %struct.su3_matrix* %incdec.ptr, %struct.su3_matrix** %a, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
