; ModuleID = 'm_matvec.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind uwtable
define void @mult_su3_mat_vec(%struct.su3_matrix* %a, %struct.su3_vector* %b, %struct.su3_vector* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_matrix*, align 8
  %b.addr = alloca %struct.su3_vector*, align 8
  %c.addr = alloca %struct.su3_vector*, align 8
  %i = alloca i32, align 4
  %t = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %br = alloca double, align 8
  %bi = alloca double, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  store %struct.su3_vector* %b, %struct.su3_vector** %b.addr, align 8
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
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %3 = load double, double* %real, align 8
  store double %3, double* %ar, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e3 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx4, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 1
  %6 = load double, double* %imag, align 8
  store double %6, double* %ai, align 8
  %7 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c6 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c6, i32 0, i64 0
  %real8 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 0
  %8 = load double, double* %real8, align 8
  store double %8, double* %br, align 8
  %9 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c9 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c9, i32 0, i64 0
  %imag11 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx10, i32 0, i32 1
  %10 = load double, double* %imag11, align 8
  store double %10, double* %bi, align 8
  %11 = load double, double* %ar, align 8
  %12 = load double, double* %br, align 8
  %mul = fmul double %11, %12
  store double %mul, double* %cr, align 8
  %13 = load double, double* %ai, align 8
  %14 = load double, double* %bi, align 8
  %mul12 = fmul double %13, %14
  store double %mul12, double* %t, align 8
  %15 = load double, double* %t, align 8
  %16 = load double, double* %cr, align 8
  %sub = fsub double %16, %15
  store double %sub, double* %cr, align 8
  %17 = load double, double* %ar, align 8
  %18 = load double, double* %bi, align 8
  %mul13 = fmul double %17, %18
  store double %mul13, double* %ci, align 8
  %19 = load double, double* %ai, align 8
  %20 = load double, double* %br, align 8
  %mul14 = fmul double %19, %20
  store double %mul14, double* %t, align 8
  %21 = load double, double* %t, align 8
  %22 = load double, double* %ci, align 8
  %add = fadd double %22, %21
  store double %add, double* %ci, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e16 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %24, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e16, i32 0, i64 %idxprom15
  %arrayidx18 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx17, i32 0, i64 1
  %real19 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx18, i32 0, i32 0
  %25 = load double, double* %real19, align 8
  store double %25, double* %ar, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e21 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %27, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e21, i32 0, i64 %idxprom20
  %arrayidx23 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx22, i32 0, i64 1
  %imag24 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx23, i32 0, i32 1
  %28 = load double, double* %imag24, align 8
  store double %28, double* %ai, align 8
  %29 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c25 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %29, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c25, i32 0, i64 1
  %real27 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx26, i32 0, i32 0
  %30 = load double, double* %real27, align 8
  store double %30, double* %br, align 8
  %31 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c28 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %31, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c28, i32 0, i64 1
  %imag30 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx29, i32 0, i32 1
  %32 = load double, double* %imag30, align 8
  store double %32, double* %bi, align 8
  %33 = load double, double* %ar, align 8
  %34 = load double, double* %br, align 8
  %mul31 = fmul double %33, %34
  store double %mul31, double* %t, align 8
  %35 = load double, double* %t, align 8
  %36 = load double, double* %cr, align 8
  %add32 = fadd double %36, %35
  store double %add32, double* %cr, align 8
  %37 = load double, double* %ai, align 8
  %38 = load double, double* %bi, align 8
  %mul33 = fmul double %37, %38
  store double %mul33, double* %t, align 8
  %39 = load double, double* %t, align 8
  %40 = load double, double* %cr, align 8
  %sub34 = fsub double %40, %39
  store double %sub34, double* %cr, align 8
  %41 = load double, double* %ar, align 8
  %42 = load double, double* %bi, align 8
  %mul35 = fmul double %41, %42
  store double %mul35, double* %t, align 8
  %43 = load double, double* %t, align 8
  %44 = load double, double* %ci, align 8
  %add36 = fadd double %44, %43
  store double %add36, double* %ci, align 8
  %45 = load double, double* %ai, align 8
  %46 = load double, double* %br, align 8
  %mul37 = fmul double %45, %46
  store double %mul37, double* %t, align 8
  %47 = load double, double* %t, align 8
  %48 = load double, double* %ci, align 8
  %add38 = fadd double %48, %47
  store double %add38, double* %ci, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %49 to i64
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e40 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %50, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e40, i32 0, i64 %idxprom39
  %arrayidx42 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx41, i32 0, i64 2
  %real43 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx42, i32 0, i32 0
  %51 = load double, double* %real43, align 8
  store double %51, double* %ar, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %52 to i64
  %53 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e45 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %53, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e45, i32 0, i64 %idxprom44
  %arrayidx47 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx46, i32 0, i64 2
  %imag48 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx47, i32 0, i32 1
  %54 = load double, double* %imag48, align 8
  store double %54, double* %ai, align 8
  %55 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c49 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %55, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c49, i32 0, i64 2
  %real51 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx50, i32 0, i32 0
  %56 = load double, double* %real51, align 8
  store double %56, double* %br, align 8
  %57 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c52 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %57, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c52, i32 0, i64 2
  %imag54 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx53, i32 0, i32 1
  %58 = load double, double* %imag54, align 8
  store double %58, double* %bi, align 8
  %59 = load double, double* %ar, align 8
  %60 = load double, double* %br, align 8
  %mul55 = fmul double %59, %60
  store double %mul55, double* %t, align 8
  %61 = load double, double* %t, align 8
  %62 = load double, double* %cr, align 8
  %add56 = fadd double %62, %61
  store double %add56, double* %cr, align 8
  %63 = load double, double* %ai, align 8
  %64 = load double, double* %bi, align 8
  %mul57 = fmul double %63, %64
  store double %mul57, double* %t, align 8
  %65 = load double, double* %t, align 8
  %66 = load double, double* %cr, align 8
  %sub58 = fsub double %66, %65
  store double %sub58, double* %cr, align 8
  %67 = load double, double* %ar, align 8
  %68 = load double, double* %bi, align 8
  %mul59 = fmul double %67, %68
  store double %mul59, double* %t, align 8
  %69 = load double, double* %t, align 8
  %70 = load double, double* %ci, align 8
  %add60 = fadd double %70, %69
  store double %add60, double* %ci, align 8
  %71 = load double, double* %ai, align 8
  %72 = load double, double* %br, align 8
  %mul61 = fmul double %71, %72
  store double %mul61, double* %t, align 8
  %73 = load double, double* %t, align 8
  %74 = load double, double* %ci, align 8
  %add62 = fadd double %74, %73
  store double %add62, double* %ci, align 8
  %75 = load double, double* %cr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %76 to i64
  %77 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c64 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %77, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c64, i32 0, i64 %idxprom63
  %real66 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx65, i32 0, i32 0
  store double %75, double* %real66, align 8
  %78 = load double, double* %ci, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %79 to i64
  %80 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c68 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %80, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c68, i32 0, i64 %idxprom67
  %imag70 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx69, i32 0, i32 1
  store double %78, double* %imag70, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
