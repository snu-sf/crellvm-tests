; ModuleID = './app/core/gimpcoords.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }

; Function Attrs: nounwind uwtable
define void @gimp_coords_mix(double %amul, %struct._GimpCoords* %a, double %bmul, %struct._GimpCoords* %b, %struct._GimpCoords* %ret_val) #0 {
entry:
  %amul.addr = alloca double, align 8
  %a.addr = alloca %struct._GimpCoords*, align 8
  %bmul.addr = alloca double, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  %ret_val.addr = alloca %struct._GimpCoords*, align 8
  store double %amul, double* %amul.addr, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store double %bmul, double* %bmul.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  store %struct._GimpCoords* %ret_val, %struct._GimpCoords** %ret_val.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %tobool = icmp ne %struct._GimpCoords* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %amul.addr, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %mul = fmul double %1, %3
  %4 = load double, double* %bmul.addr, align 8
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i32 0, i32 0
  %6 = load double, double* %x1, align 8
  %mul2 = fmul double %4, %6
  %add = fadd double %mul, %mul2
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i32 0, i32 0
  store double %add, double* %x3, align 8
  %8 = load double, double* %amul.addr, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %mul4 = fmul double %8, %10
  %11 = load double, double* %bmul.addr, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 1
  %13 = load double, double* %y5, align 8
  %mul6 = fmul double %11, %13
  %add7 = fadd double %mul4, %mul6
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 1
  store double %add7, double* %y8, align 8
  %15 = load double, double* %amul.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 2
  %17 = load double, double* %pressure, align 8
  %mul9 = fmul double %15, %17
  %18 = load double, double* %bmul.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %pressure10 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 2
  %20 = load double, double* %pressure10, align 8
  %mul11 = fmul double %18, %20
  %add12 = fadd double %mul9, %mul11
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %pressure13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 2
  store double %add12, double* %pressure13, align 8
  %22 = load double, double* %amul.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 3
  %24 = load double, double* %xtilt, align 8
  %mul14 = fmul double %22, %24
  %25 = load double, double* %bmul.addr, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %xtilt15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 3
  %27 = load double, double* %xtilt15, align 8
  %mul16 = fmul double %25, %27
  %add17 = fadd double %mul14, %mul16
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %xtilt18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 3
  store double %add17, double* %xtilt18, align 8
  %29 = load double, double* %amul.addr, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 4
  %31 = load double, double* %ytilt, align 8
  %mul19 = fmul double %29, %31
  %32 = load double, double* %bmul.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %ytilt20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 4
  %34 = load double, double* %ytilt20, align 8
  %mul21 = fmul double %32, %34
  %add22 = fadd double %mul19, %mul21
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %ytilt23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 4
  store double %add22, double* %ytilt23, align 8
  %36 = load double, double* %amul.addr, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 5
  %38 = load double, double* %wheel, align 8
  %mul24 = fmul double %36, %38
  %39 = load double, double* %bmul.addr, align 8
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %wheel25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %40, i32 0, i32 5
  %41 = load double, double* %wheel25, align 8
  %mul26 = fmul double %39, %41
  %add27 = fadd double %mul24, %mul26
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %wheel28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %42, i32 0, i32 5
  store double %add27, double* %wheel28, align 8
  %43 = load double, double* %amul.addr, align 8
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 6
  %45 = load double, double* %velocity, align 8
  %mul29 = fmul double %43, %45
  %46 = load double, double* %bmul.addr, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %velocity30 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 6
  %48 = load double, double* %velocity30, align 8
  %mul31 = fmul double %46, %48
  %add32 = fadd double %mul29, %mul31
  %49 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %velocity33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %49, i32 0, i32 6
  store double %add32, double* %velocity33, align 8
  %50 = load double, double* %amul.addr, align 8
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %51, i32 0, i32 7
  %52 = load double, double* %direction, align 8
  %mul34 = fmul double %50, %52
  %53 = load double, double* %bmul.addr, align 8
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %direction35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 7
  %55 = load double, double* %direction35, align 8
  %mul36 = fmul double %53, %55
  %add37 = fadd double %mul34, %mul36
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %direction38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 7
  store double %add37, double* %direction38, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %57 = load double, double* %amul.addr, align 8
  %58 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x39 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %58, i32 0, i32 0
  %59 = load double, double* %x39, align 8
  %mul40 = fmul double %57, %59
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %x41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %60, i32 0, i32 0
  store double %mul40, double* %x41, align 8
  %61 = load double, double* %amul.addr, align 8
  %62 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y42 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %62, i32 0, i32 1
  %63 = load double, double* %y42, align 8
  %mul43 = fmul double %61, %63
  %64 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %y44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %64, i32 0, i32 1
  store double %mul43, double* %y44, align 8
  %65 = load double, double* %amul.addr, align 8
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i32 0, i32 2
  %67 = load double, double* %pressure45, align 8
  %mul46 = fmul double %65, %67
  %68 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %pressure47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %68, i32 0, i32 2
  store double %mul46, double* %pressure47, align 8
  %69 = load double, double* %amul.addr, align 8
  %70 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %70, i32 0, i32 3
  %71 = load double, double* %xtilt48, align 8
  %mul49 = fmul double %69, %71
  %72 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %xtilt50 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %72, i32 0, i32 3
  store double %mul49, double* %xtilt50, align 8
  %73 = load double, double* %amul.addr, align 8
  %74 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt51 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %74, i32 0, i32 4
  %75 = load double, double* %ytilt51, align 8
  %mul52 = fmul double %73, %75
  %76 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %ytilt53 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %76, i32 0, i32 4
  store double %mul52, double* %ytilt53, align 8
  %77 = load double, double* %amul.addr, align 8
  %78 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel54 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %78, i32 0, i32 5
  %79 = load double, double* %wheel54, align 8
  %mul55 = fmul double %77, %79
  %80 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %wheel56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %80, i32 0, i32 5
  store double %mul55, double* %wheel56, align 8
  %81 = load double, double* %amul.addr, align 8
  %82 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %82, i32 0, i32 6
  %83 = load double, double* %velocity57, align 8
  %mul58 = fmul double %81, %83
  %84 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %velocity59 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %84, i32 0, i32 6
  store double %mul58, double* %velocity59, align 8
  %85 = load double, double* %amul.addr, align 8
  %86 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction60 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %86, i32 0, i32 7
  %87 = load double, double* %direction60, align 8
  %mul61 = fmul double %85, %87
  %88 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_val.addr, align 8
  %direction62 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %88, i32 0, i32 7
  store double %mul61, double* %direction62, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_coords_average(%struct._GimpCoords* %a, %struct._GimpCoords* %b, %struct._GimpCoords* %ret_average) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  %ret_average.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  store %struct._GimpCoords* %ret_average, %struct._GimpCoords** %ret_average.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_average.addr, align 8
  call void @gimp_coords_mix(double 5.000000e-01, %struct._GimpCoords* %0, double 5.000000e-01, %struct._GimpCoords* %1, %struct._GimpCoords* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_coords_add(%struct._GimpCoords* %a, %struct._GimpCoords* %b, %struct._GimpCoords* %ret_add) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  %ret_add.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  store %struct._GimpCoords* %ret_add, %struct._GimpCoords** %ret_add.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_add.addr, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %0, double 1.000000e+00, %struct._GimpCoords* %1, %struct._GimpCoords* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_coords_difference(%struct._GimpCoords* %a, %struct._GimpCoords* %b, %struct._GimpCoords* %ret_difference) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  %ret_difference.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  store %struct._GimpCoords* %ret_difference, %struct._GimpCoords** %ret_difference.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_difference.addr, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %0, double -1.000000e+00, %struct._GimpCoords* %1, %struct._GimpCoords* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_coords_scale(double %f, %struct._GimpCoords* %a, %struct._GimpCoords* %ret_product) #0 {
entry:
  %f.addr = alloca double, align 8
  %a.addr = alloca %struct._GimpCoords*, align 8
  %ret_product.addr = alloca %struct._GimpCoords*, align 8
  store double %f, double* %f.addr, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %ret_product, %struct._GimpCoords** %ret_product.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_product.addr, align 8
  call void @gimp_coords_mix(double %0, %struct._GimpCoords* %1, double 0.000000e+00, %struct._GimpCoords* null, %struct._GimpCoords* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_coords_scalarprod(%struct._GimpCoords* %a, %struct._GimpCoords* %b) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 2
  %9 = load double, double* %pressure, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %pressure4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 2
  %11 = load double, double* %pressure4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 3
  %13 = load double, double* %xtilt, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %xtilt7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 3
  %15 = load double, double* %xtilt7, align 8
  %mul8 = fmul double %13, %15
  %add9 = fadd double %add6, %mul8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 4
  %17 = load double, double* %ytilt, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %ytilt10 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 4
  %19 = load double, double* %ytilt10, align 8
  %mul11 = fmul double %17, %19
  %add12 = fadd double %add9, %mul11
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i32 0, i32 5
  %21 = load double, double* %wheel, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %wheel13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i32 0, i32 5
  %23 = load double, double* %wheel13, align 8
  %mul14 = fmul double %21, %23
  %add15 = fadd double %add12, %mul14
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 6
  %25 = load double, double* %velocity, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %velocity16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 6
  %27 = load double, double* %velocity16, align 8
  %mul17 = fmul double %25, %27
  %add18 = fadd double %add15, %mul17
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 7
  %29 = load double, double* %direction, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %direction19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 7
  %31 = load double, double* %direction19, align 8
  %mul20 = fmul double %29, %31
  %add21 = fadd double %add18, %mul20
  ret double %add21
}

; Function Attrs: nounwind uwtable
define double @gimp_coords_length_squared(%struct._GimpCoords* %a) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %upscaled_a = alloca %struct._GimpCoords, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 0
  store double %1, double* %x1, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 1
  store double %3, double* %y2, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 2
  %5 = load double, double* %pressure, align 8
  %mul = fmul double %5, 2.560000e+02
  %pressure3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 2
  store double %mul, double* %pressure3, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 3
  %7 = load double, double* %xtilt, align 8
  %mul4 = fmul double %7, 2.560000e+02
  %xtilt5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 3
  store double %mul4, double* %xtilt5, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 4
  %9 = load double, double* %ytilt, align 8
  %mul6 = fmul double %9, 2.560000e+02
  %ytilt7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 4
  store double %mul6, double* %ytilt7, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 5
  %11 = load double, double* %wheel, align 8
  %mul8 = fmul double %11, 2.560000e+02
  %wheel9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 5
  store double %mul8, double* %wheel9, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 6
  %13 = load double, double* %velocity, align 8
  %mul10 = fmul double %13, 2.560000e+02
  %velocity11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 6
  store double %mul10, double* %velocity11, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 7
  %15 = load double, double* %direction, align 8
  %mul12 = fmul double %15, 2.560000e+02
  %direction13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %upscaled_a, i32 0, i32 7
  store double %mul12, double* %direction13, align 8
  %call = call double @gimp_coords_scalarprod(%struct._GimpCoords* %upscaled_a, %struct._GimpCoords* %upscaled_a)
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @gimp_coords_length(%struct._GimpCoords* %a) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %call = call double @gimp_coords_length_squared(%struct._GimpCoords* %0)
  %call1 = call double @sqrt(double %call) #2
  ret double %call1
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @gimp_coords_manhattan_dist(%struct._GimpCoords* %a, %struct._GimpCoords* %b) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  %dist = alloca double, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  store double 0.000000e+00, double* %dist, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 2
  %1 = load double, double* %pressure, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %pressure1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 2
  %3 = load double, double* %pressure1, align 8
  %sub = fsub double %1, %3
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 2
  %5 = load double, double* %pressure2, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %pressure3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 2
  %7 = load double, double* %pressure3, align 8
  %sub4 = fsub double %5, %7
  %sub5 = fsub double -0.000000e+00, %sub4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 2
  %9 = load double, double* %pressure6, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %pressure7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 2
  %11 = load double, double* %pressure7, align 8
  %sub8 = fsub double %9, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub5, %cond.true ], [ %sub8, %cond.false ]
  %12 = load double, double* %dist, align 8
  %add = fadd double %12, %cond
  store double %add, double* %dist, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 3
  %14 = load double, double* %xtilt, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %xtilt9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 3
  %16 = load double, double* %xtilt9, align 8
  %sub10 = fsub double %14, %16
  %cmp11 = fcmp olt double %sub10, 0.000000e+00
  br i1 %cmp11, label %cond.true.12, label %cond.false.17

cond.true.12:                                     ; preds = %cond.end
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 3
  %18 = load double, double* %xtilt13, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %xtilt14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 3
  %20 = load double, double* %xtilt14, align 8
  %sub15 = fsub double %18, %20
  %sub16 = fsub double -0.000000e+00, %sub15
  br label %cond.end.21

cond.false.17:                                    ; preds = %cond.end
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 3
  %22 = load double, double* %xtilt18, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %xtilt19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 3
  %24 = load double, double* %xtilt19, align 8
  %sub20 = fsub double %22, %24
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.17, %cond.true.12
  %cond22 = phi double [ %sub16, %cond.true.12 ], [ %sub20, %cond.false.17 ]
  %25 = load double, double* %dist, align 8
  %add23 = fadd double %25, %cond22
  store double %add23, double* %dist, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 4
  %27 = load double, double* %ytilt, align 8
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %ytilt24 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 4
  %29 = load double, double* %ytilt24, align 8
  %sub25 = fsub double %27, %29
  %cmp26 = fcmp olt double %sub25, 0.000000e+00
  br i1 %cmp26, label %cond.true.27, label %cond.false.32

cond.true.27:                                     ; preds = %cond.end.21
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 4
  %31 = load double, double* %ytilt28, align 8
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %ytilt29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %32, i32 0, i32 4
  %33 = load double, double* %ytilt29, align 8
  %sub30 = fsub double %31, %33
  %sub31 = fsub double -0.000000e+00, %sub30
  br label %cond.end.36

cond.false.32:                                    ; preds = %cond.end.21
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i32 0, i32 4
  %35 = load double, double* %ytilt33, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %ytilt34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i32 0, i32 4
  %37 = load double, double* %ytilt34, align 8
  %sub35 = fsub double %35, %37
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.32, %cond.true.27
  %cond37 = phi double [ %sub31, %cond.true.27 ], [ %sub35, %cond.false.32 ]
  %38 = load double, double* %dist, align 8
  %add38 = fadd double %38, %cond37
  store double %add38, double* %dist, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 5
  %40 = load double, double* %wheel, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %wheel39 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 5
  %42 = load double, double* %wheel39, align 8
  %sub40 = fsub double %40, %42
  %cmp41 = fcmp olt double %sub40, 0.000000e+00
  br i1 %cmp41, label %cond.true.42, label %cond.false.47

cond.true.42:                                     ; preds = %cond.end.36
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel43 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %43, i32 0, i32 5
  %44 = load double, double* %wheel43, align 8
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %wheel44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i32 0, i32 5
  %46 = load double, double* %wheel44, align 8
  %sub45 = fsub double %44, %46
  %sub46 = fsub double -0.000000e+00, %sub45
  br label %cond.end.51

cond.false.47:                                    ; preds = %cond.end.36
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 5
  %48 = load double, double* %wheel48, align 8
  %49 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %wheel49 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %49, i32 0, i32 5
  %50 = load double, double* %wheel49, align 8
  %sub50 = fsub double %48, %50
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.47, %cond.true.42
  %cond52 = phi double [ %sub46, %cond.true.42 ], [ %sub50, %cond.false.47 ]
  %51 = load double, double* %dist, align 8
  %add53 = fadd double %51, %cond52
  store double %add53, double* %dist, align 8
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %52, i32 0, i32 6
  %53 = load double, double* %velocity, align 8
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %velocity54 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 6
  %55 = load double, double* %velocity54, align 8
  %sub55 = fsub double %53, %55
  %cmp56 = fcmp olt double %sub55, 0.000000e+00
  br i1 %cmp56, label %cond.true.57, label %cond.false.62

cond.true.57:                                     ; preds = %cond.end.51
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity58 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 6
  %57 = load double, double* %velocity58, align 8
  %58 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %velocity59 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %58, i32 0, i32 6
  %59 = load double, double* %velocity59, align 8
  %sub60 = fsub double %57, %59
  %sub61 = fsub double -0.000000e+00, %sub60
  br label %cond.end.66

cond.false.62:                                    ; preds = %cond.end.51
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity63 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %60, i32 0, i32 6
  %61 = load double, double* %velocity63, align 8
  %62 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %velocity64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %62, i32 0, i32 6
  %63 = load double, double* %velocity64, align 8
  %sub65 = fsub double %61, %63
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.62, %cond.true.57
  %cond67 = phi double [ %sub61, %cond.true.57 ], [ %sub65, %cond.false.62 ]
  %64 = load double, double* %dist, align 8
  %add68 = fadd double %64, %cond67
  store double %add68, double* %dist, align 8
  %65 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %65, i32 0, i32 7
  %66 = load double, double* %direction, align 8
  %67 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %direction69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %67, i32 0, i32 7
  %68 = load double, double* %direction69, align 8
  %sub70 = fsub double %66, %68
  %cmp71 = fcmp olt double %sub70, 0.000000e+00
  br i1 %cmp71, label %cond.true.72, label %cond.false.77

cond.true.72:                                     ; preds = %cond.end.66
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction73 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %69, i32 0, i32 7
  %70 = load double, double* %direction73, align 8
  %71 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %direction74 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %71, i32 0, i32 7
  %72 = load double, double* %direction74, align 8
  %sub75 = fsub double %70, %72
  %sub76 = fsub double -0.000000e+00, %sub75
  br label %cond.end.81

cond.false.77:                                    ; preds = %cond.end.66
  %73 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction78 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %73, i32 0, i32 7
  %74 = load double, double* %direction78, align 8
  %75 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %direction79 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %75, i32 0, i32 7
  %76 = load double, double* %direction79, align 8
  %sub80 = fsub double %74, %76
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.77, %cond.true.72
  %cond82 = phi double [ %sub76, %cond.true.72 ], [ %sub80, %cond.false.77 ]
  %77 = load double, double* %dist, align 8
  %add83 = fadd double %77, %cond82
  store double %add83, double* %dist, align 8
  %78 = load double, double* %dist, align 8
  %mul = fmul double %78, 2.560000e+02
  store double %mul, double* %dist, align 8
  %79 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %79, i32 0, i32 0
  %80 = load double, double* %x, align 8
  %81 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %x84 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %81, i32 0, i32 0
  %82 = load double, double* %x84, align 8
  %sub85 = fsub double %80, %82
  %cmp86 = fcmp olt double %sub85, 0.000000e+00
  br i1 %cmp86, label %cond.true.87, label %cond.false.92

cond.true.87:                                     ; preds = %cond.end.81
  %83 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x88 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %83, i32 0, i32 0
  %84 = load double, double* %x88, align 8
  %85 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %x89 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %85, i32 0, i32 0
  %86 = load double, double* %x89, align 8
  %sub90 = fsub double %84, %86
  %sub91 = fsub double -0.000000e+00, %sub90
  br label %cond.end.96

cond.false.92:                                    ; preds = %cond.end.81
  %87 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x93 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %87, i32 0, i32 0
  %88 = load double, double* %x93, align 8
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %x94 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 0
  %90 = load double, double* %x94, align 8
  %sub95 = fsub double %88, %90
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.92, %cond.true.87
  %cond97 = phi double [ %sub91, %cond.true.87 ], [ %sub95, %cond.false.92 ]
  %91 = load double, double* %dist, align 8
  %add98 = fadd double %91, %cond97
  store double %add98, double* %dist, align 8
  %92 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %92, i32 0, i32 1
  %93 = load double, double* %y, align 8
  %94 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %y99 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %94, i32 0, i32 1
  %95 = load double, double* %y99, align 8
  %sub100 = fsub double %93, %95
  %cmp101 = fcmp olt double %sub100, 0.000000e+00
  br i1 %cmp101, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %cond.end.96
  %96 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y103 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %96, i32 0, i32 1
  %97 = load double, double* %y103, align 8
  %98 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %y104 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %98, i32 0, i32 1
  %99 = load double, double* %y104, align 8
  %sub105 = fsub double %97, %99
  %sub106 = fsub double -0.000000e+00, %sub105
  br label %cond.end.111

cond.false.107:                                   ; preds = %cond.end.96
  %100 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y108 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %100, i32 0, i32 1
  %101 = load double, double* %y108, align 8
  %102 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %y109 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %102, i32 0, i32 1
  %103 = load double, double* %y109, align 8
  %sub110 = fsub double %101, %103
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.107, %cond.true.102
  %cond112 = phi double [ %sub106, %cond.true.102 ], [ %sub110, %cond.false.107 ]
  %104 = load double, double* %dist, align 8
  %add113 = fadd double %104, %cond112
  store double %add113, double* %dist, align 8
  %105 = load double, double* %dist, align 8
  ret double %105
}

; Function Attrs: nounwind uwtable
define i32 @gimp_coords_equal(%struct._GimpCoords* %a, %struct._GimpCoords* %b) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %cmp = fcmp oeq double %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %cmp3 = fcmp oeq double %5, %7
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 2
  %9 = load double, double* %pressure, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %pressure5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 2
  %11 = load double, double* %pressure5, align 8
  %cmp6 = fcmp oeq double %9, %11
  br i1 %cmp6, label %land.lhs.true.7, label %land.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 3
  %13 = load double, double* %xtilt, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %xtilt8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 3
  %15 = load double, double* %xtilt8, align 8
  %cmp9 = fcmp oeq double %13, %15
  br i1 %cmp9, label %land.lhs.true.10, label %land.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 4
  %17 = load double, double* %ytilt, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %ytilt11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 4
  %19 = load double, double* %ytilt11, align 8
  %cmp12 = fcmp oeq double %17, %19
  br i1 %cmp12, label %land.lhs.true.13, label %land.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i32 0, i32 5
  %21 = load double, double* %wheel, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %wheel14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i32 0, i32 5
  %23 = load double, double* %wheel14, align 8
  %cmp15 = fcmp oeq double %21, %23
  br i1 %cmp15, label %land.lhs.true.16, label %land.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 6
  %25 = load double, double* %velocity, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %velocity17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 6
  %27 = load double, double* %velocity17, align 8
  %cmp18 = fcmp oeq double %25, %27
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.16
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 7
  %29 = load double, double* %direction, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %direction19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 7
  %31 = load double, double* %direction19, align 8
  %cmp20 = fcmp oeq double %29, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.16, %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %32 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.lhs.true.13 ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.7 ], [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp20, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define double @gimp_coords_direction(%struct._GimpCoords* %a, %struct._GimpCoords* %b) #0 {
entry:
  %a.addr = alloca %struct._GimpCoords*, align 8
  %b.addr = alloca %struct._GimpCoords*, align 8
  %direction = alloca double, align 8
  %delta_x = alloca double, align 8
  %delta_y = alloca double, align 8
  store %struct._GimpCoords* %a, %struct._GimpCoords** %a.addr, align 8
  store %struct._GimpCoords* %b, %struct._GimpCoords** %b.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %sub = fsub double %1, %3
  store double %sub, double* %delta_x, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %b.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %sub3 = fsub double %5, %7
  store double %sub3, double* %delta_y, align 8
  %8 = load double, double* %delta_x, align 8
  %cmp = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load double, double* %delta_y, align 8
  %cmp4 = fcmp oeq double %9, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %a.addr, align 8
  %direction5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 7
  %11 = load double, double* %direction5, align 8
  store double %11, double* %direction, align 8
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load double, double* %delta_x, align 8
  %cmp6 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.else
  %13 = load double, double* %delta_y, align 8
  %cmp8 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.7
  store double 2.500000e-01, double* %direction, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.then.7
  store double 7.500000e-01, double* %direction, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.28

if.else.11:                                       ; preds = %if.else
  %14 = load double, double* %delta_y, align 8
  %cmp12 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.else.11
  %15 = load double, double* %delta_x, align 8
  %cmp14 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.then.13
  store double 0.000000e+00, double* %direction, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %if.then.13
  store double 5.000000e-01, double* %direction, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.27

if.else.18:                                       ; preds = %if.else.11
  %16 = load double, double* %delta_y, align 8
  %mul = fmul double -1.000000e+00, %16
  %17 = load double, double* %delta_x, align 8
  %div = fdiv double %mul, %17
  %call = call double @atan(double %div) #2
  %div19 = fdiv double %call, 0x401921FB54442D18
  store double %div19, double* %direction, align 8
  %18 = load double, double* %delta_x, align 8
  %cmp20 = fcmp ogt double %18, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  %19 = load double, double* %direction, align 8
  %add = fadd double %19, 5.000000e-01
  store double %add, double* %direction, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.18
  %20 = load double, double* %direction, align 8
  %cmp23 = fcmp olt double %20, 0.000000e+00
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %21 = load double, double* %direction, align 8
  %add25 = fadd double %21, 1.000000e+00
  store double %add25, double* %direction, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  %22 = load double, double* %direction, align 8
  ret double %22
}

; Function Attrs: nounwind
declare double @atan(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
