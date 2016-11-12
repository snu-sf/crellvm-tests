; ModuleID = './plug-ins/ifs-compose/ifs-compose-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Aff2 = type { double, double, double, double, double, double }
%struct.Aff3 = type { [3 x [4 x double]] }
%struct.IPolygon = type { %struct._GdkPoint*, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct.SortPoint = type { %struct._GdkPoint, double }
%struct.AffElement = type { %struct.AffElementVals, %struct.Aff2, %struct.Aff3, i8*, %struct.IPolygon*, %struct.IPolygon* }
%struct.AffElementVals = type { double, double, double, double, double, double, i32, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo = type opaque
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._PangoLayout = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct.IfsComposeVals = type { i32, i32, i32, i32, double, double, double, double }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define void @aff2_translate(%struct.Aff2* %naff, double %x, double %y) #0 {
entry:
  %naff.addr = alloca %struct.Aff2*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct.Aff2* %naff, %struct.Aff2** %naff.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %0, i32 0, i32 0
  store double 1.000000e+00, double* %a11, align 8
  %1 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %1, i32 0, i32 1
  store double 0.000000e+00, double* %a12, align 8
  %2 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %2, i32 0, i32 2
  store double 0.000000e+00, double* %a21, align 8
  %3 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %3, i32 0, i32 3
  store double 1.000000e+00, double* %a22, align 8
  %4 = load double, double* %x.addr, align 8
  %5 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %5, i32 0, i32 4
  store double %4, double* %b1, align 8
  %6 = load double, double* %y.addr, align 8
  %7 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %7, i32 0, i32 5
  store double %6, double* %b2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff2_rotate(%struct.Aff2* %naff, double %theta) #0 {
entry:
  %naff.addr = alloca %struct.Aff2*, align 8
  %theta.addr = alloca double, align 8
  store %struct.Aff2* %naff, %struct.Aff2** %naff.addr, align 8
  store double %theta, double* %theta.addr, align 8
  %0 = load double, double* %theta.addr, align 8
  %call = call double @cos(double %0) #3
  %1 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %1, i32 0, i32 0
  store double %call, double* %a11, align 8
  %2 = load double, double* %theta.addr, align 8
  %call1 = call double @sin(double %2) #3
  %3 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %3, i32 0, i32 1
  store double %call1, double* %a12, align 8
  %4 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a122 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %4, i32 0, i32 1
  %5 = load double, double* %a122, align 8
  %sub = fsub double -0.000000e+00, %5
  %6 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 2
  store double %sub, double* %a21, align 8
  %7 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a113 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %7, i32 0, i32 0
  %8 = load double, double* %a113, align 8
  %9 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %9, i32 0, i32 3
  store double %8, double* %a22, align 8
  %10 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %10, i32 0, i32 4
  store double 0.000000e+00, double* %b1, align 8
  %11 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %11, i32 0, i32 5
  store double 0.000000e+00, double* %b2, align 8
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind uwtable
define void @aff2_scale(%struct.Aff2* %naff, double %s, i32 %flip) #0 {
entry:
  %naff.addr = alloca %struct.Aff2*, align 8
  %s.addr = alloca double, align 8
  %flip.addr = alloca i32, align 4
  store %struct.Aff2* %naff, %struct.Aff2** %naff.addr, align 8
  store double %s, double* %s.addr, align 8
  store i32 %flip, i32* %flip.addr, align 4
  %0 = load i32, i32* %flip.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %s.addr, align 8
  %sub = fsub double -0.000000e+00, %1
  %2 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %2, i32 0, i32 0
  store double %sub, double* %a11, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load double, double* %s.addr, align 8
  %4 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a111 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %4, i32 0, i32 0
  store double %3, double* %a111, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %5, i32 0, i32 1
  store double 0.000000e+00, double* %a12, align 8
  %6 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 2
  store double 0.000000e+00, double* %a21, align 8
  %7 = load double, double* %s.addr, align 8
  %8 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %8, i32 0, i32 3
  store double %7, double* %a22, align 8
  %9 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %9, i32 0, i32 4
  store double 0.000000e+00, double* %b1, align 8
  %10 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %10, i32 0, i32 5
  store double 0.000000e+00, double* %b2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff2_distort(%struct.Aff2* %naff, double %asym, double %shear) #0 {
entry:
  %naff.addr = alloca %struct.Aff2*, align 8
  %asym.addr = alloca double, align 8
  %shear.addr = alloca double, align 8
  store %struct.Aff2* %naff, %struct.Aff2** %naff.addr, align 8
  store double %asym, double* %asym.addr, align 8
  store double %shear, double* %shear.addr, align 8
  %0 = load double, double* %asym.addr, align 8
  %1 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %1, i32 0, i32 0
  store double %0, double* %a11, align 8
  %2 = load double, double* %asym.addr, align 8
  %div = fdiv double 1.000000e+00, %2
  %3 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %3, i32 0, i32 3
  store double %div, double* %a22, align 8
  %4 = load double, double* %shear.addr, align 8
  %5 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %5, i32 0, i32 1
  store double %4, double* %a12, align 8
  %6 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 2
  store double 0.000000e+00, double* %a21, align 8
  %7 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %7, i32 0, i32 4
  store double 0.000000e+00, double* %b1, align 8
  %8 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %8, i32 0, i32 5
  store double 0.000000e+00, double* %b2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff2_compute_stretch(%struct.Aff2* %naff, double %xo, double %yo, double %xn, double %yn) #0 {
entry:
  %naff.addr = alloca %struct.Aff2*, align 8
  %xo.addr = alloca double, align 8
  %yo.addr = alloca double, align 8
  %xn.addr = alloca double, align 8
  %yn.addr = alloca double, align 8
  %denom = alloca double, align 8
  store %struct.Aff2* %naff, %struct.Aff2** %naff.addr, align 8
  store double %xo, double* %xo.addr, align 8
  store double %yo, double* %yo.addr, align 8
  store double %xn, double* %xn.addr, align 8
  store double %yn, double* %yn.addr, align 8
  %0 = load double, double* %xo.addr, align 8
  %1 = load double, double* %xn.addr, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* %yo.addr, align 8
  %3 = load double, double* %yn.addr, align 8
  %mul1 = fmul double %2, %3
  %add = fadd double %mul, %mul1
  store double %add, double* %denom, align 8
  %4 = load double, double* %denom, align 8
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %5, i32 0, i32 0
  store double 1.000000e+00, double* %a11, align 8
  %6 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 1
  store double 0.000000e+00, double* %a12, align 8
  %7 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %7, i32 0, i32 2
  store double 0.000000e+00, double* %a21, align 8
  %8 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %8, i32 0, i32 3
  store double 1.000000e+00, double* %a22, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load double, double* %xn.addr, align 8
  %10 = load double, double* %xn.addr, align 8
  %mul2 = fmul double %9, %10
  %11 = load double, double* %yo.addr, align 8
  %12 = load double, double* %yo.addr, align 8
  %mul3 = fmul double %11, %12
  %add4 = fadd double %mul2, %mul3
  %13 = load double, double* %denom, align 8
  %div = fdiv double %add4, %13
  %14 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a115 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %14, i32 0, i32 0
  store double %div, double* %a115, align 8
  %15 = load double, double* %xo.addr, align 8
  %16 = load double, double* %xo.addr, align 8
  %mul6 = fmul double %15, %16
  %17 = load double, double* %yn.addr, align 8
  %18 = load double, double* %yn.addr, align 8
  %mul7 = fmul double %17, %18
  %add8 = fadd double %mul6, %mul7
  %19 = load double, double* %denom, align 8
  %div9 = fdiv double %add8, %19
  %20 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a2210 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %20, i32 0, i32 3
  store double %div9, double* %a2210, align 8
  %21 = load double, double* %xn.addr, align 8
  %22 = load double, double* %yn.addr, align 8
  %mul11 = fmul double %21, %22
  %23 = load double, double* %xo.addr, align 8
  %24 = load double, double* %yo.addr, align 8
  %mul12 = fmul double %23, %24
  %sub = fsub double %mul11, %mul12
  %25 = load double, double* %denom, align 8
  %div13 = fdiv double %sub, %25
  %26 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a2114 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %26, i32 0, i32 2
  store double %div13, double* %a2114, align 8
  %27 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a1215 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %27, i32 0, i32 1
  store double %div13, double* %a1215, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %28, i32 0, i32 4
  store double 0.000000e+00, double* %b1, align 8
  %29 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %29, i32 0, i32 5
  store double 0.000000e+00, double* %b2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff2_compose(%struct.Aff2* %naff, %struct.Aff2* %aff1, %struct.Aff2* %aff2) #0 {
entry:
  %naff.addr = alloca %struct.Aff2*, align 8
  %aff1.addr = alloca %struct.Aff2*, align 8
  %aff2.addr = alloca %struct.Aff2*, align 8
  store %struct.Aff2* %naff, %struct.Aff2** %naff.addr, align 8
  store %struct.Aff2* %aff1, %struct.Aff2** %aff1.addr, align 8
  store %struct.Aff2* %aff2, %struct.Aff2** %aff2.addr, align 8
  %0 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %0, i32 0, i32 0
  %1 = load double, double* %a11, align 8
  %2 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a111 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %2, i32 0, i32 0
  %3 = load double, double* %a111, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %4, i32 0, i32 1
  %5 = load double, double* %a12, align 8
  %6 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 2
  %7 = load double, double* %a21, align 8
  %mul2 = fmul double %5, %7
  %add = fadd double %mul, %mul2
  %8 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a113 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %8, i32 0, i32 0
  store double %add, double* %a113, align 8
  %9 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a114 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %9, i32 0, i32 0
  %10 = load double, double* %a114, align 8
  %11 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a125 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %11, i32 0, i32 1
  %12 = load double, double* %a125, align 8
  %mul6 = fmul double %10, %12
  %13 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a127 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %13, i32 0, i32 1
  %14 = load double, double* %a127, align 8
  %15 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %15, i32 0, i32 3
  %16 = load double, double* %a22, align 8
  %mul8 = fmul double %14, %16
  %add9 = fadd double %mul6, %mul8
  %17 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a1210 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %17, i32 0, i32 1
  store double %add9, double* %a1210, align 8
  %18 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a1111 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %18, i32 0, i32 0
  %19 = load double, double* %a1111, align 8
  %20 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %20, i32 0, i32 4
  %21 = load double, double* %b1, align 8
  %mul12 = fmul double %19, %21
  %22 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a1213 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %22, i32 0, i32 1
  %23 = load double, double* %a1213, align 8
  %24 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %24, i32 0, i32 5
  %25 = load double, double* %b2, align 8
  %mul14 = fmul double %23, %25
  %add15 = fadd double %mul12, %mul14
  %26 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %b116 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %26, i32 0, i32 4
  %27 = load double, double* %b116, align 8
  %add17 = fadd double %add15, %27
  %28 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b118 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %28, i32 0, i32 4
  store double %add17, double* %b118, align 8
  %29 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a2119 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %29, i32 0, i32 2
  %30 = load double, double* %a2119, align 8
  %31 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a1120 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %31, i32 0, i32 0
  %32 = load double, double* %a1120, align 8
  %mul21 = fmul double %30, %32
  %33 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a2222 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %33, i32 0, i32 3
  %34 = load double, double* %a2222, align 8
  %35 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a2123 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %35, i32 0, i32 2
  %36 = load double, double* %a2123, align 8
  %mul24 = fmul double %34, %36
  %add25 = fadd double %mul21, %mul24
  %37 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a2126 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %37, i32 0, i32 2
  store double %add25, double* %a2126, align 8
  %38 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a2127 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %38, i32 0, i32 2
  %39 = load double, double* %a2127, align 8
  %40 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a1228 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %40, i32 0, i32 1
  %41 = load double, double* %a1228, align 8
  %mul29 = fmul double %39, %41
  %42 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a2230 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %42, i32 0, i32 3
  %43 = load double, double* %a2230, align 8
  %44 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %a2231 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %44, i32 0, i32 3
  %45 = load double, double* %a2231, align 8
  %mul32 = fmul double %43, %45
  %add33 = fadd double %mul29, %mul32
  %46 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a2234 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %46, i32 0, i32 3
  store double %add33, double* %a2234, align 8
  %47 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a2135 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %47, i32 0, i32 2
  %48 = load double, double* %a2135, align 8
  %49 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %b136 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %49, i32 0, i32 4
  %50 = load double, double* %b136, align 8
  %mul37 = fmul double %48, %50
  %51 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %a2238 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %51, i32 0, i32 3
  %52 = load double, double* %a2238, align 8
  %53 = load %struct.Aff2*, %struct.Aff2** %aff2.addr, align 8
  %b239 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %53, i32 0, i32 5
  %54 = load double, double* %b239, align 8
  %mul40 = fmul double %52, %54
  %add41 = fadd double %mul37, %mul40
  %55 = load %struct.Aff2*, %struct.Aff2** %aff1.addr, align 8
  %b242 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %55, i32 0, i32 5
  %56 = load double, double* %b242, align 8
  %add43 = fadd double %add41, %56
  %57 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b244 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %57, i32 0, i32 5
  store double %add43, double* %b244, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff2_invert(%struct.Aff2* %naff, %struct.Aff2* %aff) #0 {
entry:
  %naff.addr = alloca %struct.Aff2*, align 8
  %aff.addr = alloca %struct.Aff2*, align 8
  %det = alloca double, align 8
  store %struct.Aff2* %naff, %struct.Aff2** %naff.addr, align 8
  store %struct.Aff2* %aff, %struct.Aff2** %aff.addr, align 8
  %0 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %0, i32 0, i32 0
  %1 = load double, double* %a11, align 8
  %2 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %2, i32 0, i32 3
  %3 = load double, double* %a22, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %4, i32 0, i32 1
  %5 = load double, double* %a12, align 8
  %6 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 2
  %7 = load double, double* %a21, align 8
  %mul1 = fmul double %5, %7
  %sub = fsub double %mul, %mul1
  store double %sub, double* %det, align 8
  %8 = load double, double* %det, align 8
  %cmp = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  call void @aff2_scale(%struct.Aff2* %9, double 1.000000e+00, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a222 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %10, i32 0, i32 3
  %11 = load double, double* %a222, align 8
  %12 = load double, double* %det, align 8
  %div = fdiv double %11, %12
  %13 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a113 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %13, i32 0, i32 0
  store double %div, double* %a113, align 8
  %14 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a114 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %14, i32 0, i32 0
  %15 = load double, double* %a114, align 8
  %16 = load double, double* %det, align 8
  %div5 = fdiv double %15, %16
  %17 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a226 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %17, i32 0, i32 3
  store double %div5, double* %a226, align 8
  %18 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a217 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %18, i32 0, i32 2
  %19 = load double, double* %a217, align 8
  %sub8 = fsub double -0.000000e+00, %19
  %20 = load double, double* %det, align 8
  %div9 = fdiv double %sub8, %20
  %21 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a2110 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %21, i32 0, i32 2
  store double %div9, double* %a2110, align 8
  %22 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a1211 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %22, i32 0, i32 1
  %23 = load double, double* %a1211, align 8
  %sub12 = fsub double -0.000000e+00, %23
  %24 = load double, double* %det, align 8
  %div13 = fdiv double %sub12, %24
  %25 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a1214 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %25, i32 0, i32 1
  store double %div13, double* %a1214, align 8
  %26 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a1115 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %26, i32 0, i32 0
  %27 = load double, double* %a1115, align 8
  %sub16 = fsub double -0.000000e+00, %27
  %28 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %28, i32 0, i32 4
  %29 = load double, double* %b1, align 8
  %mul17 = fmul double %sub16, %29
  %30 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a1218 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %30, i32 0, i32 1
  %31 = load double, double* %a1218, align 8
  %32 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %32, i32 0, i32 5
  %33 = load double, double* %b2, align 8
  %mul19 = fmul double %31, %33
  %sub20 = fsub double %mul17, %mul19
  %34 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b121 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %34, i32 0, i32 4
  store double %sub20, double* %b121, align 8
  %35 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a2122 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %35, i32 0, i32 2
  %36 = load double, double* %a2122, align 8
  %sub23 = fsub double -0.000000e+00, %36
  %37 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b124 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %37, i32 0, i32 4
  %38 = load double, double* %b124, align 8
  %mul25 = fmul double %sub23, %38
  %39 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %a2226 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %39, i32 0, i32 3
  %40 = load double, double* %a2226, align 8
  %41 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b227 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %41, i32 0, i32 5
  %42 = load double, double* %b227, align 8
  %mul28 = fmul double %40, %42
  %sub29 = fsub double %mul25, %mul28
  %43 = load %struct.Aff2*, %struct.Aff2** %naff.addr, align 8
  %b230 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %43, i32 0, i32 5
  store double %sub29, double* %b230, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff2_apply(%struct.Aff2* %aff, double %x, double %y, double* %xf, double* %yf) #0 {
entry:
  %aff.addr = alloca %struct.Aff2*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %xf.addr = alloca double*, align 8
  %yf.addr = alloca double*, align 8
  %xt = alloca double, align 8
  %yt = alloca double, align 8
  store %struct.Aff2* %aff, %struct.Aff2** %aff.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %xf, double** %xf.addr, align 8
  store double* %yf, double** %yf.addr, align 8
  %0 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %0, i32 0, i32 0
  %1 = load double, double* %a11, align 8
  %2 = load double, double* %x.addr, align 8
  %mul = fmul double %1, %2
  %3 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %3, i32 0, i32 1
  %4 = load double, double* %a12, align 8
  %5 = load double, double* %y.addr, align 8
  %mul1 = fmul double %4, %5
  %add = fadd double %mul, %mul1
  %6 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 4
  %7 = load double, double* %b1, align 8
  %add2 = fadd double %add, %7
  store double %add2, double* %xt, align 8
  %8 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %8, i32 0, i32 2
  %9 = load double, double* %a21, align 8
  %10 = load double, double* %x.addr, align 8
  %mul3 = fmul double %9, %10
  %11 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %11, i32 0, i32 3
  %12 = load double, double* %a22, align 8
  %13 = load double, double* %y.addr, align 8
  %mul4 = fmul double %12, %13
  %add5 = fadd double %mul3, %mul4
  %14 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %14, i32 0, i32 5
  %15 = load double, double* %b2, align 8
  %add6 = fadd double %add5, %15
  store double %add6, double* %yt, align 8
  %16 = load double, double* %xt, align 8
  %17 = load double*, double** %xf.addr, align 8
  store double %16, double* %17, align 8
  %18 = load double, double* %yt, align 8
  %19 = load double*, double** %yf.addr, align 8
  store double %18, double* %19, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff2_fixed_point(%struct.Aff2* %aff, double* %xf, double* %yf) #0 {
entry:
  %aff.addr = alloca %struct.Aff2*, align 8
  %xf.addr = alloca double*, align 8
  %yf.addr = alloca double*, align 8
  %t1 = alloca %struct.Aff2, align 8
  %t2 = alloca %struct.Aff2, align 8
  store %struct.Aff2* %aff, %struct.Aff2** %aff.addr, align 8
  store double* %xf, double** %xf.addr, align 8
  store double* %yf, double** %yf.addr, align 8
  %0 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %0, i32 0, i32 0
  %1 = load double, double* %a11, align 8
  %sub = fsub double 1.000000e+00, %1
  %a111 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t1, i32 0, i32 0
  store double %sub, double* %a111, align 8
  %2 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %2, i32 0, i32 3
  %3 = load double, double* %a22, align 8
  %sub2 = fsub double 1.000000e+00, %3
  %a223 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t1, i32 0, i32 3
  store double %sub2, double* %a223, align 8
  %4 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %4, i32 0, i32 1
  %5 = load double, double* %a12, align 8
  %sub4 = fsub double -0.000000e+00, %5
  %a125 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t1, i32 0, i32 1
  store double %sub4, double* %a125, align 8
  %6 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %6, i32 0, i32 2
  %7 = load double, double* %a21, align 8
  %sub6 = fsub double -0.000000e+00, %7
  %a217 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t1, i32 0, i32 2
  store double %sub6, double* %a217, align 8
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t1, i32 0, i32 4
  store double 0.000000e+00, double* %b1, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t1, i32 0, i32 5
  store double 0.000000e+00, double* %b2, align 8
  call void @aff2_invert(%struct.Aff2* %t2, %struct.Aff2* %t1)
  %8 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b18 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %8, i32 0, i32 4
  %9 = load double, double* %b18, align 8
  %10 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  %b29 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %10, i32 0, i32 5
  %11 = load double, double* %b29, align 8
  %12 = load double*, double** %xf.addr, align 8
  %13 = load double*, double** %yf.addr, align 8
  call void @aff2_apply(%struct.Aff2* %t2, double %9, double %11, double* %12, double* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff3_apply(%struct.Aff3* %t, double %x, double %y, double %z, double* %xf, double* %yf, double* %zf) #0 {
entry:
  %t.addr = alloca %struct.Aff3*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  %xf.addr = alloca double*, align 8
  %yf.addr = alloca double*, align 8
  %zf.addr = alloca double*, align 8
  %xt = alloca double, align 8
  %yt = alloca double, align 8
  %zt = alloca double, align 8
  store %struct.Aff3* %t, %struct.Aff3** %t.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  store double* %xf, double** %xf.addr, align 8
  store double* %yf, double** %yf.addr, align 8
  store double* %zf, double** %zf.addr, align 8
  %0 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals = getelementptr inbounds %struct.Aff3, %struct.Aff3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load double, double* %x.addr, align 8
  %mul = fmul double %1, %2
  %3 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals2 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx3, i32 0, i64 1
  %4 = load double, double* %arrayidx4, align 8
  %5 = load double, double* %y.addr, align 8
  %mul5 = fmul double %4, %5
  %add = fadd double %mul, %mul5
  %6 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals6 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %6, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx7, i32 0, i64 2
  %7 = load double, double* %arrayidx8, align 8
  %8 = load double, double* %z.addr, align 8
  %mul9 = fmul double %7, %8
  %add10 = fadd double %add, %mul9
  %9 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals11 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %9, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals11, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx12, i32 0, i64 3
  %10 = load double, double* %arrayidx13, align 8
  %add14 = fadd double %add10, %10
  store double %add14, double* %xt, align 8
  %11 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals15 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %11, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals15, i32 0, i64 1
  %arrayidx17 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx16, i32 0, i64 0
  %12 = load double, double* %arrayidx17, align 8
  %13 = load double, double* %x.addr, align 8
  %mul18 = fmul double %12, %13
  %14 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals19 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %14, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals19, i32 0, i64 1
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx20, i32 0, i64 1
  %15 = load double, double* %arrayidx21, align 8
  %16 = load double, double* %y.addr, align 8
  %mul22 = fmul double %15, %16
  %add23 = fadd double %mul18, %mul22
  %17 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals24 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %17, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals24, i32 0, i64 1
  %arrayidx26 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx25, i32 0, i64 2
  %18 = load double, double* %arrayidx26, align 8
  %19 = load double, double* %z.addr, align 8
  %mul27 = fmul double %18, %19
  %add28 = fadd double %add23, %mul27
  %20 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals29 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %20, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals29, i32 0, i64 1
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx30, i32 0, i64 3
  %21 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %add28, %21
  store double %add32, double* %yt, align 8
  %22 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals33 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %22, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals33, i32 0, i64 2
  %arrayidx35 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx34, i32 0, i64 0
  %23 = load double, double* %arrayidx35, align 8
  %24 = load double, double* %x.addr, align 8
  %mul36 = fmul double %23, %24
  %25 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals37 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %25, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals37, i32 0, i64 2
  %arrayidx39 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx38, i32 0, i64 1
  %26 = load double, double* %arrayidx39, align 8
  %27 = load double, double* %y.addr, align 8
  %mul40 = fmul double %26, %27
  %add41 = fadd double %mul36, %mul40
  %28 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals42 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %28, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals42, i32 0, i64 2
  %arrayidx44 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx43, i32 0, i64 2
  %29 = load double, double* %arrayidx44, align 8
  %30 = load double, double* %z.addr, align 8
  %mul45 = fmul double %29, %30
  %add46 = fadd double %add41, %mul45
  %31 = load %struct.Aff3*, %struct.Aff3** %t.addr, align 8
  %vals47 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %31, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals47, i32 0, i64 2
  %arrayidx49 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx48, i32 0, i64 3
  %32 = load double, double* %arrayidx49, align 8
  %add50 = fadd double %add46, %32
  store double %add50, double* %zt, align 8
  %33 = load double, double* %xt, align 8
  %34 = load double*, double** %xf.addr, align 8
  store double %33, double* %34, align 8
  %35 = load double, double* %yt, align 8
  %36 = load double*, double** %yf.addr, align 8
  store double %35, double* %36, align 8
  %37 = load double, double* %zt, align 8
  %38 = load double*, double** %zf.addr, align 8
  store double %37, double* %38, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.IPolygon* @ipolygon_convex_hull(%struct.IPolygon* %poly) #0 {
entry:
  %retval = alloca %struct.IPolygon*, align 8
  %poly.addr = alloca %struct.IPolygon*, align 8
  %num_new = alloca i32, align 4
  %new_points = alloca %struct._GdkPoint*, align 8
  %sort_points = alloca %struct.SortPoint*, align 8
  %new_poly = alloca %struct.IPolygon*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %lowest = alloca i32, align 4
  %lowest_pt = alloca %struct._GdkPoint, align 4
  %dy = alloca double, align 8
  %dx = alloca double, align 8
  store %struct.IPolygon* %poly, %struct.IPolygon** %poly.addr, align 8
  %0 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %npoints = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %0, i32 0, i32 1
  %1 = load i32, i32* %npoints, align 4
  store i32 %1, i32* %num_new, align 4
  %2 = load i32, i32* %num_new, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %3 = bitcast i8* %call to %struct._GdkPoint*
  store %struct._GdkPoint* %3, %struct._GdkPoint** %new_points, align 8
  %4 = load i32, i32* %num_new, align 4
  %conv1 = sext i32 %4 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv1, i64 16)
  %5 = bitcast i8* %call2 to %struct.SortPoint*
  store %struct.SortPoint* %5, %struct.SortPoint** %sort_points, align 8
  %call3 = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %6 = bitcast i8* %call3 to %struct.IPolygon*
  store %struct.IPolygon* %6, %struct.IPolygon** %new_poly, align 8
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %8 = load %struct.IPolygon*, %struct.IPolygon** %new_poly, align 8
  %points = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %8, i32 0, i32 0
  store %struct._GdkPoint* %7, %struct._GdkPoint** %points, align 8
  %9 = load i32, i32* %num_new, align 4
  %cmp = icmp sle i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %11 = bitcast %struct._GdkPoint* %10 to i8*
  %12 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points5 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %12, i32 0, i32 0
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %points5, align 8
  %14 = bitcast %struct._GdkPoint* %13 to i8*
  %15 = load i32, i32* %num_new, align 4
  %conv6 = sext i32 %15 to i64
  %mul = mul i64 %conv6, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %14, i64 %mul, i32 4, i1 false)
  %16 = load i32, i32* %num_new, align 4
  %17 = load %struct.IPolygon*, %struct.IPolygon** %new_poly, align 8
  %npoints7 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %17, i32 0, i32 1
  store i32 %16, i32* %npoints7, align 4
  %18 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %19 = bitcast %struct.SortPoint* %18 to i8*
  call void @g_free(i8* %19)
  %20 = load %struct.IPolygon*, %struct.IPolygon** %new_poly, align 8
  store %struct.IPolygon* %20, %struct.IPolygon** %retval
  br label %return

if.end:                                           ; preds = %entry
  %21 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points8 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %21, i32 0, i32 0
  %22 = load %struct._GdkPoint*, %struct._GdkPoint** %points8, align 8
  %arrayidx = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %22, i64 0
  %23 = bitcast %struct._GdkPoint* %lowest_pt to i8*
  %24 = bitcast %struct._GdkPoint* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 4, i1 false)
  store i32 0, i32* %lowest, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %num_new, align 4
  %cmp9 = icmp slt i32 %25, %26
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points11 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %28, i32 0, i32 0
  %29 = load %struct._GdkPoint*, %struct._GdkPoint** %points11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %29, i64 %idxprom
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx12, i32 0, i32 1
  %30 = load i32, i32* %y, align 4
  %y13 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %lowest_pt, i32 0, i32 1
  %31 = load i32, i32* %y13, align 4
  %cmp14 = icmp slt i32 %30, %31
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points18 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %33, i32 0, i32 0
  %34 = load %struct._GdkPoint*, %struct._GdkPoint** %points18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %34, i64 %idxprom17
  %35 = bitcast %struct._GdkPoint* %lowest_pt to i8*
  %36 = bitcast %struct._GdkPoint* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 4, i1 false)
  %37 = load i32, i32* %i, align 4
  store i32 %37, i32* %lowest, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.57, %for.end
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %num_new, align 4
  %cmp22 = icmp slt i32 %39, %40
  br i1 %cmp22, label %for.body.24, label %for.end.60

for.body.24:                                      ; preds = %for.cond.21
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %lowest, align 4
  %cmp25 = icmp eq i32 %41, %42
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.body.24
  %43 = load i32, i32* %j, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %j, align 4
  br label %if.end.56

if.else:                                          ; preds = %for.body.24
  %44 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %44 to i64
  %45 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points29 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %45, i32 0, i32 0
  %46 = load %struct._GdkPoint*, %struct._GdkPoint** %points29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %46, i64 %idxprom28
  %y31 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx30, i32 0, i32 1
  %47 = load i32, i32* %y31, align 4
  %y32 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %lowest_pt, i32 0, i32 1
  %48 = load i32, i32* %y32, align 4
  %sub = sub nsw i32 %47, %48
  %conv33 = sitofp i32 %sub to double
  store double %conv33, double* %dy, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %49 to i64
  %50 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points35 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %50, i32 0, i32 0
  %51 = load %struct._GdkPoint*, %struct._GdkPoint** %points35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %51, i64 %idxprom34
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx36, i32 0, i32 0
  %52 = load i32, i32* %x, align 4
  %x37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %lowest_pt, i32 0, i32 0
  %53 = load i32, i32* %x37, align 4
  %sub38 = sub nsw i32 %52, %53
  %conv39 = sitofp i32 %sub38 to double
  store double %conv39, double* %dx, align 8
  %54 = load double, double* %dy, align 8
  %cmp40 = fcmp oeq double %54, 0.000000e+00
  br i1 %cmp40, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.else
  %55 = load double, double* %dx, align 8
  %cmp42 = fcmp oeq double %55, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true
  %56 = load i32, i32* %j, align 4
  %dec45 = add nsw i32 %56, -1
  store i32 %dec45, i32* %j, align 4
  %57 = load i32, i32* %num_new, align 4
  %dec46 = add nsw i32 %57, -1
  store i32 %dec46, i32* %num_new, align 4
  br label %for.inc.57

if.end.47:                                        ; preds = %land.lhs.true, %if.else
  %58 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %58 to i64
  %59 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx49 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %59, i64 %idxprom48
  %point = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx49, i32 0, i32 0
  %60 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %60 to i64
  %61 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points51 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %61, i32 0, i32 0
  %62 = load %struct._GdkPoint*, %struct._GdkPoint** %points51, align 8
  %arrayidx52 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %62, i64 %idxprom50
  %63 = bitcast %struct._GdkPoint* %point to i8*
  %64 = bitcast %struct._GdkPoint* %arrayidx52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 8, i32 4, i1 false)
  %65 = load double, double* %dy, align 8
  %66 = load double, double* %dx, align 8
  %call53 = call double @atan2(double %65, double %66) #3
  %67 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %67 to i64
  %68 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx55 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %68, i64 %idxprom54
  %angle = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx55, i32 0, i32 1
  store double %call53, double* %angle, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.47, %if.then.27
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56, %if.then.44
  %69 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %69, 1
  store i32 %inc58, i32* %i, align 4
  %70 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %70, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.21

for.end.60:                                       ; preds = %for.cond.21
  %71 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %72 = bitcast %struct.SortPoint* %71 to i8*
  %73 = load i32, i32* %num_new, align 4
  %sub61 = sub nsw i32 %73, 1
  %conv62 = sext i32 %sub61 to i64
  call void @qsort(i8* %72, i64 %conv62, i64 16, i32 (i8*, i8*)* @ipolygon_sort_func)
  %74 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx63 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %74, i64 0
  %75 = bitcast %struct._GdkPoint* %arrayidx63 to i8*
  %76 = bitcast %struct._GdkPoint* %lowest_pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 8, i32 4, i1 false)
  %77 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx64 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %77, i64 1
  %78 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx65 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %78, i64 0
  %point66 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx65, i32 0, i32 0
  %79 = bitcast %struct._GdkPoint* %arrayidx64 to i8*
  %80 = bitcast %struct._GdkPoint* %point66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 8, i32 4, i1 false)
  %81 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx67 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %81, i64 1
  %x68 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx67, i32 0, i32 0
  %82 = load i32, i32* %x68, align 4
  %83 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx69 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %83, i64 0
  %x70 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx69, i32 0, i32 0
  %84 = load i32, i32* %x70, align 4
  %sub71 = sub nsw i32 %82, %84
  store i32 %sub71, i32* %x1, align 4
  %85 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx72 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %85, i64 1
  %y73 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx72, i32 0, i32 1
  %86 = load i32, i32* %y73, align 4
  %87 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx74 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %87, i64 0
  %y75 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx74, i32 0, i32 1
  %88 = load i32, i32* %y75, align 4
  %sub76 = sub nsw i32 %86, %88
  store i32 %sub76, i32* %y1, align 4
  store i32 1, i32* %i, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.156, %for.end.60
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %num_new, align 4
  %cmp78 = icmp slt i32 %89, %90
  br i1 %cmp78, label %for.body.80, label %for.end.159

for.body.80:                                      ; preds = %for.cond.77
  %91 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %91 to i64
  %92 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx82 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %92, i64 %idxprom81
  %point83 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx82, i32 0, i32 0
  %x84 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point83, i32 0, i32 0
  %93 = load i32, i32* %x84, align 4
  %94 = load i32, i32* %j, align 4
  %sub85 = sub nsw i32 %94, 1
  %idxprom86 = sext i32 %sub85 to i64
  %95 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx87 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %95, i64 %idxprom86
  %x88 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx87, i32 0, i32 0
  %96 = load i32, i32* %x88, align 4
  %sub89 = sub nsw i32 %93, %96
  store i32 %sub89, i32* %x2, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %97 to i64
  %98 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx91 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %98, i64 %idxprom90
  %point92 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx91, i32 0, i32 0
  %y93 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point92, i32 0, i32 1
  %99 = load i32, i32* %y93, align 4
  %100 = load i32, i32* %j, align 4
  %sub94 = sub nsw i32 %100, 1
  %idxprom95 = sext i32 %sub94 to i64
  %101 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx96 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %101, i64 %idxprom95
  %y97 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx96, i32 0, i32 1
  %102 = load i32, i32* %y97, align 4
  %sub98 = sub nsw i32 %99, %102
  store i32 %sub98, i32* %y2, align 4
  %103 = load i32, i32* %x2, align 4
  %cmp99 = icmp eq i32 %103, 0
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.107

land.lhs.true.101:                                ; preds = %for.body.80
  %104 = load i32, i32* %y2, align 4
  %cmp102 = icmp eq i32 %104, 0
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %land.lhs.true.101
  %105 = load i32, i32* %num_new, align 4
  %dec105 = add nsw i32 %105, -1
  store i32 %dec105, i32* %num_new, align 4
  %106 = load i32, i32* %j, align 4
  %dec106 = add nsw i32 %106, -1
  store i32 %dec106, i32* %j, align 4
  br label %for.inc.156

if.end.107:                                       ; preds = %land.lhs.true.101, %for.body.80
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.107
  %107 = load i32, i32* %x1, align 4
  %108 = load i32, i32* %y2, align 4
  %mul108 = mul nsw i32 %107, %108
  %109 = load i32, i32* %x2, align 4
  %110 = load i32, i32* %y1, align 4
  %mul109 = mul nsw i32 %109, %110
  %sub110 = sub nsw i32 %mul108, %mul109
  %cmp111 = icmp slt i32 %sub110, 0
  br i1 %cmp111, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %111 = load i32, i32* %num_new, align 4
  %dec113 = add nsw i32 %111, -1
  store i32 %dec113, i32* %num_new, align 4
  %112 = load i32, i32* %j, align 4
  %dec114 = add nsw i32 %112, -1
  store i32 %dec114, i32* %j, align 4
  %113 = load i32, i32* %j, align 4
  %sub115 = sub nsw i32 %113, 1
  %idxprom116 = sext i32 %sub115 to i64
  %114 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx117 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %114, i64 %idxprom116
  %x118 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx117, i32 0, i32 0
  %115 = load i32, i32* %x118, align 4
  %116 = load i32, i32* %j, align 4
  %sub119 = sub nsw i32 %116, 2
  %idxprom120 = sext i32 %sub119 to i64
  %117 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx121 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %117, i64 %idxprom120
  %x122 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx121, i32 0, i32 0
  %118 = load i32, i32* %x122, align 4
  %sub123 = sub nsw i32 %115, %118
  store i32 %sub123, i32* %x1, align 4
  %119 = load i32, i32* %j, align 4
  %sub124 = sub nsw i32 %119, 1
  %idxprom125 = sext i32 %sub124 to i64
  %120 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx126 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %120, i64 %idxprom125
  %y127 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx126, i32 0, i32 1
  %121 = load i32, i32* %y127, align 4
  %122 = load i32, i32* %j, align 4
  %sub128 = sub nsw i32 %122, 2
  %idxprom129 = sext i32 %sub128 to i64
  %123 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx130 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %123, i64 %idxprom129
  %y131 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx130, i32 0, i32 1
  %124 = load i32, i32* %y131, align 4
  %sub132 = sub nsw i32 %121, %124
  store i32 %sub132, i32* %y1, align 4
  %125 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %125 to i64
  %126 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx134 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %126, i64 %idxprom133
  %point135 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx134, i32 0, i32 0
  %x136 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point135, i32 0, i32 0
  %127 = load i32, i32* %x136, align 4
  %128 = load i32, i32* %j, align 4
  %sub137 = sub nsw i32 %128, 1
  %idxprom138 = sext i32 %sub137 to i64
  %129 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx139 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %129, i64 %idxprom138
  %x140 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx139, i32 0, i32 0
  %130 = load i32, i32* %x140, align 4
  %sub141 = sub nsw i32 %127, %130
  store i32 %sub141, i32* %x2, align 4
  %131 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %131 to i64
  %132 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx143 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %132, i64 %idxprom142
  %point144 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx143, i32 0, i32 0
  %y145 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point144, i32 0, i32 1
  %133 = load i32, i32* %y145, align 4
  %134 = load i32, i32* %j, align 4
  %sub146 = sub nsw i32 %134, 1
  %idxprom147 = sext i32 %sub146 to i64
  %135 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx148 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %135, i64 %idxprom147
  %y149 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx148, i32 0, i32 1
  %136 = load i32, i32* %y149, align 4
  %sub150 = sub nsw i32 %133, %136
  store i32 %sub150, i32* %y2, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %137 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %137 to i64
  %138 = load %struct._GdkPoint*, %struct._GdkPoint** %new_points, align 8
  %arrayidx152 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %138, i64 %idxprom151
  %139 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %139 to i64
  %140 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %arrayidx154 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %140, i64 %idxprom153
  %point155 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %arrayidx154, i32 0, i32 0
  %141 = bitcast %struct._GdkPoint* %arrayidx152 to i8*
  %142 = bitcast %struct._GdkPoint* %point155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 8, i32 4, i1 false)
  %143 = load i32, i32* %x2, align 4
  store i32 %143, i32* %x1, align 4
  %144 = load i32, i32* %y2, align 4
  store i32 %144, i32* %y1, align 4
  br label %for.inc.156

for.inc.156:                                      ; preds = %while.end, %if.then.104
  %145 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %145, 1
  store i32 %inc157, i32* %i, align 4
  %146 = load i32, i32* %j, align 4
  %inc158 = add nsw i32 %146, 1
  store i32 %inc158, i32* %j, align 4
  br label %for.cond.77

for.end.159:                                      ; preds = %for.cond.77
  %147 = load %struct.SortPoint*, %struct.SortPoint** %sort_points, align 8
  %148 = bitcast %struct.SortPoint* %147 to i8*
  call void @g_free(i8* %148)
  %149 = load i32, i32* %num_new, align 4
  %150 = load %struct.IPolygon*, %struct.IPolygon** %new_poly, align 8
  %npoints160 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %150, i32 0, i32 1
  store i32 %149, i32* %npoints160, align 4
  %151 = load %struct.IPolygon*, %struct.IPolygon** %new_poly, align 8
  store %struct.IPolygon* %151, %struct.IPolygon** %retval
  br label %return

return:                                           ; preds = %for.end.159, %if.then
  %152 = load %struct.IPolygon*, %struct.IPolygon** %retval
  ret %struct.IPolygon* %152
}

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @g_free(i8*) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ipolygon_sort_func(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.SortPoint*
  %angle = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %1, i32 0, i32 1
  %2 = load double, double* %angle, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct.SortPoint*
  %angle1 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %4, i32 0, i32 1
  %5 = load double, double* %angle1, align 8
  %cmp = fcmp olt double %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %a.addr, align 8
  %7 = bitcast i8* %6 to %struct.SortPoint*
  %angle2 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %7, i32 0, i32 1
  %8 = load double, double* %angle2, align 8
  %9 = load i8*, i8** %b.addr, align 8
  %10 = bitcast i8* %9 to %struct.SortPoint*
  %angle3 = getelementptr inbounds %struct.SortPoint, %struct.SortPoint* %10, i32 0, i32 1
  %11 = load double, double* %angle3, align 8
  %cmp4 = fcmp ogt double %8, %11
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @ipolygon_contains(%struct.IPolygon* %poly, i32 %xt, i32 %yt) #0 {
entry:
  %retval = alloca i32, align 4
  %poly.addr = alloca %struct.IPolygon*, align 8
  %xt.addr = alloca i32, align 4
  %yt.addr = alloca i32, align 4
  %xnew = alloca i32, align 4
  %ynew = alloca i32, align 4
  %xold = alloca i32, align 4
  %yold = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %inside = alloca i32, align 4
  store %struct.IPolygon* %poly, %struct.IPolygon** %poly.addr, align 8
  store i32 %xt, i32* %xt.addr, align 4
  store i32 %yt, i32* %yt.addr, align 4
  store i32 0, i32* %inside, align 4
  %0 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %npoints = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %0, i32 0, i32 1
  %1 = load i32, i32* %npoints, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %npoints1 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %2, i32 0, i32 1
  %3 = load i32, i32* %npoints1, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %4, i32 0, i32 0
  %5 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %5, i64 %idxprom
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %x, align 4
  store i32 %6, i32* %xold, align 4
  %7 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %npoints2 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %7, i32 0, i32 1
  %8 = load i32, i32* %npoints2, align 4
  %sub3 = sub nsw i32 %8, 1
  %idxprom4 = sext i32 %sub3 to i64
  %9 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points5 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %9, i32 0, i32 0
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %points5, align 8
  %arrayidx6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %10, i64 %idxprom4
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx6, i32 0, i32 1
  %11 = load i32, i32* %y, align 4
  store i32 %11, i32* %yold, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %npoints7 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %13, i32 0, i32 1
  %14 = load i32, i32* %npoints7, align 4
  %cmp8 = icmp slt i32 %12, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points10 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %16, i32 0, i32 0
  %17 = load %struct._GdkPoint*, %struct._GdkPoint** %points10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %17, i64 %idxprom9
  %x12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx11, i32 0, i32 0
  %18 = load i32, i32* %x12, align 4
  store i32 %18, i32* %xnew, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct.IPolygon*, %struct.IPolygon** %poly.addr, align 8
  %points14 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %20, i32 0, i32 0
  %21 = load %struct._GdkPoint*, %struct._GdkPoint** %points14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %21, i64 %idxprom13
  %y16 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx15, i32 0, i32 1
  %22 = load i32, i32* %y16, align 4
  store i32 %22, i32* %ynew, align 4
  %23 = load i32, i32* %xnew, align 4
  %24 = load i32, i32* %xold, align 4
  %cmp17 = icmp sgt i32 %23, %24
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %25 = load i32, i32* %xold, align 4
  store i32 %25, i32* %x1, align 4
  %26 = load i32, i32* %xnew, align 4
  store i32 %26, i32* %x2, align 4
  %27 = load i32, i32* %yold, align 4
  store i32 %27, i32* %y1, align 4
  %28 = load i32, i32* %ynew, align 4
  store i32 %28, i32* %y2, align 4
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %29 = load i32, i32* %xnew, align 4
  store i32 %29, i32* %x1, align 4
  %30 = load i32, i32* %xold, align 4
  store i32 %30, i32* %x2, align 4
  %31 = load i32, i32* %ynew, align 4
  store i32 %31, i32* %y1, align 4
  %32 = load i32, i32* %yold, align 4
  store i32 %32, i32* %y2, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %33 = load i32, i32* %xnew, align 4
  %34 = load i32, i32* %xt.addr, align 4
  %cmp20 = icmp slt i32 %33, %34
  %conv = zext i1 %cmp20 to i32
  %35 = load i32, i32* %xt.addr, align 4
  %36 = load i32, i32* %xold, align 4
  %cmp21 = icmp sle i32 %35, %36
  %conv22 = zext i1 %cmp21 to i32
  %cmp23 = icmp eq i32 %conv, %conv22
  br i1 %cmp23, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.19
  %37 = load i32, i32* %yt.addr, align 4
  %38 = load i32, i32* %y1, align 4
  %sub25 = sub nsw i32 %37, %38
  %39 = load i32, i32* %x2, align 4
  %40 = load i32, i32* %x1, align 4
  %sub26 = sub nsw i32 %39, %40
  %mul = mul nsw i32 %sub25, %sub26
  %41 = load i32, i32* %y2, align 4
  %42 = load i32, i32* %y1, align 4
  %sub27 = sub nsw i32 %41, %42
  %43 = load i32, i32* %xt.addr, align 4
  %44 = load i32, i32* %x1, align 4
  %sub28 = sub nsw i32 %43, %44
  %mul29 = mul nsw i32 %sub27, %sub28
  %cmp30 = icmp slt i32 %mul, %mul29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true
  %45 = load i32, i32* %inside, align 4
  %tobool = icmp ne i32 %45, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %inside, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true, %if.end.19
  %46 = load i32, i32* %xnew, align 4
  store i32 %46, i32* %xold, align 4
  %47 = load i32, i32* %ynew, align 4
  store i32 %47, i32* %yold, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %inside, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define void @aff_element_compute_color_trans(%struct.AffElement* %elem) #0 {
entry:
  %elem.addr = alloca %struct.AffElement*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mag2 = alloca double, align 8
  store %struct.AffElement* %elem, %struct.AffElement** %elem.addr, align 8
  %0 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %0, i32 0, i32 0
  %simple_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 14
  %1 = load i32, i32* %simple_color, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.185

if.then:                                          ; preds = %entry
  %2 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v1 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %2, i32 0, i32 0
  %target_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v1, i32 0, i32 11
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %4 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v2 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %4, i32 0, i32 0
  %target_color3 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v2, i32 0, i32 11
  %r4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color3, i32 0, i32 0
  %5 = load double, double* %r4, align 8
  %mul = fmul double %3, %5
  store double %mul, double* %mag2, align 8
  %6 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v5 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %6, i32 0, i32 0
  %target_color6 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v5, i32 0, i32 11
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color6, i32 0, i32 1
  %7 = load double, double* %g, align 8
  %8 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v7 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %8, i32 0, i32 0
  %target_color8 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v7, i32 0, i32 11
  %g9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color8, i32 0, i32 1
  %9 = load double, double* %g9, align 8
  %mul10 = fmul double %7, %9
  %10 = load double, double* %mag2, align 8
  %add = fadd double %10, %mul10
  store double %add, double* %mag2, align 8
  %11 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v11 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %11, i32 0, i32 0
  %target_color12 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v11, i32 0, i32 11
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color12, i32 0, i32 2
  %12 = load double, double* %b, align 8
  %13 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v13 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %13, i32 0, i32 0
  %target_color14 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v13, i32 0, i32 11
  %b15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color14, i32 0, i32 2
  %14 = load double, double* %b15, align 8
  %mul16 = fmul double %12, %14
  %15 = load double, double* %mag2, align 8
  %add17 = fadd double %15, %mul16
  store double %add17, double* %mag2, align 8
  %16 = load double, double* %mag2, align 8
  %cmp = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.then.18
  %17 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %17, 3
  br i1 %cmp19, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4
  %cmp21 = icmp slt i32 %18, 4
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %19 = load i32, i32* %j, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans = getelementptr inbounds %struct.AffElement, %struct.AffElement* %21, i32 0, i32 2
  %vals = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals, i32 0, i64 %idxprom23
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %23 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v25 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %23, i32 0, i32 0
  %hue_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v25, i32 0, i32 12
  %24 = load double, double* %hue_scale, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans28 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %27, i32 0, i32 2
  %vals29 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals29, i32 0, i64 %idxprom27
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx30, i32 0, i64 %idxprom26
  store double %24, double* %arrayidx31, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.50, %if.else
  %29 = load i32, i32* %j, align 4
  %cmp36 = icmp slt i32 %29, 3
  br i1 %cmp36, label %for.body.37, label %for.end.52

for.body.37:                                      ; preds = %for.cond.35
  %30 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v38 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %30, i32 0, i32 0
  %target_color39 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v38, i32 0, i32 11
  %r40 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color39, i32 0, i32 0
  %31 = load double, double* %r40, align 8
  %32 = load double, double* %mag2, align 8
  %div = fdiv double %31, %32
  %33 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v41 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %33, i32 0, i32 0
  %value_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v41, i32 0, i32 13
  %34 = load double, double* %value_scale, align 8
  %35 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v42 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %35, i32 0, i32 0
  %hue_scale43 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v42, i32 0, i32 12
  %36 = load double, double* %hue_scale43, align 8
  %sub = fsub double %34, %36
  %mul44 = fmul double %div, %sub
  %37 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans46 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %38, i32 0, i32 2
  %vals47 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans46, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals47, i32 0, i64 0
  %arrayidx49 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx48, i32 0, i64 %idxprom45
  store double %mul44, double* %arrayidx49, align 8
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.37
  %39 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %39, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.35

for.end.52:                                       ; preds = %for.cond.35
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.71, %for.end.52
  %40 = load i32, i32* %j, align 4
  %cmp54 = icmp slt i32 %40, 3
  br i1 %cmp54, label %for.body.55, label %for.end.73

for.body.55:                                      ; preds = %for.cond.53
  %41 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v56 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %41, i32 0, i32 0
  %target_color57 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v56, i32 0, i32 11
  %g58 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color57, i32 0, i32 1
  %42 = load double, double* %g58, align 8
  %43 = load double, double* %mag2, align 8
  %div59 = fdiv double %42, %43
  %44 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v60 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %44, i32 0, i32 0
  %value_scale61 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v60, i32 0, i32 13
  %45 = load double, double* %value_scale61, align 8
  %46 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v62 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %46, i32 0, i32 0
  %hue_scale63 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v62, i32 0, i32 12
  %47 = load double, double* %hue_scale63, align 8
  %sub64 = fsub double %45, %47
  %mul65 = fmul double %div59, %sub64
  %48 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %48 to i64
  %49 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans67 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %49, i32 0, i32 2
  %vals68 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals68, i32 0, i64 1
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx69, i32 0, i64 %idxprom66
  store double %mul65, double* %arrayidx70, align 8
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.55
  %50 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %50, 1
  store i32 %inc72, i32* %j, align 4
  br label %for.cond.53

for.end.73:                                       ; preds = %for.cond.53
  store i32 0, i32* %j, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.92, %for.end.73
  %51 = load i32, i32* %j, align 4
  %cmp75 = icmp slt i32 %51, 3
  br i1 %cmp75, label %for.body.76, label %for.end.94

for.body.76:                                      ; preds = %for.cond.74
  %52 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v77 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %52, i32 0, i32 0
  %target_color78 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v77, i32 0, i32 11
  %g79 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color78, i32 0, i32 1
  %53 = load double, double* %g79, align 8
  %54 = load double, double* %mag2, align 8
  %div80 = fdiv double %53, %54
  %55 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v81 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %55, i32 0, i32 0
  %value_scale82 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v81, i32 0, i32 13
  %56 = load double, double* %value_scale82, align 8
  %57 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v83 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %57, i32 0, i32 0
  %hue_scale84 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v83, i32 0, i32 12
  %58 = load double, double* %hue_scale84, align 8
  %sub85 = fsub double %56, %58
  %mul86 = fmul double %div80, %sub85
  %59 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %59 to i64
  %60 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans88 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %60, i32 0, i32 2
  %vals89 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans88, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals89, i32 0, i64 2
  %arrayidx91 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx90, i32 0, i64 %idxprom87
  store double %mul86, double* %arrayidx91, align 8
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.76
  %61 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %61, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.74

for.end.94:                                       ; preds = %for.cond.74
  %62 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v95 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %62, i32 0, i32 0
  %hue_scale96 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v95, i32 0, i32 12
  %63 = load double, double* %hue_scale96, align 8
  %64 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans97 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %64, i32 0, i32 2
  %vals98 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans97, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals98, i32 0, i64 0
  %arrayidx100 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx99, i32 0, i64 0
  %65 = load double, double* %arrayidx100, align 8
  %add101 = fadd double %65, %63
  store double %add101, double* %arrayidx100, align 8
  %66 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v102 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %66, i32 0, i32 0
  %hue_scale103 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v102, i32 0, i32 12
  %67 = load double, double* %hue_scale103, align 8
  %68 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans104 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %68, i32 0, i32 2
  %vals105 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans104, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals105, i32 0, i64 1
  %arrayidx107 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx106, i32 0, i64 1
  %69 = load double, double* %arrayidx107, align 8
  %add108 = fadd double %69, %67
  store double %add108, double* %arrayidx107, align 8
  %70 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v109 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %70, i32 0, i32 0
  %hue_scale110 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v109, i32 0, i32 12
  %71 = load double, double* %hue_scale110, align 8
  %72 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans111 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %72, i32 0, i32 2
  %vals112 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals112, i32 0, i64 2
  %arrayidx114 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx113, i32 0, i64 2
  %73 = load double, double* %arrayidx114, align 8
  %add115 = fadd double %73, %71
  store double %add115, double* %arrayidx114, align 8
  %74 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v116 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %74, i32 0, i32 0
  %value_scale117 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v116, i32 0, i32 13
  %75 = load double, double* %value_scale117, align 8
  %sub118 = fsub double 1.000000e+00, %75
  %76 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v119 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %76, i32 0, i32 0
  %target_color120 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v119, i32 0, i32 11
  %r121 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color120, i32 0, i32 0
  %77 = load double, double* %r121, align 8
  %mul122 = fmul double %sub118, %77
  %78 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans123 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %78, i32 0, i32 2
  %vals124 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals124, i32 0, i64 0
  %arrayidx126 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx125, i32 0, i64 3
  store double %mul122, double* %arrayidx126, align 8
  %79 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v127 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %79, i32 0, i32 0
  %value_scale128 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v127, i32 0, i32 13
  %80 = load double, double* %value_scale128, align 8
  %sub129 = fsub double 1.000000e+00, %80
  %81 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v130 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %81, i32 0, i32 0
  %target_color131 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v130, i32 0, i32 11
  %g132 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color131, i32 0, i32 1
  %82 = load double, double* %g132, align 8
  %mul133 = fmul double %sub129, %82
  %83 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans134 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %83, i32 0, i32 2
  %vals135 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals135, i32 0, i64 1
  %arrayidx137 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx136, i32 0, i64 3
  store double %mul133, double* %arrayidx137, align 8
  %84 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v138 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %84, i32 0, i32 0
  %value_scale139 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v138, i32 0, i32 13
  %85 = load double, double* %value_scale139, align 8
  %sub140 = fsub double 1.000000e+00, %85
  %86 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v141 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %86, i32 0, i32 0
  %target_color142 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v141, i32 0, i32 11
  %b143 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color142, i32 0, i32 2
  %87 = load double, double* %b143, align 8
  %mul144 = fmul double %sub140, %87
  %88 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans145 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %88, i32 0, i32 2
  %vals146 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals146, i32 0, i64 2
  %arrayidx148 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx147, i32 0, i64 3
  store double %mul144, double* %arrayidx148, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.94, %for.end.34
  %89 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans149 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %89, i32 0, i32 2
  %90 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v150 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %90, i32 0, i32 0
  %red_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v150, i32 0, i32 7
  %r151 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color, i32 0, i32 0
  %91 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v152 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %91, i32 0, i32 0
  %red_color153 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v152, i32 0, i32 7
  %g154 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color153, i32 0, i32 1
  %92 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v155 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %92, i32 0, i32 0
  %red_color156 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v155, i32 0, i32 7
  %b157 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color156, i32 0, i32 2
  call void @aff3_apply(%struct.Aff3* %color_trans149, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double* %r151, double* %g154, double* %b157)
  %93 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans158 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %93, i32 0, i32 2
  %94 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v159 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %94, i32 0, i32 0
  %green_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v159, i32 0, i32 8
  %r160 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color, i32 0, i32 0
  %95 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v161 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %95, i32 0, i32 0
  %green_color162 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v161, i32 0, i32 8
  %g163 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color162, i32 0, i32 1
  %96 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v164 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %96, i32 0, i32 0
  %green_color165 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v164, i32 0, i32 8
  %b166 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color165, i32 0, i32 2
  call void @aff3_apply(%struct.Aff3* %color_trans158, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double* %r160, double* %g163, double* %b166)
  %97 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans167 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %97, i32 0, i32 2
  %98 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v168 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %98, i32 0, i32 0
  %blue_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v168, i32 0, i32 9
  %r169 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color, i32 0, i32 0
  %99 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v170 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %99, i32 0, i32 0
  %blue_color171 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v170, i32 0, i32 9
  %g172 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color171, i32 0, i32 1
  %100 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v173 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %100, i32 0, i32 0
  %blue_color174 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v173, i32 0, i32 9
  %b175 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color174, i32 0, i32 2
  call void @aff3_apply(%struct.Aff3* %color_trans167, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double* %r169, double* %g172, double* %b175)
  %101 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans176 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %101, i32 0, i32 2
  %102 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v177 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %102, i32 0, i32 0
  %black_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v177, i32 0, i32 10
  %r178 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color, i32 0, i32 0
  %103 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v179 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %103, i32 0, i32 0
  %black_color180 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v179, i32 0, i32 10
  %g181 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color180, i32 0, i32 1
  %104 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v182 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %104, i32 0, i32 0
  %black_color183 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v182, i32 0, i32 10
  %b184 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color183, i32 0, i32 2
  call void @aff3_apply(%struct.Aff3* %color_trans176, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double* %r178, double* %g181, double* %b184)
  br label %if.end.306

if.else.185:                                      ; preds = %entry
  %105 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v186 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %105, i32 0, i32 0
  %red_color187 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v186, i32 0, i32 7
  %r188 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color187, i32 0, i32 0
  %106 = load double, double* %r188, align 8
  %107 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v189 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %107, i32 0, i32 0
  %black_color190 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v189, i32 0, i32 10
  %r191 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color190, i32 0, i32 0
  %108 = load double, double* %r191, align 8
  %sub192 = fsub double %106, %108
  %109 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans193 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %109, i32 0, i32 2
  %vals194 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals194, i32 0, i64 0
  %arrayidx196 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx195, i32 0, i64 0
  store double %sub192, double* %arrayidx196, align 8
  %110 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v197 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %110, i32 0, i32 0
  %red_color198 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v197, i32 0, i32 7
  %g199 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color198, i32 0, i32 1
  %111 = load double, double* %g199, align 8
  %112 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v200 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %112, i32 0, i32 0
  %black_color201 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v200, i32 0, i32 10
  %g202 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color201, i32 0, i32 1
  %113 = load double, double* %g202, align 8
  %sub203 = fsub double %111, %113
  %114 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans204 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %114, i32 0, i32 2
  %vals205 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals205, i32 0, i64 1
  %arrayidx207 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx206, i32 0, i64 0
  store double %sub203, double* %arrayidx207, align 8
  %115 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v208 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %115, i32 0, i32 0
  %red_color209 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v208, i32 0, i32 7
  %b210 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color209, i32 0, i32 2
  %116 = load double, double* %b210, align 8
  %117 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v211 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %117, i32 0, i32 0
  %black_color212 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v211, i32 0, i32 10
  %b213 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color212, i32 0, i32 2
  %118 = load double, double* %b213, align 8
  %sub214 = fsub double %116, %118
  %119 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans215 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %119, i32 0, i32 2
  %vals216 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals216, i32 0, i64 2
  %arrayidx218 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx217, i32 0, i64 0
  store double %sub214, double* %arrayidx218, align 8
  %120 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v219 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %120, i32 0, i32 0
  %green_color220 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v219, i32 0, i32 8
  %r221 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color220, i32 0, i32 0
  %121 = load double, double* %r221, align 8
  %122 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v222 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %122, i32 0, i32 0
  %black_color223 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v222, i32 0, i32 10
  %r224 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color223, i32 0, i32 0
  %123 = load double, double* %r224, align 8
  %sub225 = fsub double %121, %123
  %124 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans226 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %124, i32 0, i32 2
  %vals227 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals227, i32 0, i64 0
  %arrayidx229 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx228, i32 0, i64 1
  store double %sub225, double* %arrayidx229, align 8
  %125 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v230 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %125, i32 0, i32 0
  %green_color231 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v230, i32 0, i32 8
  %g232 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color231, i32 0, i32 1
  %126 = load double, double* %g232, align 8
  %127 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v233 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %127, i32 0, i32 0
  %black_color234 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v233, i32 0, i32 10
  %g235 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color234, i32 0, i32 1
  %128 = load double, double* %g235, align 8
  %sub236 = fsub double %126, %128
  %129 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans237 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %129, i32 0, i32 2
  %vals238 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans237, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals238, i32 0, i64 1
  %arrayidx240 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx239, i32 0, i64 1
  store double %sub236, double* %arrayidx240, align 8
  %130 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v241 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %130, i32 0, i32 0
  %green_color242 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v241, i32 0, i32 8
  %b243 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color242, i32 0, i32 2
  %131 = load double, double* %b243, align 8
  %132 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v244 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %132, i32 0, i32 0
  %black_color245 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v244, i32 0, i32 10
  %b246 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color245, i32 0, i32 2
  %133 = load double, double* %b246, align 8
  %sub247 = fsub double %131, %133
  %134 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans248 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %134, i32 0, i32 2
  %vals249 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals249, i32 0, i64 2
  %arrayidx251 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx250, i32 0, i64 1
  store double %sub247, double* %arrayidx251, align 8
  %135 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v252 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %135, i32 0, i32 0
  %blue_color253 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v252, i32 0, i32 9
  %r254 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color253, i32 0, i32 0
  %136 = load double, double* %r254, align 8
  %137 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v255 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %137, i32 0, i32 0
  %black_color256 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v255, i32 0, i32 10
  %r257 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color256, i32 0, i32 0
  %138 = load double, double* %r257, align 8
  %sub258 = fsub double %136, %138
  %139 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans259 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %139, i32 0, i32 2
  %vals260 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals260, i32 0, i64 0
  %arrayidx262 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx261, i32 0, i64 2
  store double %sub258, double* %arrayidx262, align 8
  %140 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v263 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %140, i32 0, i32 0
  %blue_color264 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v263, i32 0, i32 9
  %g265 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color264, i32 0, i32 1
  %141 = load double, double* %g265, align 8
  %142 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v266 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %142, i32 0, i32 0
  %black_color267 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v266, i32 0, i32 10
  %g268 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color267, i32 0, i32 1
  %143 = load double, double* %g268, align 8
  %sub269 = fsub double %141, %143
  %144 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans270 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %144, i32 0, i32 2
  %vals271 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals271, i32 0, i64 1
  %arrayidx273 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx272, i32 0, i64 2
  store double %sub269, double* %arrayidx273, align 8
  %145 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v274 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %145, i32 0, i32 0
  %blue_color275 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v274, i32 0, i32 9
  %b276 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color275, i32 0, i32 2
  %146 = load double, double* %b276, align 8
  %147 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v277 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %147, i32 0, i32 0
  %black_color278 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v277, i32 0, i32 10
  %b279 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color278, i32 0, i32 2
  %148 = load double, double* %b279, align 8
  %sub280 = fsub double %146, %148
  %149 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans281 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %149, i32 0, i32 2
  %vals282 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals282, i32 0, i64 2
  %arrayidx284 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx283, i32 0, i64 2
  store double %sub280, double* %arrayidx284, align 8
  %150 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v285 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %150, i32 0, i32 0
  %black_color286 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v285, i32 0, i32 10
  %r287 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color286, i32 0, i32 0
  %151 = load double, double* %r287, align 8
  %152 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans288 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %152, i32 0, i32 2
  %vals289 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals289, i32 0, i64 0
  %arrayidx291 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx290, i32 0, i64 3
  store double %151, double* %arrayidx291, align 8
  %153 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v292 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %153, i32 0, i32 0
  %black_color293 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v292, i32 0, i32 10
  %g294 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color293, i32 0, i32 1
  %154 = load double, double* %g294, align 8
  %155 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans295 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %155, i32 0, i32 2
  %vals296 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans295, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals296, i32 0, i64 1
  %arrayidx298 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx297, i32 0, i64 3
  store double %154, double* %arrayidx298, align 8
  %156 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v299 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %156, i32 0, i32 0
  %black_color300 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v299, i32 0, i32 10
  %b301 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color300, i32 0, i32 2
  %157 = load double, double* %b301, align 8
  %158 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %color_trans302 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %158, i32 0, i32 2
  %vals303 = getelementptr inbounds %struct.Aff3, %struct.Aff3* %color_trans302, i32 0, i32 0
  %arrayidx304 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %vals303, i32 0, i64 2
  %arrayidx305 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx304, i32 0, i64 3
  store double %157, double* %arrayidx305, align 8
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.185, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff_element_compute_trans(%struct.AffElement* %elem, double %width, double %height, double %center_x, double %center_y) #0 {
entry:
  %elem.addr = alloca %struct.AffElement*, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %t1 = alloca %struct.Aff2, align 8
  %t2 = alloca %struct.Aff2, align 8
  %t3 = alloca %struct.Aff2, align 8
  store %struct.AffElement* %elem, %struct.AffElement** %elem.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  %0 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %0, i32 0, i32 0
  %asym = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 4
  %1 = load double, double* %asym, align 8
  %2 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v1 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %2, i32 0, i32 0
  %shear = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v1, i32 0, i32 5
  %3 = load double, double* %shear, align 8
  call void @aff2_distort(%struct.Aff2* %t1, double %1, double %3)
  %4 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v2 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %4, i32 0, i32 0
  %scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v2, i32 0, i32 3
  %5 = load double, double* %scale, align 8
  %6 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v3 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %6, i32 0, i32 0
  %flip = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v3, i32 0, i32 6
  %7 = load i32, i32* %flip, align 4
  call void @aff2_scale(%struct.Aff2* %t2, double %5, i32 %7)
  call void @aff2_compose(%struct.Aff2* %t3, %struct.Aff2* %t2, %struct.Aff2* %t1)
  %8 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v4 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %8, i32 0, i32 0
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v4, i32 0, i32 2
  %9 = load double, double* %theta, align 8
  call void @aff2_rotate(%struct.Aff2* %t2, double %9)
  call void @aff2_compose(%struct.Aff2* %t1, %struct.Aff2* %t2, %struct.Aff2* %t3)
  %10 = load double, double* %center_x.addr, align 8
  %sub = fsub double -0.000000e+00, %10
  %11 = load double, double* %width.addr, align 8
  %mul = fmul double %sub, %11
  %12 = load double, double* %center_y.addr, align 8
  %sub5 = fsub double -0.000000e+00, %12
  %13 = load double, double* %width.addr, align 8
  %mul6 = fmul double %sub5, %13
  call void @aff2_translate(%struct.Aff2* %t2, double %mul, double %mul6)
  call void @aff2_compose(%struct.Aff2* %t3, %struct.Aff2* %t1, %struct.Aff2* %t2)
  %14 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v7 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %14, i32 0, i32 0
  %x = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v7, i32 0, i32 0
  %15 = load double, double* %x, align 8
  %16 = load double, double* %width.addr, align 8
  %mul8 = fmul double %15, %16
  %17 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v9 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %17, i32 0, i32 0
  %y = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v9, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %19 = load double, double* %width.addr, align 8
  %mul10 = fmul double %18, %19
  call void @aff2_translate(%struct.Aff2* %t2, double %mul8, double %mul10)
  %20 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %trans = getelementptr inbounds %struct.AffElement, %struct.AffElement* %20, i32 0, i32 1
  call void @aff2_compose(%struct.Aff2* %trans, %struct.Aff2* %t2, %struct.Aff2* %t3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff_element_decompose_trans(%struct.AffElement* %elem, %struct.Aff2* %aff, double %width, double %height, double %center_x, double %center_y) #0 {
entry:
  %elem.addr = alloca %struct.AffElement*, align 8
  %aff.addr = alloca %struct.Aff2*, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %t1 = alloca %struct.Aff2, align 8
  %t2 = alloca %struct.Aff2, align 8
  %det = alloca double, align 8
  %scale = alloca double, align 8
  %sign = alloca double, align 8
  store %struct.AffElement* %elem, %struct.AffElement** %elem.addr, align 8
  store %struct.Aff2* %aff, %struct.Aff2** %aff.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  %0 = load double, double* %center_x.addr, align 8
  %1 = load double, double* %width.addr, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* %center_y.addr, align 8
  %3 = load double, double* %width.addr, align 8
  %mul1 = fmul double %2, %3
  call void @aff2_translate(%struct.Aff2* %t1, double %mul, double %mul1)
  %4 = load %struct.Aff2*, %struct.Aff2** %aff.addr, align 8
  call void @aff2_compose(%struct.Aff2* %t2, %struct.Aff2* %4, %struct.Aff2* %t1)
  %b1 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 4
  %5 = load double, double* %b1, align 8
  %6 = load double, double* %width.addr, align 8
  %div = fdiv double %5, %6
  %7 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %7, i32 0, i32 0
  %x = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 0
  store double %div, double* %x, align 8
  %b2 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 5
  %8 = load double, double* %b2, align 8
  %9 = load double, double* %width.addr, align 8
  %div2 = fdiv double %8, %9
  %10 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v3 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %10, i32 0, i32 0
  %y = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v3, i32 0, i32 1
  store double %div2, double* %y, align 8
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 0
  %11 = load double, double* %a11, align 8
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 3
  %12 = load double, double* %a22, align 8
  %mul4 = fmul double %11, %12
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 1
  %13 = load double, double* %a12, align 8
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 2
  %14 = load double, double* %a21, align 8
  %mul5 = fmul double %13, %14
  %sub = fsub double %mul4, %mul5
  store double %sub, double* %det, align 8
  %15 = load double, double* %det, align 8
  %cmp = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v6 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %16, i32 0, i32 0
  %scale7 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v6, i32 0, i32 3
  store double 0.000000e+00, double* %scale7, align 8
  %17 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v8 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %17, i32 0, i32 0
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v8, i32 0, i32 2
  store double 0.000000e+00, double* %theta, align 8
  %18 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v9 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %18, i32 0, i32 0
  %asym = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v9, i32 0, i32 4
  store double 1.000000e+00, double* %asym, align 8
  %19 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v10 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %19, i32 0, i32 0
  %shear = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v10, i32 0, i32 5
  store double 0.000000e+00, double* %shear, align 8
  %20 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v11 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %20, i32 0, i32 0
  %flip = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v11, i32 0, i32 6
  store i32 0, i32* %flip, align 4
  br label %if.end.82

if.else:                                          ; preds = %entry
  %21 = load double, double* %det, align 8
  %cmp12 = fcmp oge double %21, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.else
  %22 = load double, double* %det, align 8
  %call = call double @sqrt(double %22) #3
  %23 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v14 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %23, i32 0, i32 0
  %scale15 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v14, i32 0, i32 3
  store double %call, double* %scale15, align 8
  store double %call, double* %scale, align 8
  store double 1.000000e+00, double* %sign, align 8
  %24 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v16 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %24, i32 0, i32 0
  %flip17 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v16, i32 0, i32 6
  store i32 0, i32* %flip17, align 4
  br label %if.end

if.else.18:                                       ; preds = %if.else
  %25 = load double, double* %det, align 8
  %sub19 = fsub double -0.000000e+00, %25
  %call20 = call double @sqrt(double %sub19) #3
  %26 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v21 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %26, i32 0, i32 0
  %scale22 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v21, i32 0, i32 3
  store double %call20, double* %scale22, align 8
  store double %call20, double* %scale, align 8
  store double -1.000000e+00, double* %sign, align 8
  %27 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v23 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %27, i32 0, i32 0
  %flip24 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v23, i32 0, i32 6
  store i32 1, i32* %flip24, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.13
  %a2125 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 2
  %28 = load double, double* %a2125, align 8
  %sub26 = fsub double -0.000000e+00, %28
  %a1127 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 0
  %29 = load double, double* %a1127, align 8
  %call28 = call double @atan2(double %sub26, double %29) #3
  %30 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v29 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %30, i32 0, i32 0
  %theta30 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v29, i32 0, i32 2
  store double %call28, double* %theta30, align 8
  %31 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v31 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %31, i32 0, i32 0
  %theta32 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v31, i32 0, i32 2
  %32 = load double, double* %theta32, align 8
  %call33 = call double @cos(double %32) #3
  %cmp34 = fcmp oeq double %call33, 0.000000e+00
  br i1 %cmp34, label %if.then.35, label %if.else.55

if.then.35:                                       ; preds = %if.end
  %a2136 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 2
  %33 = load double, double* %a2136, align 8
  %sub37 = fsub double -0.000000e+00, %33
  %34 = load double, double* %scale, align 8
  %div38 = fdiv double %sub37, %34
  %35 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v39 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %35, i32 0, i32 0
  %theta40 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v39, i32 0, i32 2
  %36 = load double, double* %theta40, align 8
  %call41 = call double @sin(double %36) #3
  %div42 = fdiv double %div38, %call41
  %37 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v43 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %37, i32 0, i32 0
  %asym44 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v43, i32 0, i32 4
  store double %div42, double* %asym44, align 8
  %38 = load double, double* %sign, align 8
  %sub45 = fsub double -0.000000e+00, %38
  %a2246 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 3
  %39 = load double, double* %a2246, align 8
  %mul47 = fmul double %sub45, %39
  %40 = load double, double* %scale, align 8
  %div48 = fdiv double %mul47, %40
  %41 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v49 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %41, i32 0, i32 0
  %theta50 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v49, i32 0, i32 2
  %42 = load double, double* %theta50, align 8
  %call51 = call double @sin(double %42) #3
  %div52 = fdiv double %div48, %call51
  %43 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v53 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %43, i32 0, i32 0
  %shear54 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v53, i32 0, i32 5
  store double %div52, double* %shear54, align 8
  br label %if.end.81

if.else.55:                                       ; preds = %if.end
  %44 = load double, double* %sign, align 8
  %a1156 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 0
  %45 = load double, double* %a1156, align 8
  %mul57 = fmul double %44, %45
  %46 = load double, double* %scale, align 8
  %div58 = fdiv double %mul57, %46
  %47 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v59 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %47, i32 0, i32 0
  %theta60 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v59, i32 0, i32 2
  %48 = load double, double* %theta60, align 8
  %call61 = call double @cos(double %48) #3
  %div62 = fdiv double %div58, %call61
  %49 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v63 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %49, i32 0, i32 0
  %asym64 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v63, i32 0, i32 4
  store double %div62, double* %asym64, align 8
  %50 = load double, double* %sign, align 8
  %a1265 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %t2, i32 0, i32 1
  %51 = load double, double* %a1265, align 8
  %52 = load double, double* %scale, align 8
  %div66 = fdiv double %51, %52
  %53 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v67 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %53, i32 0, i32 0
  %theta68 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v67, i32 0, i32 2
  %54 = load double, double* %theta68, align 8
  %call69 = call double @sin(double %54) #3
  %55 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v70 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %55, i32 0, i32 0
  %asym71 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v70, i32 0, i32 4
  %56 = load double, double* %asym71, align 8
  %div72 = fdiv double %call69, %56
  %sub73 = fsub double %div66, %div72
  %mul74 = fmul double %50, %sub73
  %57 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v75 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %57, i32 0, i32 0
  %theta76 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v75, i32 0, i32 2
  %58 = load double, double* %theta76, align 8
  %call77 = call double @cos(double %58) #3
  %div78 = fdiv double %mul74, %call77
  %59 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v79 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %59, i32 0, i32 0
  %shear80 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v79, i32 0, i32 5
  store double %div78, double* %shear80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.55, %if.then.35
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define void @aff_element_compute_boundary(%struct.AffElement* %elem, i32 %width, i32 %height, %struct.AffElement** %elements, i32 %num_elements) #0 {
entry:
  %elem.addr = alloca %struct.AffElement*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %elements.addr = alloca %struct.AffElement**, align 8
  %num_elements.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp_poly = alloca %struct.IPolygon, align 8
  %points_x = alloca double*, align 8
  %points_y = alloca double*, align 8
  store %struct.AffElement* %elem, %struct.AffElement** %elem.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct.AffElement** %elements, %struct.AffElement*** %elements.addr, align 8
  store i32 %num_elements, i32* %num_elements.addr, align 4
  %0 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %0, i32 0, i32 4
  %1 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary, align 8
  %tobool = icmp ne %struct.IPolygon* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary1 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %2, i32 0, i32 4
  %3 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary1, align 8
  %4 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %4, i32 0, i32 5
  %5 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary, align 8
  %cmp = icmp ne %struct.IPolygon* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary2 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %6, i32 0, i32 4
  %7 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary2, align 8
  %8 = bitcast %struct.IPolygon* %7 to i8*
  call void @g_free(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary3 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %9, i32 0, i32 5
  %10 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary3, align 8
  %tobool4 = icmp ne %struct.IPolygon* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary6 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %11, i32 0, i32 5
  %12 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary6, align 8
  %13 = bitcast %struct.IPolygon* %12 to i8*
  call void @g_free(i8* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %14 = load i32, i32* %num_elements.addr, align 4
  %npoints = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %tmp_poly, i32 0, i32 1
  store i32 %14, i32* %npoints, align 4
  %15 = load i32, i32* %num_elements.addr, align 4
  %conv = sext i32 %15 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %16 = bitcast i8* %call to %struct._GdkPoint*
  %points = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %tmp_poly, i32 0, i32 0
  store %struct._GdkPoint* %16, %struct._GdkPoint** %points, align 8
  %17 = load i32, i32* %num_elements.addr, align 4
  %conv8 = sext i32 %17 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv8, i64 8)
  %18 = bitcast i8* %call9 to double*
  store double* %18, double** %points_x, align 8
  %19 = load i32, i32* %num_elements.addr, align 4
  %conv10 = sext i32 %19 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 8)
  %20 = bitcast i8* %call11 to double*
  store double* %20, double** %points_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %num_elements.addr, align 4
  %cmp12 = icmp slt i32 %21, %22
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %trans = getelementptr inbounds %struct.AffElement, %struct.AffElement* %23, i32 0, i32 1
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %25, i64 %idxprom
  %26 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %26, i32 0, i32 0
  %x = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 0
  %27 = load double, double* %x, align 8
  %28 = load i32, i32* %width.addr, align 4
  %conv14 = sitofp i32 %28 to double
  %mul = fmul double %27, %conv14
  %29 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %30, i64 %idxprom15
  %31 = load %struct.AffElement*, %struct.AffElement** %arrayidx16, align 8
  %v17 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %31, i32 0, i32 0
  %y = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v17, i32 0, i32 1
  %32 = load double, double* %y, align 8
  %33 = load i32, i32* %width.addr, align 4
  %conv18 = sitofp i32 %33 to double
  %mul19 = fmul double %32, %conv18
  %34 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load double*, double** %points_x, align 8
  %arrayidx21 = getelementptr inbounds double, double* %35, i64 %idxprom20
  %36 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load double*, double** %points_y, align 8
  %arrayidx23 = getelementptr inbounds double, double* %37, i64 %idxprom22
  call void @aff2_apply(%struct.Aff2* %trans, double %mul, double %mul19, double* %arrayidx21, double* %arrayidx23)
  %38 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %38 to i64
  %39 = load double*, double** %points_x, align 8
  %arrayidx25 = getelementptr inbounds double, double* %39, i64 %idxprom24
  %40 = load double, double* %arrayidx25, align 8
  %conv26 = fptosi double %40 to i32
  %41 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %41 to i64
  %points28 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %tmp_poly, i32 0, i32 0
  %42 = load %struct._GdkPoint*, %struct._GdkPoint** %points28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %42, i64 %idxprom27
  %x30 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx29, i32 0, i32 0
  store i32 %conv26, i32* %x30, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %43 to i64
  %44 = load double*, double** %points_y, align 8
  %arrayidx32 = getelementptr inbounds double, double* %44, i64 %idxprom31
  %45 = load double, double* %arrayidx32, align 8
  %conv33 = fptosi double %45 to i32
  %46 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %46 to i64
  %points35 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %tmp_poly, i32 0, i32 0
  %47 = load %struct._GdkPoint*, %struct._GdkPoint** %points35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %47, i64 %idxprom34
  %y37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx36, i32 0, i32 1
  store i32 %conv33, i32* %y37, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call38 = call %struct.IPolygon* @ipolygon_convex_hull(%struct.IPolygon* %tmp_poly)
  %49 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary39 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %49, i32 0, i32 5
  store %struct.IPolygon* %call38, %struct.IPolygon** %draw_boundary39, align 8
  %50 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %51 = load i32, i32* %num_elements.addr, align 4
  %52 = load double*, double** %points_x, align 8
  %53 = load double*, double** %points_y, align 8
  call void @aff_element_compute_click_boundary(%struct.AffElement* %50, i32 %51, double* %52, double* %53)
  %points40 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %tmp_poly, i32 0, i32 0
  %54 = load %struct._GdkPoint*, %struct._GdkPoint** %points40, align 8
  %55 = bitcast %struct._GdkPoint* %54 to i8*
  call void @g_free(i8* %55)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aff_element_compute_click_boundary(%struct.AffElement* %elem, i32 %num_elements, double* %points_x, double* %points_y) #0 {
entry:
  %elem.addr = alloca %struct.AffElement*, align 8
  %num_elements.addr = alloca i32, align 4
  %points_x.addr = alloca double*, align 8
  %points_y.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %xtot = alloca double, align 8
  %ytot = alloca double, align 8
  %xc = alloca double, align 8
  %yc = alloca double, align 8
  %theta = alloca double, align 8
  %sth = alloca double, align 8
  %cth = alloca double, align 8
  %axis1 = alloca double, align 8
  %axis2 = alloca double, align 8
  %axis1max = alloca double, align 8
  %axis2max = alloca double, align 8
  %axis1min = alloca double, align 8
  %axis2min = alloca double, align 8
  %proj1 = alloca double, align 8
  %proj2 = alloca double, align 8
  %points = alloca %struct._GdkPoint*, align 8
  store %struct.AffElement* %elem, %struct.AffElement** %elem.addr, align 8
  store i32 %num_elements, i32* %num_elements.addr, align 4
  store double* %points_x, double** %points_x.addr, align 8
  store double* %points_y, double** %points_y.addr, align 8
  store double 0.000000e+00, double* %xtot, align 8
  store double 0.000000e+00, double* %ytot, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_elements.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %points_x.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double, double* %xtot, align 8
  %add = fadd double %5, %4
  store double %add, double* %xtot, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load double*, double** %points_y.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom1
  %8 = load double, double* %arrayidx2, align 8
  %9 = load double, double* %ytot, align 8
  %add3 = fadd double %9, %8
  store double %add3, double* %ytot, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %xtot, align 8
  %12 = load i32, i32* %num_elements.addr, align 4
  %conv = sitofp i32 %12 to double
  %div = fdiv double %11, %conv
  store double %div, double* %xc, align 8
  %13 = load double, double* %ytot, align 8
  %14 = load i32, i32* %num_elements.addr, align 4
  %conv4 = sitofp i32 %14 to double
  %div5 = fdiv double %13, %conv4
  store double %div5, double* %yc, align 8
  store double 0.000000e+00, double* %xtot, align 8
  store double 0.000000e+00, double* %ytot, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.33, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %num_elements.addr, align 4
  %cmp7 = icmp slt i32 %15, %16
  br i1 %cmp7, label %for.body.9, label %for.end.35

for.body.9:                                       ; preds = %for.cond.6
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load double*, double** %points_x.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10
  %19 = load double, double* %arrayidx11, align 8
  %20 = load double, double* %xc, align 8
  %sub = fsub double %19, %20
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load double*, double** %points_x.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %22, i64 %idxprom12
  %23 = load double, double* %arrayidx13, align 8
  %24 = load double, double* %xc, align 8
  %sub14 = fsub double %23, %24
  %mul = fmul double %sub, %sub14
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load double*, double** %points_y.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %26, i64 %idxprom15
  %27 = load double, double* %arrayidx16, align 8
  %28 = load double, double* %yc, align 8
  %sub17 = fsub double %27, %28
  %29 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load double*, double** %points_y.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %30, i64 %idxprom18
  %31 = load double, double* %arrayidx19, align 8
  %32 = load double, double* %yc, align 8
  %sub20 = fsub double %31, %32
  %mul21 = fmul double %sub17, %sub20
  %sub22 = fsub double %mul, %mul21
  %33 = load double, double* %xtot, align 8
  %add23 = fadd double %33, %sub22
  store double %add23, double* %xtot, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %34 to i64
  %35 = load double*, double** %points_x.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %35, i64 %idxprom24
  %36 = load double, double* %arrayidx25, align 8
  %37 = load double, double* %xc, align 8
  %sub26 = fsub double %36, %37
  %mul27 = fmul double 2.000000e+00, %sub26
  %38 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load double*, double** %points_y.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %39, i64 %idxprom28
  %40 = load double, double* %arrayidx29, align 8
  %41 = load double, double* %yc, align 8
  %sub30 = fsub double %40, %41
  %mul31 = fmul double %mul27, %sub30
  %42 = load double, double* %ytot, align 8
  %add32 = fadd double %42, %mul31
  store double %add32, double* %ytot, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.9
  %43 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.6

for.end.35:                                       ; preds = %for.cond.6
  %44 = load double, double* %ytot, align 8
  %45 = load double, double* %xtot, align 8
  %call = call double @atan2(double %44, double %45) #3
  %mul36 = fmul double 5.000000e-01, %call
  store double %mul36, double* %theta, align 8
  %46 = load double, double* %theta, align 8
  %call37 = call double @sin(double %46) #3
  store double %call37, double* %sth, align 8
  %47 = load double, double* %theta, align 8
  %call38 = call double @cos(double %47) #3
  store double %call38, double* %cth, align 8
  store double 0.000000e+00, double* %axis1min, align 8
  store double 0.000000e+00, double* %axis1max, align 8
  store double 0.000000e+00, double* %axis2min, align 8
  store double 0.000000e+00, double* %axis2max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.76, %for.end.35
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %num_elements.addr, align 4
  %cmp40 = icmp slt i32 %48, %49
  br i1 %cmp40, label %for.body.42, label %for.end.78

for.body.42:                                      ; preds = %for.cond.39
  %50 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %50 to i64
  %51 = load double*, double** %points_x.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %51, i64 %idxprom43
  %52 = load double, double* %arrayidx44, align 8
  %53 = load double, double* %xc, align 8
  %sub45 = fsub double %52, %53
  %54 = load double, double* %cth, align 8
  %mul46 = fmul double %sub45, %54
  %55 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %55 to i64
  %56 = load double*, double** %points_y.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %56, i64 %idxprom47
  %57 = load double, double* %arrayidx48, align 8
  %58 = load double, double* %yc, align 8
  %sub49 = fsub double %57, %58
  %59 = load double, double* %sth, align 8
  %mul50 = fmul double %sub49, %59
  %add51 = fadd double %mul46, %mul50
  store double %add51, double* %proj1, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %60 to i64
  %61 = load double*, double** %points_x.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %61, i64 %idxprom52
  %62 = load double, double* %arrayidx53, align 8
  %63 = load double, double* %xc, align 8
  %sub54 = fsub double %62, %63
  %sub55 = fsub double -0.000000e+00, %sub54
  %64 = load double, double* %sth, align 8
  %mul56 = fmul double %sub55, %64
  %65 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %65 to i64
  %66 = load double*, double** %points_y.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %66, i64 %idxprom57
  %67 = load double, double* %arrayidx58, align 8
  %68 = load double, double* %yc, align 8
  %sub59 = fsub double %67, %68
  %69 = load double, double* %cth, align 8
  %mul60 = fmul double %sub59, %69
  %add61 = fadd double %mul56, %mul60
  store double %add61, double* %proj2, align 8
  %70 = load double, double* %proj1, align 8
  %71 = load double, double* %axis1min, align 8
  %cmp62 = fcmp olt double %70, %71
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.42
  %72 = load double, double* %proj1, align 8
  store double %72, double* %axis1min, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.42
  %73 = load double, double* %proj1, align 8
  %74 = load double, double* %axis1max, align 8
  %cmp64 = fcmp ogt double %73, %74
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end
  %75 = load double, double* %proj1, align 8
  store double %75, double* %axis1max, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end
  %76 = load double, double* %proj2, align 8
  %77 = load double, double* %axis2min, align 8
  %cmp68 = fcmp olt double %76, %77
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  %78 = load double, double* %proj2, align 8
  store double %78, double* %axis2min, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  %79 = load double, double* %proj2, align 8
  %80 = load double, double* %axis2max, align 8
  %cmp72 = fcmp ogt double %79, %80
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  %81 = load double, double* %proj2, align 8
  store double %81, double* %axis2max, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.71
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %82 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %82, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.39

for.end.78:                                       ; preds = %for.cond.39
  %83 = load double, double* %axis1max, align 8
  %84 = load double, double* %axis1min, align 8
  %sub79 = fsub double %83, %84
  %mul80 = fmul double 5.000000e-01, %sub79
  store double %mul80, double* %axis1, align 8
  %85 = load double, double* %axis2max, align 8
  %86 = load double, double* %axis2min, align 8
  %sub81 = fsub double %85, %86
  %mul82 = fmul double 5.000000e-01, %sub81
  store double %mul82, double* %axis2, align 8
  %87 = load double, double* %axis1max, align 8
  %88 = load double, double* %axis1min, align 8
  %add83 = fadd double %87, %88
  %89 = load double, double* %cth, align 8
  %mul84 = fmul double %add83, %89
  %90 = load double, double* %axis2max, align 8
  %91 = load double, double* %axis2min, align 8
  %add85 = fadd double %90, %91
  %92 = load double, double* %sth, align 8
  %mul86 = fmul double %add85, %92
  %sub87 = fsub double %mul84, %mul86
  %mul88 = fmul double 5.000000e-01, %sub87
  %93 = load double, double* %xc, align 8
  %add89 = fadd double %93, %mul88
  store double %add89, double* %xc, align 8
  %94 = load double, double* %axis1max, align 8
  %95 = load double, double* %axis1min, align 8
  %add90 = fadd double %94, %95
  %96 = load double, double* %sth, align 8
  %mul91 = fmul double %add90, %96
  %97 = load double, double* %axis2max, align 8
  %98 = load double, double* %axis2min, align 8
  %add92 = fadd double %97, %98
  %99 = load double, double* %cth, align 8
  %mul93 = fmul double %add92, %99
  %add94 = fadd double %mul91, %mul93
  %mul95 = fmul double 5.000000e-01, %add94
  %100 = load double, double* %yc, align 8
  %add96 = fadd double %100, %mul95
  store double %add96, double* %yc, align 8
  %101 = load double, double* %axis1, align 8
  %cmp97 = fcmp olt double %101, 8.000000e+00
  br i1 %cmp97, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.78
  %102 = load double, double* %axis2, align 8
  %cmp99 = fcmp olt double %102, 8.000000e+00
  br i1 %cmp99, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %lor.lhs.false, %for.end.78
  %call102 = call noalias i8* @g_malloc_n(i64 4, i64 8)
  %103 = bitcast i8* %call102 to %struct._GdkPoint*
  store %struct._GdkPoint* %103, %struct._GdkPoint** %points, align 8
  %call103 = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %104 = bitcast i8* %call103 to %struct.IPolygon*
  %105 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %105, i32 0, i32 4
  store %struct.IPolygon* %104, %struct.IPolygon** %click_boundary, align 8
  %106 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %107 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary104 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %107, i32 0, i32 4
  %108 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary104, align 8
  %points105 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %108, i32 0, i32 0
  store %struct._GdkPoint* %106, %struct._GdkPoint** %points105, align 8
  %109 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary106 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %109, i32 0, i32 4
  %110 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary106, align 8
  %npoints = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %110, i32 0, i32 1
  store i32 4, i32* %npoints, align 4
  %111 = load double, double* %axis1, align 8
  %cmp107 = fcmp olt double %111, 8.000000e+00
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.101
  store double 8.000000e+00, double* %axis1, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.then.101
  %112 = load double, double* %axis2, align 8
  %cmp111 = fcmp olt double %112, 8.000000e+00
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  store double 8.000000e+00, double* %axis2, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.end.110
  %113 = load double, double* %xc, align 8
  %114 = load double, double* %axis1, align 8
  %115 = load double, double* %cth, align 8
  %mul115 = fmul double %114, %115
  %add116 = fadd double %113, %mul115
  %116 = load double, double* %axis2, align 8
  %117 = load double, double* %sth, align 8
  %mul117 = fmul double %116, %117
  %sub118 = fsub double %add116, %mul117
  %conv119 = fptosi double %sub118 to i32
  %118 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx120 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %118, i64 0
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx120, i32 0, i32 0
  store i32 %conv119, i32* %x, align 4
  %119 = load double, double* %yc, align 8
  %120 = load double, double* %axis1, align 8
  %121 = load double, double* %sth, align 8
  %mul121 = fmul double %120, %121
  %add122 = fadd double %119, %mul121
  %122 = load double, double* %axis2, align 8
  %123 = load double, double* %cth, align 8
  %mul123 = fmul double %122, %123
  %add124 = fadd double %add122, %mul123
  %conv125 = fptosi double %add124 to i32
  %124 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx126 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %124, i64 0
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx126, i32 0, i32 1
  store i32 %conv125, i32* %y, align 4
  %125 = load double, double* %xc, align 8
  %126 = load double, double* %axis1, align 8
  %127 = load double, double* %cth, align 8
  %mul127 = fmul double %126, %127
  %sub128 = fsub double %125, %mul127
  %128 = load double, double* %axis2, align 8
  %129 = load double, double* %sth, align 8
  %mul129 = fmul double %128, %129
  %sub130 = fsub double %sub128, %mul129
  %conv131 = fptosi double %sub130 to i32
  %130 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx132 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %130, i64 1
  %x133 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx132, i32 0, i32 0
  store i32 %conv131, i32* %x133, align 4
  %131 = load double, double* %yc, align 8
  %132 = load double, double* %axis1, align 8
  %133 = load double, double* %sth, align 8
  %mul134 = fmul double %132, %133
  %sub135 = fsub double %131, %mul134
  %134 = load double, double* %axis2, align 8
  %135 = load double, double* %cth, align 8
  %mul136 = fmul double %134, %135
  %add137 = fadd double %sub135, %mul136
  %conv138 = fptosi double %add137 to i32
  %136 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx139 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %136, i64 1
  %y140 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx139, i32 0, i32 1
  store i32 %conv138, i32* %y140, align 4
  %137 = load double, double* %xc, align 8
  %138 = load double, double* %axis1, align 8
  %139 = load double, double* %cth, align 8
  %mul141 = fmul double %138, %139
  %sub142 = fsub double %137, %mul141
  %140 = load double, double* %axis2, align 8
  %141 = load double, double* %sth, align 8
  %mul143 = fmul double %140, %141
  %add144 = fadd double %sub142, %mul143
  %conv145 = fptosi double %add144 to i32
  %142 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx146 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %142, i64 2
  %x147 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx146, i32 0, i32 0
  store i32 %conv145, i32* %x147, align 4
  %143 = load double, double* %yc, align 8
  %144 = load double, double* %axis1, align 8
  %145 = load double, double* %sth, align 8
  %mul148 = fmul double %144, %145
  %sub149 = fsub double %143, %mul148
  %146 = load double, double* %axis2, align 8
  %147 = load double, double* %cth, align 8
  %mul150 = fmul double %146, %147
  %sub151 = fsub double %sub149, %mul150
  %conv152 = fptosi double %sub151 to i32
  %148 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx153 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %148, i64 2
  %y154 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx153, i32 0, i32 1
  store i32 %conv152, i32* %y154, align 4
  %149 = load double, double* %xc, align 8
  %150 = load double, double* %axis1, align 8
  %151 = load double, double* %cth, align 8
  %mul155 = fmul double %150, %151
  %add156 = fadd double %149, %mul155
  %152 = load double, double* %axis2, align 8
  %153 = load double, double* %sth, align 8
  %mul157 = fmul double %152, %153
  %add158 = fadd double %add156, %mul157
  %conv159 = fptosi double %add158 to i32
  %154 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx160 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %154, i64 3
  %x161 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx160, i32 0, i32 0
  store i32 %conv159, i32* %x161, align 4
  %155 = load double, double* %yc, align 8
  %156 = load double, double* %axis1, align 8
  %157 = load double, double* %sth, align 8
  %mul162 = fmul double %156, %157
  %add163 = fadd double %155, %mul162
  %158 = load double, double* %axis2, align 8
  %159 = load double, double* %cth, align 8
  %mul164 = fmul double %158, %159
  %sub165 = fsub double %add163, %mul164
  %conv166 = fptosi double %sub165 to i32
  %160 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx167 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %160, i64 3
  %y168 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx167, i32 0, i32 1
  store i32 %conv166, i32* %y168, align 4
  br label %if.end.170

if.else:                                          ; preds = %lor.lhs.false
  %161 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %161, i32 0, i32 5
  %162 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary, align 8
  %163 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary169 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %163, i32 0, i32 4
  store %struct.IPolygon* %162, %struct.IPolygon** %click_boundary169, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.else, %if.end.114
  ret void
}

; Function Attrs: nounwind uwtable
define void @aff_element_draw(%struct.AffElement* %elem, i32 %selected, i32 %width, i32 %height, %struct._cairo* %cr, %struct._GdkColor* %color, %struct._PangoLayout* %layout) #0 {
entry:
  %elem.addr = alloca %struct.AffElement*, align 8
  %selected.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  %color.addr = alloca %struct._GdkColor*, align 8
  %layout.addr = alloca %struct._PangoLayout*, align 8
  %rect = alloca %struct._PangoRectangle, align 4
  %i = alloca i32, align 4
  store %struct.AffElement* %elem, %struct.AffElement** %elem.addr, align 8
  store i32 %selected, i32* %selected.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GdkColor* %color, %struct._GdkColor** %color.addr, align 8
  store %struct._PangoLayout* %layout, %struct._PangoLayout** %layout.addr, align 8
  %0 = load %struct._PangoLayout*, %struct._PangoLayout** %layout.addr, align 8
  %1 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %name = getelementptr inbounds %struct.AffElement, %struct.AffElement* %1, i32 0, i32 3
  %2 = load i8*, i8** %name, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %0, i8* %2, i32 -1)
  %3 = load %struct._PangoLayout*, %struct._PangoLayout** %layout.addr, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %3, %struct._PangoRectangle* null, %struct._PangoRectangle* %rect)
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %4, %struct._GdkColor* %5)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %7, i32 0, i32 0
  %x = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %9 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %9 to double
  %mul = fmul double %8, %conv
  %width1 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 2
  %10 = load i32, i32* %width1, align 4
  %div = sdiv i32 %10, 2
  %conv2 = sitofp i32 %div to double
  %sub = fsub double %mul, %conv2
  %11 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %v3 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %11, i32 0, i32 0
  %y = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v3, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %13 = load i32, i32* %width.addr, align 4
  %conv4 = sitofp i32 %13 to double
  %mul5 = fmul double %12, %conv4
  %height6 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 3
  %14 = load i32, i32* %height6, align 4
  %div7 = sdiv i32 %14, 2
  %conv8 = sitofp i32 %div7 to double
  %add = fadd double %mul5, %conv8
  call void @cairo_move_to(%struct._cairo* %6, double %sub, double %add)
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %16 = load %struct._PangoLayout*, %struct._PangoLayout** %layout.addr, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %15, %struct._PangoLayout* %16)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %17)
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %18, double 1.000000e+00)
  %19 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %19, i32 0, i32 4
  %20 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary, align 8
  %21 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %21, i32 0, i32 5
  %22 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary, align 8
  %cmp = icmp ne %struct.IPolygon* %20, %22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %24 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary10 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %24, i32 0, i32 4
  %25 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary10, align 8
  %points = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %25, i32 0, i32 0
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i64 0
  %x11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx, i32 0, i32 0
  %27 = load i32, i32* %x11, align 4
  %conv12 = sitofp i32 %27 to double
  %28 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary13 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %28, i32 0, i32 4
  %29 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary13, align 8
  %points14 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %29, i32 0, i32 0
  %30 = load %struct._GdkPoint*, %struct._GdkPoint** %points14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %30, i64 0
  %y16 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx15, i32 0, i32 1
  %31 = load i32, i32* %y16, align 4
  %conv17 = sitofp i32 %31 to double
  call void @cairo_move_to(%struct._cairo* %23, double %conv12, double %conv17)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary18 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %33, i32 0, i32 4
  %34 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary18, align 8
  %npoints = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %34, i32 0, i32 1
  %35 = load i32, i32* %npoints, align 4
  %cmp19 = icmp slt i32 %32, %35
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary21 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %38, i32 0, i32 4
  %39 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary21, align 8
  %points22 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %39, i32 0, i32 0
  %40 = load %struct._GdkPoint*, %struct._GdkPoint** %points22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %40, i64 %idxprom
  %x24 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx23, i32 0, i32 0
  %41 = load i32, i32* %x24, align 4
  %conv25 = sitofp i32 %41 to double
  %42 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %42 to i64
  %43 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary27 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %43, i32 0, i32 4
  %44 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary27, align 8
  %points28 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %44, i32 0, i32 0
  %45 = load %struct._GdkPoint*, %struct._GdkPoint** %points28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %45, i64 %idxprom26
  %y30 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx29, i32 0, i32 1
  %46 = load i32, i32* %y30, align 4
  %conv31 = sitofp i32 %46 to double
  call void @cairo_line_to(%struct._cairo* %36, double %conv25, double %conv31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_close_path(%struct._cairo* %48)
  %49 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %49)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %50 = load i32, i32* %selected.addr, align 4
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  %51 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %51, double 3.000000e+00)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end
  %52 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %53 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary34 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %53, i32 0, i32 5
  %54 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary34, align 8
  %points35 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %54, i32 0, i32 0
  %55 = load %struct._GdkPoint*, %struct._GdkPoint** %points35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %55, i64 0
  %x37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx36, i32 0, i32 0
  %56 = load i32, i32* %x37, align 4
  %conv38 = sitofp i32 %56 to double
  %57 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary39 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %57, i32 0, i32 5
  %58 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary39, align 8
  %points40 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %58, i32 0, i32 0
  %59 = load %struct._GdkPoint*, %struct._GdkPoint** %points40, align 8
  %arrayidx41 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %59, i64 0
  %y42 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx41, i32 0, i32 1
  %60 = load i32, i32* %y42, align 4
  %conv43 = sitofp i32 %60 to double
  call void @cairo_move_to(%struct._cairo* %52, double %conv38, double %conv43)
  store i32 1, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.62, %if.end.33
  %61 = load i32, i32* %i, align 4
  %62 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary45 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %62, i32 0, i32 5
  %63 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary45, align 8
  %npoints46 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %63, i32 0, i32 1
  %64 = load i32, i32* %npoints46, align 4
  %cmp47 = icmp slt i32 %61, %64
  br i1 %cmp47, label %for.body.49, label %for.end.64

for.body.49:                                      ; preds = %for.cond.44
  %65 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %66 to i64
  %67 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary51 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %67, i32 0, i32 5
  %68 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary51, align 8
  %points52 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %68, i32 0, i32 0
  %69 = load %struct._GdkPoint*, %struct._GdkPoint** %points52, align 8
  %arrayidx53 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %69, i64 %idxprom50
  %x54 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx53, i32 0, i32 0
  %70 = load i32, i32* %x54, align 4
  %conv55 = sitofp i32 %70 to double
  %71 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %71 to i64
  %72 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary57 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %72, i32 0, i32 5
  %73 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary57, align 8
  %points58 = getelementptr inbounds %struct.IPolygon, %struct.IPolygon* %73, i32 0, i32 0
  %74 = load %struct._GdkPoint*, %struct._GdkPoint** %points58, align 8
  %arrayidx59 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %74, i64 %idxprom56
  %y60 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx59, i32 0, i32 1
  %75 = load i32, i32* %y60, align 4
  %conv61 = sitofp i32 %75 to double
  call void @cairo_line_to(%struct._cairo* %65, double %conv55, double %conv61)
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.49
  %76 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %76, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.44

for.end.64:                                       ; preds = %for.cond.44
  %77 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_close_path(%struct._cairo* %77)
  %78 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %78)
  ret void
}

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #2

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #2

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #2

declare void @cairo_move_to(%struct._cairo*, double, double) #2

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #2

declare void @cairo_fill(%struct._cairo*) #2

declare void @cairo_set_line_width(%struct._cairo*, double) #2

declare void @cairo_line_to(%struct._cairo*, double, double) #2

declare void @cairo_close_path(%struct._cairo*) #2

declare void @cairo_stroke(%struct._cairo*) #2

; Function Attrs: nounwind uwtable
define %struct.AffElement* @aff_element_new(double %x, double %y, %struct._GimpRGB* %color, i32 %count) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %count.addr = alloca i32, align 4
  %elem = alloca %struct.AffElement*, align 8
  %buffer = alloca [16 x i8], align 16
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 416)
  %0 = bitcast i8* %call to %struct.AffElement*
  store %struct.AffElement* %0, %struct.AffElement** %elem, align 8
  %1 = load double, double* %x.addr, align 8
  %2 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %2, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 0
  store double %1, double* %x1, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v2 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %4, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v2, i32 0, i32 1
  store double %3, double* %y3, align 8
  %5 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v4 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %5, i32 0, i32 0
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v4, i32 0, i32 2
  store double 0.000000e+00, double* %theta, align 8
  %6 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v5 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %6, i32 0, i32 0
  %scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v5, i32 0, i32 3
  store double 5.000000e-01, double* %scale, align 8
  %7 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v6 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %7, i32 0, i32 0
  %asym = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v6, i32 0, i32 4
  store double 1.000000e+00, double* %asym, align 8
  %8 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v7 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %8, i32 0, i32 0
  %shear = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v7, i32 0, i32 5
  store double 0.000000e+00, double* %shear, align 8
  %9 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v8 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %9, i32 0, i32 0
  %flip = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v8, i32 0, i32 6
  store i32 0, i32* %flip, align 4
  %10 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v9 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %10, i32 0, i32 0
  %red_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v9, i32 0, i32 7
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %12 = bitcast %struct._GimpRGB* %red_color to i8*
  %13 = bitcast %struct._GimpRGB* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v10 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %14, i32 0, i32 0
  %blue_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v10, i32 0, i32 9
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %16 = bitcast %struct._GimpRGB* %blue_color to i8*
  %17 = bitcast %struct._GimpRGB* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %18 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v11 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %18, i32 0, i32 0
  %green_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v11, i32 0, i32 8
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %20 = bitcast %struct._GimpRGB* %green_color to i8*
  %21 = bitcast %struct._GimpRGB* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v12 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %22, i32 0, i32 0
  %black_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v12, i32 0, i32 10
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %24 = bitcast %struct._GimpRGB* %black_color to i8*
  %25 = bitcast %struct._GimpRGB* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  %26 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v13 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %26, i32 0, i32 0
  %target_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v13, i32 0, i32 11
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %28 = bitcast %struct._GimpRGB* %target_color to i8*
  %29 = bitcast %struct._GimpRGB* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  %30 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v14 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %30, i32 0, i32 0
  %hue_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v14, i32 0, i32 12
  store double 5.000000e-01, double* %hue_scale, align 8
  %31 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v15 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %31, i32 0, i32 0
  %value_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v15, i32 0, i32 13
  store double 5.000000e-01, double* %value_scale, align 8
  %32 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v16 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %32, i32 0, i32 0
  %simple_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v16, i32 0, i32 14
  store i32 1, i32* %simple_color, align 4
  %33 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %draw_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %33, i32 0, i32 5
  store %struct.IPolygon* null, %struct.IPolygon** %draw_boundary, align 8
  %34 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %click_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %34, i32 0, i32 4
  store %struct.IPolygon* null, %struct.IPolygon** %click_boundary, align 8
  %35 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  call void @aff_element_compute_color_trans(%struct.AffElement* %35)
  %36 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %v17 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %36, i32 0, i32 0
  %prob = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v17, i32 0, i32 15
  store double 1.000000e+00, double* %prob, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buffer, i32 0, i32 0
  %37 = load i32, i32* %count.addr, align 4
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %37) #3
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %buffer, i32 0, i32 0
  %call20 = call noalias i8* @g_strdup(i8* %arraydecay19)
  %38 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %name = getelementptr inbounds %struct.AffElement, %struct.AffElement* %38, i32 0, i32 3
  store i8* %call20, i8** %name, align 8
  %39 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  ret %struct.AffElement* %39
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @aff_element_free(%struct.AffElement* %elem) #0 {
entry:
  %elem.addr = alloca %struct.AffElement*, align 8
  store %struct.AffElement* %elem, %struct.AffElement** %elem.addr, align 8
  %0 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %0, i32 0, i32 4
  %1 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary, align 8
  %2 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %2, i32 0, i32 5
  %3 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary, align 8
  %cmp = icmp ne %struct.IPolygon* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %click_boundary1 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %4, i32 0, i32 4
  %5 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary1, align 8
  %6 = bitcast %struct.IPolygon* %5 to i8*
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %draw_boundary2 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %7, i32 0, i32 5
  %8 = load %struct.IPolygon*, %struct.IPolygon** %draw_boundary2, align 8
  %9 = bitcast %struct.IPolygon* %8 to i8*
  call void @g_free(i8* %9)
  %10 = load %struct.AffElement*, %struct.AffElement** %elem.addr, align 8
  %11 = bitcast %struct.AffElement* %10 to i8*
  call void @g_free(i8* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ifs_render(%struct.AffElement** %elements, i32 %num_elements, i32 %width, i32 %height, i32 %nsteps, %struct.IfsComposeVals* %vals, i32 %band_y, i32 %band_height, i8* %data, i8* %mask, i8* %nhits, i32 %preview) #0 {
entry:
  %elements.addr = alloca %struct.AffElement**, align 8
  %num_elements.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %nsteps.addr = alloca i32, align 4
  %vals.addr = alloca %struct.IfsComposeVals*, align 8
  %band_y.addr = alloca i32, align 4
  %band_height.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %mask.addr = alloca i8*, align 8
  %nhits.addr = alloca i8*, align 8
  %preview.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %ri = alloca i32, align 4
  %gi = alloca i32, align 4
  %bi = alloca i32, align 4
  %p0 = alloca i32, align 4
  %psum = alloca i32, align 4
  %pt = alloca double, align 8
  %ptr = alloca i8*, align 8
  %prob = alloca i32*, align 8
  %fprob = alloca double*, align 8
  %subdivide = alloca i32, align 4
  %brush = alloca i8*, align 8
  %brush_size = alloca i32, align 4
  %brush_offset = alloca double, align 8
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %jj0 = alloca i32, align 4
  %ii0 = alloca i32, align 4
  %jjmin = alloca i32, align 4
  %iimin = alloca i32, align 4
  %jjmax = alloca i32, align 4
  %iimax = alloca i32, align 4
  %m_old = alloca i32, align 4
  %m_new = alloca i32, align 4
  %m_pix = alloca i32, align 4
  %n_hits = alloca i32, align 4
  %old_scale = alloca i32, align 4
  %pix_scale = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.AffElement** %elements, %struct.AffElement*** %elements.addr, align 8
  store i32 %num_elements, i32* %num_elements.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %nsteps, i32* %nsteps.addr, align 4
  store %struct.IfsComposeVals* %vals, %struct.IfsComposeVals** %vals.addr, align 8
  store i32 %band_y, i32* %band_y.addr, align 4
  store i32 %band_height, i32* %band_height.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %mask, i8** %mask.addr, align 8
  store i8* %nhits, i8** %nhits.addr, align 8
  store i32 %preview, i32* %preview.addr, align 4
  store i8* null, i8** %brush, align 8
  store i32 1, i32* %brush_size, align 4
  store double 0.000000e+00, double* %brush_offset, align 8
  %0 = load i32, i32* %preview.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %subdivide, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %subdivide1 = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %1, i32 0, i32 3
  %2 = load i32, i32* %subdivide1, align 4
  store i32 %2, i32* %subdivide, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %num_elements.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %4 = bitcast i8* %call to double*
  store double* %4, double** %fprob, align 8
  %5 = load i32, i32* %num_elements.addr, align 4
  %conv2 = sext i32 %5 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv2, i64 4)
  %6 = bitcast i8* %call3 to i32*
  store i32* %6, i32** %prob, align 8
  store double 0.000000e+00, double* %pt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %num_elements.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %10, i64 %idxprom
  %11 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %12 = load i32, i32* %width.addr, align 4
  %13 = load i32, i32* %subdivide, align 4
  %mul = mul nsw i32 %12, %13
  %conv5 = sitofp i32 %mul to double
  %14 = load i32, i32* %height.addr, align 4
  %15 = load i32, i32* %subdivide, align 4
  %mul6 = mul nsw i32 %14, %15
  %conv7 = sitofp i32 %mul6 to double
  %16 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %center_x = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %16, i32 0, i32 6
  %17 = load double, double* %center_x, align 8
  %18 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %center_y = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %18, i32 0, i32 7
  %19 = load double, double* %center_y, align 8
  call void @aff_element_compute_trans(%struct.AffElement* %11, double %conv5, double %conv7, double %17, double %19)
  %20 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %21, i64 %idxprom8
  %22 = load %struct.AffElement*, %struct.AffElement** %arrayidx9, align 8
  %trans = getelementptr inbounds %struct.AffElement, %struct.AffElement* %22, i32 0, i32 1
  %a11 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %trans, i32 0, i32 0
  %23 = load double, double* %a11, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %24 to i64
  %25 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %25, i64 %idxprom10
  %26 = load %struct.AffElement*, %struct.AffElement** %arrayidx11, align 8
  %trans12 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %26, i32 0, i32 1
  %a22 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %trans12, i32 0, i32 3
  %27 = load double, double* %a22, align 8
  %mul13 = fmul double %23, %27
  %28 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %29, i64 %idxprom14
  %30 = load %struct.AffElement*, %struct.AffElement** %arrayidx15, align 8
  %trans16 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %30, i32 0, i32 1
  %a12 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %trans16, i32 0, i32 1
  %31 = load double, double* %a12, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %33, i64 %idxprom17
  %34 = load %struct.AffElement*, %struct.AffElement** %arrayidx18, align 8
  %trans19 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %34, i32 0, i32 1
  %a21 = getelementptr inbounds %struct.Aff2, %struct.Aff2* %trans19, i32 0, i32 2
  %35 = load double, double* %a21, align 8
  %mul20 = fmul double %31, %35
  %sub = fsub double %mul13, %mul20
  %call21 = call double @fabs(double %sub) #5
  %36 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load double*, double** %fprob, align 8
  %arrayidx23 = getelementptr inbounds double, double* %37, i64 %idxprom22
  store double %call21, double* %arrayidx23, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %38 to i64
  %39 = load double*, double** %fprob, align 8
  %arrayidx25 = getelementptr inbounds double, double* %39, i64 %idxprom24
  %40 = load double, double* %arrayidx25, align 8
  %cmp26 = fcmp olt double %40, 1.000000e-02
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load double*, double** %fprob, align 8
  %arrayidx30 = getelementptr inbounds double, double* %42, i64 %idxprom29
  store double 1.000000e-02, double* %arrayidx30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %for.body
  %43 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %43 to i64
  %44 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %44, i64 %idxprom32
  %45 = load %struct.AffElement*, %struct.AffElement** %arrayidx33, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %45, i32 0, i32 0
  %prob34 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 15
  %46 = load double, double* %prob34, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load double*, double** %fprob, align 8
  %arrayidx36 = getelementptr inbounds double, double* %48, i64 %idxprom35
  %49 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %49, %46
  store double %mul37, double* %arrayidx36, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %50 to i64
  %51 = load double*, double** %fprob, align 8
  %arrayidx39 = getelementptr inbounds double, double* %51, i64 %idxprom38
  %52 = load double, double* %arrayidx39, align 8
  %53 = load double, double* %pt, align 8
  %add = fadd double %53, %52
  store double %add, double* %pt, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %psum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.52, %for.end
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %num_elements.addr, align 4
  %cmp41 = icmp slt i32 %55, %56
  br i1 %cmp41, label %for.body.43, label %for.end.54

for.body.43:                                      ; preds = %for.cond.40
  %57 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load double*, double** %fprob, align 8
  %arrayidx45 = getelementptr inbounds double, double* %58, i64 %idxprom44
  %59 = load double, double* %arrayidx45, align 8
  %60 = load double, double* %pt, align 8
  %div = fdiv double %59, %60
  %mul46 = fmul double 0x41EFFFFFFFE00000, %div
  %61 = load i32, i32* %psum, align 4
  %conv47 = uitofp i32 %61 to double
  %add48 = fadd double %conv47, %mul46
  %conv49 = fptoui double %add48 to i32
  store i32 %conv49, i32* %psum, align 4
  %62 = load i32, i32* %psum, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %63 to i64
  %64 = load i32*, i32** %prob, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %64, i64 %idxprom50
  store i32 %62, i32* %arrayidx51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.43
  %65 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %65, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.40

for.end.54:                                       ; preds = %for.cond.40
  %66 = load i32, i32* %i, align 4
  %sub55 = sub nsw i32 %66, 1
  %idxprom56 = sext i32 %sub55 to i64
  %67 = load i32*, i32** %prob, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %67, i64 %idxprom56
  store i32 -1, i32* %arrayidx57, align 4
  %68 = load i32, i32* %preview.addr, align 4
  %tobool58 = icmp ne i32 %68, 0
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %for.end.54
  %69 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %call60 = call i8* @create_brush(%struct.IfsComposeVals* %69, i32* %brush_size, double* %brush_offset)
  store i8* %call60, i8** %brush, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %for.end.54
  store double 0.000000e+00, double* %y, align 8
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %b, align 8
  store double 0.000000e+00, double* %g, align 8
  store double 0.000000e+00, double* %r, align 8
  %70 = load i32, i32* %nsteps.addr, align 4
  %div62 = sdiv i32 %70, 32
  store i32 %div62, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.287, %if.end.61
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %nsteps.addr, align 4
  %cmp64 = icmp slt i32 %71, %72
  br i1 %cmp64, label %for.body.66, label %for.end.289

for.body.66:                                      ; preds = %for.cond.63
  %73 = load i32, i32* %preview.addr, align 4
  %tobool67 = icmp ne i32 %73, 0
  br i1 %tobool67, label %if.end.75, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.66
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %n, align 4
  %rem = srem i32 %74, %75
  %cmp68 = icmp eq i32 %rem, 0
  br i1 %cmp68, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %land.lhs.true
  %76 = load i32, i32* %i, align 4
  %conv71 = sitofp i32 %76 to double
  %77 = load i32, i32* %nsteps.addr, align 4
  %conv72 = sitofp i32 %77 to double
  %div73 = fdiv double %conv71, %conv72
  %call74 = call i32 @gimp_progress_update(double %div73)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %land.lhs.true, %for.body.66
  %call76 = call i32 @g_random_int()
  store i32 %call76, i32* %p0, align 4
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.75
  %78 = load i32, i32* %p0, align 4
  %79 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %79 to i64
  %80 = load i32*, i32** %prob, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %80, i64 %idxprom77
  %81 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp ugt i32 %78, %81
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %82 = load i32, i32* %k, align 4
  %inc81 = add nsw i32 %82, 1
  store i32 %inc81, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %83 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %83 to i64
  %84 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %84, i64 %idxprom82
  %85 = load %struct.AffElement*, %struct.AffElement** %arrayidx83, align 8
  %trans84 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %85, i32 0, i32 1
  %86 = load double, double* %x, align 8
  %87 = load double, double* %y, align 8
  call void @aff2_apply(%struct.Aff2* %trans84, double %86, double %87, double* %x, double* %y)
  %88 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %88 to i64
  %89 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %89, i64 %idxprom85
  %90 = load %struct.AffElement*, %struct.AffElement** %arrayidx86, align 8
  %color_trans = getelementptr inbounds %struct.AffElement, %struct.AffElement* %90, i32 0, i32 2
  %91 = load double, double* %r, align 8
  %92 = load double, double* %g, align 8
  %93 = load double, double* %b, align 8
  call void @aff3_apply(%struct.Aff3* %color_trans, double %91, double %92, double %93, double* %r, double* %g, double* %b)
  %94 = load i32, i32* %i, align 4
  %cmp87 = icmp slt i32 %94, 50
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %while.end
  br label %for.inc.287

if.end.90:                                        ; preds = %while.end
  %95 = load double, double* %r, align 8
  %mul91 = fmul double 2.550000e+02, %95
  %add92 = fadd double %mul91, 5.000000e-01
  %conv93 = fptosi double %add92 to i32
  store i32 %conv93, i32* %ri, align 4
  %96 = load double, double* %g, align 8
  %mul94 = fmul double 2.550000e+02, %96
  %add95 = fadd double %mul94, 5.000000e-01
  %conv96 = fptosi double %add95 to i32
  store i32 %conv96, i32* %gi, align 4
  %97 = load double, double* %b, align 8
  %mul97 = fmul double 2.550000e+02, %97
  %add98 = fadd double %mul97, 5.000000e-01
  %conv99 = fptosi double %add98 to i32
  store i32 %conv99, i32* %bi, align 4
  %98 = load i32, i32* %ri, align 4
  %cmp100 = icmp slt i32 %98, 0
  br i1 %cmp100, label %if.then.116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.90
  %99 = load i32, i32* %ri, align 4
  %cmp102 = icmp sgt i32 %99, 255
  br i1 %cmp102, label %if.then.116, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false
  %100 = load i32, i32* %gi, align 4
  %cmp105 = icmp slt i32 %100, 0
  br i1 %cmp105, label %if.then.116, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.104
  %101 = load i32, i32* %gi, align 4
  %cmp108 = icmp sgt i32 %101, 255
  br i1 %cmp108, label %if.then.116, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.107
  %102 = load i32, i32* %bi, align 4
  %cmp111 = icmp slt i32 %102, 0
  br i1 %cmp111, label %if.then.116, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.110
  %103 = load i32, i32* %bi, align 4
  %cmp114 = icmp sgt i32 %103, 255
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %lor.lhs.false.113, %lor.lhs.false.110, %lor.lhs.false.107, %lor.lhs.false.104, %lor.lhs.false, %if.end.90
  br label %for.inc.287

if.end.117:                                       ; preds = %lor.lhs.false.113
  %104 = load i32, i32* %preview.addr, align 4
  %tobool118 = icmp ne i32 %104, 0
  br i1 %tobool118, label %if.then.119, label %if.else.148

if.then.119:                                      ; preds = %if.end.117
  %105 = load double, double* %x, align 8
  %106 = load i32, i32* %width.addr, align 4
  %conv120 = sitofp i32 %106 to double
  %cmp121 = fcmp olt double %105, %conv120
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.147

land.lhs.true.123:                                ; preds = %if.then.119
  %107 = load double, double* %y, align 8
  %108 = load i32, i32* %band_y.addr, align 4
  %109 = load i32, i32* %band_height.addr, align 4
  %add124 = add nsw i32 %108, %109
  %conv125 = sitofp i32 %add124 to double
  %cmp126 = fcmp olt double %107, %conv125
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.147

land.lhs.true.128:                                ; preds = %land.lhs.true.123
  %110 = load double, double* %x, align 8
  %cmp129 = fcmp oge double %110, 0.000000e+00
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.147

land.lhs.true.131:                                ; preds = %land.lhs.true.128
  %111 = load double, double* %y, align 8
  %112 = load i32, i32* %band_y.addr, align 4
  %conv132 = sitofp i32 %112 to double
  %cmp133 = fcmp oge double %111, %conv132
  br i1 %cmp133, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %land.lhs.true.131
  %113 = load i8*, i8** %data.addr, align 8
  %114 = load double, double* %y, align 8
  %115 = load i32, i32* %band_y.addr, align 4
  %conv136 = sitofp i32 %115 to double
  %sub137 = fsub double %114, %conv136
  %conv138 = fptosi double %sub137 to i32
  %116 = load i32, i32* %width.addr, align 4
  %mul139 = mul nsw i32 %conv138, %116
  %117 = load double, double* %x, align 8
  %conv140 = fptosi double %117 to i32
  %add141 = add nsw i32 %mul139, %conv140
  %mul142 = mul nsw i32 3, %add141
  %idx.ext = sext i32 %mul142 to i64
  %add.ptr = getelementptr inbounds i8, i8* %113, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8
  %118 = load i32, i32* %ri, align 4
  %conv143 = trunc i32 %118 to i8
  %119 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %conv143, i8* %119, align 1
  %120 = load i32, i32* %gi, align 4
  %conv144 = trunc i32 %120 to i8
  %121 = load i8*, i8** %ptr, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr145, i8** %ptr, align 8
  store i8 %conv144, i8* %121, align 1
  %122 = load i32, i32* %bi, align 4
  %conv146 = trunc i32 %122 to i8
  %123 = load i8*, i8** %ptr, align 8
  store i8 %conv146, i8* %123, align 1
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.135, %land.lhs.true.131, %land.lhs.true.128, %land.lhs.true.123, %if.then.119
  br label %if.end.286

if.else.148:                                      ; preds = %if.end.117
  %124 = load double, double* %x, align 8
  %125 = load i32, i32* %width.addr, align 4
  %126 = load i32, i32* %subdivide, align 4
  %mul149 = mul nsw i32 %125, %126
  %conv150 = sitofp i32 %mul149 to double
  %cmp151 = fcmp olt double %124, %conv150
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.285

land.lhs.true.153:                                ; preds = %if.else.148
  %127 = load double, double* %y, align 8
  %128 = load i32, i32* %height.addr, align 4
  %129 = load i32, i32* %subdivide, align 4
  %mul154 = mul nsw i32 %128, %129
  %conv155 = sitofp i32 %mul154 to double
  %cmp156 = fcmp olt double %127, %conv155
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.285

land.lhs.true.158:                                ; preds = %land.lhs.true.153
  %130 = load double, double* %x, align 8
  %cmp159 = fcmp oge double %130, 0.000000e+00
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.285

land.lhs.true.161:                                ; preds = %land.lhs.true.158
  %131 = load double, double* %y, align 8
  %cmp162 = fcmp oge double %131, 0.000000e+00
  br i1 %cmp162, label %if.then.164, label %if.end.285

if.then.164:                                      ; preds = %land.lhs.true.161
  %132 = load double, double* %y, align 8
  %133 = load double, double* %brush_offset, align 8
  %sub165 = fsub double %132, %133
  %134 = load i32, i32* %band_y.addr, align 4
  %135 = load i32, i32* %subdivide, align 4
  %mul166 = mul nsw i32 %134, %135
  %conv167 = sitofp i32 %mul166 to double
  %sub168 = fsub double %sub165, %conv167
  %call169 = call double @floor(double %sub168) #5
  %conv170 = fptosi double %call169 to i32
  store i32 %conv170, i32* %jj0, align 4
  %136 = load double, double* %x, align 8
  %137 = load double, double* %brush_offset, align 8
  %sub171 = fsub double %136, %137
  %call172 = call double @floor(double %sub171) #5
  %conv173 = fptosi double %call172 to i32
  store i32 %conv173, i32* %ii0, align 4
  store i32 0, i32* %jjmin, align 4
  store i32 0, i32* %iimin, align 4
  %138 = load i32, i32* %ii0, align 4
  %cmp174 = icmp slt i32 %138, 0
  br i1 %cmp174, label %if.then.176, label %if.else.178

if.then.176:                                      ; preds = %if.then.164
  %139 = load i32, i32* %ii0, align 4
  %sub177 = sub nsw i32 0, %139
  store i32 %sub177, i32* %iimin, align 4
  br label %if.end.179

if.else.178:                                      ; preds = %if.then.164
  store i32 0, i32* %iimin, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.then.176
  %140 = load i32, i32* %jj0, align 4
  %cmp180 = icmp slt i32 %140, 0
  br i1 %cmp180, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %if.end.179
  %141 = load i32, i32* %jj0, align 4
  %sub183 = sub nsw i32 0, %141
  store i32 %sub183, i32* %jjmin, align 4
  br label %if.end.185

if.else.184:                                      ; preds = %if.end.179
  store i32 0, i32* %jjmin, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.182
  %142 = load i32, i32* %jj0, align 4
  %143 = load i32, i32* %brush_size, align 4
  %add186 = add nsw i32 %142, %143
  %144 = load i32, i32* %subdivide, align 4
  %145 = load i32, i32* %band_height.addr, align 4
  %mul187 = mul nsw i32 %144, %145
  %cmp188 = icmp sge i32 %add186, %mul187
  br i1 %cmp188, label %if.then.190, label %if.else.193

if.then.190:                                      ; preds = %if.end.185
  %146 = load i32, i32* %subdivide, align 4
  %147 = load i32, i32* %band_height.addr, align 4
  %mul191 = mul nsw i32 %146, %147
  %148 = load i32, i32* %jj0, align 4
  %sub192 = sub nsw i32 %mul191, %148
  store i32 %sub192, i32* %jjmax, align 4
  br label %if.end.194

if.else.193:                                      ; preds = %if.end.185
  %149 = load i32, i32* %brush_size, align 4
  store i32 %149, i32* %jjmax, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.193, %if.then.190
  %150 = load i32, i32* %ii0, align 4
  %151 = load i32, i32* %brush_size, align 4
  %add195 = add nsw i32 %150, %151
  %152 = load i32, i32* %subdivide, align 4
  %153 = load i32, i32* %width.addr, align 4
  %mul196 = mul nsw i32 %152, %153
  %cmp197 = icmp sge i32 %add195, %mul196
  br i1 %cmp197, label %if.then.199, label %if.else.202

if.then.199:                                      ; preds = %if.end.194
  %154 = load i32, i32* %subdivide, align 4
  %155 = load i32, i32* %width.addr, align 4
  %mul200 = mul nsw i32 %154, %155
  %156 = load i32, i32* %ii0, align 4
  %sub201 = sub nsw i32 %mul200, %156
  store i32 %sub201, i32* %iimax, align 4
  br label %if.end.203

if.else.202:                                      ; preds = %if.end.194
  %157 = load i32, i32* %brush_size, align 4
  store i32 %157, i32* %iimax, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %if.then.199
  %158 = load i32, i32* %jjmin, align 4
  store i32 %158, i32* %jj, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.282, %if.end.203
  %159 = load i32, i32* %jj, align 4
  %160 = load i32, i32* %jjmax, align 4
  %cmp205 = icmp slt i32 %159, %160
  br i1 %cmp205, label %for.body.207, label %for.end.284

for.body.207:                                     ; preds = %for.cond.204
  %161 = load i32, i32* %iimin, align 4
  store i32 %161, i32* %ii, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.279, %for.body.207
  %162 = load i32, i32* %ii, align 4
  %163 = load i32, i32* %iimax, align 4
  %cmp209 = icmp slt i32 %162, %163
  br i1 %cmp209, label %for.body.211, label %for.end.281

for.body.211:                                     ; preds = %for.cond.208
  %164 = load i32, i32* %jj0, align 4
  %165 = load i32, i32* %jj, align 4
  %add212 = add nsw i32 %164, %165
  %166 = load i32, i32* %width.addr, align 4
  %mul213 = mul nsw i32 %add212, %166
  %167 = load i32, i32* %subdivide, align 4
  %mul214 = mul nsw i32 %mul213, %167
  %168 = load i32, i32* %ii0, align 4
  %add215 = add nsw i32 %mul214, %168
  %169 = load i32, i32* %ii, align 4
  %add216 = add nsw i32 %add215, %169
  store i32 %add216, i32* %index, align 4
  %170 = load i32, i32* %index, align 4
  %idxprom217 = sext i32 %170 to i64
  %171 = load i8*, i8** %nhits.addr, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %171, i64 %idxprom217
  %172 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %172 to i32
  store i32 %conv219, i32* %n_hits, align 4
  %173 = load i32, i32* %n_hits, align 4
  %cmp220 = icmp eq i32 %173, 255
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %for.body.211
  br label %for.inc.279

if.end.223:                                       ; preds = %for.body.211
  %174 = load i32, i32* %jj, align 4
  %175 = load i32, i32* %brush_size, align 4
  %mul224 = mul nsw i32 %174, %175
  %176 = load i32, i32* %ii, align 4
  %add225 = add nsw i32 %mul224, %176
  %idxprom226 = sext i32 %add225 to i64
  %177 = load i8*, i8** %brush, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %177, i64 %idxprom226
  %178 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %178 to i32
  store i32 %conv228, i32* %m_pix, align 4
  %179 = load i32, i32* %m_pix, align 4
  %tobool229 = icmp ne i32 %179, 0
  br i1 %tobool229, label %if.end.231, label %if.then.230

if.then.230:                                      ; preds = %if.end.223
  br label %for.inc.279

if.end.231:                                       ; preds = %if.end.223
  %180 = load i32, i32* %n_hits, align 4
  %inc232 = add i32 %180, 1
  store i32 %inc232, i32* %n_hits, align 4
  %conv233 = trunc i32 %inc232 to i8
  %181 = load i32, i32* %index, align 4
  %idxprom234 = sext i32 %181 to i64
  %182 = load i8*, i8** %nhits.addr, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %182, i64 %idxprom234
  store i8 %conv233, i8* %arrayidx235, align 1
  %183 = load i32, i32* %index, align 4
  %idxprom236 = sext i32 %183 to i64
  %184 = load i8*, i8** %mask.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %184, i64 %idxprom236
  %185 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %185 to i32
  store i32 %conv238, i32* %m_old, align 4
  %186 = load i32, i32* %m_old, align 4
  %187 = load i32, i32* %m_pix, align 4
  %add239 = add i32 %186, %187
  %188 = load i32, i32* %m_old, align 4
  %189 = load i32, i32* %m_pix, align 4
  %mul240 = mul i32 %188, %189
  %div241 = udiv i32 %mul240, 255
  %sub242 = sub i32 %add239, %div241
  store i32 %sub242, i32* %m_new, align 4
  %190 = load i32, i32* %m_new, align 4
  %conv243 = trunc i32 %190 to i8
  %191 = load i32, i32* %index, align 4
  %idxprom244 = sext i32 %191 to i64
  %192 = load i8*, i8** %mask.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %192, i64 %idxprom244
  store i8 %conv243, i8* %arrayidx245, align 1
  %193 = load i32, i32* %m_old, align 4
  %194 = load i32, i32* %n_hits, align 4
  %mul246 = mul i32 255, %194
  %195 = load i32, i32* %m_pix, align 4
  %sub247 = sub i32 %mul246, %195
  %mul248 = mul i32 %193, %sub247
  store i32 %mul248, i32* %old_scale, align 4
  %196 = load i32, i32* %m_pix, align 4
  %197 = load i32, i32* %m_old, align 4
  %sub249 = sub i32 255, %197
  %198 = load i32, i32* %n_hits, align 4
  %mul250 = mul i32 %sub249, %198
  %199 = load i32, i32* %m_old, align 4
  %add251 = add i32 %mul250, %199
  %mul252 = mul i32 %196, %add251
  store i32 %mul252, i32* %pix_scale, align 4
  %200 = load i8*, i8** %data.addr, align 8
  %201 = load i32, i32* %index, align 4
  %mul253 = mul nsw i32 3, %201
  %idx.ext254 = sext i32 %mul253 to i64
  %add.ptr255 = getelementptr inbounds i8, i8* %200, i64 %idx.ext254
  store i8* %add.ptr255, i8** %ptr, align 8
  %202 = load i32, i32* %old_scale, align 4
  %203 = load i8*, i8** %ptr, align 8
  %204 = load i8, i8* %203, align 1
  %conv256 = zext i8 %204 to i32
  %mul257 = mul i32 %202, %conv256
  %205 = load i32, i32* %pix_scale, align 4
  %206 = load i32, i32* %ri, align 4
  %mul258 = mul i32 %205, %206
  %add259 = add i32 %mul257, %mul258
  %207 = load i32, i32* %old_scale, align 4
  %208 = load i32, i32* %pix_scale, align 4
  %add260 = add i32 %207, %208
  %div261 = udiv i32 %add259, %add260
  %conv262 = trunc i32 %div261 to i8
  %209 = load i8*, i8** %ptr, align 8
  store i8 %conv262, i8* %209, align 1
  %210 = load i8*, i8** %ptr, align 8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr263, i8** %ptr, align 8
  %211 = load i32, i32* %old_scale, align 4
  %212 = load i8*, i8** %ptr, align 8
  %213 = load i8, i8* %212, align 1
  %conv264 = zext i8 %213 to i32
  %mul265 = mul i32 %211, %conv264
  %214 = load i32, i32* %pix_scale, align 4
  %215 = load i32, i32* %gi, align 4
  %mul266 = mul i32 %214, %215
  %add267 = add i32 %mul265, %mul266
  %216 = load i32, i32* %old_scale, align 4
  %217 = load i32, i32* %pix_scale, align 4
  %add268 = add i32 %216, %217
  %div269 = udiv i32 %add267, %add268
  %conv270 = trunc i32 %div269 to i8
  %218 = load i8*, i8** %ptr, align 8
  store i8 %conv270, i8* %218, align 1
  %219 = load i8*, i8** %ptr, align 8
  %incdec.ptr271 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr271, i8** %ptr, align 8
  %220 = load i32, i32* %old_scale, align 4
  %221 = load i8*, i8** %ptr, align 8
  %222 = load i8, i8* %221, align 1
  %conv272 = zext i8 %222 to i32
  %mul273 = mul i32 %220, %conv272
  %223 = load i32, i32* %pix_scale, align 4
  %224 = load i32, i32* %bi, align 4
  %mul274 = mul i32 %223, %224
  %add275 = add i32 %mul273, %mul274
  %225 = load i32, i32* %old_scale, align 4
  %226 = load i32, i32* %pix_scale, align 4
  %add276 = add i32 %225, %226
  %div277 = udiv i32 %add275, %add276
  %conv278 = trunc i32 %div277 to i8
  %227 = load i8*, i8** %ptr, align 8
  store i8 %conv278, i8* %227, align 1
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.231, %if.then.230, %if.then.222
  %228 = load i32, i32* %ii, align 4
  %inc280 = add nsw i32 %228, 1
  store i32 %inc280, i32* %ii, align 4
  br label %for.cond.208

for.end.281:                                      ; preds = %for.cond.208
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.end.281
  %229 = load i32, i32* %jj, align 4
  %inc283 = add nsw i32 %229, 1
  store i32 %inc283, i32* %jj, align 4
  br label %for.cond.204

for.end.284:                                      ; preds = %for.cond.204
  br label %if.end.285

if.end.285:                                       ; preds = %for.end.284, %land.lhs.true.161, %land.lhs.true.158, %land.lhs.true.153, %if.else.148
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.end.147
  br label %for.inc.287

for.inc.287:                                      ; preds = %if.end.286, %if.then.116, %if.then.89
  %230 = load i32, i32* %i, align 4
  %inc288 = add nsw i32 %230, 1
  store i32 %inc288, i32* %i, align 4
  br label %for.cond.63

for.end.289:                                      ; preds = %for.cond.63
  %231 = load i32, i32* %preview.addr, align 4
  %tobool290 = icmp ne i32 %231, 0
  br i1 %tobool290, label %if.end.293, label %if.then.291

if.then.291:                                      ; preds = %for.end.289
  %call292 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %for.end.289
  %232 = load i8*, i8** %brush, align 8
  call void @g_free(i8* %232)
  %233 = load i32*, i32** %prob, align 8
  %234 = bitcast i32* %233 to i8*
  call void @g_free(i8* %234)
  %235 = load double*, double** %fprob, align 8
  %236 = bitcast double* %235 to i8*
  call void @g_free(i8* %236)
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define internal i8* @create_brush(%struct.IfsComposeVals* %ifsvals, i32* %brush_size, double* %brush_offset) #0 {
entry:
  %ifsvals.addr = alloca %struct.IfsComposeVals*, align 8
  %brush_size.addr = alloca i32*, align 8
  %brush_offset.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %brush = alloca i8*, align 8
  %radius = alloca double, align 8
  %pixel = alloca double, align 8
  %d = alloca double, align 8
  store %struct.IfsComposeVals* %ifsvals, %struct.IfsComposeVals** %ifsvals.addr, align 8
  store i32* %brush_size, i32** %brush_size.addr, align 8
  store double* %brush_offset, double** %brush_offset.addr, align 8
  %0 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %ifsvals.addr, align 8
  %radius1 = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %0, i32 0, i32 4
  %1 = load double, double* %radius1, align 8
  %2 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %ifsvals.addr, align 8
  %subdivide = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %2, i32 0, i32 3
  %3 = load i32, i32* %subdivide, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double %1, %conv
  store double %mul, double* %radius, align 8
  %4 = load double, double* %radius, align 8
  %mul2 = fmul double 2.000000e+00, %4
  %call = call double @ceil(double %mul2) #5
  %conv3 = fptosi double %call to i32
  %5 = load i32*, i32** %brush_size.addr, align 8
  store i32 %conv3, i32* %5, align 4
  %6 = load i32*, i32** %brush_size.addr, align 8
  %7 = load i32, i32* %6, align 4
  %sub = sub nsw i32 %7, 1
  %conv4 = sitofp i32 %sub to double
  %mul5 = fmul double 5.000000e-01, %conv4
  %8 = load double*, double** %brush_offset.addr, align 8
  store double %mul5, double* %8, align 8
  %9 = load i32*, i32** %brush_size.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %brush_size.addr, align 8
  %12 = load i32, i32* %11, align 4
  %mul6 = mul nsw i32 %10, %12
  %conv7 = sext i32 %mul6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 1)
  store i8* %call8, i8** %brush, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32*, i32** %brush_size.addr, align 8
  %15 = load i32, i32* %14, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end.86

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.81, %for.body
  %16 = load i32, i32* %j, align 4
  %17 = load i32*, i32** %brush_size.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp11 = icmp slt i32 %16, %18
  br i1 %cmp11, label %for.body.13, label %for.end.83

for.body.13:                                      ; preds = %for.cond.10
  store double 0.000000e+00, double* %pixel, align 8
  %19 = load i32, i32* %i, align 4
  %conv14 = sitofp i32 %19 to double
  %20 = load double*, double** %brush_offset.addr, align 8
  %21 = load double, double* %20, align 8
  %sub15 = fsub double %conv14, %21
  %22 = load i32, i32* %i, align 4
  %conv16 = sitofp i32 %22 to double
  %23 = load double*, double** %brush_offset.addr, align 8
  %24 = load double, double* %23, align 8
  %sub17 = fsub double %conv16, %24
  %mul18 = fmul double %sub15, %sub17
  %25 = load i32, i32* %j, align 4
  %conv19 = sitofp i32 %25 to double
  %26 = load double*, double** %brush_offset.addr, align 8
  %27 = load double, double* %26, align 8
  %sub20 = fsub double %conv19, %27
  %28 = load i32, i32* %j, align 4
  %conv21 = sitofp i32 %28 to double
  %29 = load double*, double** %brush_offset.addr, align 8
  %30 = load double, double* %29, align 8
  %sub22 = fsub double %conv21, %30
  %mul23 = fmul double %sub20, %sub22
  %add = fadd double %mul18, %mul23
  %call24 = call double @sqrt(double %add) #3
  store double %call24, double* %d, align 8
  %31 = load double, double* %d, align 8
  %sub25 = fsub double %31, 0x3FE6A09E667F3BCD
  %32 = load double, double* %radius, align 8
  %cmp26 = fcmp ogt double %sub25, %32
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.13
  store double 0.000000e+00, double* %pixel, align 8
  br label %if.end.76

if.else:                                          ; preds = %for.body.13
  %33 = load double, double* %d, align 8
  %add28 = fadd double %33, 0x3FE6A09E667F3BCD
  %34 = load double, double* %radius, align 8
  %cmp29 = fcmp olt double %add28, %34
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else
  store double 1.000000e+00, double* %pixel, align 8
  br label %if.end

if.else.32:                                       ; preds = %if.else
  store i32 0, i32* %ii, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.73, %if.else.32
  %35 = load i32, i32* %ii, align 4
  %cmp34 = icmp slt i32 %35, 10
  br i1 %cmp34, label %for.body.36, label %for.end.75

for.body.36:                                      ; preds = %for.cond.33
  store i32 0, i32* %jj, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %for.body.36
  %36 = load i32, i32* %jj, align 4
  %cmp38 = icmp slt i32 %36, 10
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %37 = load i32, i32* %i, align 4
  %conv41 = sitofp i32 %37 to double
  %38 = load double*, double** %brush_offset.addr, align 8
  %39 = load double, double* %38, align 8
  %sub42 = fsub double %conv41, %39
  %40 = load i32, i32* %ii, align 4
  %conv43 = sitofp i32 %40 to double
  %mul44 = fmul double %conv43, 1.000000e-01
  %add45 = fadd double %sub42, %mul44
  %sub46 = fsub double %add45, 4.500000e-01
  %41 = load i32, i32* %i, align 4
  %conv47 = sitofp i32 %41 to double
  %42 = load double*, double** %brush_offset.addr, align 8
  %43 = load double, double* %42, align 8
  %sub48 = fsub double %conv47, %43
  %44 = load i32, i32* %ii, align 4
  %conv49 = sitofp i32 %44 to double
  %mul50 = fmul double %conv49, 1.000000e-01
  %add51 = fadd double %sub48, %mul50
  %sub52 = fsub double %add51, 4.500000e-01
  %mul53 = fmul double %sub46, %sub52
  %45 = load i32, i32* %j, align 4
  %conv54 = sitofp i32 %45 to double
  %46 = load double*, double** %brush_offset.addr, align 8
  %47 = load double, double* %46, align 8
  %sub55 = fsub double %conv54, %47
  %48 = load i32, i32* %jj, align 4
  %conv56 = sitofp i32 %48 to double
  %mul57 = fmul double %conv56, 1.000000e-01
  %add58 = fadd double %sub55, %mul57
  %sub59 = fsub double %add58, 4.500000e-01
  %49 = load i32, i32* %j, align 4
  %conv60 = sitofp i32 %49 to double
  %50 = load double*, double** %brush_offset.addr, align 8
  %51 = load double, double* %50, align 8
  %sub61 = fsub double %conv60, %51
  %52 = load i32, i32* %jj, align 4
  %conv62 = sitofp i32 %52 to double
  %mul63 = fmul double %conv62, 1.000000e-01
  %add64 = fadd double %sub61, %mul63
  %sub65 = fsub double %add64, 4.500000e-01
  %mul66 = fmul double %sub59, %sub65
  %add67 = fadd double %mul53, %mul66
  %call68 = call double @sqrt(double %add67) #3
  store double %call68, double* %d, align 8
  %53 = load double, double* %d, align 8
  %54 = load double, double* %radius, align 8
  %cmp69 = fcmp olt double %53, %54
  %conv70 = zext i1 %cmp69 to i32
  %conv71 = sitofp i32 %conv70 to double
  %div = fdiv double %conv71, 1.000000e+02
  %55 = load double, double* %pixel, align 8
  %add72 = fadd double %55, %div
  store double %add72, double* %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.40
  %56 = load i32, i32* %jj, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %jj, align 4
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end
  %57 = load i32, i32* %ii, align 4
  %inc74 = add nsw i32 %57, 1
  store i32 %inc74, i32* %ii, align 4
  br label %for.cond.33

for.end.75:                                       ; preds = %for.cond.33
  br label %if.end

if.end:                                           ; preds = %for.end.75, %if.then.31
  br label %if.end.76

if.end.76:                                        ; preds = %if.end, %if.then
  %58 = load double, double* %pixel, align 8
  %mul77 = fmul double 2.559990e+02, %58
  %conv78 = fptoui double %mul77 to i8
  %59 = load i32, i32* %i, align 4
  %60 = load i32*, i32** %brush_size.addr, align 8
  %61 = load i32, i32* %60, align 4
  %mul79 = mul nsw i32 %59, %61
  %62 = load i32, i32* %j, align 4
  %add80 = add nsw i32 %mul79, %62
  %idxprom = sext i32 %add80 to i64
  %63 = load i8*, i8** %brush, align 8
  %arrayidx = getelementptr inbounds i8, i8* %63, i64 %idxprom
  store i8 %conv78, i8* %arrayidx, align 1
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.76
  %64 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %64, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond.10

for.end.83:                                       ; preds = %for.cond.10
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %65 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %65, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond

for.end.86:                                       ; preds = %for.cond
  %66 = load i8*, i8** %brush, align 8
  ret i8* %66
}

declare i32 @gimp_progress_update(double) #2

declare i32 @g_random_int() #2

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
