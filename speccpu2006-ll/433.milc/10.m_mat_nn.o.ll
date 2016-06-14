; ModuleID = 'm_mat_nn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @mult_su3_nn(%struct.su3_matrix* %a, %struct.su3_matrix* %b, %struct.su3_matrix* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_matrix*, align 8
  %b.addr = alloca %struct.su3_matrix*, align 8
  %c.addr = alloca %struct.su3_matrix*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %br = alloca double, align 8
  %bi = alloca double, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  store %struct.su3_matrix* %b, %struct.su3_matrix** %b.addr, align 8
  store %struct.su3_matrix* %c, %struct.su3_matrix** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  %4 = load double, double* %real, align 8
  store double %4, double* %ar, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e6 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %6, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e6, i32 0, i64 %idxprom5
  %arrayidx8 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx7, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 1
  %7 = load double, double* %imag, align 8
  store double %7, double* %ai, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e10 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx11, i32 0, i64 %idxprom9
  %real13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 0
  %10 = load double, double* %real13, align 8
  store double %10, double* %br, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e15 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx16, i32 0, i64 %idxprom14
  %imag18 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx17, i32 0, i32 1
  %13 = load double, double* %imag18, align 8
  store double %13, double* %bi, align 8
  %14 = load double, double* %ar, align 8
  %15 = load double, double* %br, align 8
  %mul = fmul double %14, %15
  store double %mul, double* %cr, align 8
  %16 = load double, double* %ai, align 8
  %17 = load double, double* %bi, align 8
  %mul19 = fmul double %16, %17
  store double %mul19, double* %t, align 8
  %18 = load double, double* %t, align 8
  %19 = load double, double* %cr, align 8
  %sub = fsub double %19, %18
  store double %sub, double* %cr, align 8
  %20 = load double, double* %ar, align 8
  %21 = load double, double* %bi, align 8
  %mul20 = fmul double %20, %21
  store double %mul20, double* %ci, align 8
  %22 = load double, double* %ai, align 8
  %23 = load double, double* %br, align 8
  %mul21 = fmul double %22, %23
  store double %mul21, double* %t, align 8
  %24 = load double, double* %t, align 8
  %25 = load double, double* %ci, align 8
  %add = fadd double %25, %24
  store double %add, double* %ci, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e23 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %27, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e23, i32 0, i64 %idxprom22
  %arrayidx25 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx24, i32 0, i64 1
  %real26 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 0
  %28 = load double, double* %real26, align 8
  store double %28, double* %ar, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %30, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 %idxprom27
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 1
  %imag31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 1
  %31 = load double, double* %imag31, align 8
  store double %31, double* %ai, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e33 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %33, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e33, i32 0, i64 1
  %arrayidx35 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx34, i32 0, i64 %idxprom32
  %real36 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx35, i32 0, i32 0
  %34 = load double, double* %real36, align 8
  store double %34, double* %br, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e38 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %36, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e38, i32 0, i64 1
  %arrayidx40 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx39, i32 0, i64 %idxprom37
  %imag41 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx40, i32 0, i32 1
  %37 = load double, double* %imag41, align 8
  store double %37, double* %bi, align 8
  %38 = load double, double* %ar, align 8
  %39 = load double, double* %br, align 8
  %mul42 = fmul double %38, %39
  store double %mul42, double* %t, align 8
  %40 = load double, double* %t, align 8
  %41 = load double, double* %cr, align 8
  %add43 = fadd double %41, %40
  store double %add43, double* %cr, align 8
  %42 = load double, double* %ai, align 8
  %43 = load double, double* %bi, align 8
  %mul44 = fmul double %42, %43
  store double %mul44, double* %t, align 8
  %44 = load double, double* %t, align 8
  %45 = load double, double* %cr, align 8
  %sub45 = fsub double %45, %44
  store double %sub45, double* %cr, align 8
  %46 = load double, double* %ar, align 8
  %47 = load double, double* %bi, align 8
  %mul46 = fmul double %46, %47
  store double %mul46, double* %t, align 8
  %48 = load double, double* %t, align 8
  %49 = load double, double* %ci, align 8
  %add47 = fadd double %49, %48
  store double %add47, double* %ci, align 8
  %50 = load double, double* %ai, align 8
  %51 = load double, double* %br, align 8
  %mul48 = fmul double %50, %51
  store double %mul48, double* %t, align 8
  %52 = load double, double* %t, align 8
  %53 = load double, double* %ci, align 8
  %add49 = fadd double %53, %52
  store double %add49, double* %ci, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e51 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %55, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e51, i32 0, i64 %idxprom50
  %arrayidx53 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx52, i32 0, i64 2
  %real54 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx53, i32 0, i32 0
  %56 = load double, double* %real54, align 8
  store double %56, double* %ar, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %57 to i64
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e56 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e56, i32 0, i64 %idxprom55
  %arrayidx58 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx57, i32 0, i64 2
  %imag59 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx58, i32 0, i32 1
  %59 = load double, double* %imag59, align 8
  store double %59, double* %ai, align 8
  %60 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %60 to i64
  %61 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e61 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %61, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e61, i32 0, i64 2
  %arrayidx63 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx62, i32 0, i64 %idxprom60
  %real64 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx63, i32 0, i32 0
  %62 = load double, double* %real64, align 8
  store double %62, double* %br, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %63 to i64
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e66 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %64, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e66, i32 0, i64 2
  %arrayidx68 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx67, i32 0, i64 %idxprom65
  %imag69 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx68, i32 0, i32 1
  %65 = load double, double* %imag69, align 8
  store double %65, double* %bi, align 8
  %66 = load double, double* %ar, align 8
  %67 = load double, double* %br, align 8
  %mul70 = fmul double %66, %67
  store double %mul70, double* %t, align 8
  %68 = load double, double* %t, align 8
  %69 = load double, double* %cr, align 8
  %add71 = fadd double %69, %68
  store double %add71, double* %cr, align 8
  %70 = load double, double* %ai, align 8
  %71 = load double, double* %bi, align 8
  %mul72 = fmul double %70, %71
  store double %mul72, double* %t, align 8
  %72 = load double, double* %t, align 8
  %73 = load double, double* %cr, align 8
  %sub73 = fsub double %73, %72
  store double %sub73, double* %cr, align 8
  %74 = load double, double* %ar, align 8
  %75 = load double, double* %bi, align 8
  %mul74 = fmul double %74, %75
  store double %mul74, double* %t, align 8
  %76 = load double, double* %t, align 8
  %77 = load double, double* %ci, align 8
  %add75 = fadd double %77, %76
  store double %add75, double* %ci, align 8
  %78 = load double, double* %ai, align 8
  %79 = load double, double* %br, align 8
  %mul76 = fmul double %78, %79
  store double %mul76, double* %t, align 8
  %80 = load double, double* %t, align 8
  %81 = load double, double* %ci, align 8
  %add77 = fadd double %81, %80
  store double %add77, double* %ci, align 8
  %82 = load double, double* %cr, align 8
  %83 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %84 to i64
  %85 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e80 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %85, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e80, i32 0, i64 %idxprom79
  %arrayidx82 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx81, i32 0, i64 %idxprom78
  %real83 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx82, i32 0, i32 0
  store double %82, double* %real83, align 8
  %86 = load double, double* %ci, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %88 to i64
  %89 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e86 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %89, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e86, i32 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx87, i32 0, i64 %idxprom84
  %imag89 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx88, i32 0, i32 1
  store double %86, double* %imag89, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %90 = load i32, i32* %j, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end
  %91 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %91, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
