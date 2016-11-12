; ModuleID = './app/core/gimpcurve-map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpVector2 = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_curve_map_value = private unnamed_addr constant [21 x i8] c"gimp_curve_map_value\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_CURVE (curve)\00", align 1
@__func__.gimp_curve_map_pixels = private unnamed_addr constant [22 x i8] c"gimp_curve_map_pixels\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_CURVE (curve_colors)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CURVE (curve_red)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_CURVE (curve_green)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"GIMP_IS_CURVE (curve_blue)\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"GIMP_IS_CURVE (curve_alpha)\00", align 1

; Function Attrs: nounwind uwtable
define double @gimp_curve_map_value(%struct._GimpCurve* %curve, double %value) #0 {
entry:
  %retval = alloca double, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %value.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store double %value, double* %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_map_value, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %14 = load double, double* %value.addr, align 8
  %call11 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %13, double %14)
  store double %call11, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_curve_map_value_inline(%struct._GimpCurve* %curve, double %value) #4 {
entry:
  %retval = alloca double, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %value.addr = alloca double, align 8
  %f = alloca double, align 8
  %index = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %0, i32 0, i32 6
  %1 = load i32, i32* %identity, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load double, double* %value.addr, align 8
  %call = call i32 @finite(double %2) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load double, double* %value.addr, align 8
  %cmp = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  br label %cond.end.6

cond.false:                                       ; preds = %if.then.2
  %4 = load double, double* %value.addr, align 8
  %cmp3 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %5 = load double, double* %value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi double [ 0.000000e+00, %cond.true.4 ], [ %5, %cond.false.5 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond7, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store double 0.000000e+00, double* %retval
  br label %return

if.end.8:                                         ; preds = %entry
  %6 = load double, double* %value.addr, align 8
  %cmp9 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.8
  %7 = load double, double* %value.addr, align 8
  %cmp10 = fcmp olt double %7, 1.000000e+00
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %8 = load double, double* %value.addr, align 8
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %9, i32 0, i32 4
  %10 = load i32, i32* %n_samples, align 4
  %sub = sub nsw i32 %10, 1
  %conv = sitofp i32 %sub to double
  %mul = fmul double %8, %conv
  store double %mul, double* %value.addr, align 8
  %11 = load double, double* %value.addr, align 8
  %conv12 = fptosi double %11 to i32
  store i32 %conv12, i32* %index, align 4
  %12 = load double, double* %value.addr, align 8
  %13 = load i32, i32* %index, align 4
  %conv13 = sitofp i32 %13 to double
  %sub14 = fsub double %12, %conv13
  store double %sub14, double* %f, align 8
  %14 = load double, double* %f, align 8
  %sub15 = fsub double 1.000000e+00, %14
  %15 = load i32, i32* %index, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %16, i32 0, i32 5
  %17 = load double*, double** %samples, align 8
  %arrayidx = getelementptr inbounds double, double* %17, i64 %idxprom
  %18 = load double, double* %arrayidx, align 8
  %mul16 = fmul double %sub15, %18
  %19 = load double, double* %f, align 8
  %20 = load i32, i32* %index, align 4
  %add = add nsw i32 %20, 1
  %idxprom17 = sext i32 %add to i64
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples18 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %21, i32 0, i32 5
  %22 = load double*, double** %samples18, align 8
  %arrayidx19 = getelementptr inbounds double, double* %22, i64 %idxprom17
  %23 = load double, double* %arrayidx19, align 8
  %mul20 = fmul double %19, %23
  %add21 = fadd double %mul16, %mul20
  store double %add21, double* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.8
  %24 = load double, double* %value.addr, align 8
  %cmp22 = fcmp oge double %24, 1.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %if.else
  %25 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples25 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %25, i32 0, i32 4
  %26 = load i32, i32* %n_samples25, align 4
  %sub26 = sub nsw i32 %26, 1
  %idxprom27 = sext i32 %sub26 to i64
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples28 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %27, i32 0, i32 5
  %28 = load double*, double** %samples28, align 8
  %arrayidx29 = getelementptr inbounds double, double* %28, i64 %idxprom27
  %29 = load double, double* %arrayidx29, align 8
  store double %29, double* %retval
  br label %return

if.else.30:                                       ; preds = %if.else
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples31 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %30, i32 0, i32 5
  %31 = load double*, double** %samples31, align 8
  %arrayidx32 = getelementptr inbounds double, double* %31, i64 0
  %32 = load double, double* %arrayidx32, align 8
  store double %32, double* %retval
  br label %return

return:                                           ; preds = %if.else.30, %if.then.24, %if.then.11, %if.end, %cond.end.6
  %33 = load double, double* %retval
  ret double %33
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_map_pixels(%struct._GimpCurve* %curve_colors, %struct._GimpCurve* %curve_red, %struct._GimpCurve* %curve_green, %struct._GimpCurve* %curve_blue, %struct._GimpCurve* %curve_alpha, float* %src, float* %dest, i64 %samples) #0 {
entry:
  %curve_colors.addr = alloca %struct._GimpCurve*, align 8
  %curve_red.addr = alloca %struct._GimpCurve*, align 8
  %curve_green.addr = alloca %struct._GimpCurve*, align 8
  %curve_blue.addr = alloca %struct._GimpCurve*, align 8
  %curve_alpha.addr = alloca %struct._GimpCurve*, align 8
  %src.addr = alloca float*, align 8
  %dest.addr = alloca float*, align 8
  %samples.addr = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %__inst69 = alloca %struct._GTypeInstance*, align 8
  %__t71 = alloca i64, align 8
  %__r74 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %__inst97 = alloca %struct._GTypeInstance*, align 8
  %__t99 = alloca i64, align 8
  %__r102 = alloca i32, align 4
  %tmp117 = alloca i32, align 4
  store %struct._GimpCurve* %curve_colors, %struct._GimpCurve** %curve_colors.addr, align 8
  store %struct._GimpCurve* %curve_red, %struct._GimpCurve** %curve_red.addr, align 8
  store %struct._GimpCurve* %curve_green, %struct._GimpCurve** %curve_green.addr, align 8
  store %struct._GimpCurve* %curve_blue, %struct._GimpCurve** %curve_blue.addr, align 8
  store %struct._GimpCurve* %curve_alpha, %struct._GimpCurve** %curve_alpha.addr, align 8
  store float* %src, float** %src.addr, align 8
  store float* %dest, float** %dest.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_map_pixels, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_red.addr, align 8
  %14 = bitcast %struct._GimpCurve* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_curve_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_map_pixels, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_green.addr, align 8
  %27 = bitcast %struct._GimpCurve* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_curve_get_type() #6
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #7
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_map_pixels, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_blue.addr, align 8
  %40 = bitcast %struct._GimpCurve* %39 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %40, %struct._GTypeInstance** %__inst69, align 8
  %call72 = call i64 @gimp_curve_get_type() #6
  store i64 %call72, i64* %__t71, align 8
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %tobool75 = icmp ne %struct._GTypeInstance* %41, null
  br i1 %tobool75, label %if.else.77, label %if.then.76

if.then.76:                                       ; preds = %do.body.67
  store i32 0, i32* %__r74, align 4
  br label %if.end.88

if.else.77:                                       ; preds = %do.body.67
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class78 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class78, align 8
  %tobool79 = icmp ne %struct._GTypeClass* %43, null
  br i1 %tobool79, label %land.lhs.true.80, label %if.else.85

land.lhs.true.80:                                 ; preds = %if.else.77
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class81 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class81, align 8
  %g_type82 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type82, align 8
  %47 = load i64, i64* %__t71, align 8
  %cmp83 = icmp eq i64 %46, %47
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true.80
  store i32 1, i32* %__r74, align 4
  br label %if.end.87

if.else.85:                                       ; preds = %land.lhs.true.80, %if.else.77
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %49 = load i64, i64* %__t71, align 8
  %call86 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %48, i64 %49) #7
  store i32 %call86, i32* %__r74, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.84
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.76
  %50 = load i32, i32* %__r74, align 4
  store i32 %50, i32* %tmp89
  %51 = load i32, i32* %tmp89
  %tobool90 = icmp ne i32 %51, 0
  br i1 %tobool90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.end.88
  br label %if.end.93

if.else.92:                                       ; preds = %if.end.88
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_map_pixels, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

if.end.93:                                        ; preds = %if.then.91
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.94
  %52 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_alpha.addr, align 8
  %53 = bitcast %struct._GimpCurve* %52 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %53, %struct._GTypeInstance** %__inst97, align 8
  %call100 = call i64 @gimp_curve_get_type() #6
  store i64 %call100, i64* %__t99, align 8
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %tobool103 = icmp ne %struct._GTypeInstance* %54, null
  br i1 %tobool103, label %if.else.105, label %if.then.104

if.then.104:                                      ; preds = %do.body.95
  store i32 0, i32* %__r102, align 4
  br label %if.end.116

if.else.105:                                      ; preds = %do.body.95
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %g_class106 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class106, align 8
  %tobool107 = icmp ne %struct._GTypeClass* %56, null
  br i1 %tobool107, label %land.lhs.true.108, label %if.else.113

land.lhs.true.108:                                ; preds = %if.else.105
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %g_class109 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class109, align 8
  %g_type110 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type110, align 8
  %60 = load i64, i64* %__t99, align 8
  %cmp111 = icmp eq i64 %59, %60
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %land.lhs.true.108
  store i32 1, i32* %__r102, align 4
  br label %if.end.115

if.else.113:                                      ; preds = %land.lhs.true.108, %if.else.105
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %62 = load i64, i64* %__t99, align 8
  %call114 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %61, i64 %62) #7
  store i32 %call114, i32* %__r102, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.113, %if.then.112
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.104
  %63 = load i32, i32* %__r102, align 4
  store i32 %63, i32* %tmp117
  %64 = load i32, i32* %tmp117
  %tobool118 = icmp ne i32 %64, 0
  br i1 %tobool118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.116
  br label %if.end.121

if.else.120:                                      ; preds = %if.end.116
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_map_pixels, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

if.end.121:                                       ; preds = %if.then.119
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  %65 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %66 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_red.addr, align 8
  %67 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_green.addr, align 8
  %68 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_blue.addr, align 8
  %69 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_alpha.addr, align 8
  %call123 = call i32 @gimp_curve_get_apply_mask(%struct._GimpCurve* %65, %struct._GimpCurve* %66, %struct._GimpCurve* %67, %struct._GimpCurve* %68, %struct._GimpCurve* %69)
  switch i32 %call123, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.125
    i32 2, label %sw.bb.143
    i32 4, label %sw.bb.162
    i32 8, label %sw.bb.181
    i32 16, label %sw.bb.200
    i32 14, label %sw.bb.219
  ]

sw.bb:                                            ; preds = %do.end.122
  %70 = load float*, float** %dest.addr, align 8
  %71 = bitcast float* %70 to i8*
  %72 = load float*, float** %src.addr, align 8
  %73 = bitcast float* %72 to i8*
  %74 = load i64, i64* %samples.addr, align 8
  %mul = mul nsw i64 %74, 4
  %mul124 = mul i64 %mul, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %73, i64 %mul124, i32 4, i1 false)
  br label %sw.epilog

sw.bb.125:                                        ; preds = %do.end.122
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.125
  %75 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %75, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool126 = icmp ne i64 %75, 0
  br i1 %tobool126, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %76 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %77 = load float*, float** %src.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %77, i64 0
  %78 = load float, float* %arrayidx, align 4
  %conv = fpext float %78 to double
  %call127 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %76, double %conv)
  %conv128 = fptrunc double %call127 to float
  %79 = load float*, float** %dest.addr, align 8
  %arrayidx129 = getelementptr inbounds float, float* %79, i64 0
  store float %conv128, float* %arrayidx129, align 4
  %80 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %81 = load float*, float** %src.addr, align 8
  %arrayidx130 = getelementptr inbounds float, float* %81, i64 1
  %82 = load float, float* %arrayidx130, align 4
  %conv131 = fpext float %82 to double
  %call132 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %80, double %conv131)
  %conv133 = fptrunc double %call132 to float
  %83 = load float*, float** %dest.addr, align 8
  %arrayidx134 = getelementptr inbounds float, float* %83, i64 1
  store float %conv133, float* %arrayidx134, align 4
  %84 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %85 = load float*, float** %src.addr, align 8
  %arrayidx135 = getelementptr inbounds float, float* %85, i64 2
  %86 = load float, float* %arrayidx135, align 4
  %conv136 = fpext float %86 to double
  %call137 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %84, double %conv136)
  %conv138 = fptrunc double %call137 to float
  %87 = load float*, float** %dest.addr, align 8
  %arrayidx139 = getelementptr inbounds float, float* %87, i64 2
  store float %conv138, float* %arrayidx139, align 4
  %88 = load float*, float** %src.addr, align 8
  %arrayidx140 = getelementptr inbounds float, float* %88, i64 3
  %89 = load float, float* %arrayidx140, align 4
  %90 = load float*, float** %dest.addr, align 8
  %arrayidx141 = getelementptr inbounds float, float* %90, i64 3
  store float %89, float* %arrayidx141, align 4
  %91 = load float*, float** %src.addr, align 8
  %add.ptr = getelementptr inbounds float, float* %91, i64 4
  store float* %add.ptr, float** %src.addr, align 8
  %92 = load float*, float** %dest.addr, align 8
  %add.ptr142 = getelementptr inbounds float, float* %92, i64 4
  store float* %add.ptr142, float** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.143:                                        ; preds = %do.end.122
  br label %while.cond.144

while.cond.144:                                   ; preds = %while.body.147, %sw.bb.143
  %93 = load i64, i64* %samples.addr, align 8
  %dec145 = add nsw i64 %93, -1
  store i64 %dec145, i64* %samples.addr, align 8
  %tobool146 = icmp ne i64 %93, 0
  br i1 %tobool146, label %while.body.147, label %while.end.161

while.body.147:                                   ; preds = %while.cond.144
  %94 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_red.addr, align 8
  %95 = load float*, float** %src.addr, align 8
  %arrayidx148 = getelementptr inbounds float, float* %95, i64 0
  %96 = load float, float* %arrayidx148, align 4
  %conv149 = fpext float %96 to double
  %call150 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %94, double %conv149)
  %conv151 = fptrunc double %call150 to float
  %97 = load float*, float** %dest.addr, align 8
  %arrayidx152 = getelementptr inbounds float, float* %97, i64 0
  store float %conv151, float* %arrayidx152, align 4
  %98 = load float*, float** %src.addr, align 8
  %arrayidx153 = getelementptr inbounds float, float* %98, i64 1
  %99 = load float, float* %arrayidx153, align 4
  %100 = load float*, float** %dest.addr, align 8
  %arrayidx154 = getelementptr inbounds float, float* %100, i64 1
  store float %99, float* %arrayidx154, align 4
  %101 = load float*, float** %src.addr, align 8
  %arrayidx155 = getelementptr inbounds float, float* %101, i64 2
  %102 = load float, float* %arrayidx155, align 4
  %103 = load float*, float** %dest.addr, align 8
  %arrayidx156 = getelementptr inbounds float, float* %103, i64 2
  store float %102, float* %arrayidx156, align 4
  %104 = load float*, float** %src.addr, align 8
  %arrayidx157 = getelementptr inbounds float, float* %104, i64 3
  %105 = load float, float* %arrayidx157, align 4
  %106 = load float*, float** %dest.addr, align 8
  %arrayidx158 = getelementptr inbounds float, float* %106, i64 3
  store float %105, float* %arrayidx158, align 4
  %107 = load float*, float** %src.addr, align 8
  %add.ptr159 = getelementptr inbounds float, float* %107, i64 4
  store float* %add.ptr159, float** %src.addr, align 8
  %108 = load float*, float** %dest.addr, align 8
  %add.ptr160 = getelementptr inbounds float, float* %108, i64 4
  store float* %add.ptr160, float** %dest.addr, align 8
  br label %while.cond.144

while.end.161:                                    ; preds = %while.cond.144
  br label %sw.epilog

sw.bb.162:                                        ; preds = %do.end.122
  br label %while.cond.163

while.cond.163:                                   ; preds = %while.body.166, %sw.bb.162
  %109 = load i64, i64* %samples.addr, align 8
  %dec164 = add nsw i64 %109, -1
  store i64 %dec164, i64* %samples.addr, align 8
  %tobool165 = icmp ne i64 %109, 0
  br i1 %tobool165, label %while.body.166, label %while.end.180

while.body.166:                                   ; preds = %while.cond.163
  %110 = load float*, float** %src.addr, align 8
  %arrayidx167 = getelementptr inbounds float, float* %110, i64 0
  %111 = load float, float* %arrayidx167, align 4
  %112 = load float*, float** %dest.addr, align 8
  %arrayidx168 = getelementptr inbounds float, float* %112, i64 0
  store float %111, float* %arrayidx168, align 4
  %113 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_green.addr, align 8
  %114 = load float*, float** %src.addr, align 8
  %arrayidx169 = getelementptr inbounds float, float* %114, i64 1
  %115 = load float, float* %arrayidx169, align 4
  %conv170 = fpext float %115 to double
  %call171 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %113, double %conv170)
  %conv172 = fptrunc double %call171 to float
  %116 = load float*, float** %dest.addr, align 8
  %arrayidx173 = getelementptr inbounds float, float* %116, i64 1
  store float %conv172, float* %arrayidx173, align 4
  %117 = load float*, float** %src.addr, align 8
  %arrayidx174 = getelementptr inbounds float, float* %117, i64 2
  %118 = load float, float* %arrayidx174, align 4
  %119 = load float*, float** %dest.addr, align 8
  %arrayidx175 = getelementptr inbounds float, float* %119, i64 2
  store float %118, float* %arrayidx175, align 4
  %120 = load float*, float** %src.addr, align 8
  %arrayidx176 = getelementptr inbounds float, float* %120, i64 3
  %121 = load float, float* %arrayidx176, align 4
  %122 = load float*, float** %dest.addr, align 8
  %arrayidx177 = getelementptr inbounds float, float* %122, i64 3
  store float %121, float* %arrayidx177, align 4
  %123 = load float*, float** %src.addr, align 8
  %add.ptr178 = getelementptr inbounds float, float* %123, i64 4
  store float* %add.ptr178, float** %src.addr, align 8
  %124 = load float*, float** %dest.addr, align 8
  %add.ptr179 = getelementptr inbounds float, float* %124, i64 4
  store float* %add.ptr179, float** %dest.addr, align 8
  br label %while.cond.163

while.end.180:                                    ; preds = %while.cond.163
  br label %sw.epilog

sw.bb.181:                                        ; preds = %do.end.122
  br label %while.cond.182

while.cond.182:                                   ; preds = %while.body.185, %sw.bb.181
  %125 = load i64, i64* %samples.addr, align 8
  %dec183 = add nsw i64 %125, -1
  store i64 %dec183, i64* %samples.addr, align 8
  %tobool184 = icmp ne i64 %125, 0
  br i1 %tobool184, label %while.body.185, label %while.end.199

while.body.185:                                   ; preds = %while.cond.182
  %126 = load float*, float** %src.addr, align 8
  %arrayidx186 = getelementptr inbounds float, float* %126, i64 0
  %127 = load float, float* %arrayidx186, align 4
  %128 = load float*, float** %dest.addr, align 8
  %arrayidx187 = getelementptr inbounds float, float* %128, i64 0
  store float %127, float* %arrayidx187, align 4
  %129 = load float*, float** %src.addr, align 8
  %arrayidx188 = getelementptr inbounds float, float* %129, i64 1
  %130 = load float, float* %arrayidx188, align 4
  %131 = load float*, float** %dest.addr, align 8
  %arrayidx189 = getelementptr inbounds float, float* %131, i64 1
  store float %130, float* %arrayidx189, align 4
  %132 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_blue.addr, align 8
  %133 = load float*, float** %src.addr, align 8
  %arrayidx190 = getelementptr inbounds float, float* %133, i64 2
  %134 = load float, float* %arrayidx190, align 4
  %conv191 = fpext float %134 to double
  %call192 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %132, double %conv191)
  %conv193 = fptrunc double %call192 to float
  %135 = load float*, float** %dest.addr, align 8
  %arrayidx194 = getelementptr inbounds float, float* %135, i64 2
  store float %conv193, float* %arrayidx194, align 4
  %136 = load float*, float** %src.addr, align 8
  %arrayidx195 = getelementptr inbounds float, float* %136, i64 3
  %137 = load float, float* %arrayidx195, align 4
  %138 = load float*, float** %dest.addr, align 8
  %arrayidx196 = getelementptr inbounds float, float* %138, i64 3
  store float %137, float* %arrayidx196, align 4
  %139 = load float*, float** %src.addr, align 8
  %add.ptr197 = getelementptr inbounds float, float* %139, i64 4
  store float* %add.ptr197, float** %src.addr, align 8
  %140 = load float*, float** %dest.addr, align 8
  %add.ptr198 = getelementptr inbounds float, float* %140, i64 4
  store float* %add.ptr198, float** %dest.addr, align 8
  br label %while.cond.182

while.end.199:                                    ; preds = %while.cond.182
  br label %sw.epilog

sw.bb.200:                                        ; preds = %do.end.122
  br label %while.cond.201

while.cond.201:                                   ; preds = %while.body.204, %sw.bb.200
  %141 = load i64, i64* %samples.addr, align 8
  %dec202 = add nsw i64 %141, -1
  store i64 %dec202, i64* %samples.addr, align 8
  %tobool203 = icmp ne i64 %141, 0
  br i1 %tobool203, label %while.body.204, label %while.end.218

while.body.204:                                   ; preds = %while.cond.201
  %142 = load float*, float** %src.addr, align 8
  %arrayidx205 = getelementptr inbounds float, float* %142, i64 0
  %143 = load float, float* %arrayidx205, align 4
  %144 = load float*, float** %dest.addr, align 8
  %arrayidx206 = getelementptr inbounds float, float* %144, i64 0
  store float %143, float* %arrayidx206, align 4
  %145 = load float*, float** %src.addr, align 8
  %arrayidx207 = getelementptr inbounds float, float* %145, i64 1
  %146 = load float, float* %arrayidx207, align 4
  %147 = load float*, float** %dest.addr, align 8
  %arrayidx208 = getelementptr inbounds float, float* %147, i64 1
  store float %146, float* %arrayidx208, align 4
  %148 = load float*, float** %src.addr, align 8
  %arrayidx209 = getelementptr inbounds float, float* %148, i64 2
  %149 = load float, float* %arrayidx209, align 4
  %150 = load float*, float** %dest.addr, align 8
  %arrayidx210 = getelementptr inbounds float, float* %150, i64 2
  store float %149, float* %arrayidx210, align 4
  %151 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_alpha.addr, align 8
  %152 = load float*, float** %src.addr, align 8
  %arrayidx211 = getelementptr inbounds float, float* %152, i64 3
  %153 = load float, float* %arrayidx211, align 4
  %conv212 = fpext float %153 to double
  %call213 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %151, double %conv212)
  %conv214 = fptrunc double %call213 to float
  %154 = load float*, float** %dest.addr, align 8
  %arrayidx215 = getelementptr inbounds float, float* %154, i64 3
  store float %conv214, float* %arrayidx215, align 4
  %155 = load float*, float** %src.addr, align 8
  %add.ptr216 = getelementptr inbounds float, float* %155, i64 4
  store float* %add.ptr216, float** %src.addr, align 8
  %156 = load float*, float** %dest.addr, align 8
  %add.ptr217 = getelementptr inbounds float, float* %156, i64 4
  store float* %add.ptr217, float** %dest.addr, align 8
  br label %while.cond.201

while.end.218:                                    ; preds = %while.cond.201
  br label %sw.epilog

sw.bb.219:                                        ; preds = %do.end.122
  br label %while.cond.220

while.cond.220:                                   ; preds = %while.body.223, %sw.bb.219
  %157 = load i64, i64* %samples.addr, align 8
  %dec221 = add nsw i64 %157, -1
  store i64 %dec221, i64* %samples.addr, align 8
  %tobool222 = icmp ne i64 %157, 0
  br i1 %tobool222, label %while.body.223, label %while.end.243

while.body.223:                                   ; preds = %while.cond.220
  %158 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_red.addr, align 8
  %159 = load float*, float** %src.addr, align 8
  %arrayidx224 = getelementptr inbounds float, float* %159, i64 0
  %160 = load float, float* %arrayidx224, align 4
  %conv225 = fpext float %160 to double
  %call226 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %158, double %conv225)
  %conv227 = fptrunc double %call226 to float
  %161 = load float*, float** %dest.addr, align 8
  %arrayidx228 = getelementptr inbounds float, float* %161, i64 0
  store float %conv227, float* %arrayidx228, align 4
  %162 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_green.addr, align 8
  %163 = load float*, float** %src.addr, align 8
  %arrayidx229 = getelementptr inbounds float, float* %163, i64 1
  %164 = load float, float* %arrayidx229, align 4
  %conv230 = fpext float %164 to double
  %call231 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %162, double %conv230)
  %conv232 = fptrunc double %call231 to float
  %165 = load float*, float** %dest.addr, align 8
  %arrayidx233 = getelementptr inbounds float, float* %165, i64 1
  store float %conv232, float* %arrayidx233, align 4
  %166 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_blue.addr, align 8
  %167 = load float*, float** %src.addr, align 8
  %arrayidx234 = getelementptr inbounds float, float* %167, i64 2
  %168 = load float, float* %arrayidx234, align 4
  %conv235 = fpext float %168 to double
  %call236 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %166, double %conv235)
  %conv237 = fptrunc double %call236 to float
  %169 = load float*, float** %dest.addr, align 8
  %arrayidx238 = getelementptr inbounds float, float* %169, i64 2
  store float %conv237, float* %arrayidx238, align 4
  %170 = load float*, float** %src.addr, align 8
  %arrayidx239 = getelementptr inbounds float, float* %170, i64 3
  %171 = load float, float* %arrayidx239, align 4
  %172 = load float*, float** %dest.addr, align 8
  %arrayidx240 = getelementptr inbounds float, float* %172, i64 3
  store float %171, float* %arrayidx240, align 4
  %173 = load float*, float** %src.addr, align 8
  %add.ptr241 = getelementptr inbounds float, float* %173, i64 4
  store float* %add.ptr241, float** %src.addr, align 8
  %174 = load float*, float** %dest.addr, align 8
  %add.ptr242 = getelementptr inbounds float, float* %174, i64 4
  store float* %add.ptr242, float** %dest.addr, align 8
  br label %while.cond.220

while.end.243:                                    ; preds = %while.cond.220
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.122
  br label %while.cond.244

while.cond.244:                                   ; preds = %while.body.247, %sw.default
  %175 = load i64, i64* %samples.addr, align 8
  %dec245 = add nsw i64 %175, -1
  store i64 %dec245, i64* %samples.addr, align 8
  %tobool246 = icmp ne i64 %175, 0
  br i1 %tobool246, label %while.body.247, label %while.end.273

while.body.247:                                   ; preds = %while.cond.244
  %176 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %177 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_red.addr, align 8
  %178 = load float*, float** %src.addr, align 8
  %arrayidx248 = getelementptr inbounds float, float* %178, i64 0
  %179 = load float, float* %arrayidx248, align 4
  %conv249 = fpext float %179 to double
  %call250 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %177, double %conv249)
  %call251 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %176, double %call250)
  %conv252 = fptrunc double %call251 to float
  %180 = load float*, float** %dest.addr, align 8
  %arrayidx253 = getelementptr inbounds float, float* %180, i64 0
  store float %conv252, float* %arrayidx253, align 4
  %181 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %182 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_green.addr, align 8
  %183 = load float*, float** %src.addr, align 8
  %arrayidx254 = getelementptr inbounds float, float* %183, i64 1
  %184 = load float, float* %arrayidx254, align 4
  %conv255 = fpext float %184 to double
  %call256 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %182, double %conv255)
  %call257 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %181, double %call256)
  %conv258 = fptrunc double %call257 to float
  %185 = load float*, float** %dest.addr, align 8
  %arrayidx259 = getelementptr inbounds float, float* %185, i64 1
  store float %conv258, float* %arrayidx259, align 4
  %186 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %187 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_blue.addr, align 8
  %188 = load float*, float** %src.addr, align 8
  %arrayidx260 = getelementptr inbounds float, float* %188, i64 2
  %189 = load float, float* %arrayidx260, align 4
  %conv261 = fpext float %189 to double
  %call262 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %187, double %conv261)
  %call263 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %186, double %call262)
  %conv264 = fptrunc double %call263 to float
  %190 = load float*, float** %dest.addr, align 8
  %arrayidx265 = getelementptr inbounds float, float* %190, i64 2
  store float %conv264, float* %arrayidx265, align 4
  %191 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_alpha.addr, align 8
  %192 = load float*, float** %src.addr, align 8
  %arrayidx266 = getelementptr inbounds float, float* %192, i64 3
  %193 = load float, float* %arrayidx266, align 4
  %conv267 = fpext float %193 to double
  %call268 = call double @gimp_curve_map_value_inline(%struct._GimpCurve* %191, double %conv267)
  %conv269 = fptrunc double %call268 to float
  %194 = load float*, float** %dest.addr, align 8
  %arrayidx270 = getelementptr inbounds float, float* %194, i64 3
  store float %conv269, float* %arrayidx270, align 4
  %195 = load float*, float** %src.addr, align 8
  %add.ptr271 = getelementptr inbounds float, float* %195, i64 4
  store float* %add.ptr271, float** %src.addr, align 8
  %196 = load float*, float** %dest.addr, align 8
  %add.ptr272 = getelementptr inbounds float, float* %196, i64 4
  store float* %add.ptr272, float** %dest.addr, align 8
  br label %while.cond.244

while.end.273:                                    ; preds = %while.cond.244
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.36, %if.else.64, %if.else.92, %if.else.120, %while.end.273, %while.end.243, %while.end.218, %while.end.199, %while.end.180, %while.end.161, %while.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_get_apply_mask(%struct._GimpCurve* %curve_colors, %struct._GimpCurve* %curve_red, %struct._GimpCurve* %curve_green, %struct._GimpCurve* %curve_blue, %struct._GimpCurve* %curve_alpha) #0 {
entry:
  %curve_colors.addr = alloca %struct._GimpCurve*, align 8
  %curve_red.addr = alloca %struct._GimpCurve*, align 8
  %curve_green.addr = alloca %struct._GimpCurve*, align 8
  %curve_blue.addr = alloca %struct._GimpCurve*, align 8
  %curve_alpha.addr = alloca %struct._GimpCurve*, align 8
  store %struct._GimpCurve* %curve_colors, %struct._GimpCurve** %curve_colors.addr, align 8
  store %struct._GimpCurve* %curve_red, %struct._GimpCurve** %curve_red.addr, align 8
  store %struct._GimpCurve* %curve_green, %struct._GimpCurve** %curve_green.addr, align 8
  store %struct._GimpCurve* %curve_blue, %struct._GimpCurve** %curve_blue.addr, align 8
  store %struct._GimpCurve* %curve_alpha, %struct._GimpCurve** %curve_alpha.addr, align 8
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_colors.addr, align 8
  %call = call i32 @gimp_curve_is_identity(%struct._GimpCurve* %0)
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_red.addr, align 8
  %call1 = call i32 @gimp_curve_is_identity(%struct._GimpCurve* %1)
  %tobool2 = icmp ne i32 %call1, 0
  %cond3 = select i1 %tobool2, i32 0, i32 2
  %or = or i32 %cond, %cond3
  %2 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_green.addr, align 8
  %call4 = call i32 @gimp_curve_is_identity(%struct._GimpCurve* %2)
  %tobool5 = icmp ne i32 %call4, 0
  %cond6 = select i1 %tobool5, i32 0, i32 4
  %or7 = or i32 %or, %cond6
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_blue.addr, align 8
  %call8 = call i32 @gimp_curve_is_identity(%struct._GimpCurve* %3)
  %tobool9 = icmp ne i32 %call8, 0
  %cond10 = select i1 %tobool9, i32 0, i32 8
  %or11 = or i32 %or7, %cond10
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_alpha.addr, align 8
  %call12 = call i32 @gimp_curve_is_identity(%struct._GimpCurve* %4)
  %tobool13 = icmp ne i32 %call12, 0
  %cond14 = select i1 %tobool13, i32 0, i32 16
  %or15 = or i32 %or11, %cond14
  ret i32 %or15
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gimp_curve_is_identity(%struct._GimpCurve*) #3

; Function Attrs: nounwind readnone
declare i32 @finite(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
