; ModuleID = './libgimpmath/gimpvector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpVector2 = type { double, double }
%struct._GimpVector3 = type { double, double, double }

@gimp_vector2_zero = internal constant %struct._GimpVector2 zeroinitializer, align 8
@gimp_vector3_zero = internal constant %struct._GimpVector3 zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_new(double %x, double %y) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %vector = alloca %struct._GimpVector2, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  store double %0, double* %x1, align 8
  %1 = load double, double* %y.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  store double %1, double* %y2, align 8
  %2 = bitcast %struct._GimpVector2* %retval to i8*
  %3 = bitcast %struct._GimpVector2* %vector to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %5 = load { double, double }, { double, double }* %4, align 8
  ret { double, double } %5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gimp_vector2_set(%struct._GimpVector2* %vector, double %x, double %y) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector2*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._GimpVector2* %vector, %struct._GimpVector2** %vector.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %1, i32 0, i32 0
  store double %0, double* %x1, align 8
  %2 = load double, double* %y.addr, align 8
  %3 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %3, i32 0, i32 1
  store double %2, double* %y2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_vector2_length(%struct._GimpVector2* %vector) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector2*, align 8
  store %struct._GimpVector2* %vector, %struct._GimpVector2** %vector.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %call = call double @sqrt(double %add) #1
  ret double %call
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define double @gimp_vector2_length_val(double %vector.coerce0, double %vector.coerce1) #0 {
entry:
  %vector = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector.coerce1, double* %2
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %4 = load double, double* %x1, align 8
  %mul = fmul double %3, %4
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %6 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %6
  %add = fadd double %mul, %mul3
  %call = call double @sqrt(double %add) #1
  ret double %call
}

; Function Attrs: nounwind uwtable
define void @gimp_vector2_mul(%struct._GimpVector2* %vector, double %factor) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector2*, align 8
  %factor.addr = alloca double, align 8
  store %struct._GimpVector2* %vector, %struct._GimpVector2** %vector.addr, align 8
  store double %factor, double* %factor.addr, align 8
  %0 = load double, double* %factor.addr, align 8
  %1 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %mul = fmul double %2, %0
  store double %mul, double* %x, align 8
  %3 = load double, double* %factor.addr, align 8
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul1 = fmul double %5, %3
  store double %mul1, double* %y, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_mul_val(double %vector.coerce0, double %vector.coerce1, double %factor) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector = alloca %struct._GimpVector2, align 8
  %factor.addr = alloca double, align 8
  %result = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector.coerce1, double* %2
  store double %factor, double* %factor.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %4 = load double, double* %factor.addr, align 8
  %mul = fmul double %3, %4
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load double, double* %factor.addr, align 8
  %mul2 = fmul double %5, %6
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %7 = bitcast %struct._GimpVector2* %retval to i8*
  %8 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %10 = load { double, double }, { double, double }* %9, align 8
  ret { double, double } %10
}

; Function Attrs: nounwind uwtable
define void @gimp_vector2_normalize(%struct._GimpVector2* %vector) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector2*, align 8
  %len = alloca double, align 8
  store %struct._GimpVector2* %vector, %struct._GimpVector2** %vector.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %call = call double @gimp_vector2_length(%struct._GimpVector2* %0)
  store double %call, double* %len, align 8
  %1 = load double, double* %len, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %len, align 8
  %div = fdiv double 1.000000e+00, %2
  store double %div, double* %len, align 8
  %3 = load double, double* %len, align 8
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %mul = fmul double %5, %3
  store double %mul, double* %x, align 8
  %6 = load double, double* %len, align 8
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %7, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %mul1 = fmul double %8, %6
  store double %mul1, double* %y, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %10 = bitcast %struct._GimpVector2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct._GimpVector2* @gimp_vector2_zero to i8*), i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_normalize_val(double %vector.coerce0, double %vector.coerce1) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector = alloca %struct._GimpVector2, align 8
  %normalized = alloca %struct._GimpVector2, align 8
  %len = alloca double, align 8
  %0 = bitcast %struct._GimpVector2* %vector to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %vector to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  %5 = load double, double* %4, align 1
  %6 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  %7 = load double, double* %6, align 1
  %call = call double @gimp_vector2_length_val(double %5, double %7)
  store double %call, double* %len, align 8
  %8 = load double, double* %len, align 8
  %cmp = fcmp une double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load double, double* %len, align 8
  %div = fdiv double 1.000000e+00, %9
  store double %div, double* %len, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load double, double* %len, align 8
  %mul = fmul double %10, %11
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %normalized, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %13 = load double, double* %len, align 8
  %mul2 = fmul double %12, %13
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %normalized, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %14 = bitcast %struct._GimpVector2* %retval to i8*
  %15 = bitcast %struct._GimpVector2* %normalized to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  br label %return

if.else:                                          ; preds = %entry
  %16 = bitcast %struct._GimpVector2* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct._GimpVector2* @gimp_vector2_zero to i8*), i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %17 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %18 = load { double, double }, { double, double }* %17, align 8
  ret { double, double } %18
}

; Function Attrs: nounwind uwtable
define void @gimp_vector2_neg(%struct._GimpVector2* %vector) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector2*, align 8
  store %struct._GimpVector2* %vector, %struct._GimpVector2** %vector.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %mul = fmul double %1, -1.000000e+00
  store double %mul, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %mul1 = fmul double %3, -1.000000e+00
  store double %mul1, double* %y, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_neg_val(double %vector.coerce0, double %vector.coerce1) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector = alloca %struct._GimpVector2, align 8
  %result = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector.coerce1, double* %2
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %mul = fmul double %3, -1.000000e+00
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %4 = load double, double* %y, align 8
  %mul2 = fmul double %4, -1.000000e+00
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %5 = bitcast %struct._GimpVector2* %retval to i8*
  %6 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %8 = load { double, double }, { double, double }* %7, align 8
  ret { double, double } %8
}

; Function Attrs: nounwind uwtable
define void @gimp_vector2_add(%struct._GimpVector2* %result, %struct._GimpVector2* %vector1, %struct._GimpVector2* %vector2) #0 {
entry:
  %result.addr = alloca %struct._GimpVector2*, align 8
  %vector1.addr = alloca %struct._GimpVector2*, align 8
  %vector2.addr = alloca %struct._GimpVector2*, align 8
  store %struct._GimpVector2* %result, %struct._GimpVector2** %result.addr, align 8
  store %struct._GimpVector2* %vector1, %struct._GimpVector2** %vector1.addr, align 8
  store %struct._GimpVector2* %vector2, %struct._GimpVector2** %vector2.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %add = fadd double %1, %3
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %result.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 0
  store double %add, double* %x2, align 8
  %5 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %5, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %7, i32 0, i32 1
  %8 = load double, double* %y3, align 8
  %add4 = fadd double %6, %8
  %9 = load %struct._GimpVector2*, %struct._GimpVector2** %result.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %9, i32 0, i32 1
  store double %add4, double* %y5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_add_val(double %vector1.coerce0, double %vector1.coerce1, double %vector2.coerce0, double %vector2.coerce1) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector1 = alloca %struct._GimpVector2, align 8
  %vector2 = alloca %struct._GimpVector2, align 8
  %result = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector1.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %vector2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %vector2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %vector2.coerce1, double* %5
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 0
  %7 = load double, double* %x1, align 8
  %add = fadd double %6, %7
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %add, double* %x2, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 1
  %9 = load double, double* %y3, align 8
  %add4 = fadd double %8, %9
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %add4, double* %y5, align 8
  %10 = bitcast %struct._GimpVector2* %retval to i8*
  %11 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind uwtable
define void @gimp_vector2_sub(%struct._GimpVector2* %result, %struct._GimpVector2* %vector1, %struct._GimpVector2* %vector2) #0 {
entry:
  %result.addr = alloca %struct._GimpVector2*, align 8
  %vector1.addr = alloca %struct._GimpVector2*, align 8
  %vector2.addr = alloca %struct._GimpVector2*, align 8
  store %struct._GimpVector2* %result, %struct._GimpVector2** %result.addr, align 8
  store %struct._GimpVector2* %vector1, %struct._GimpVector2** %vector1.addr, align 8
  store %struct._GimpVector2* %vector2, %struct._GimpVector2** %vector2.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %sub = fsub double %1, %3
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %result.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 0
  store double %sub, double* %x2, align 8
  %5 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %5, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %7, i32 0, i32 1
  %8 = load double, double* %y3, align 8
  %sub4 = fsub double %6, %8
  %9 = load %struct._GimpVector2*, %struct._GimpVector2** %result.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %9, i32 0, i32 1
  store double %sub4, double* %y5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_sub_val(double %vector1.coerce0, double %vector1.coerce1, double %vector2.coerce0, double %vector2.coerce1) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector1 = alloca %struct._GimpVector2, align 8
  %vector2 = alloca %struct._GimpVector2, align 8
  %result = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector1.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %vector2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %vector2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %vector2.coerce1, double* %5
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 0
  %7 = load double, double* %x1, align 8
  %sub = fsub double %6, %7
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %sub, double* %x2, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 1
  %9 = load double, double* %y3, align 8
  %sub4 = fsub double %8, %9
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %sub4, double* %y5, align 8
  %10 = bitcast %struct._GimpVector2* %retval to i8*
  %11 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %13 = load { double, double }, { double, double }* %12, align 8
  ret { double, double } %13
}

; Function Attrs: nounwind uwtable
define double @gimp_vector2_inner_product(%struct._GimpVector2* %vector1, %struct._GimpVector2* %vector2) #0 {
entry:
  %vector1.addr = alloca %struct._GimpVector2*, align 8
  %vector2.addr = alloca %struct._GimpVector2*, align 8
  store %struct._GimpVector2* %vector1, %struct._GimpVector2** %vector1.addr, align 8
  store %struct._GimpVector2* %vector2, %struct._GimpVector2** %vector2.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  ret double %add
}

; Function Attrs: nounwind uwtable
define double @gimp_vector2_inner_product_val(double %vector1.coerce0, double %vector1.coerce1, double %vector2.coerce0, double %vector2.coerce1) #0 {
entry:
  %vector1 = alloca %struct._GimpVector2, align 8
  %vector2 = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector1.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %vector2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %vector2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %vector2.coerce1, double* %5
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 0
  %7 = load double, double* %x1, align 8
  %mul = fmul double %6, %7
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 1
  %9 = load double, double* %y2, align 8
  %mul3 = fmul double %8, %9
  %add = fadd double %mul, %mul3
  ret double %add
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_cross_product(%struct._GimpVector2* %vector1, %struct._GimpVector2* %vector2) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector1.addr = alloca %struct._GimpVector2*, align 8
  %vector2.addr = alloca %struct._GimpVector2*, align 8
  %normal = alloca %struct._GimpVector2, align 8
  store %struct._GimpVector2* %vector1, %struct._GimpVector2** %vector1.addr, align 8
  store %struct._GimpVector2* %vector2, %struct._GimpVector2** %vector2.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 1
  %5 = load double, double* %y1, align 8
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %6, i32 0, i32 0
  %7 = load double, double* %x2, align 8
  %mul3 = fmul double %5, %7
  %sub = fsub double %mul, %mul3
  %x4 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %normal, i32 0, i32 0
  store double %sub, double* %x4, align 8
  %8 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %8, i32 0, i32 1
  %9 = load double, double* %y5, align 8
  %10 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %x6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %10, i32 0, i32 0
  %11 = load double, double* %x6, align 8
  %mul7 = fmul double %9, %11
  %12 = load %struct._GimpVector2*, %struct._GimpVector2** %vector1.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %12, i32 0, i32 0
  %13 = load double, double* %x8, align 8
  %14 = load %struct._GimpVector2*, %struct._GimpVector2** %vector2.addr, align 8
  %y9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %14, i32 0, i32 1
  %15 = load double, double* %y9, align 8
  %mul10 = fmul double %13, %15
  %sub11 = fsub double %mul7, %mul10
  %y12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %normal, i32 0, i32 1
  store double %sub11, double* %y12, align 8
  %16 = bitcast %struct._GimpVector2* %retval to i8*
  %17 = bitcast %struct._GimpVector2* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %19 = load { double, double }, { double, double }* %18, align 8
  ret { double, double } %19
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_cross_product_val(double %vector1.coerce0, double %vector1.coerce1, double %vector2.coerce0, double %vector2.coerce1) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector1 = alloca %struct._GimpVector2, align 8
  %vector2 = alloca %struct._GimpVector2, align 8
  %normal = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector1.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %vector2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %vector2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %vector2.coerce1, double* %5
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %mul = fmul double %6, %7
  %y1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 1
  %8 = load double, double* %y1, align 8
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 0
  %9 = load double, double* %x2, align 8
  %mul3 = fmul double %8, %9
  %sub = fsub double %mul, %mul3
  %x4 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %normal, i32 0, i32 0
  store double %sub, double* %x4, align 8
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 1
  %10 = load double, double* %y5, align 8
  %x6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 0
  %11 = load double, double* %x6, align 8
  %mul7 = fmul double %10, %11
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector1, i32 0, i32 0
  %12 = load double, double* %x8, align 8
  %y9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector2, i32 0, i32 1
  %13 = load double, double* %y9, align 8
  %mul10 = fmul double %12, %13
  %sub11 = fsub double %mul7, %mul10
  %y12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %normal, i32 0, i32 1
  store double %sub11, double* %y12, align 8
  %14 = bitcast %struct._GimpVector2* %retval to i8*
  %15 = bitcast %struct._GimpVector2* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %17 = load { double, double }, { double, double }* %16, align 8
  ret { double, double } %17
}

; Function Attrs: nounwind uwtable
define void @gimp_vector2_rotate(%struct._GimpVector2* %vector, double %alpha) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector2*, align 8
  %alpha.addr = alloca double, align 8
  %result = alloca %struct._GimpVector2, align 8
  store %struct._GimpVector2* %vector, %struct._GimpVector2** %vector.addr, align 8
  store double %alpha, double* %alpha.addr, align 8
  %0 = load double, double* %alpha.addr, align 8
  %call = call double @cos(double %0) #1
  %1 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %mul = fmul double %call, %2
  %3 = load double, double* %alpha.addr, align 8
  %call1 = call double @sin(double %3) #1
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul2 = fmul double %call1, %5
  %add = fadd double %mul, %mul2
  %x3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %add, double* %x3, align 8
  %6 = load double, double* %alpha.addr, align 8
  %call4 = call double @cos(double %6) #1
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %7, i32 0, i32 1
  %8 = load double, double* %y5, align 8
  %mul6 = fmul double %call4, %8
  %9 = load double, double* %alpha.addr, align 8
  %call7 = call double @sin(double %9) #1
  %10 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %10, i32 0, i32 0
  %11 = load double, double* %x8, align 8
  %mul9 = fmul double %call7, %11
  %sub = fsub double %mul6, %mul9
  %y10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %sub, double* %y10, align 8
  %12 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %13 = bitcast %struct._GimpVector2* %12 to i8*
  %14 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_rotate_val(double %vector.coerce0, double %vector.coerce1, double %alpha) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector = alloca %struct._GimpVector2, align 8
  %alpha.addr = alloca double, align 8
  %result = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector.coerce1, double* %2
  store double %alpha, double* %alpha.addr, align 8
  %3 = load double, double* %alpha.addr, align 8
  %call = call double @cos(double %3) #1
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %mul = fmul double %call, %4
  %5 = load double, double* %alpha.addr, align 8
  %call1 = call double @sin(double %5) #1
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %mul2 = fmul double %call1, %6
  %add = fadd double %mul, %mul2
  %x3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %add, double* %x3, align 8
  %7 = load double, double* %alpha.addr, align 8
  %call4 = call double @cos(double %7) #1
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %8 = load double, double* %y5, align 8
  %mul6 = fmul double %call4, %8
  %9 = load double, double* %alpha.addr, align 8
  %call7 = call double @sin(double %9) #1
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %10 = load double, double* %x8, align 8
  %mul9 = fmul double %call7, %10
  %sub = fsub double %mul6, %mul9
  %y10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %sub, double* %y10, align 8
  %11 = bitcast %struct._GimpVector2* %retval to i8*
  %12 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  %13 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %14 = load { double, double }, { double, double }* %13, align 8
  ret { double, double } %14
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_normal(%struct._GimpVector2* %vector) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector.addr = alloca %struct._GimpVector2*, align 8
  %result = alloca %struct._GimpVector2, align 8
  store %struct._GimpVector2* %vector, %struct._GimpVector2** %vector.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %sub = fsub double -0.000000e+00, %1
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %sub, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %vector.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %3, double* %y2, align 8
  call void @gimp_vector2_normalize(%struct._GimpVector2* %result)
  %4 = bitcast %struct._GimpVector2* %retval to i8*
  %5 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %6 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %7 = load { double, double }, { double, double }* %6, align 8
  ret { double, double } %7
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_vector2_normal_val(double %vector.coerce0, double %vector.coerce1) #0 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %vector = alloca %struct._GimpVector2, align 8
  %result = alloca %struct._GimpVector2, align 8
  %0 = bitcast %struct._GimpVector2* %vector to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %vector.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %vector.coerce1, double* %2
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %sub = fsub double -0.000000e+00, %3
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %sub, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vector, i32 0, i32 0
  %4 = load double, double* %x1, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %4, double* %y2, align 8
  call void @gimp_vector2_normalize(%struct._GimpVector2* %result)
  %5 = bitcast %struct._GimpVector2* %retval to i8*
  %6 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %8 = load { double, double }, { double, double }* %7, align 8
  ret { double, double } %8
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_new(%struct._GimpVector3* noalias sret %agg.result, double %x, double %y, double %z) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  %vector = alloca %struct._GimpVector3, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  store double %0, double* %x1, align 8
  %1 = load double, double* %y.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  store double %1, double* %y2, align 8
  %2 = load double, double* %z.addr, align 8
  %z3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  store double %2, double* %z3, align 8
  %3 = bitcast %struct._GimpVector3* %agg.result to i8*
  %4 = bitcast %struct._GimpVector3* %vector to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_set(%struct._GimpVector3* %vector, double %x, double %y, double %z) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector3*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  store %struct._GimpVector3* %vector, %struct._GimpVector3** %vector.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %1, i32 0, i32 0
  store double %0, double* %x1, align 8
  %2 = load double, double* %y.addr, align 8
  %3 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %3, i32 0, i32 1
  store double %2, double* %y2, align 8
  %4 = load double, double* %z.addr, align 8
  %5 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %5, i32 0, i32 2
  store double %4, double* %z3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_vector3_length(%struct._GimpVector3* %vector) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector3*, align 8
  store %struct._GimpVector3* %vector, %struct._GimpVector3** %vector.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  %call = call double @sqrt(double %add6) #1
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @gimp_vector3_length_val(%struct._GimpVector3* byval align 8 %vector) #0 {
entry:
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  %5 = load double, double* %z4, align 8
  %mul5 = fmul double %4, %5
  %add6 = fadd double %add, %mul5
  %call = call double @sqrt(double %add6) #1
  ret double %call
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_mul(%struct._GimpVector3* %vector, double %factor) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector3*, align 8
  %factor.addr = alloca double, align 8
  store %struct._GimpVector3* %vector, %struct._GimpVector3** %vector.addr, align 8
  store double %factor, double* %factor.addr, align 8
  %0 = load double, double* %factor.addr, align 8
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %mul = fmul double %2, %0
  store double %mul, double* %x, align 8
  %3 = load double, double* %factor.addr, align 8
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul1 = fmul double %5, %3
  store double %mul1, double* %y, align 8
  %6 = load double, double* %factor.addr, align 8
  %7 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %7, i32 0, i32 2
  %8 = load double, double* %z, align 8
  %mul2 = fmul double %8, %6
  store double %mul2, double* %z, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_mul_val(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* byval align 8 %vector, double %factor) #0 {
entry:
  %factor.addr = alloca double, align 8
  %result = alloca %struct._GimpVector3, align 8
  store double %factor, double* %factor.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load double, double* %factor.addr, align 8
  %mul = fmul double %0, %1
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %3 = load double, double* %factor.addr, align 8
  %mul2 = fmul double %2, %3
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %5 = load double, double* %factor.addr, align 8
  %mul4 = fmul double %4, %5
  %z5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 2
  store double %mul4, double* %z5, align 8
  %6 = bitcast %struct._GimpVector3* %agg.result to i8*
  %7 = bitcast %struct._GimpVector3* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_normalize(%struct._GimpVector3* %vector) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector3*, align 8
  %len = alloca double, align 8
  store %struct._GimpVector3* %vector, %struct._GimpVector3** %vector.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %call = call double @gimp_vector3_length(%struct._GimpVector3* %0)
  store double %call, double* %len, align 8
  %1 = load double, double* %len, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %len, align 8
  %div = fdiv double 1.000000e+00, %2
  store double %div, double* %len, align 8
  %3 = load double, double* %len, align 8
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %mul = fmul double %5, %3
  store double %mul, double* %x, align 8
  %6 = load double, double* %len, align 8
  %7 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %7, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %mul1 = fmul double %8, %6
  store double %mul1, double* %y, align 8
  %9 = load double, double* %len, align 8
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 2
  %11 = load double, double* %z, align 8
  %mul2 = fmul double %11, %9
  store double %mul2, double* %z, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %13 = bitcast %struct._GimpVector3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct._GimpVector3* @gimp_vector3_zero to i8*), i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_normalize_val(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* byval align 8 %vector) #0 {
entry:
  %result = alloca %struct._GimpVector3, align 8
  %len = alloca double, align 8
  %call = call double @gimp_vector3_length_val(%struct._GimpVector3* byval align 8 %vector)
  store double %call, double* %len, align 8
  %0 = load double, double* %len, align 8
  %cmp = fcmp une double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %len, align 8
  %div = fdiv double 1.000000e+00, %1
  store double %div, double* %len, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %3 = load double, double* %len, align 8
  %mul = fmul double %2, %3
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  %4 = load double, double* %y, align 8
  %5 = load double, double* %len, align 8
  %mul2 = fmul double %4, %5
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load double, double* %len, align 8
  %mul4 = fmul double %6, %7
  %z5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 2
  store double %mul4, double* %z5, align 8
  %8 = bitcast %struct._GimpVector3* %agg.result to i8*
  %9 = bitcast %struct._GimpVector3* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  br label %return

if.else:                                          ; preds = %entry
  %10 = bitcast %struct._GimpVector3* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct._GimpVector3* @gimp_vector3_zero to i8*), i64 24, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_neg(%struct._GimpVector3* %vector) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector3*, align 8
  store %struct._GimpVector3* %vector, %struct._GimpVector3** %vector.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %mul = fmul double %1, -1.000000e+00
  store double %mul, double* %x, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %mul1 = fmul double %3, -1.000000e+00
  store double %mul1, double* %y, align 8
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 2
  %5 = load double, double* %z, align 8
  %mul2 = fmul double %5, -1.000000e+00
  store double %mul2, double* %z, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_neg_val(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* byval align 8 %vector) #0 {
entry:
  %result = alloca %struct._GimpVector3, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %mul = fmul double %0, -1.000000e+00
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %mul2 = fmul double %1, -1.000000e+00
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %mul4 = fmul double %2, -1.000000e+00
  %z5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 2
  store double %mul4, double* %z5, align 8
  %3 = bitcast %struct._GimpVector3* %agg.result to i8*
  %4 = bitcast %struct._GimpVector3* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_add(%struct._GimpVector3* %result, %struct._GimpVector3* %vector1, %struct._GimpVector3* %vector2) #0 {
entry:
  %result.addr = alloca %struct._GimpVector3*, align 8
  %vector1.addr = alloca %struct._GimpVector3*, align 8
  %vector2.addr = alloca %struct._GimpVector3*, align 8
  store %struct._GimpVector3* %result, %struct._GimpVector3** %result.addr, align 8
  store %struct._GimpVector3* %vector1, %struct._GimpVector3** %vector1.addr, align 8
  store %struct._GimpVector3* %vector2, %struct._GimpVector3** %vector2.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %add = fadd double %1, %3
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %result.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 0
  store double %add, double* %x2, align 8
  %5 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %5, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %7 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %7, i32 0, i32 1
  %8 = load double, double* %y3, align 8
  %add4 = fadd double %6, %8
  %9 = load %struct._GimpVector3*, %struct._GimpVector3** %result.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %9, i32 0, i32 1
  store double %add4, double* %y5, align 8
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 2
  %11 = load double, double* %z, align 8
  %12 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %z6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %12, i32 0, i32 2
  %13 = load double, double* %z6, align 8
  %add7 = fadd double %11, %13
  %14 = load %struct._GimpVector3*, %struct._GimpVector3** %result.addr, align 8
  %z8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %14, i32 0, i32 2
  store double %add7, double* %z8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_add_val(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* byval align 8 %vector1, %struct._GimpVector3* byval align 8 %vector2) #0 {
entry:
  %result = alloca %struct._GimpVector3, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %add = fadd double %0, %1
  %x2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %add, double* %x2, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 1
  %3 = load double, double* %y3, align 8
  %add4 = fadd double %2, %3
  %y5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %add4, double* %y5, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 2
  %5 = load double, double* %z6, align 8
  %add7 = fadd double %4, %5
  %z8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 2
  store double %add7, double* %z8, align 8
  %6 = bitcast %struct._GimpVector3* %agg.result to i8*
  %7 = bitcast %struct._GimpVector3* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_sub(%struct._GimpVector3* %result, %struct._GimpVector3* %vector1, %struct._GimpVector3* %vector2) #0 {
entry:
  %result.addr = alloca %struct._GimpVector3*, align 8
  %vector1.addr = alloca %struct._GimpVector3*, align 8
  %vector2.addr = alloca %struct._GimpVector3*, align 8
  store %struct._GimpVector3* %result, %struct._GimpVector3** %result.addr, align 8
  store %struct._GimpVector3* %vector1, %struct._GimpVector3** %vector1.addr, align 8
  store %struct._GimpVector3* %vector2, %struct._GimpVector3** %vector2.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %sub = fsub double %1, %3
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %result.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 0
  store double %sub, double* %x2, align 8
  %5 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %5, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %7 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %7, i32 0, i32 1
  %8 = load double, double* %y3, align 8
  %sub4 = fsub double %6, %8
  %9 = load %struct._GimpVector3*, %struct._GimpVector3** %result.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %9, i32 0, i32 1
  store double %sub4, double* %y5, align 8
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 2
  %11 = load double, double* %z, align 8
  %12 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %z6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %12, i32 0, i32 2
  %13 = load double, double* %z6, align 8
  %sub7 = fsub double %11, %13
  %14 = load %struct._GimpVector3*, %struct._GimpVector3** %result.addr, align 8
  %z8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %14, i32 0, i32 2
  store double %sub7, double* %z8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_sub_val(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* byval align 8 %vector1, %struct._GimpVector3* byval align 8 %vector2) #0 {
entry:
  %result = alloca %struct._GimpVector3, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %sub = fsub double %0, %1
  %x2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %sub, double* %x2, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 1
  %3 = load double, double* %y3, align 8
  %sub4 = fsub double %2, %3
  %y5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %sub4, double* %y5, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 2
  %5 = load double, double* %z6, align 8
  %sub7 = fsub double %4, %5
  %z8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 2
  store double %sub7, double* %z8, align 8
  %6 = bitcast %struct._GimpVector3* %agg.result to i8*
  %7 = bitcast %struct._GimpVector3* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_vector3_inner_product(%struct._GimpVector3* %vector1, %struct._GimpVector3* %vector2) #0 {
entry:
  %vector1.addr = alloca %struct._GimpVector3*, align 8
  %vector2.addr = alloca %struct._GimpVector3*, align 8
  store %struct._GimpVector3* %vector1, %struct._GimpVector3** %vector1.addr, align 8
  store %struct._GimpVector3* %vector2, %struct._GimpVector3** %vector2.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  ret double %add6
}

; Function Attrs: nounwind uwtable
define double @gimp_vector3_inner_product_val(%struct._GimpVector3* byval align 8 %vector1, %struct._GimpVector3* byval align 8 %vector2) #0 {
entry:
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 2
  %5 = load double, double* %z4, align 8
  %mul5 = fmul double %4, %5
  %add6 = fadd double %add, %mul5
  ret double %add6
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_cross_product(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* %vector1, %struct._GimpVector3* %vector2) #0 {
entry:
  %vector1.addr = alloca %struct._GimpVector3*, align 8
  %vector2.addr = alloca %struct._GimpVector3*, align 8
  %normal = alloca %struct._GimpVector3, align 8
  store %struct._GimpVector3* %vector1, %struct._GimpVector3** %vector1.addr, align 8
  store %struct._GimpVector3* %vector2, %struct._GimpVector3** %vector2.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 2
  %3 = load double, double* %z, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %z1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 2
  %5 = load double, double* %z1, align 8
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %sub = fsub double %mul, %mul3
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %normal, i32 0, i32 0
  store double %sub, double* %x, align 8
  %8 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %8, i32 0, i32 2
  %9 = load double, double* %z4, align 8
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %x5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 0
  %11 = load double, double* %x5, align 8
  %mul6 = fmul double %9, %11
  %12 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %x7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %12, i32 0, i32 0
  %13 = load double, double* %x7, align 8
  %14 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %z8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %14, i32 0, i32 2
  %15 = load double, double* %z8, align 8
  %mul9 = fmul double %13, %15
  %sub10 = fsub double %mul6, %mul9
  %y11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %normal, i32 0, i32 1
  store double %sub10, double* %y11, align 8
  %16 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %x12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %16, i32 0, i32 0
  %17 = load double, double* %x12, align 8
  %18 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %y13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %18, i32 0, i32 1
  %19 = load double, double* %y13, align 8
  %mul14 = fmul double %17, %19
  %20 = load %struct._GimpVector3*, %struct._GimpVector3** %vector1.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %20, i32 0, i32 1
  %21 = load double, double* %y15, align 8
  %22 = load %struct._GimpVector3*, %struct._GimpVector3** %vector2.addr, align 8
  %x16 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %22, i32 0, i32 0
  %23 = load double, double* %x16, align 8
  %mul17 = fmul double %21, %23
  %sub18 = fsub double %mul14, %mul17
  %z19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %normal, i32 0, i32 2
  store double %sub18, double* %z19, align 8
  %24 = bitcast %struct._GimpVector3* %agg.result to i8*
  %25 = bitcast %struct._GimpVector3* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_cross_product_val(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* byval align 8 %vector1, %struct._GimpVector3* byval align 8 %vector2) #0 {
entry:
  %normal = alloca %struct._GimpVector3, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 1
  %0 = load double, double* %y, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 2
  %1 = load double, double* %z, align 8
  %mul = fmul double %0, %1
  %z1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 2
  %2 = load double, double* %z1, align 8
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %sub = fsub double %mul, %mul3
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %normal, i32 0, i32 0
  store double %sub, double* %x, align 8
  %z4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 2
  %4 = load double, double* %z4, align 8
  %x5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 0
  %5 = load double, double* %x5, align 8
  %mul6 = fmul double %4, %5
  %x7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 0
  %6 = load double, double* %x7, align 8
  %z8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 2
  %7 = load double, double* %z8, align 8
  %mul9 = fmul double %6, %7
  %sub10 = fsub double %mul6, %mul9
  %y11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %normal, i32 0, i32 1
  store double %sub10, double* %y11, align 8
  %x12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 0
  %8 = load double, double* %x12, align 8
  %y13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 1
  %9 = load double, double* %y13, align 8
  %mul14 = fmul double %8, %9
  %y15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector1, i32 0, i32 1
  %10 = load double, double* %y15, align 8
  %x16 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector2, i32 0, i32 0
  %11 = load double, double* %x16, align 8
  %mul17 = fmul double %10, %11
  %sub18 = fsub double %mul14, %mul17
  %z19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %normal, i32 0, i32 2
  store double %sub18, double* %z19, align 8
  %12 = bitcast %struct._GimpVector3* %agg.result to i8*
  %13 = bitcast %struct._GimpVector3* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_rotate(%struct._GimpVector3* %vector, double %alpha, double %beta, double %gamma) #0 {
entry:
  %vector.addr = alloca %struct._GimpVector3*, align 8
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %gamma.addr = alloca double, align 8
  %s = alloca %struct._GimpVector3, align 8
  %t = alloca %struct._GimpVector3, align 8
  store %struct._GimpVector3* %vector, %struct._GimpVector3** %vector.addr, align 8
  store double %alpha, double* %alpha.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store double %gamma, double* %gamma.addr, align 8
  %0 = load double, double* %alpha.addr, align 8
  %call = call double @cos(double %0) #1
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %mul = fmul double %call, %2
  %3 = load double, double* %alpha.addr, align 8
  %call1 = call double @sin(double %3) #1
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul2 = fmul double %call1, %5
  %add = fadd double %mul, %mul2
  %x3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 0
  store double %add, double* %x3, align 8
  %6 = load double, double* %alpha.addr, align 8
  %call4 = call double @cos(double %6) #1
  %7 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %7, i32 0, i32 1
  %8 = load double, double* %y5, align 8
  %mul6 = fmul double %call4, %8
  %9 = load double, double* %alpha.addr, align 8
  %call7 = call double @sin(double %9) #1
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 0
  %11 = load double, double* %x8, align 8
  %mul9 = fmul double %call7, %11
  %sub = fsub double %mul6, %mul9
  %y10 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 1
  store double %sub, double* %y10, align 8
  %12 = bitcast %struct._GimpVector3* %t to i8*
  %13 = bitcast %struct._GimpVector3* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  %14 = load double, double* %beta.addr, align 8
  %call11 = call double @cos(double %14) #1
  %x12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 0
  %15 = load double, double* %x12, align 8
  %mul13 = fmul double %call11, %15
  %16 = load double, double* %beta.addr, align 8
  %call14 = call double @sin(double %16) #1
  %17 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %17, i32 0, i32 2
  %18 = load double, double* %z, align 8
  %mul15 = fmul double %call14, %18
  %add16 = fadd double %mul13, %mul15
  %19 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %x17 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %19, i32 0, i32 0
  store double %add16, double* %x17, align 8
  %20 = load double, double* %beta.addr, align 8
  %call18 = call double @cos(double %20) #1
  %21 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %21, i32 0, i32 2
  %22 = load double, double* %z19, align 8
  %mul20 = fmul double %call18, %22
  %23 = load double, double* %beta.addr, align 8
  %call21 = call double @sin(double %23) #1
  %x22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 0
  %24 = load double, double* %x22, align 8
  %mul23 = fmul double %call21, %24
  %sub24 = fsub double %mul20, %mul23
  %z25 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 2
  store double %sub24, double* %z25, align 8
  %25 = load double, double* %gamma.addr, align 8
  %call26 = call double @cos(double %25) #1
  %y27 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 1
  %26 = load double, double* %y27, align 8
  %mul28 = fmul double %call26, %26
  %27 = load double, double* %gamma.addr, align 8
  %call29 = call double @sin(double %27) #1
  %z30 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 2
  %28 = load double, double* %z30, align 8
  %mul31 = fmul double %call29, %28
  %add32 = fadd double %mul28, %mul31
  %29 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %y33 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %29, i32 0, i32 1
  store double %add32, double* %y33, align 8
  %30 = load double, double* %gamma.addr, align 8
  %call34 = call double @cos(double %30) #1
  %z35 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 2
  %31 = load double, double* %z35, align 8
  %mul36 = fmul double %call34, %31
  %32 = load double, double* %gamma.addr, align 8
  %call37 = call double @sin(double %32) #1
  %y38 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 1
  %33 = load double, double* %y38, align 8
  %mul39 = fmul double %call37, %33
  %sub40 = fsub double %mul36, %mul39
  %34 = load %struct._GimpVector3*, %struct._GimpVector3** %vector.addr, align 8
  %z41 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %34, i32 0, i32 2
  store double %sub40, double* %z41, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector3_rotate_val(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* byval align 8 %vector, double %alpha, double %beta, double %gamma) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %gamma.addr = alloca double, align 8
  %s = alloca %struct._GimpVector3, align 8
  %t = alloca %struct._GimpVector3, align 8
  %result = alloca %struct._GimpVector3, align 8
  store double %alpha, double* %alpha.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store double %gamma, double* %gamma.addr, align 8
  %0 = load double, double* %alpha.addr, align 8
  %call = call double @cos(double %0) #1
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %mul = fmul double %call, %1
  %2 = load double, double* %alpha.addr, align 8
  %call1 = call double @sin(double %2) #1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %mul2 = fmul double %call1, %3
  %add = fadd double %mul, %mul2
  %x3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 0
  store double %add, double* %x3, align 8
  %4 = load double, double* %alpha.addr, align 8
  %call4 = call double @cos(double %4) #1
  %y5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 1
  %5 = load double, double* %y5, align 8
  %mul6 = fmul double %call4, %5
  %6 = load double, double* %alpha.addr, align 8
  %call7 = call double @sin(double %6) #1
  %x8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 0
  %7 = load double, double* %x8, align 8
  %mul9 = fmul double %call7, %7
  %sub = fsub double %mul6, %mul9
  %y10 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 1
  store double %sub, double* %y10, align 8
  %8 = bitcast %struct._GimpVector3* %t to i8*
  %9 = bitcast %struct._GimpVector3* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %10 = load double, double* %beta.addr, align 8
  %call11 = call double @cos(double %10) #1
  %x12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 0
  %11 = load double, double* %x12, align 8
  %mul13 = fmul double %call11, %11
  %12 = load double, double* %beta.addr, align 8
  %call14 = call double @sin(double %12) #1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  %13 = load double, double* %z, align 8
  %mul15 = fmul double %call14, %13
  %add16 = fadd double %mul13, %mul15
  %x17 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %add16, double* %x17, align 8
  %14 = load double, double* %beta.addr, align 8
  %call18 = call double @cos(double %14) #1
  %z19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vector, i32 0, i32 2
  %15 = load double, double* %z19, align 8
  %mul20 = fmul double %call18, %15
  %16 = load double, double* %beta.addr, align 8
  %call21 = call double @sin(double %16) #1
  %x22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 0
  %17 = load double, double* %x22, align 8
  %mul23 = fmul double %call21, %17
  %sub24 = fsub double %mul20, %mul23
  %z25 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 2
  store double %sub24, double* %z25, align 8
  %18 = load double, double* %gamma.addr, align 8
  %call26 = call double @cos(double %18) #1
  %y27 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 1
  %19 = load double, double* %y27, align 8
  %mul28 = fmul double %call26, %19
  %20 = load double, double* %gamma.addr, align 8
  %call29 = call double @sin(double %20) #1
  %z30 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 2
  %21 = load double, double* %z30, align 8
  %mul31 = fmul double %call29, %21
  %add32 = fadd double %mul28, %mul31
  %y33 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %add32, double* %y33, align 8
  %22 = load double, double* %gamma.addr, align 8
  %call34 = call double @cos(double %22) #1
  %z35 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 2
  %23 = load double, double* %z35, align 8
  %mul36 = fmul double %call34, %23
  %24 = load double, double* %gamma.addr, align 8
  %call37 = call double @sin(double %24) #1
  %y38 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %t, i32 0, i32 1
  %25 = load double, double* %y38, align 8
  %mul39 = fmul double %call37, %25
  %sub40 = fsub double %mul36, %mul39
  %z41 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 2
  store double %sub40, double* %z41, align 8
  %26 = bitcast %struct._GimpVector3* %agg.result to i8*
  %27 = bitcast %struct._GimpVector3* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector_2d_to_3d(i32 %sx, i32 %sy, i32 %w, i32 %h, i32 %x, i32 %y, %struct._GimpVector3* %vp, %struct._GimpVector3* %p) #0 {
entry:
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %vp.addr = alloca %struct._GimpVector3*, align 8
  %p.addr = alloca %struct._GimpVector3*, align 8
  %t = alloca double, align 8
  store i32 %sx, i32* %sx.addr, align 4
  store i32 %sy, i32* %sy.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpVector3* %vp, %struct._GimpVector3** %vp.addr, align 8
  store %struct._GimpVector3* %p, %struct._GimpVector3** %p.addr, align 8
  store double 0.000000e+00, double* %t, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 2
  %3 = load double, double* %z, align 8
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %z2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 2
  %5 = load double, double* %z2, align 8
  %sub = fsub double %3, %5
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %z3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %6, i32 0, i32 2
  %7 = load double, double* %z3, align 8
  %div = fdiv double %sub, %7
  store double %div, double* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load double, double* %t, align 8
  %cmp4 = fcmp une double %8, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %x6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %9, i32 0, i32 0
  %10 = load double, double* %x6, align 8
  %11 = load double, double* %t, align 8
  %12 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %x7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %12, i32 0, i32 0
  %13 = load double, double* %x7, align 8
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %sx.addr, align 4
  %sub8 = sub nsw i32 %14, %15
  %conv = sitofp i32 %sub8 to double
  %16 = load i32, i32* %w.addr, align 4
  %conv9 = sitofp i32 %16 to double
  %div10 = fdiv double %conv, %conv9
  %sub11 = fsub double %13, %div10
  %mul = fmul double %11, %sub11
  %add = fadd double %10, %mul
  %17 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %x12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %17, i32 0, i32 0
  store double %add, double* %x12, align 8
  %18 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %y13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %18, i32 0, i32 1
  %19 = load double, double* %y13, align 8
  %20 = load double, double* %t, align 8
  %21 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %y14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %21, i32 0, i32 1
  %22 = load double, double* %y14, align 8
  %23 = load i32, i32* %y.addr, align 4
  %24 = load i32, i32* %sy.addr, align 4
  %sub15 = sub nsw i32 %23, %24
  %conv16 = sitofp i32 %sub15 to double
  %25 = load i32, i32* %h.addr, align 4
  %conv17 = sitofp i32 %25 to double
  %div18 = fdiv double %conv16, %conv17
  %sub19 = fsub double %22, %div18
  %mul20 = fmul double %20, %sub19
  %add21 = fadd double %19, %mul20
  %26 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %y22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %26, i32 0, i32 1
  store double %add21, double* %y22, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %sx.addr, align 4
  %sub23 = sub nsw i32 %27, %28
  %conv24 = sitofp i32 %sub23 to double
  %29 = load i32, i32* %w.addr, align 4
  %conv25 = sitofp i32 %29 to double
  %div26 = fdiv double %conv24, %conv25
  %30 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %x27 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %30, i32 0, i32 0
  store double %div26, double* %x27, align 8
  %31 = load i32, i32* %y.addr, align 4
  %32 = load i32, i32* %sy.addr, align 4
  %sub28 = sub nsw i32 %31, %32
  %conv29 = sitofp i32 %sub28 to double
  %33 = load i32, i32* %h.addr, align 4
  %conv30 = sitofp i32 %33 to double
  %div31 = fdiv double %conv29, %conv30
  %34 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %y32 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %34, i32 0, i32 1
  store double %div31, double* %y32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector_2d_to_3d_val(%struct._GimpVector3* noalias sret %agg.result, i32 %sx, i32 %sy, i32 %w, i32 %h, i32 %x, i32 %y, %struct._GimpVector3* byval align 8 %vp, %struct._GimpVector3* byval align 8 %p) #0 {
entry:
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %result = alloca %struct._GimpVector3, align 8
  %t = alloca double, align 8
  store i32 %sx, i32* %sx.addr, align 4
  store i32 %sy, i32* %sy.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store double 0.000000e+00, double* %t, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %0 = load double, double* %x1, align 8
  %cmp = fcmp une double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 2
  %1 = load double, double* %z, align 8
  %z2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %2 = load double, double* %z2, align 8
  %sub = fsub double %1, %2
  %z3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %3 = load double, double* %z3, align 8
  %div = fdiv double %sub, %3
  store double %div, double* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load double, double* %t, align 8
  %cmp4 = fcmp une double %4, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %x6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %5 = load double, double* %x6, align 8
  %6 = load double, double* %t, align 8
  %x7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %7 = load double, double* %x7, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %sx.addr, align 4
  %sub8 = sub nsw i32 %8, %9
  %conv = sitofp i32 %sub8 to double
  %10 = load i32, i32* %w.addr, align 4
  %conv9 = sitofp i32 %10 to double
  %div10 = fdiv double %conv, %conv9
  %sub11 = fsub double %7, %div10
  %mul = fmul double %6, %sub11
  %add = fadd double %5, %mul
  %x12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %add, double* %x12, align 8
  %y13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  %11 = load double, double* %y13, align 8
  %12 = load double, double* %t, align 8
  %y14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  %13 = load double, double* %y14, align 8
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* %sy.addr, align 4
  %sub15 = sub nsw i32 %14, %15
  %conv16 = sitofp i32 %sub15 to double
  %16 = load i32, i32* %h.addr, align 4
  %conv17 = sitofp i32 %16 to double
  %div18 = fdiv double %conv16, %conv17
  %sub19 = fsub double %13, %div18
  %mul20 = fmul double %12, %sub19
  %add21 = fadd double %11, %mul20
  %y22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %add21, double* %y22, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %sx.addr, align 4
  %sub23 = sub nsw i32 %17, %18
  %conv24 = sitofp i32 %sub23 to double
  %19 = load i32, i32* %w.addr, align 4
  %conv25 = sitofp i32 %19 to double
  %div26 = fdiv double %conv24, %conv25
  %x27 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 0
  store double %div26, double* %x27, align 8
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %sy.addr, align 4
  %sub28 = sub nsw i32 %20, %21
  %conv29 = sitofp i32 %sub28 to double
  %22 = load i32, i32* %h.addr, align 4
  %conv30 = sitofp i32 %22 to double
  %div31 = fdiv double %conv29, %conv30
  %y32 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 1
  store double %div31, double* %y32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.5
  %z34 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %result, i32 0, i32 2
  store double 0.000000e+00, double* %z34, align 8
  %23 = bitcast %struct._GimpVector3* %agg.result to i8*
  %24 = bitcast %struct._GimpVector3* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vector_3d_to_2d(i32 %sx, i32 %sy, i32 %w, i32 %h, double* %x, double* %y, %struct._GimpVector3* %vp, %struct._GimpVector3* %p) #0 {
entry:
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %vp.addr = alloca %struct._GimpVector3*, align 8
  %p.addr = alloca %struct._GimpVector3*, align 8
  %t = alloca double, align 8
  %dir = alloca %struct._GimpVector3, align 8
  store i32 %sx, i32* %sx.addr, align 4
  store i32 %sy, i32* %sy.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store %struct._GimpVector3* %vp, %struct._GimpVector3** %vp.addr, align 8
  store %struct._GimpVector3* %p, %struct._GimpVector3** %p.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %dir, %struct._GimpVector3* %0, %struct._GimpVector3* %1)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %dir)
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %cmp = fcmp une double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %z1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %3, i32 0, i32 2
  %4 = load double, double* %z1, align 8
  %mul = fmul double -1.000000e+00, %4
  %z2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %5 = load double, double* %z2, align 8
  %div = fdiv double %mul, %5
  store double %div, double* %t, align 8
  %6 = load i32, i32* %sx.addr, align 4
  %conv = sitofp i32 %6 to double
  %7 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %7, i32 0, i32 0
  %8 = load double, double* %x3, align 8
  %9 = load double, double* %t, align 8
  %x4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %10 = load double, double* %x4, align 8
  %mul5 = fmul double %9, %10
  %add = fadd double %8, %mul5
  %11 = load i32, i32* %w.addr, align 4
  %conv6 = sitofp i32 %11 to double
  %mul7 = fmul double %add, %conv6
  %add8 = fadd double %conv, %mul7
  %12 = load double*, double** %x.addr, align 8
  store double %add8, double* %12, align 8
  %13 = load i32, i32* %sy.addr, align 4
  %conv9 = sitofp i32 %13 to double
  %14 = load %struct._GimpVector3*, %struct._GimpVector3** %vp.addr, align 8
  %y10 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %14, i32 0, i32 1
  %15 = load double, double* %y10, align 8
  %16 = load double, double* %t, align 8
  %y11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 1
  %17 = load double, double* %y11, align 8
  %mul12 = fmul double %16, %17
  %add13 = fadd double %15, %mul12
  %18 = load i32, i32* %h.addr, align 4
  %conv14 = sitofp i32 %18 to double
  %mul15 = fmul double %add13, %conv14
  %add16 = fadd double %conv9, %mul15
  %19 = load double*, double** %y.addr, align 8
  store double %add16, double* %19, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %sx.addr, align 4
  %conv17 = sitofp i32 %20 to double
  %21 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %x18 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %21, i32 0, i32 0
  %22 = load double, double* %x18, align 8
  %23 = load i32, i32* %w.addr, align 4
  %conv19 = sitofp i32 %23 to double
  %mul20 = fmul double %22, %conv19
  %add21 = fadd double %conv17, %mul20
  %24 = load double*, double** %x.addr, align 8
  store double %add21, double* %24, align 8
  %25 = load i32, i32* %sy.addr, align 4
  %conv22 = sitofp i32 %25 to double
  %26 = load %struct._GimpVector3*, %struct._GimpVector3** %p.addr, align 8
  %y23 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %26, i32 0, i32 1
  %27 = load double, double* %y23, align 8
  %28 = load i32, i32* %h.addr, align 4
  %conv24 = sitofp i32 %28 to double
  %mul25 = fmul double %27, %conv24
  %add26 = fadd double %conv22, %mul25
  %29 = load double*, double** %y.addr, align 8
  store double %add26, double* %29, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
