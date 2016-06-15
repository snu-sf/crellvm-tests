; ModuleID = 'm_mv_s_4dir.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind uwtable
define void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %a, %struct.su3_vector* %b0, %struct.su3_vector* %b1, %struct.su3_vector* %b2, %struct.su3_vector* %b3, %struct.su3_vector* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_matrix*, align 8
  %b0.addr = alloca %struct.su3_vector*, align 8
  %b1.addr = alloca %struct.su3_vector*, align 8
  %b2.addr = alloca %struct.su3_vector*, align 8
  %b3.addr = alloca %struct.su3_vector*, align 8
  %c.addr = alloca %struct.su3_vector*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %at = alloca %struct.su3_matrix*, align 8
  %b = alloca %struct.su3_vector*, align 8
  %t = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %br = alloca double, align 8
  %bi = alloca double, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  store %struct.su3_vector* %b0, %struct.su3_vector** %b0.addr, align 8
  store %struct.su3_vector* %b1, %struct.su3_vector** %b1.addr, align 8
  store %struct.su3_vector* %b2, %struct.su3_vector** %b2.addr, align 8
  store %struct.su3_vector* %b3, %struct.su3_vector** %b3.addr, align 8
  store %struct.su3_vector* %c, %struct.su3_vector** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  store double 0.000000e+00, double* %real, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c3 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c3, i32 0, i64 %idxprom2
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.93, %for.end
  %6 = load i32, i32* %n, align 4
  %cmp6 = icmp slt i32 %6, 4
  br i1 %cmp6, label %for.body.7, label %for.end.95

for.body.7:                                       ; preds = %for.cond.5
  %7 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %8 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %7, i64 %idx.ext
  store %struct.su3_matrix* %add.ptr, %struct.su3_matrix** %at, align 8
  %9 = load i32, i32* %n, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %for.body.7
  %10 = load %struct.su3_vector*, %struct.su3_vector** %b0.addr, align 8
  store %struct.su3_vector* %10, %struct.su3_vector** %b, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body.7
  %11 = load %struct.su3_vector*, %struct.su3_vector** %b1.addr, align 8
  store %struct.su3_vector* %11, %struct.su3_vector** %b, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body.7
  %12 = load %struct.su3_vector*, %struct.su3_vector** %b2.addr, align 8
  store %struct.su3_vector* %12, %struct.su3_vector** %b, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body.7
  %13 = load %struct.su3_vector*, %struct.su3_vector** %b3.addr, align 8
  store %struct.su3_vector* %13, %struct.su3_vector** %b, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.7, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.90, %sw.epilog
  %14 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %14, 3
  br i1 %cmp12, label %for.body.13, label %for.end.92

for.body.13:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %at, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx15, i32 0, i64 0
  %real17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 0
  %17 = load double, double* %real17, align 8
  store double %17, double* %ar, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.su3_matrix*, %struct.su3_matrix** %at, align 8
  %e19 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %19, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx20, i32 0, i64 0
  %imag22 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx21, i32 0, i32 1
  %20 = load double, double* %imag22, align 8
  store double %20, double* %ai, align 8
  %21 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c23 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %21, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c23, i32 0, i64 0
  %real25 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx24, i32 0, i32 0
  %22 = load double, double* %real25, align 8
  store double %22, double* %br, align 8
  %23 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c26 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %23, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c26, i32 0, i64 0
  %imag28 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 1
  %24 = load double, double* %imag28, align 8
  store double %24, double* %bi, align 8
  %25 = load double, double* %ar, align 8
  %26 = load double, double* %br, align 8
  %mul = fmul double %25, %26
  store double %mul, double* %cr, align 8
  %27 = load double, double* %ai, align 8
  %28 = load double, double* %bi, align 8
  %mul29 = fmul double %27, %28
  store double %mul29, double* %t, align 8
  %29 = load double, double* %t, align 8
  %30 = load double, double* %cr, align 8
  %sub = fsub double %30, %29
  store double %sub, double* %cr, align 8
  %31 = load double, double* %ar, align 8
  %32 = load double, double* %bi, align 8
  %mul30 = fmul double %31, %32
  store double %mul30, double* %ci, align 8
  %33 = load double, double* %ai, align 8
  %34 = load double, double* %br, align 8
  %mul31 = fmul double %33, %34
  store double %mul31, double* %t, align 8
  %35 = load double, double* %t, align 8
  %36 = load double, double* %ci, align 8
  %add = fadd double %36, %35
  store double %add, double* %ci, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load %struct.su3_matrix*, %struct.su3_matrix** %at, align 8
  %e33 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %38, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e33, i32 0, i64 %idxprom32
  %arrayidx35 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx34, i32 0, i64 1
  %real36 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx35, i32 0, i32 0
  %39 = load double, double* %real36, align 8
  store double %39, double* %ar, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct.su3_matrix*, %struct.su3_matrix** %at, align 8
  %e38 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %41, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e38, i32 0, i64 %idxprom37
  %arrayidx40 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx39, i32 0, i64 1
  %imag41 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx40, i32 0, i32 1
  %42 = load double, double* %imag41, align 8
  store double %42, double* %ai, align 8
  %43 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c42 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %43, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c42, i32 0, i64 1
  %real44 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx43, i32 0, i32 0
  %44 = load double, double* %real44, align 8
  store double %44, double* %br, align 8
  %45 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c45 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %45, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c45, i32 0, i64 1
  %imag47 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx46, i32 0, i32 1
  %46 = load double, double* %imag47, align 8
  store double %46, double* %bi, align 8
  %47 = load double, double* %ar, align 8
  %48 = load double, double* %br, align 8
  %mul48 = fmul double %47, %48
  store double %mul48, double* %t, align 8
  %49 = load double, double* %t, align 8
  %50 = load double, double* %cr, align 8
  %add49 = fadd double %50, %49
  store double %add49, double* %cr, align 8
  %51 = load double, double* %ai, align 8
  %52 = load double, double* %bi, align 8
  %mul50 = fmul double %51, %52
  store double %mul50, double* %t, align 8
  %53 = load double, double* %t, align 8
  %54 = load double, double* %cr, align 8
  %sub51 = fsub double %54, %53
  store double %sub51, double* %cr, align 8
  %55 = load double, double* %ar, align 8
  %56 = load double, double* %bi, align 8
  %mul52 = fmul double %55, %56
  store double %mul52, double* %t, align 8
  %57 = load double, double* %t, align 8
  %58 = load double, double* %ci, align 8
  %add53 = fadd double %58, %57
  store double %add53, double* %ci, align 8
  %59 = load double, double* %ai, align 8
  %60 = load double, double* %br, align 8
  %mul54 = fmul double %59, %60
  store double %mul54, double* %t, align 8
  %61 = load double, double* %t, align 8
  %62 = load double, double* %ci, align 8
  %add55 = fadd double %62, %61
  store double %add55, double* %ci, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %63 to i64
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %at, align 8
  %e57 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %64, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e57, i32 0, i64 %idxprom56
  %arrayidx59 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx58, i32 0, i64 2
  %real60 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx59, i32 0, i32 0
  %65 = load double, double* %real60, align 8
  store double %65, double* %ar, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %66 to i64
  %67 = load %struct.su3_matrix*, %struct.su3_matrix** %at, align 8
  %e62 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %67, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e62, i32 0, i64 %idxprom61
  %arrayidx64 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx63, i32 0, i64 2
  %imag65 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx64, i32 0, i32 1
  %68 = load double, double* %imag65, align 8
  store double %68, double* %ai, align 8
  %69 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c66 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %69, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c66, i32 0, i64 2
  %real68 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx67, i32 0, i32 0
  %70 = load double, double* %real68, align 8
  store double %70, double* %br, align 8
  %71 = load %struct.su3_vector*, %struct.su3_vector** %b, align 8
  %c69 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %71, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c69, i32 0, i64 2
  %imag71 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx70, i32 0, i32 1
  %72 = load double, double* %imag71, align 8
  store double %72, double* %bi, align 8
  %73 = load double, double* %ar, align 8
  %74 = load double, double* %br, align 8
  %mul72 = fmul double %73, %74
  store double %mul72, double* %t, align 8
  %75 = load double, double* %t, align 8
  %76 = load double, double* %cr, align 8
  %add73 = fadd double %76, %75
  store double %add73, double* %cr, align 8
  %77 = load double, double* %ai, align 8
  %78 = load double, double* %bi, align 8
  %mul74 = fmul double %77, %78
  store double %mul74, double* %t, align 8
  %79 = load double, double* %t, align 8
  %80 = load double, double* %cr, align 8
  %sub75 = fsub double %80, %79
  store double %sub75, double* %cr, align 8
  %81 = load double, double* %ar, align 8
  %82 = load double, double* %bi, align 8
  %mul76 = fmul double %81, %82
  store double %mul76, double* %t, align 8
  %83 = load double, double* %t, align 8
  %84 = load double, double* %ci, align 8
  %add77 = fadd double %84, %83
  store double %add77, double* %ci, align 8
  %85 = load double, double* %ai, align 8
  %86 = load double, double* %br, align 8
  %mul78 = fmul double %85, %86
  store double %mul78, double* %t, align 8
  %87 = load double, double* %t, align 8
  %88 = load double, double* %ci, align 8
  %add79 = fadd double %88, %87
  store double %add79, double* %ci, align 8
  %89 = load double, double* %cr, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %90 to i64
  %91 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c81 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %91, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c81, i32 0, i64 %idxprom80
  %real83 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx82, i32 0, i32 0
  %92 = load double, double* %real83, align 8
  %add84 = fadd double %92, %89
  store double %add84, double* %real83, align 8
  %93 = load double, double* %ci, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %94 to i64
  %95 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c86 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %95, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c86, i32 0, i64 %idxprom85
  %imag88 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx87, i32 0, i32 1
  %96 = load double, double* %imag88, align 8
  %add89 = fadd double %96, %93
  store double %add89, double* %imag88, align 8
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.13
  %97 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %97, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.11

for.end.92:                                       ; preds = %for.cond.11
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %98 = load i32, i32* %n, align 4
  %inc94 = add nsw i32 %98, 1
  store i32 %inc94, i32* %n, align 4
  br label %for.cond.5

for.end.95:                                       ; preds = %for.cond.5
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
