; ModuleID = './plug-ins/selection-to-path/vector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_type = type { double, double }
%struct.real_coordinate_type = type { double, double }
%struct.coordinate_type = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"m > 0.0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"vector.c\00", align 1
@__PRETTY_FUNCTION__.normalize = private unnamed_addr constant [41 x i8] c"vector_type normalize(const vector_type)\00", align 1

; Function Attrs: nounwind uwtable
define { double, double } @make_vector(double %c.coerce0, double %c.coerce1) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %c = alloca %struct.real_coordinate_type, align 8
  %v = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.real_coordinate_type* %c to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %c.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %c.coerce1, double* %2
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  store double %3, double* %dx, align 8
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c, i32 0, i32 1
  %4 = load double, double* %y, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  store double %4, double* %dy, align 8
  %5 = bitcast %struct.vector_type* %retval to i8*
  %6 = bitcast %struct.vector_type* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct.vector_type* %retval to { double, double }*
  %8 = load { double, double }, { double, double }* %7, align 8
  ret { double, double } %8
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define { double, double } @vector_to_point(double %v.coerce0, double %v.coerce1) #0 {
entry:
  %retval = alloca %struct.real_coordinate_type, align 8
  %v = alloca %struct.vector_type, align 8
  %coord = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.vector_type* %v to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v.coerce1, double* %2
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %3 = load double, double* %dx, align 8
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord, i32 0, i32 0
  store double %3, double* %x, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %4 = load double, double* %dy, align 8
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord, i32 0, i32 1
  store double %4, double* %y, align 8
  %5 = bitcast %struct.real_coordinate_type* %retval to i8*
  %6 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct.real_coordinate_type* %retval to { double, double }*
  %8 = load { double, double }, { double, double }* %7, align 8
  ret { double, double } %8
}

; Function Attrs: nounwind uwtable
define double @magnitude(double %v.coerce0, double %v.coerce1) #0 {
entry:
  %v = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.vector_type* %v to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v.coerce1, double* %2
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %3 = load double, double* %dx, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %4 = load double, double* %dy, align 8
  %call = call double @hypot(double %3, double %4) #1
  ret double %call
}

; Function Attrs: nounwind
declare double @hypot(double, double) #2

; Function Attrs: nounwind uwtable
define { double, double } @normalize(double %v.coerce0, double %v.coerce1) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %v = alloca %struct.vector_type, align 8
  %new_v = alloca %struct.vector_type, align 8
  %m = alloca double, align 8
  %0 = bitcast %struct.vector_type* %v to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v.coerce1, double* %2
  %3 = bitcast %struct.vector_type* %v to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  %5 = load double, double* %4, align 1
  %6 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  %7 = load double, double* %6, align 1
  %call = call double @magnitude(double %5, double %7)
  store double %call, double* %m, align 8
  %8 = load double, double* %m, align 8
  %cmp = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.normalize, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %10 = load double, double* %dx, align 8
  %11 = load double, double* %m, align 8
  %div = fdiv double %10, %11
  %dx1 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 0
  store double %div, double* %dx1, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %12 = load double, double* %dy, align 8
  %13 = load double, double* %m, align 8
  %div2 = fdiv double %12, %13
  %dy3 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 1
  store double %div2, double* %dy3, align 8
  %14 = bitcast %struct.vector_type* %retval to i8*
  %15 = bitcast %struct.vector_type* %new_v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.vector_type* %retval to { double, double }*
  %17 = load { double, double }, { double, double }* %16, align 8
  ret { double, double } %17
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define { double, double } @Vadd(double %v1.coerce0, double %v1.coerce1, double %v2.coerce0, double %v2.coerce1) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %v1 = alloca %struct.vector_type, align 8
  %v2 = alloca %struct.vector_type, align 8
  %new_v = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.vector_type* %v1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v1.coerce1, double* %2
  %3 = bitcast %struct.vector_type* %v2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %v2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %v2.coerce1, double* %5
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v1, i32 0, i32 0
  %6 = load double, double* %dx, align 8
  %dx1 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v2, i32 0, i32 0
  %7 = load double, double* %dx1, align 8
  %add = fadd double %6, %7
  %dx2 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 0
  store double %add, double* %dx2, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v1, i32 0, i32 1
  %8 = load double, double* %dy, align 8
  %dy3 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v2, i32 0, i32 1
  %9 = load double, double* %dy3, align 8
  %add4 = fadd double %8, %9
  %dy5 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 1
  store double %add4, double* %dy5, align 8
  %10 = bitcast %struct.vector_type* %retval to i8*
  %11 = bitcast %struct.vector_type* %new_v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.vector_type* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind uwtable
define double @Vdot(double %v1.coerce0, double %v1.coerce1, double %v2.coerce0, double %v2.coerce1) #0 {
entry:
  %v1 = alloca %struct.vector_type, align 8
  %v2 = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.vector_type* %v1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v1.coerce1, double* %2
  %3 = bitcast %struct.vector_type* %v2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %v2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %v2.coerce1, double* %5
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v1, i32 0, i32 0
  %6 = load double, double* %dx, align 8
  %dx1 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v2, i32 0, i32 0
  %7 = load double, double* %dx1, align 8
  %mul = fmul double %6, %7
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v1, i32 0, i32 1
  %8 = load double, double* %dy, align 8
  %dy2 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v2, i32 0, i32 1
  %9 = load double, double* %dy2, align 8
  %mul3 = fmul double %8, %9
  %add = fadd double %mul, %mul3
  ret double %add
}

; Function Attrs: nounwind uwtable
define { double, double } @Vmult_scalar(double %v.coerce0, double %v.coerce1, double %r) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %v = alloca %struct.vector_type, align 8
  %r.addr = alloca double, align 8
  %new_v = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.vector_type* %v to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v.coerce1, double* %2
  store double %r, double* %r.addr, align 8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %3 = load double, double* %dx, align 8
  %4 = load double, double* %r.addr, align 8
  %mul = fmul double %3, %4
  %dx1 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 0
  store double %mul, double* %dx1, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %5 = load double, double* %dy, align 8
  %6 = load double, double* %r.addr, align 8
  %mul2 = fmul double %5, %6
  %dy3 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 1
  store double %mul2, double* %dy3, align 8
  %7 = bitcast %struct.vector_type* %retval to i8*
  %8 = bitcast %struct.vector_type* %new_v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = bitcast %struct.vector_type* %retval to { double, double }*
  %10 = load { double, double }, { double, double }* %9, align 8
  ret { double, double } %10
}

; Function Attrs: nounwind uwtable
define double @Vangle(double %in_vector.coerce0, double %in_vector.coerce1, double %out_vector.coerce0, double %out_vector.coerce1) #0 {
entry:
  %in_vector = alloca %struct.vector_type, align 8
  %out_vector = alloca %struct.vector_type, align 8
  %v1 = alloca %struct.vector_type, align 8
  %v2 = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.vector_type* %in_vector to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %in_vector.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %in_vector.coerce1, double* %2
  %3 = bitcast %struct.vector_type* %out_vector to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %out_vector.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %out_vector.coerce1, double* %5
  %6 = bitcast %struct.vector_type* %in_vector to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  %8 = load double, double* %7, align 1
  %9 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  %10 = load double, double* %9, align 1
  %call = call { double, double } @normalize(double %8, double %10)
  %11 = bitcast %struct.vector_type* %v1 to { double, double }*
  %12 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 0
  %13 = extractvalue { double, double } %call, 0
  store double %13, double* %12, align 8
  %14 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 1
  %15 = extractvalue { double, double } %call, 1
  store double %15, double* %14, align 8
  %16 = bitcast %struct.vector_type* %out_vector to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = load double, double* %17, align 1
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = load double, double* %19, align 1
  %call1 = call { double, double } @normalize(double %18, double %20)
  %21 = bitcast %struct.vector_type* %v2 to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = extractvalue { double, double } %call1, 0
  store double %23, double* %22, align 8
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = extractvalue { double, double } %call1, 1
  store double %25, double* %24, align 8
  %26 = bitcast %struct.vector_type* %v2 to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = load double, double* %27, align 1
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = load double, double* %29, align 1
  %31 = bitcast %struct.vector_type* %v1 to { double, double }*
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = load double, double* %32, align 1
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = load double, double* %34, align 1
  %call2 = call double @Vdot(double %28, double %30, double %33, double %35)
  %call3 = call double @my_acosd(double %call2)
  ret double %call3
}

declare double @my_acosd(double) #4

; Function Attrs: nounwind uwtable
define { double, double } @Vadd_point(double %c.coerce0, double %c.coerce1, double %v.coerce0, double %v.coerce1) #0 {
entry:
  %retval = alloca %struct.real_coordinate_type, align 8
  %c = alloca %struct.real_coordinate_type, align 8
  %v = alloca %struct.vector_type, align 8
  %new_c = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.real_coordinate_type* %c to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %c.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %c.coerce1, double* %2
  %3 = bitcast %struct.vector_type* %v to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %v.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %v.coerce1, double* %5
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %7 = load double, double* %dx, align 8
  %add = fadd double %6, %7
  %x1 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %new_c, i32 0, i32 0
  store double %add, double* %x1, align 8
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %9 = load double, double* %dy, align 8
  %add2 = fadd double %8, %9
  %y3 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %new_c, i32 0, i32 1
  store double %add2, double* %y3, align 8
  %10 = bitcast %struct.real_coordinate_type* %retval to i8*
  %11 = bitcast %struct.real_coordinate_type* %new_c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.real_coordinate_type* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind uwtable
define { double, double } @Vsubtract_point(double %c.coerce0, double %c.coerce1, double %v.coerce0, double %v.coerce1) #0 {
entry:
  %retval = alloca %struct.real_coordinate_type, align 8
  %c = alloca %struct.real_coordinate_type, align 8
  %v = alloca %struct.vector_type, align 8
  %new_c = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.real_coordinate_type* %c to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %c.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %c.coerce1, double* %2
  %3 = bitcast %struct.vector_type* %v to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %v.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %v.coerce1, double* %5
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %7 = load double, double* %dx, align 8
  %sub = fsub double %6, %7
  %x1 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %new_c, i32 0, i32 0
  store double %sub, double* %x1, align 8
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %9 = load double, double* %dy, align 8
  %sub2 = fsub double %8, %9
  %y3 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %new_c, i32 0, i32 1
  store double %sub2, double* %y3, align 8
  %10 = bitcast %struct.real_coordinate_type* %retval to i8*
  %11 = bitcast %struct.real_coordinate_type* %new_c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.real_coordinate_type* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind uwtable
define i64 @Vadd_int_point(i64 %c.coerce, double %v.coerce0, double %v.coerce1) #0 {
entry:
  %retval = alloca %struct.coordinate_type, align 4
  %c = alloca %struct.coordinate_type, align 8
  %v = alloca %struct.vector_type, align 8
  %a = alloca %struct.coordinate_type, align 4
  %0 = bitcast %struct.coordinate_type* %c to i64*
  store i64 %c.coerce, i64* %0, align 8
  %1 = bitcast %struct.vector_type* %v to { double, double }*
  %2 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 0
  store double %v.coerce0, double* %2
  %3 = getelementptr { double, double }, { double, double }* %1, i32 0, i32 1
  store double %v.coerce1, double* %3
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  %4 = load i32, i32* %x, align 4
  %conv = sitofp i32 %4 to double
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %5 = load double, double* %dx, align 8
  %add = fadd double %conv, %5
  %conv1 = fptosi double %add to i32
  %conv2 = sitofp i32 %conv1 to double
  %x3 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  %6 = load i32, i32* %x3, align 4
  %conv4 = sitofp i32 %6 to double
  %dx5 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %7 = load double, double* %dx5, align 8
  %add6 = fadd double %conv4, %7
  %cmp = fcmp ogt double %add6, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %x8 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  %8 = load i32, i32* %x8, align 4
  %conv9 = sitofp i32 %8 to double
  %dx10 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %9 = load double, double* %dx10, align 8
  %add11 = fadd double %conv9, %9
  %cmp12 = fcmp olt double %add11, 0.000000e+00
  %cond = select i1 %cmp12, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond14 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv15 = sitofp i32 %cond14 to double
  %mul = fmul double 5.000000e-01, %conv15
  %add16 = fadd double %conv2, %mul
  %conv17 = fptosi double %add16 to i32
  %x18 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %a, i32 0, i32 0
  store i32 %conv17, i32* %x18, align 4
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %conv19 = sitofp i32 %10 to double
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %11 = load double, double* %dy, align 8
  %add20 = fadd double %conv19, %11
  %conv21 = fptosi double %add20 to i32
  %conv22 = sitofp i32 %conv21 to double
  %y23 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  %12 = load i32, i32* %y23, align 4
  %conv24 = sitofp i32 %12 to double
  %dy25 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %13 = load double, double* %dy25, align 8
  %add26 = fadd double %conv24, %13
  %cmp27 = fcmp ogt double %add26, 0.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end
  br label %cond.end.38

cond.false.30:                                    ; preds = %cond.end
  %y31 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  %14 = load i32, i32* %y31, align 4
  %conv32 = sitofp i32 %14 to double
  %dy33 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %15 = load double, double* %dy33, align 8
  %add34 = fadd double %conv32, %15
  %cmp35 = fcmp olt double %add34, 0.000000e+00
  %cond37 = select i1 %cmp35, i32 -1, i32 0
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.30, %cond.true.29
  %cond39 = phi i32 [ 1, %cond.true.29 ], [ %cond37, %cond.false.30 ]
  %conv40 = sitofp i32 %cond39 to double
  %mul41 = fmul double 5.000000e-01, %conv40
  %add42 = fadd double %conv22, %mul41
  %conv43 = fptosi double %add42 to i32
  %y44 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %a, i32 0, i32 1
  store i32 %conv43, i32* %y44, align 4
  %16 = bitcast %struct.coordinate_type* %retval to i8*
  %17 = bitcast %struct.coordinate_type* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 4, i1 false)
  %18 = bitcast %struct.coordinate_type* %retval to i64*
  %19 = load i64, i64* %18, align 4
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define { double, double } @Vabs(double %v.coerce0, double %v.coerce1) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %v = alloca %struct.vector_type, align 8
  %new_v = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.vector_type* %v to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v.coerce1, double* %2
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  %3 = load double, double* %dx, align 8
  %call = call double @fabs(double %3) #7
  %dx1 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 0
  store double %call, double* %dx1, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  %4 = load double, double* %dy, align 8
  %call2 = call double @fabs(double %4) #7
  %dy3 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %new_v, i32 0, i32 1
  store double %call2, double* %dy3, align 8
  %5 = bitcast %struct.vector_type* %retval to i8*
  %6 = bitcast %struct.vector_type* %new_v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct.vector_type* %retval to { double, double }*
  %8 = load { double, double }, { double, double }* %7, align 8
  ret { double, double } %8
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define { double, double } @Psubtract(double %c1.coerce0, double %c1.coerce1, double %c2.coerce0, double %c2.coerce1) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %c1 = alloca %struct.real_coordinate_type, align 8
  %c2 = alloca %struct.real_coordinate_type, align 8
  %v = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.real_coordinate_type* %c1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %c1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %c1.coerce1, double* %2
  %3 = bitcast %struct.real_coordinate_type* %c2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %c2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %c2.coerce1, double* %5
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c1, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c2, i32 0, i32 0
  %7 = load double, double* %x1, align 8
  %sub = fsub double %6, %7
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  store double %sub, double* %dx, align 8
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c1, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %c2, i32 0, i32 1
  %9 = load double, double* %y2, align 8
  %sub3 = fsub double %8, %9
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  store double %sub3, double* %dy, align 8
  %10 = bitcast %struct.vector_type* %retval to i8*
  %11 = bitcast %struct.vector_type* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.vector_type* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind uwtable
define { double, double } @IPsubtract(i64 %coord1.coerce, i64 %coord2.coerce) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %coord1 = alloca %struct.coordinate_type, align 8
  %coord2 = alloca %struct.coordinate_type, align 8
  %v = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.coordinate_type* %coord1 to i64*
  store i64 %coord1.coerce, i64* %0, align 8
  %1 = bitcast %struct.coordinate_type* %coord2 to i64*
  store i64 %coord2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %coord1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %coord2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  %conv = sitofp i32 %sub to double
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 0
  store double %conv, double* %dx, align 8
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %coord1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %y2 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %coord2, i32 0, i32 1
  %5 = load i32, i32* %y2, align 4
  %sub3 = sub nsw i32 %4, %5
  %conv4 = sitofp i32 %sub3 to double
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %v, i32 0, i32 1
  store double %conv4, double* %dy, align 8
  %6 = bitcast %struct.vector_type* %retval to i8*
  %7 = bitcast %struct.vector_type* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %struct.vector_type* %retval to { double, double }*
  %9 = load { double, double }, { double, double }* %8, align 8
  ret { double, double } %9
}

; Function Attrs: nounwind uwtable
define i64 @IPsubtractP(i64 %c1.coerce, i64 %c2.coerce) #0 {
entry:
  %retval = alloca %struct.coordinate_type, align 4
  %c1 = alloca %struct.coordinate_type, align 8
  %c2 = alloca %struct.coordinate_type, align 8
  %c = alloca %struct.coordinate_type, align 4
  %0 = bitcast %struct.coordinate_type* %c1 to i64*
  store i64 %c1.coerce, i64* %0, align 8
  %1 = bitcast %struct.coordinate_type* %c2 to i64*
  store i64 %c2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  %x2 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  store i32 %sub, i32* %x2, align 4
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %y3 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c2, i32 0, i32 1
  %5 = load i32, i32* %y3, align 4
  %sub4 = sub nsw i32 %4, %5
  %y5 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  store i32 %sub4, i32* %y5, align 4
  %6 = bitcast %struct.coordinate_type* %retval to i8*
  %7 = bitcast %struct.coordinate_type* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 4, i1 false)
  %8 = bitcast %struct.coordinate_type* %retval to i64*
  %9 = load i64, i64* %8, align 4
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @IPadd(i64 %c1.coerce, i64 %c2.coerce) #0 {
entry:
  %retval = alloca %struct.coordinate_type, align 4
  %c1 = alloca %struct.coordinate_type, align 8
  %c2 = alloca %struct.coordinate_type, align 8
  %c = alloca %struct.coordinate_type, align 4
  %0 = bitcast %struct.coordinate_type* %c1 to i64*
  store i64 %c1.coerce, i64* %0, align 8
  %1 = bitcast %struct.coordinate_type* %c2 to i64*
  store i64 %c2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %add = add nsw i32 %2, %3
  %x2 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  store i32 %add, i32* %x2, align 4
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %y3 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c2, i32 0, i32 1
  %5 = load i32, i32* %y3, align 4
  %add4 = add nsw i32 %4, %5
  %y5 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  store i32 %add4, i32* %y5, align 4
  %6 = bitcast %struct.coordinate_type* %retval to i8*
  %7 = bitcast %struct.coordinate_type* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 4, i1 false)
  %8 = bitcast %struct.coordinate_type* %retval to i64*
  %9 = load i64, i64* %8, align 4
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @IPmult_scalar(i64 %c.coerce, i32 %i) #0 {
entry:
  %retval = alloca %struct.coordinate_type, align 4
  %c = alloca %struct.coordinate_type, align 8
  %i.addr = alloca i32, align 4
  %a = alloca %struct.coordinate_type, align 4
  %0 = bitcast %struct.coordinate_type* %c to i64*
  store i64 %c.coerce, i64* %0, align 8
  store i32 %i, i32* %i.addr, align 4
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %1, %2
  %x1 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %a, i32 0, i32 0
  store i32 %mul, i32* %x1, align 4
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* %i.addr, align 4
  %mul2 = mul nsw i32 %3, %4
  %y3 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %a, i32 0, i32 1
  store i32 %mul2, i32* %y3, align 4
  %5 = bitcast %struct.coordinate_type* %retval to i8*
  %6 = bitcast %struct.coordinate_type* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 4, i1 false)
  %7 = bitcast %struct.coordinate_type* %retval to i64*
  %8 = load i64, i64* %7, align 4
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define { double, double } @IPmult_real(i64 %c.coerce, double %r) #0 {
entry:
  %retval = alloca %struct.real_coordinate_type, align 8
  %c = alloca %struct.coordinate_type, align 8
  %r.addr = alloca double, align 8
  %a = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.coordinate_type* %c to i64*
  store i64 %c.coerce, i64* %0, align 8
  store double %r, double* %r.addr, align 8
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* %r.addr, align 8
  %mul = fmul double %conv, %2
  %x1 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %a, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load double, double* %r.addr, align 8
  %mul3 = fmul double %conv2, %4
  %y4 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %a, i32 0, i32 1
  store double %mul3, double* %y4, align 8
  %5 = bitcast %struct.real_coordinate_type* %retval to i8*
  %6 = bitcast %struct.real_coordinate_type* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct.real_coordinate_type* %retval to { double, double }*
  %8 = load { double, double }, { double, double }* %7, align 8
  ret { double, double } %8
}

; Function Attrs: nounwind uwtable
define i32 @IPequal(i64 %c1.coerce, i64 %c2.coerce) #0 {
entry:
  %c1 = alloca %struct.coordinate_type, align 8
  %c2 = alloca %struct.coordinate_type, align 8
  %0 = bitcast %struct.coordinate_type* %c1 to i64*
  store i64 %c1.coerce, i64* %0, align 8
  %1 = bitcast %struct.coordinate_type* %c2 to i64*
  store i64 %c2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %y2 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c2, i32 0, i32 1
  %5 = load i32, i32* %y2, align 4
  %cmp3 = icmp eq i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
