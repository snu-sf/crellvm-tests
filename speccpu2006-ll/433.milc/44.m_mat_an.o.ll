; ModuleID = 'm_mat_an.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define void @mult_su3_an(%struct.su3_matrix* %a, %struct.su3_matrix* %b, %struct.su3_matrix* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_matrix*, align 8
  %b.addr = alloca %struct.su3_matrix*, align 8
  %c.addr = alloca %struct.su3_matrix*, align 8
  %j = alloca i32, align 4
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
  store %struct.su3_matrix* %a, %struct.su3_matrix** %a.addr, align 8
  store %struct.su3_matrix* %b, %struct.su3_matrix** %b.addr, align 8
  store %struct.su3_matrix* %c, %struct.su3_matrix** %c.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %2 = load double, double* %real, align 8
  store double %2, double* %a0r, align 8
  %3 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e2 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx3, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 1
  %4 = load double, double* %imag, align 8
  store double %4, double* %a0i, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e5 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx6, i32 0, i64 %idxprom
  %real8 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 0
  %7 = load double, double* %real8, align 8
  store double %7, double* %b0r, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e10 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx11, i32 0, i64 %idxprom9
  %imag13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  %10 = load double, double* %imag13, align 8
  store double %10, double* %b0i, align 8
  %11 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e14 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %11, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx15, i32 0, i64 0
  %real17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 0
  %12 = load double, double* %real17, align 8
  store double %12, double* %a1r, align 8
  %13 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e18 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %13, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e18, i32 0, i64 1
  %arrayidx20 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx19, i32 0, i64 0
  %imag21 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx20, i32 0, i32 1
  %14 = load double, double* %imag21, align 8
  store double %14, double* %a1i, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %15 to i64
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e23 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e23, i32 0, i64 1
  %arrayidx25 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx24, i32 0, i64 %idxprom22
  %real26 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 0
  %17 = load double, double* %real26, align 8
  store double %17, double* %b1r, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %18 to i64
  %19 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %19, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 1
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 %idxprom27
  %imag31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 1
  %20 = load double, double* %imag31, align 8
  store double %20, double* %b1i, align 8
  %21 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e32 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %21, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e32, i32 0, i64 2
  %arrayidx34 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx33, i32 0, i64 0
  %real35 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx34, i32 0, i32 0
  %22 = load double, double* %real35, align 8
  store double %22, double* %a2r, align 8
  %23 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e36 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %23, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e36, i32 0, i64 2
  %arrayidx38 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx37, i32 0, i64 0
  %imag39 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx38, i32 0, i32 1
  %24 = load double, double* %imag39, align 8
  store double %24, double* %a2i, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %25 to i64
  %26 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e41 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %26, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e41, i32 0, i64 2
  %arrayidx43 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx42, i32 0, i64 %idxprom40
  %real44 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx43, i32 0, i32 0
  %27 = load double, double* %real44, align 8
  store double %27, double* %b2r, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %28 to i64
  %29 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e46 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %29, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e46, i32 0, i64 2
  %arrayidx48 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx47, i32 0, i64 %idxprom45
  %imag49 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx48, i32 0, i32 1
  %30 = load double, double* %imag49, align 8
  store double %30, double* %b2i, align 8
  %31 = load double, double* %a0r, align 8
  %32 = load double, double* %b0r, align 8
  %mul = fmul double %31, %32
  %33 = load double, double* %a0i, align 8
  %34 = load double, double* %b0i, align 8
  %mul50 = fmul double %33, %34
  %add = fadd double %mul, %mul50
  %35 = load double, double* %a1r, align 8
  %36 = load double, double* %b1r, align 8
  %mul51 = fmul double %35, %36
  %add52 = fadd double %add, %mul51
  %37 = load double, double* %a1i, align 8
  %38 = load double, double* %b1i, align 8
  %mul53 = fmul double %37, %38
  %add54 = fadd double %add52, %mul53
  %39 = load double, double* %a2r, align 8
  %40 = load double, double* %b2r, align 8
  %mul55 = fmul double %39, %40
  %add56 = fadd double %add54, %mul55
  %41 = load double, double* %a2i, align 8
  %42 = load double, double* %b2i, align 8
  %mul57 = fmul double %41, %42
  %add58 = fadd double %add56, %mul57
  %43 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %43 to i64
  %44 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e60 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %44, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e60, i32 0, i64 0
  %arrayidx62 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx61, i32 0, i64 %idxprom59
  %real63 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx62, i32 0, i32 0
  store double %add58, double* %real63, align 8
  %45 = load double, double* %a0r, align 8
  %46 = load double, double* %b0i, align 8
  %mul64 = fmul double %45, %46
  %47 = load double, double* %a0i, align 8
  %48 = load double, double* %b0r, align 8
  %mul65 = fmul double %47, %48
  %sub = fsub double %mul64, %mul65
  %49 = load double, double* %a1r, align 8
  %50 = load double, double* %b1i, align 8
  %mul66 = fmul double %49, %50
  %add67 = fadd double %sub, %mul66
  %51 = load double, double* %a1i, align 8
  %52 = load double, double* %b1r, align 8
  %mul68 = fmul double %51, %52
  %sub69 = fsub double %add67, %mul68
  %53 = load double, double* %a2r, align 8
  %54 = load double, double* %b2i, align 8
  %mul70 = fmul double %53, %54
  %add71 = fadd double %sub69, %mul70
  %55 = load double, double* %a2i, align 8
  %56 = load double, double* %b2r, align 8
  %mul72 = fmul double %55, %56
  %sub73 = fsub double %add71, %mul72
  %57 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e75 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e75, i32 0, i64 0
  %arrayidx77 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx76, i32 0, i64 %idxprom74
  %imag78 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx77, i32 0, i32 1
  store double %sub73, double* %imag78, align 8
  %59 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e79 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %59, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e79, i32 0, i64 0
  %arrayidx81 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx80, i32 0, i64 1
  %real82 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx81, i32 0, i32 0
  %60 = load double, double* %real82, align 8
  store double %60, double* %a0r, align 8
  %61 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e83 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %61, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e83, i32 0, i64 0
  %arrayidx85 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx84, i32 0, i64 1
  %imag86 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx85, i32 0, i32 1
  %62 = load double, double* %imag86, align 8
  store double %62, double* %a0i, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %63 to i64
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e88 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %64, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e88, i32 0, i64 0
  %arrayidx90 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx89, i32 0, i64 %idxprom87
  %real91 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx90, i32 0, i32 0
  %65 = load double, double* %real91, align 8
  store double %65, double* %b0r, align 8
  %66 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %66 to i64
  %67 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e93 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %67, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e93, i32 0, i64 0
  %arrayidx95 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx94, i32 0, i64 %idxprom92
  %imag96 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx95, i32 0, i32 1
  %68 = load double, double* %imag96, align 8
  store double %68, double* %b0i, align 8
  %69 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e97 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %69, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e97, i32 0, i64 1
  %arrayidx99 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx98, i32 0, i64 1
  %real100 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx99, i32 0, i32 0
  %70 = load double, double* %real100, align 8
  store double %70, double* %a1r, align 8
  %71 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e101 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %71, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e101, i32 0, i64 1
  %arrayidx103 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx102, i32 0, i64 1
  %imag104 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx103, i32 0, i32 1
  %72 = load double, double* %imag104, align 8
  store double %72, double* %a1i, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %73 to i64
  %74 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e106 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %74, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e106, i32 0, i64 1
  %arrayidx108 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx107, i32 0, i64 %idxprom105
  %real109 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx108, i32 0, i32 0
  %75 = load double, double* %real109, align 8
  store double %75, double* %b1r, align 8
  %76 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %76 to i64
  %77 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e111 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %77, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e111, i32 0, i64 1
  %arrayidx113 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx112, i32 0, i64 %idxprom110
  %imag114 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx113, i32 0, i32 1
  %78 = load double, double* %imag114, align 8
  store double %78, double* %b1i, align 8
  %79 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e115 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %79, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e115, i32 0, i64 2
  %arrayidx117 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx116, i32 0, i64 1
  %real118 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx117, i32 0, i32 0
  %80 = load double, double* %real118, align 8
  store double %80, double* %a2r, align 8
  %81 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e119 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %81, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e119, i32 0, i64 2
  %arrayidx121 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx120, i32 0, i64 1
  %imag122 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx121, i32 0, i32 1
  %82 = load double, double* %imag122, align 8
  store double %82, double* %a2i, align 8
  %83 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %83 to i64
  %84 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e124 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %84, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e124, i32 0, i64 2
  %arrayidx126 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx125, i32 0, i64 %idxprom123
  %real127 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx126, i32 0, i32 0
  %85 = load double, double* %real127, align 8
  store double %85, double* %b2r, align 8
  %86 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %86 to i64
  %87 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e129 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %87, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e129, i32 0, i64 2
  %arrayidx131 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx130, i32 0, i64 %idxprom128
  %imag132 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx131, i32 0, i32 1
  %88 = load double, double* %imag132, align 8
  store double %88, double* %b2i, align 8
  %89 = load double, double* %a0r, align 8
  %90 = load double, double* %b0r, align 8
  %mul133 = fmul double %89, %90
  %91 = load double, double* %a0i, align 8
  %92 = load double, double* %b0i, align 8
  %mul134 = fmul double %91, %92
  %add135 = fadd double %mul133, %mul134
  %93 = load double, double* %a1r, align 8
  %94 = load double, double* %b1r, align 8
  %mul136 = fmul double %93, %94
  %add137 = fadd double %add135, %mul136
  %95 = load double, double* %a1i, align 8
  %96 = load double, double* %b1i, align 8
  %mul138 = fmul double %95, %96
  %add139 = fadd double %add137, %mul138
  %97 = load double, double* %a2r, align 8
  %98 = load double, double* %b2r, align 8
  %mul140 = fmul double %97, %98
  %add141 = fadd double %add139, %mul140
  %99 = load double, double* %a2i, align 8
  %100 = load double, double* %b2i, align 8
  %mul142 = fmul double %99, %100
  %add143 = fadd double %add141, %mul142
  %101 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %101 to i64
  %102 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e145 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %102, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e145, i32 0, i64 1
  %arrayidx147 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx146, i32 0, i64 %idxprom144
  %real148 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx147, i32 0, i32 0
  store double %add143, double* %real148, align 8
  %103 = load double, double* %a0r, align 8
  %104 = load double, double* %b0i, align 8
  %mul149 = fmul double %103, %104
  %105 = load double, double* %a0i, align 8
  %106 = load double, double* %b0r, align 8
  %mul150 = fmul double %105, %106
  %sub151 = fsub double %mul149, %mul150
  %107 = load double, double* %a1r, align 8
  %108 = load double, double* %b1i, align 8
  %mul152 = fmul double %107, %108
  %add153 = fadd double %sub151, %mul152
  %109 = load double, double* %a1i, align 8
  %110 = load double, double* %b1r, align 8
  %mul154 = fmul double %109, %110
  %sub155 = fsub double %add153, %mul154
  %111 = load double, double* %a2r, align 8
  %112 = load double, double* %b2i, align 8
  %mul156 = fmul double %111, %112
  %add157 = fadd double %sub155, %mul156
  %113 = load double, double* %a2i, align 8
  %114 = load double, double* %b2r, align 8
  %mul158 = fmul double %113, %114
  %sub159 = fsub double %add157, %mul158
  %115 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %115 to i64
  %116 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e161 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %116, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e161, i32 0, i64 1
  %arrayidx163 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx162, i32 0, i64 %idxprom160
  %imag164 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx163, i32 0, i32 1
  store double %sub159, double* %imag164, align 8
  %117 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e165 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %117, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e165, i32 0, i64 0
  %arrayidx167 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx166, i32 0, i64 2
  %real168 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx167, i32 0, i32 0
  %118 = load double, double* %real168, align 8
  store double %118, double* %a0r, align 8
  %119 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e169 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %119, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e169, i32 0, i64 0
  %arrayidx171 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx170, i32 0, i64 2
  %imag172 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx171, i32 0, i32 1
  %120 = load double, double* %imag172, align 8
  store double %120, double* %a0i, align 8
  %121 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %121 to i64
  %122 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e174 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %122, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e174, i32 0, i64 0
  %arrayidx176 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx175, i32 0, i64 %idxprom173
  %real177 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx176, i32 0, i32 0
  %123 = load double, double* %real177, align 8
  store double %123, double* %b0r, align 8
  %124 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %124 to i64
  %125 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e179 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %125, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e179, i32 0, i64 0
  %arrayidx181 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx180, i32 0, i64 %idxprom178
  %imag182 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx181, i32 0, i32 1
  %126 = load double, double* %imag182, align 8
  store double %126, double* %b0i, align 8
  %127 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e183 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %127, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e183, i32 0, i64 1
  %arrayidx185 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx184, i32 0, i64 2
  %real186 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx185, i32 0, i32 0
  %128 = load double, double* %real186, align 8
  store double %128, double* %a1r, align 8
  %129 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e187 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %129, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e187, i32 0, i64 1
  %arrayidx189 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx188, i32 0, i64 2
  %imag190 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx189, i32 0, i32 1
  %130 = load double, double* %imag190, align 8
  store double %130, double* %a1i, align 8
  %131 = load i32, i32* %j, align 4
  %idxprom191 = sext i32 %131 to i64
  %132 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e192 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %132, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e192, i32 0, i64 1
  %arrayidx194 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx193, i32 0, i64 %idxprom191
  %real195 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx194, i32 0, i32 0
  %133 = load double, double* %real195, align 8
  store double %133, double* %b1r, align 8
  %134 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %134 to i64
  %135 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e197 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %135, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e197, i32 0, i64 1
  %arrayidx199 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx198, i32 0, i64 %idxprom196
  %imag200 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx199, i32 0, i32 1
  %136 = load double, double* %imag200, align 8
  store double %136, double* %b1i, align 8
  %137 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e201 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %137, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e201, i32 0, i64 2
  %arrayidx203 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx202, i32 0, i64 2
  %real204 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx203, i32 0, i32 0
  %138 = load double, double* %real204, align 8
  store double %138, double* %a2r, align 8
  %139 = load %struct.su3_matrix*, %struct.su3_matrix** %a.addr, align 8
  %e205 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %139, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e205, i32 0, i64 2
  %arrayidx207 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx206, i32 0, i64 2
  %imag208 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx207, i32 0, i32 1
  %140 = load double, double* %imag208, align 8
  store double %140, double* %a2i, align 8
  %141 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %141 to i64
  %142 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e210 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %142, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e210, i32 0, i64 2
  %arrayidx212 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx211, i32 0, i64 %idxprom209
  %real213 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx212, i32 0, i32 0
  %143 = load double, double* %real213, align 8
  store double %143, double* %b2r, align 8
  %144 = load i32, i32* %j, align 4
  %idxprom214 = sext i32 %144 to i64
  %145 = load %struct.su3_matrix*, %struct.su3_matrix** %b.addr, align 8
  %e215 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %145, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e215, i32 0, i64 2
  %arrayidx217 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx216, i32 0, i64 %idxprom214
  %imag218 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx217, i32 0, i32 1
  %146 = load double, double* %imag218, align 8
  store double %146, double* %b2i, align 8
  %147 = load double, double* %a0r, align 8
  %148 = load double, double* %b0r, align 8
  %mul219 = fmul double %147, %148
  %149 = load double, double* %a0i, align 8
  %150 = load double, double* %b0i, align 8
  %mul220 = fmul double %149, %150
  %add221 = fadd double %mul219, %mul220
  %151 = load double, double* %a1r, align 8
  %152 = load double, double* %b1r, align 8
  %mul222 = fmul double %151, %152
  %add223 = fadd double %add221, %mul222
  %153 = load double, double* %a1i, align 8
  %154 = load double, double* %b1i, align 8
  %mul224 = fmul double %153, %154
  %add225 = fadd double %add223, %mul224
  %155 = load double, double* %a2r, align 8
  %156 = load double, double* %b2r, align 8
  %mul226 = fmul double %155, %156
  %add227 = fadd double %add225, %mul226
  %157 = load double, double* %a2i, align 8
  %158 = load double, double* %b2i, align 8
  %mul228 = fmul double %157, %158
  %add229 = fadd double %add227, %mul228
  %159 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %159 to i64
  %160 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e231 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %160, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e231, i32 0, i64 2
  %arrayidx233 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx232, i32 0, i64 %idxprom230
  %real234 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx233, i32 0, i32 0
  store double %add229, double* %real234, align 8
  %161 = load double, double* %a0r, align 8
  %162 = load double, double* %b0i, align 8
  %mul235 = fmul double %161, %162
  %163 = load double, double* %a0i, align 8
  %164 = load double, double* %b0r, align 8
  %mul236 = fmul double %163, %164
  %sub237 = fsub double %mul235, %mul236
  %165 = load double, double* %a1r, align 8
  %166 = load double, double* %b1i, align 8
  %mul238 = fmul double %165, %166
  %add239 = fadd double %sub237, %mul238
  %167 = load double, double* %a1i, align 8
  %168 = load double, double* %b1r, align 8
  %mul240 = fmul double %167, %168
  %sub241 = fsub double %add239, %mul240
  %169 = load double, double* %a2r, align 8
  %170 = load double, double* %b2i, align 8
  %mul242 = fmul double %169, %170
  %add243 = fadd double %sub241, %mul242
  %171 = load double, double* %a2i, align 8
  %172 = load double, double* %b2r, align 8
  %mul244 = fmul double %171, %172
  %sub245 = fsub double %add243, %mul244
  %173 = load i32, i32* %j, align 4
  %idxprom246 = sext i32 %173 to i64
  %174 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e247 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %174, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e247, i32 0, i64 2
  %arrayidx249 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx248, i32 0, i64 %idxprom246
  %imag250 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx249, i32 0, i32 1
  store double %sub245, double* %imag250, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %175 = load i32, i32* %j, align 4
  %inc = add nsw i32 %175, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
