; ModuleID = 'su3_dot.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define { double, double } @su3_dot(%struct.su3_vector* %a, %struct.su3_vector* %b) #0 {
entry:
  %retval = alloca %struct.complex, align 8
  %a.addr = alloca %struct.su3_vector*, align 8
  %b.addr = alloca %struct.su3_vector*, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %br = alloca double, align 8
  %bi = alloca double, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  %cc = alloca %struct.complex, align 8
  store %struct.su3_vector* %a, %struct.su3_vector** %a.addr, align 8
  store %struct.su3_vector* %b, %struct.su3_vector** %b.addr, align 8
  %0 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %1 = load double, double* %real, align 8
  store double %1, double* %ar, align 8
  %2 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx2, i32 0, i32 1
  %3 = load double, double* %imag, align 8
  store double %3, double* %ai, align 8
  %4 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c3 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c3, i32 0, i64 0
  %real5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  %5 = load double, double* %real5, align 8
  store double %5, double* %br, align 8
  %6 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c6 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %6, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c6, i32 0, i64 0
  %imag8 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 1
  %7 = load double, double* %imag8, align 8
  store double %7, double* %bi, align 8
  %8 = load double, double* %ar, align 8
  %9 = load double, double* %br, align 8
  %mul = fmul double %8, %9
  %10 = load double, double* %ai, align 8
  %11 = load double, double* %bi, align 8
  %mul9 = fmul double %10, %11
  %add = fadd double %mul, %mul9
  store double %add, double* %cr, align 8
  %12 = load double, double* %ar, align 8
  %13 = load double, double* %bi, align 8
  %mul10 = fmul double %12, %13
  %14 = load double, double* %ai, align 8
  %15 = load double, double* %br, align 8
  %mul11 = fmul double %14, %15
  %sub = fsub double %mul10, %mul11
  store double %sub, double* %ci, align 8
  %16 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c12 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %16, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c12, i32 0, i64 1
  %real14 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx13, i32 0, i32 0
  %17 = load double, double* %real14, align 8
  store double %17, double* %ar, align 8
  %18 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c15 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %18, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c15, i32 0, i64 1
  %imag17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 1
  %19 = load double, double* %imag17, align 8
  store double %19, double* %ai, align 8
  %20 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c18 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %20, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c18, i32 0, i64 1
  %real20 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 0
  %21 = load double, double* %real20, align 8
  store double %21, double* %br, align 8
  %22 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c21 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %22, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c21, i32 0, i64 1
  %imag23 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx22, i32 0, i32 1
  %23 = load double, double* %imag23, align 8
  store double %23, double* %bi, align 8
  %24 = load double, double* %ar, align 8
  %25 = load double, double* %br, align 8
  %mul24 = fmul double %24, %25
  %26 = load double, double* %ai, align 8
  %27 = load double, double* %bi, align 8
  %mul25 = fmul double %26, %27
  %add26 = fadd double %mul24, %mul25
  %28 = load double, double* %cr, align 8
  %add27 = fadd double %28, %add26
  store double %add27, double* %cr, align 8
  %29 = load double, double* %ar, align 8
  %30 = load double, double* %bi, align 8
  %mul28 = fmul double %29, %30
  %31 = load double, double* %ai, align 8
  %32 = load double, double* %br, align 8
  %mul29 = fmul double %31, %32
  %sub30 = fsub double %mul28, %mul29
  %33 = load double, double* %ci, align 8
  %add31 = fadd double %33, %sub30
  store double %add31, double* %ci, align 8
  %34 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c32 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %34, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c32, i32 0, i64 2
  %real34 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx33, i32 0, i32 0
  %35 = load double, double* %real34, align 8
  store double %35, double* %ar, align 8
  %36 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c35 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %36, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c35, i32 0, i64 2
  %imag37 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx36, i32 0, i32 1
  %37 = load double, double* %imag37, align 8
  store double %37, double* %ai, align 8
  %38 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c38 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %38, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c38, i32 0, i64 2
  %real40 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx39, i32 0, i32 0
  %39 = load double, double* %real40, align 8
  store double %39, double* %br, align 8
  %40 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c41 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c41, i32 0, i64 2
  %imag43 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx42, i32 0, i32 1
  %41 = load double, double* %imag43, align 8
  store double %41, double* %bi, align 8
  %42 = load double, double* %ar, align 8
  %43 = load double, double* %br, align 8
  %mul44 = fmul double %42, %43
  %44 = load double, double* %ai, align 8
  %45 = load double, double* %bi, align 8
  %mul45 = fmul double %44, %45
  %add46 = fadd double %mul44, %mul45
  %46 = load double, double* %cr, align 8
  %add47 = fadd double %46, %add46
  store double %add47, double* %cr, align 8
  %47 = load double, double* %ar, align 8
  %48 = load double, double* %bi, align 8
  %mul48 = fmul double %47, %48
  %49 = load double, double* %ai, align 8
  %50 = load double, double* %br, align 8
  %mul49 = fmul double %49, %50
  %sub50 = fsub double %mul48, %mul49
  %51 = load double, double* %ci, align 8
  %add51 = fadd double %51, %sub50
  store double %add51, double* %ci, align 8
  %52 = load double, double* %cr, align 8
  %real52 = getelementptr inbounds %struct.complex, %struct.complex* %cc, i32 0, i32 0
  store double %52, double* %real52, align 8
  %53 = load double, double* %ci, align 8
  %imag53 = getelementptr inbounds %struct.complex, %struct.complex* %cc, i32 0, i32 1
  store double %53, double* %imag53, align 8
  %54 = bitcast %struct.complex* %retval to i8*
  %55 = bitcast %struct.complex* %cc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false)
  %56 = bitcast %struct.complex* %retval to { double, double }*
  %57 = load { double, double }, { double, double }* %56, align 8
  ret { double, double } %57
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
