; ModuleID = './MultiSource.Benchmarks.McCat/26.09-vor.intersec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpoint = type { double, double }
%struct.point = type { i32, i32 }

; Function Attrs: nounwind uwtable
define { double, double } @midpoint(i64 %p1.coerce, i64 %p2.coerce) #0 {
entry:
  %retval = alloca %struct.dpoint, align 8
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %p = alloca %struct.dpoint, align 8
  %0 = bitcast %struct.point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %conv = sitofp i32 %2 to double
  %x1 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %conv2 = sitofp i32 %3 to double
  %add = fadd double %conv, %conv2
  %div = fdiv double %add, 2.000000e+00
  %x3 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %p, i32 0, i32 0
  store double %div, double* %x3, align 8
  %y = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %conv4 = sitofp i32 %4 to double
  %y5 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1
  %5 = load i32, i32* %y5, align 4
  %conv6 = sitofp i32 %5 to double
  %add7 = fadd double %conv4, %conv6
  %div8 = fdiv double %add7, 2.000000e+00
  %y9 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %p, i32 0, i32 1
  store double %div8, double* %y9, align 8
  %6 = bitcast %struct.dpoint* %retval to i8*
  %7 = bitcast %struct.dpoint* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %struct.dpoint* %retval to { double, double }*
  %9 = load { double, double }, { double, double }* %8, align 8
  ret { double, double } %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i64 @vector(i64 %p1.coerce, i64 %p2.coerce) #0 {
entry:
  %retval = alloca %struct.point, align 4
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %p = alloca %struct.point, align 4
  %0 = bitcast %struct.point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  %x2 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  store i32 %sub, i32* %x2, align 4
  %y = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %y3 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1
  %5 = load i32, i32* %y3, align 4
  %sub4 = sub nsw i32 %4, %5
  %y5 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  store i32 %sub4, i32* %y5, align 4
  %6 = bitcast %struct.point* %retval to i8*
  %7 = bitcast %struct.point* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 4, i1 false)
  %8 = bitcast %struct.point* %retval to i64*
  %9 = load i64, i64* %8, align 4
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i32 @length2(i64 %p1.coerce, i64 %p2.coerce) #0 {
entry:
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %0 = bitcast %struct.point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  %x2 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0
  %4 = load i32, i32* %x2, align 4
  %x3 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0
  %5 = load i32, i32* %x3, align 4
  %sub4 = sub nsw i32 %4, %5
  %mul = mul nsw i32 %sub, %sub4
  %y = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1
  %6 = load i32, i32* %y, align 4
  %y5 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1
  %7 = load i32, i32* %y5, align 4
  %sub6 = sub nsw i32 %6, %7
  %y7 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1
  %8 = load i32, i32* %y7, align 4
  %y8 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1
  %9 = load i32, i32* %y8, align 4
  %sub9 = sub nsw i32 %8, %9
  %mul10 = mul nsw i32 %sub6, %sub9
  %add = add nsw i32 %mul, %mul10
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define double @calculate_c(i64 %normalvector.coerce, double %midpoint.coerce0, double %midpoint.coerce1) #0 {
entry:
  %normalvector = alloca %struct.point, align 8
  %midpoint = alloca %struct.dpoint, align 8
  %0 = bitcast %struct.point* %normalvector to i64*
  store i64 %normalvector.coerce, i64* %0, align 8
  %1 = bitcast %struct.dpoint* %midpoint to { double, double }*
  %2 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 0
  store double %midpoint.coerce0, double* %2
  %3 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 1
  store double %midpoint.coerce1, double* %3
  %x = getelementptr inbounds %struct.point, %struct.point* %normalvector, i32 0, i32 0
  %4 = load i32, i32* %x, align 4
  %conv = sitofp i32 %4 to double
  %x1 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %midpoint, i32 0, i32 0
  %5 = load double, double* %x1, align 8
  %mul = fmul double %conv, %5
  %y = getelementptr inbounds %struct.point, %struct.point* %normalvector, i32 0, i32 1
  %6 = load i32, i32* %y, align 4
  %conv2 = sitofp i32 %6 to double
  %y3 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %midpoint, i32 0, i32 1
  %7 = load double, double* %y3, align 8
  %mul4 = fmul double %conv2, %7
  %add = fadd double %mul, %mul4
  ret double %add
}

; Function Attrs: nounwind uwtable
define { double, double } @intersect(i64 %n1.coerce, i64 %n2.coerce, double %c1, double %c2) #0 {
entry:
  %retval = alloca %struct.dpoint, align 8
  %n1 = alloca %struct.point, align 8
  %n2 = alloca %struct.point, align 8
  %c1.addr = alloca double, align 8
  %c2.addr = alloca double, align 8
  %p = alloca %struct.dpoint, align 8
  %0 = bitcast %struct.point* %n1 to i64*
  store i64 %n1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %n2 to i64*
  store i64 %n2.coerce, i64* %1, align 8
  store double %c1, double* %c1.addr, align 8
  store double %c2, double* %c2.addr, align 8
  %2 = load double, double* %c1.addr, align 8
  %y = getelementptr inbounds %struct.point, %struct.point* %n2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double %2, %conv
  %y1 = getelementptr inbounds %struct.point, %struct.point* %n1, i32 0, i32 1
  %4 = load i32, i32* %y1, align 4
  %conv2 = sitofp i32 %4 to double
  %5 = load double, double* %c2.addr, align 8
  %mul3 = fmul double %conv2, %5
  %sub = fsub double %mul, %mul3
  %x = getelementptr inbounds %struct.point, %struct.point* %n1, i32 0, i32 0
  %6 = load i32, i32* %x, align 4
  %conv4 = sitofp i32 %6 to double
  %y5 = getelementptr inbounds %struct.point, %struct.point* %n2, i32 0, i32 1
  %7 = load i32, i32* %y5, align 4
  %conv6 = sitofp i32 %7 to double
  %mul7 = fmul double %conv4, %conv6
  %y8 = getelementptr inbounds %struct.point, %struct.point* %n1, i32 0, i32 1
  %8 = load i32, i32* %y8, align 4
  %conv9 = sitofp i32 %8 to double
  %x10 = getelementptr inbounds %struct.point, %struct.point* %n2, i32 0, i32 0
  %9 = load i32, i32* %x10, align 4
  %conv11 = sitofp i32 %9 to double
  %mul12 = fmul double %conv9, %conv11
  %sub13 = fsub double %mul7, %mul12
  %div = fdiv double %sub, %sub13
  %x14 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %p, i32 0, i32 0
  store double %div, double* %x14, align 8
  %x15 = getelementptr inbounds %struct.point, %struct.point* %n1, i32 0, i32 0
  %10 = load i32, i32* %x15, align 4
  %conv16 = sitofp i32 %10 to double
  %11 = load double, double* %c2.addr, align 8
  %mul17 = fmul double %conv16, %11
  %12 = load double, double* %c1.addr, align 8
  %x18 = getelementptr inbounds %struct.point, %struct.point* %n2, i32 0, i32 0
  %13 = load i32, i32* %x18, align 4
  %conv19 = sitofp i32 %13 to double
  %mul20 = fmul double %12, %conv19
  %sub21 = fsub double %mul17, %mul20
  %x22 = getelementptr inbounds %struct.point, %struct.point* %n1, i32 0, i32 0
  %14 = load i32, i32* %x22, align 4
  %conv23 = sitofp i32 %14 to double
  %y24 = getelementptr inbounds %struct.point, %struct.point* %n2, i32 0, i32 1
  %15 = load i32, i32* %y24, align 4
  %conv25 = sitofp i32 %15 to double
  %mul26 = fmul double %conv23, %conv25
  %y27 = getelementptr inbounds %struct.point, %struct.point* %n1, i32 0, i32 1
  %16 = load i32, i32* %y27, align 4
  %conv28 = sitofp i32 %16 to double
  %x29 = getelementptr inbounds %struct.point, %struct.point* %n2, i32 0, i32 0
  %17 = load i32, i32* %x29, align 4
  %conv30 = sitofp i32 %17 to double
  %mul31 = fmul double %conv28, %conv30
  %sub32 = fsub double %mul26, %mul31
  %div33 = fdiv double %sub21, %sub32
  %y34 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %p, i32 0, i32 1
  store double %div33, double* %y34, align 8
  %18 = bitcast %struct.dpoint* %retval to i8*
  %19 = bitcast %struct.dpoint* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = bitcast %struct.dpoint* %retval to { double, double }*
  %21 = load { double, double }, { double, double }* %20, align 8
  ret { double, double } %21
}

; Function Attrs: nounwind uwtable
define { double, double } @centre(i64 %p1.coerce, i64 %p2.coerce, i64 %p3.coerce) #0 {
entry:
  %retval = alloca %struct.dpoint, align 8
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %p3 = alloca %struct.point, align 8
  %n1 = alloca %struct.point, align 4
  %n2 = alloca %struct.point, align 4
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %coerce = alloca %struct.point, align 4
  %coerce2 = alloca %struct.point, align 4
  %agg.tmp = alloca %struct.dpoint, align 8
  %agg.tmp5 = alloca %struct.dpoint, align 8
  %0 = bitcast %struct.point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %2 = bitcast %struct.point* %p3 to i64*
  store i64 %p3.coerce, i64* %2, align 8
  %3 = bitcast %struct.point* %p1 to i64*
  %4 = load i64, i64* %3, align 4
  %5 = bitcast %struct.point* %p2 to i64*
  %6 = load i64, i64* %5, align 4
  %call = call i64 @vector(i64 %4, i64 %6)
  %7 = bitcast %struct.point* %coerce to i64*
  store i64 %call, i64* %7, align 4
  %8 = bitcast %struct.point* %n1 to i8*
  %9 = bitcast %struct.point* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false)
  %10 = bitcast %struct.point* %p2 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = bitcast %struct.point* %p3 to i64*
  %13 = load i64, i64* %12, align 4
  %call1 = call i64 @vector(i64 %11, i64 %13)
  %14 = bitcast %struct.point* %coerce2 to i64*
  store i64 %call1, i64* %14, align 4
  %15 = bitcast %struct.point* %n2 to i8*
  %16 = bitcast %struct.point* %coerce2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 4, i1 false)
  %17 = bitcast %struct.point* %p1 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = bitcast %struct.point* %p2 to i64*
  %20 = load i64, i64* %19, align 4
  %call3 = call { double, double } @midpoint(i64 %18, i64 %20)
  %21 = bitcast %struct.dpoint* %agg.tmp to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = extractvalue { double, double } %call3, 0
  store double %23, double* %22, align 8
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = extractvalue { double, double } %call3, 1
  store double %25, double* %24, align 8
  %26 = bitcast %struct.point* %n1 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.dpoint* %agg.tmp to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = load double, double* %29, align 1
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = load double, double* %31, align 1
  %call4 = call double @calculate_c(i64 %27, double %30, double %32)
  store double %call4, double* %c1, align 8
  %33 = bitcast %struct.point* %p2 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = bitcast %struct.point* %p3 to i64*
  %36 = load i64, i64* %35, align 4
  %call6 = call { double, double } @midpoint(i64 %34, i64 %36)
  %37 = bitcast %struct.dpoint* %agg.tmp5 to { double, double }*
  %38 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 0
  %39 = extractvalue { double, double } %call6, 0
  store double %39, double* %38, align 8
  %40 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 1
  %41 = extractvalue { double, double } %call6, 1
  store double %41, double* %40, align 8
  %42 = bitcast %struct.point* %n2 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = bitcast %struct.dpoint* %agg.tmp5 to { double, double }*
  %45 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 0
  %46 = load double, double* %45, align 1
  %47 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 1
  %48 = load double, double* %47, align 1
  %call7 = call double @calculate_c(i64 %43, double %46, double %48)
  store double %call7, double* %c2, align 8
  %49 = load double, double* %c1, align 8
  %50 = load double, double* %c2, align 8
  %51 = bitcast %struct.point* %n1 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = bitcast %struct.point* %n2 to i64*
  %54 = load i64, i64* %53, align 4
  %call8 = call { double, double } @intersect(i64 %52, i64 %54, double %49, double %50)
  %55 = bitcast %struct.dpoint* %retval to { double, double }*
  %56 = getelementptr { double, double }, { double, double }* %55, i32 0, i32 0
  %57 = extractvalue { double, double } %call8, 0
  store double %57, double* %56, align 8
  %58 = getelementptr { double, double }, { double, double }* %55, i32 0, i32 1
  %59 = extractvalue { double, double } %call8, 1
  store double %59, double* %58, align 8
  %60 = bitcast %struct.dpoint* %retval to { double, double }*
  %61 = load { double, double }, { double, double }* %60, align 8
  ret { double, double } %61
}

; Function Attrs: nounwind uwtable
define double @radius2(i64 %p.coerce, double %centre.coerce0, double %centre.coerce1) #0 {
entry:
  %p = alloca %struct.point, align 8
  %centre = alloca %struct.dpoint, align 8
  %0 = bitcast %struct.point* %p to i64*
  store i64 %p.coerce, i64* %0, align 8
  %1 = bitcast %struct.dpoint* %centre to { double, double }*
  %2 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 0
  store double %centre.coerce0, double* %2
  %3 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 1
  store double %centre.coerce1, double* %3
  %x = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %4 = load i32, i32* %x, align 4
  %conv = sitofp i32 %4 to double
  %x1 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %centre, i32 0, i32 0
  %5 = load double, double* %x1, align 8
  %sub = fsub double %conv, %5
  %x2 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %6 = load i32, i32* %x2, align 4
  %conv3 = sitofp i32 %6 to double
  %x4 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %centre, i32 0, i32 0
  %7 = load double, double* %x4, align 8
  %sub5 = fsub double %conv3, %7
  %mul = fmul double %sub, %sub5
  %y = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %8 = load i32, i32* %y, align 4
  %conv6 = sitofp i32 %8 to double
  %y7 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %centre, i32 0, i32 1
  %9 = load double, double* %y7, align 8
  %sub8 = fsub double %conv6, %9
  %y9 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %10 = load i32, i32* %y9, align 4
  %conv10 = sitofp i32 %10 to double
  %y11 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %centre, i32 0, i32 1
  %11 = load double, double* %y11, align 8
  %sub12 = fsub double %conv10, %11
  %mul13 = fmul double %sub8, %sub12
  %add = fadd double %mul, %mul13
  ret double %add
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
