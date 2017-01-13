; ModuleID = './MultiSource.Benchmarks.Olden/15.voronoi.vector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VEC2 = type { double, double, double }

; Function Attrs: nounwind uwtable
define double @V2_cprod(%struct.VEC2* byval align 8 %u, %struct.VEC2* byval align 8 %v) #0 {
entry:
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %mul = fmul double %0, %1
  %y1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 1
  %2 = load double, double* %y1, align 8
  %x2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %3 = load double, double* %x2, align 8
  %mul3 = fmul double %2, %3
  %sub = fsub double %mul, %mul3
  ret double %sub
}

; Function Attrs: nounwind uwtable
define double @V2_dot(%struct.VEC2* byval align 8 %u, %struct.VEC2* byval align 8 %v) #0 {
entry:
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  ret double %add
}

; Function Attrs: nounwind uwtable
define void @V2_times(%struct.VEC2* noalias sret %agg.result, double %c, %struct.VEC2* byval align 8 %v) #0 {
entry:
  %c.addr = alloca double, align 8
  %ans = alloca %struct.VEC2, align 8
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %c.addr, align 8
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %mul = fmul double %0, %1
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %2 = load double, double* %c.addr, align 8
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %mul2 = fmul double %2, %3
  %y3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %4 = bitcast %struct.VEC2* %agg.result to i8*
  %5 = bitcast %struct.VEC2* %ans to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @V2_sum(%struct.VEC2* noalias sret %agg.result, %struct.VEC2* byval align 8 %u, %struct.VEC2* byval align 8 %v) #0 {
entry:
  %ans = alloca %struct.VEC2, align 8
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %add = fadd double %0, %1
  %x2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 0
  store double %add, double* %x2, align 8
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 1
  %3 = load double, double* %y3, align 8
  %add4 = fadd double %2, %3
  %y5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 1
  store double %add4, double* %y5, align 8
  %4 = bitcast %struct.VEC2* %agg.result to i8*
  %5 = bitcast %struct.VEC2* %ans to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @V2_sub(%struct.VEC2* noalias sret %agg.result, %struct.VEC2* byval align 8 %u, %struct.VEC2* byval align 8 %v) #0 {
entry:
  %ans = alloca %struct.VEC2, align 8
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %sub = fsub double %0, %1
  %x2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 0
  store double %sub, double* %x2, align 8
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 1
  %3 = load double, double* %y3, align 8
  %sub4 = fsub double %2, %3
  %y5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 1
  store double %sub4, double* %y5, align 8
  %4 = bitcast %struct.VEC2* %agg.result to i8*
  %5 = bitcast %struct.VEC2* %ans to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define double @V2_magn(%struct.VEC2* byval align 8 %u) #0 {
entry:
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %u, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  %call = call double @sqrt(double %add) #1
  ret double %call
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define void @V2_cross(%struct.VEC2* noalias sret %agg.result, %struct.VEC2* byval align 8 %v) #0 {
entry:
  %ans = alloca %struct.VEC2, align 8
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 1
  %0 = load double, double* %y, align 8
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 0
  store double %0, double* %x, align 8
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %sub = fsub double -0.000000e+00, %1
  %y2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %ans, i32 0, i32 1
  store double %sub, double* %y2, align 8
  %2 = bitcast %struct.VEC2* %agg.result to i8*
  %3 = bitcast %struct.VEC2* %ans to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
