; ModuleID = './app/core/gimpcoords-interpolate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GArray = type { i8*, i32 }

; Function Attrs: nounwind uwtable
define void @gimp_coords_interpolate_bezier(%struct._GimpCoords* byval align 8 %bezier_pt1, %struct._GimpCoords* byval align 8 %bezier_pt2, %struct._GimpCoords* byval align 8 %bezier_pt3, %struct._GimpCoords* byval align 8 %bezier_pt4, double %precision, %struct._GArray** %ret_coords, %struct._GArray** %ret_params) #0 {
entry:
  %precision.addr = alloca double, align 8
  %ret_coords.addr = alloca %struct._GArray**, align 8
  %ret_params.addr = alloca %struct._GArray**, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GArray** %ret_coords, %struct._GArray*** %ret_coords.addr, align 8
  store %struct._GArray** %ret_params, %struct._GArray*** %ret_params.addr, align 8
  %0 = load double, double* %precision.addr, align 8
  %1 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  %2 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  call void @gimp_coords_interpolate_bezier_internal(%struct._GimpCoords* byval align 8 %bezier_pt1, %struct._GimpCoords* byval align 8 %bezier_pt2, %struct._GimpCoords* byval align 8 %bezier_pt3, %struct._GimpCoords* byval align 8 %bezier_pt4, double 0.000000e+00, double 1.000000e+00, double %0, %struct._GArray** %1, %struct._GArray** %2, i32 10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_coords_interpolate_bezier_internal(%struct._GimpCoords* byval align 8 %bezier_pt1, %struct._GimpCoords* byval align 8 %bezier_pt2, %struct._GimpCoords* byval align 8 %bezier_pt3, %struct._GimpCoords* byval align 8 %bezier_pt4, double %start_t, double %end_t, double %precision, %struct._GArray** %ret_coords, %struct._GArray** %ret_params, i32 %depth) #0 {
entry:
  %start_t.addr = alloca double, align 8
  %end_t.addr = alloca double, align 8
  %precision.addr = alloca double, align 8
  %ret_coords.addr = alloca %struct._GArray**, align 8
  %ret_params.addr = alloca %struct._GArray**, align 8
  %depth.addr = alloca i32, align 4
  %subdivided = alloca [8 x %struct._GimpCoords], align 16
  %middle_t = alloca double, align 8
  %params = alloca [3 x double], align 16
  %params53 = alloca [3 x double], align 16
  store double %start_t, double* %start_t.addr, align 8
  store double %end_t, double* %end_t.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GArray** %ret_coords, %struct._GArray*** %ret_coords.addr, align 8
  store %struct._GArray** %ret_params, %struct._GArray*** %ret_params.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load double, double* %start_t.addr, align 8
  %1 = load double, double* %end_t.addr, align 8
  %add = fadd double %0, %1
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %middle_t, align 8
  %arrayidx = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 0
  %2 = bitcast %struct._GimpCoords* %arrayidx to i8*
  %3 = bitcast %struct._GimpCoords* %bezier_pt1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 64, i32 8, i1 false)
  %arrayidx1 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 6
  %4 = bitcast %struct._GimpCoords* %arrayidx1 to i8*
  %5 = bitcast %struct._GimpCoords* %bezier_pt4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 64, i32 8, i1 false)
  %arrayidx2 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  call void @gimp_coords_average(%struct._GimpCoords* %bezier_pt1, %struct._GimpCoords* %bezier_pt2, %struct._GimpCoords* %arrayidx2)
  %arrayidx3 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  call void @gimp_coords_average(%struct._GimpCoords* %bezier_pt2, %struct._GimpCoords* %bezier_pt3, %struct._GimpCoords* %arrayidx3)
  %arrayidx4 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  call void @gimp_coords_average(%struct._GimpCoords* %bezier_pt3, %struct._GimpCoords* %bezier_pt4, %struct._GimpCoords* %arrayidx4)
  %arrayidx5 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  %arrayidx6 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  %arrayidx7 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx5, %struct._GimpCoords* %arrayidx6, %struct._GimpCoords* %arrayidx7)
  %arrayidx8 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  %arrayidx9 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  %arrayidx10 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx8, %struct._GimpCoords* %arrayidx9, %struct._GimpCoords* %arrayidx10)
  %arrayidx11 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  %arrayidx12 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  %arrayidx13 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx11, %struct._GimpCoords* %arrayidx12, %struct._GimpCoords* %arrayidx13)
  %6 = load i32, i32* %depth.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx14 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 0
  %arrayidx15 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  %arrayidx17 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  %7 = load double, double* %precision.addr, align 8
  %call = call i32 @gimp_coords_bezier_is_straight(%struct._GimpCoords* byval align 8 %arrayidx14, %struct._GimpCoords* byval align 8 %arrayidx15, %struct._GimpCoords* byval align 8 %arrayidx16, %struct._GimpCoords* byval align 8 %arrayidx17, double %7)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  %9 = load %struct._GArray*, %struct._GArray** %8, align 8
  %arrayidx19 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 0
  %10 = bitcast %struct._GimpCoords* %arrayidx19 to i8*
  %call20 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %9, i8* %10, i32 3)
  %11 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  store %struct._GArray* %call20, %struct._GArray** %11, align 8
  %12 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %tobool21 = icmp ne %struct._GArray** %12, null
  br i1 %tobool21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %13 = load double, double* %start_t.addr, align 8
  %arrayidx23 = getelementptr inbounds [3 x double], [3 x double]* %params, i32 0, i64 0
  store double %13, double* %arrayidx23, align 8
  %14 = load double, double* %start_t.addr, align 8
  %mul = fmul double 2.000000e+00, %14
  %15 = load double, double* %middle_t, align 8
  %add24 = fadd double %mul, %15
  %div25 = fdiv double %add24, 3.000000e+00
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %params, i32 0, i64 1
  store double %div25, double* %arrayidx26, align 8
  %16 = load double, double* %start_t.addr, align 8
  %17 = load double, double* %middle_t, align 8
  %mul27 = fmul double 2.000000e+00, %17
  %add28 = fadd double %16, %mul27
  %div29 = fdiv double %add28, 3.000000e+00
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %params, i32 0, i64 2
  store double %div29, double* %arrayidx30, align 8
  %18 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %19 = load %struct._GArray*, %struct._GArray** %18, align 8
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %params, i32 0, i64 0
  %20 = bitcast double* %arrayidx31 to i8*
  %call32 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %19, i8* %20, i32 3)
  %21 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  store %struct._GArray* %call32, %struct._GArray** %21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  br label %if.end.39

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx33 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  %arrayidx35 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  %arrayidx36 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  %22 = load double, double* %start_t.addr, align 8
  %23 = load double, double* %start_t.addr, align 8
  %24 = load double, double* %end_t.addr, align 8
  %add37 = fadd double %23, %24
  %div38 = fdiv double %add37, 2.000000e+00
  %25 = load double, double* %precision.addr, align 8
  %26 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  %27 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %28 = load i32, i32* %depth.addr, align 4
  %sub = sub nsw i32 %28, 1
  call void @gimp_coords_interpolate_bezier_internal(%struct._GimpCoords* byval align 8 %arrayidx33, %struct._GimpCoords* byval align 8 %arrayidx34, %struct._GimpCoords* byval align 8 %arrayidx35, %struct._GimpCoords* byval align 8 %arrayidx36, double %22, double %div38, double %25, %struct._GArray** %26, %struct._GArray** %27, i32 %sub)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.end
  %29 = load i32, i32* %depth.addr, align 4
  %tobool40 = icmp ne i32 %29, 0
  br i1 %tobool40, label %lor.lhs.false.41, label %if.then.48

lor.lhs.false.41:                                 ; preds = %if.end.39
  %arrayidx42 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  %arrayidx43 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  %arrayidx44 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  %arrayidx45 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 6
  %30 = load double, double* %precision.addr, align 8
  %call46 = call i32 @gimp_coords_bezier_is_straight(%struct._GimpCoords* byval align 8 %arrayidx42, %struct._GimpCoords* byval align 8 %arrayidx43, %struct._GimpCoords* byval align 8 %arrayidx44, %struct._GimpCoords* byval align 8 %arrayidx45, double %30)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.66

if.then.48:                                       ; preds = %lor.lhs.false.41, %if.end.39
  %31 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  %32 = load %struct._GArray*, %struct._GArray** %31, align 8
  %arrayidx49 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  %33 = bitcast %struct._GimpCoords* %arrayidx49 to i8*
  %call50 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %32, i8* %33, i32 3)
  %34 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  store %struct._GArray* %call50, %struct._GArray** %34, align 8
  %35 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %tobool51 = icmp ne %struct._GArray** %35, null
  br i1 %tobool51, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %if.then.48
  %36 = load double, double* %middle_t, align 8
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %params53, i32 0, i64 0
  store double %36, double* %arrayidx54, align 8
  %37 = load double, double* %middle_t, align 8
  %mul55 = fmul double 2.000000e+00, %37
  %38 = load double, double* %end_t.addr, align 8
  %add56 = fadd double %mul55, %38
  %div57 = fdiv double %add56, 3.000000e+00
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %params53, i32 0, i64 1
  store double %div57, double* %arrayidx58, align 8
  %39 = load double, double* %middle_t, align 8
  %40 = load double, double* %end_t.addr, align 8
  %mul59 = fmul double 2.000000e+00, %40
  %add60 = fadd double %39, %mul59
  %div61 = fdiv double %add60, 3.000000e+00
  %arrayidx62 = getelementptr inbounds [3 x double], [3 x double]* %params53, i32 0, i64 2
  store double %div61, double* %arrayidx62, align 8
  %41 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %42 = load %struct._GArray*, %struct._GArray** %41, align 8
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %params53, i32 0, i64 0
  %43 = bitcast double* %arrayidx63 to i8*
  %call64 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %42, i8* %43, i32 3)
  %44 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  store %struct._GArray* %call64, %struct._GArray** %44, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.52, %if.then.48
  br label %if.end.74

if.else.66:                                       ; preds = %lor.lhs.false.41
  %arrayidx67 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  %arrayidx68 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  %arrayidx69 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  %arrayidx70 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 6
  %45 = load double, double* %start_t.addr, align 8
  %46 = load double, double* %end_t.addr, align 8
  %add71 = fadd double %45, %46
  %div72 = fdiv double %add71, 2.000000e+00
  %47 = load double, double* %end_t.addr, align 8
  %48 = load double, double* %precision.addr, align 8
  %49 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  %50 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %51 = load i32, i32* %depth.addr, align 4
  %sub73 = sub nsw i32 %51, 1
  call void @gimp_coords_interpolate_bezier_internal(%struct._GimpCoords* byval align 8 %arrayidx67, %struct._GimpCoords* byval align 8 %arrayidx68, %struct._GimpCoords* byval align 8 %arrayidx69, %struct._GimpCoords* byval align 8 %arrayidx70, double %div72, double %47, double %48, %struct._GArray** %49, %struct._GArray** %50, i32 %sub73)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.66, %if.end.65
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_coords_bezier_is_straight(%struct._GimpCoords* byval align 8 %bezier_pt1, %struct._GimpCoords* byval align 8 %bezier_pt2, %struct._GimpCoords* byval align 8 %bezier_pt3, %struct._GimpCoords* byval align 8 %bezier_pt4, double %precision) #0 {
entry:
  %precision.addr = alloca double, align 8
  %pt1 = alloca %struct._GimpCoords, align 8
  %pt2 = alloca %struct._GimpCoords, align 8
  store double %precision, double* %precision.addr, align 8
  call void @gimp_coords_mix(double 0x3FE5555555555555, %struct._GimpCoords* %bezier_pt1, double 0x3FD5555555555555, %struct._GimpCoords* %bezier_pt4, %struct._GimpCoords* %pt1)
  call void @gimp_coords_mix(double 0x3FD5555555555555, %struct._GimpCoords* %bezier_pt1, double 0x3FE5555555555555, %struct._GimpCoords* %bezier_pt4, %struct._GimpCoords* %pt2)
  %call = call double @gimp_coords_manhattan_dist(%struct._GimpCoords* %bezier_pt2, %struct._GimpCoords* %pt1)
  %0 = load double, double* %precision.addr, align 8
  %cmp = fcmp olt double %call, %0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call double @gimp_coords_manhattan_dist(%struct._GimpCoords* %bezier_pt3, %struct._GimpCoords* %pt2)
  %1 = load double, double* %precision.addr, align 8
  %cmp2 = fcmp olt double %call1, %1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare void @gimp_coords_mix(double, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare double @gimp_coords_manhattan_dist(%struct._GimpCoords*, %struct._GimpCoords*) #1

; Function Attrs: nounwind uwtable
define void @gimp_coords_interpolate_catmull(%struct._GimpCoords* byval align 8 %catmul_pt1, %struct._GimpCoords* byval align 8 %catmul_pt2, %struct._GimpCoords* byval align 8 %catmul_pt3, %struct._GimpCoords* byval align 8 %catmul_pt4, double %precision, %struct._GArray** %ret_coords, %struct._GArray** %ret_params) #0 {
entry:
  %precision.addr = alloca double, align 8
  %ret_coords.addr = alloca %struct._GArray**, align 8
  %ret_params.addr = alloca %struct._GArray**, align 8
  %delta_x = alloca double, align 8
  %delta_y = alloca double, align 8
  %distance = alloca double, align 8
  %dir_step = alloca double, align 8
  %delta_dir = alloca double, align 8
  %num_points = alloca i32, align 4
  %n = alloca i32, align 4
  %past_coords = alloca %struct._GimpCoords, align 8
  %start_coords = alloca %struct._GimpCoords, align 8
  %end_coords = alloca %struct._GimpCoords, align 8
  %future_coords = alloca %struct._GimpCoords, align 8
  %coords = alloca %struct._GimpCoords, align 8
  %velocity = alloca double, align 8
  %pressure = alloca double, align 8
  %p = alloca double, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GArray** %ret_coords, %struct._GArray*** %ret_coords.addr, align 8
  store %struct._GArray** %ret_params, %struct._GArray*** %ret_params.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %catmul_pt3, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %catmul_pt2, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %delta_x, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %catmul_pt3, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %catmul_pt2, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %sub3 = fsub double %2, %3
  store double %sub3, double* %delta_y, align 8
  %4 = bitcast %struct._GimpCoords* %past_coords to i8*
  %5 = bitcast %struct._GimpCoords* %catmul_pt1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 64, i32 8, i1 false)
  %6 = bitcast %struct._GimpCoords* %start_coords to i8*
  %7 = bitcast %struct._GimpCoords* %catmul_pt2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 64, i32 8, i1 false)
  %8 = bitcast %struct._GimpCoords* %end_coords to i8*
  %9 = bitcast %struct._GimpCoords* %catmul_pt3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 64, i32 8, i1 false)
  %10 = bitcast %struct._GimpCoords* %future_coords to i8*
  %11 = bitcast %struct._GimpCoords* %catmul_pt4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 64, i32 8, i1 false)
  %12 = load double, double* %delta_x, align 8
  %13 = load double, double* %delta_x, align 8
  %mul = fmul double %12, %13
  %14 = load double, double* %delta_y, align 8
  %15 = load double, double* %delta_y, align 8
  %mul4 = fmul double %14, %15
  %add = fadd double %mul, %mul4
  %call = call double @sqrt(double %add) #2
  store double %call, double* %distance, align 8
  %16 = load double, double* %distance, align 8
  %17 = load double, double* %precision.addr, align 8
  %div = fdiv double %16, %17
  %conv = fptosi double %div to i32
  store i32 %conv, i32* %num_points, align 4
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 7
  %18 = load double, double* %direction, align 8
  %direction5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 7
  %19 = load double, double* %direction5, align 8
  %sub6 = fsub double %18, %19
  store double %sub6, double* %delta_dir, align 8
  %20 = load double, double* %delta_dir, align 8
  %cmp = fcmp ole double %20, -5.000000e-01
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load double, double* %delta_dir, align 8
  %add8 = fadd double %21, 1.000000e+00
  store double %add8, double* %delta_dir, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %22 = load double, double* %delta_dir, align 8
  %cmp9 = fcmp oge double %22, 5.000000e-01
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %23 = load double, double* %delta_dir, align 8
  %sub12 = fsub double %23, 1.000000e+00
  store double %sub12, double* %delta_dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %24 = load double, double* %delta_dir, align 8
  %25 = load i32, i32* %num_points, align 4
  %conv14 = sitofp i32 %25 to double
  %div15 = fdiv double %24, %conv14
  store double %div15, double* %dir_step, align 8
  store i32 1, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %26 = load i32, i32* %n, align 4
  %27 = load i32, i32* %num_points, align 4
  %cmp16 = icmp sle i32 %26, %27
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %n, align 4
  %conv18 = sitofp i32 %28 to double
  %29 = load i32, i32* %num_points, align 4
  %conv19 = sitofp i32 %29 to double
  %div20 = fdiv double %conv18, %conv19
  store double %div20, double* %p, align 8
  %30 = load double, double* %p, align 8
  %x21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %past_coords, i32 0, i32 0
  %31 = load double, double* %x21, align 8
  %x22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 0
  %32 = load double, double* %x22, align 8
  %x23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 0
  %33 = load double, double* %x23, align 8
  %x24 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %future_coords, i32 0, i32 0
  %34 = load double, double* %x24, align 8
  %call25 = call double @gimp_coords_get_catmull_spline_point(double %30, double %31, double %32, double %33, double %34)
  %x26 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %call25, double* %x26, align 8
  %35 = load double, double* %p, align 8
  %y27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %past_coords, i32 0, i32 1
  %36 = load double, double* %y27, align 8
  %y28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 1
  %37 = load double, double* %y28, align 8
  %y29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 1
  %38 = load double, double* %y29, align 8
  %y30 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %future_coords, i32 0, i32 1
  %39 = load double, double* %y30, align 8
  %call31 = call double @gimp_coords_get_catmull_spline_point(double %35, double %36, double %37, double %38, double %39)
  %y32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %call31, double* %y32, align 8
  %40 = load double, double* %p, align 8
  %pressure33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %past_coords, i32 0, i32 2
  %41 = load double, double* %pressure33, align 8
  %pressure34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 2
  %42 = load double, double* %pressure34, align 8
  %pressure35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 2
  %43 = load double, double* %pressure35, align 8
  %pressure36 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %future_coords, i32 0, i32 2
  %44 = load double, double* %pressure36, align 8
  %call37 = call double @gimp_coords_get_catmull_spline_point(double %40, double %41, double %42, double %43, double %44)
  store double %call37, double* %pressure, align 8
  %45 = load double, double* %pressure, align 8
  %cmp38 = fcmp ogt double %45, 1.000000e+00
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.44

cond.false:                                       ; preds = %for.body
  %46 = load double, double* %pressure, align 8
  %cmp40 = fcmp olt double %46, 0.000000e+00
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false
  br label %cond.end

cond.false.43:                                    ; preds = %cond.false
  %47 = load double, double* %pressure, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.43, %cond.true.42
  %cond = phi double [ 0.000000e+00, %cond.true.42 ], [ %47, %cond.false.43 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end, %cond.true
  %cond45 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %pressure46 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 2
  store double %cond45, double* %pressure46, align 8
  %48 = load double, double* %p, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %past_coords, i32 0, i32 3
  %49 = load double, double* %xtilt, align 8
  %xtilt47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 3
  %50 = load double, double* %xtilt47, align 8
  %xtilt48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 3
  %51 = load double, double* %xtilt48, align 8
  %xtilt49 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %future_coords, i32 0, i32 3
  %52 = load double, double* %xtilt49, align 8
  %call50 = call double @gimp_coords_get_catmull_spline_point(double %48, double %49, double %50, double %51, double %52)
  %xtilt51 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 3
  store double %call50, double* %xtilt51, align 8
  %53 = load double, double* %p, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %past_coords, i32 0, i32 4
  %54 = load double, double* %ytilt, align 8
  %ytilt52 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 4
  %55 = load double, double* %ytilt52, align 8
  %ytilt53 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 4
  %56 = load double, double* %ytilt53, align 8
  %ytilt54 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %future_coords, i32 0, i32 4
  %57 = load double, double* %ytilt54, align 8
  %call55 = call double @gimp_coords_get_catmull_spline_point(double %53, double %54, double %55, double %56, double %57)
  %ytilt56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 4
  store double %call55, double* %ytilt56, align 8
  %58 = load double, double* %p, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %past_coords, i32 0, i32 5
  %59 = load double, double* %wheel, align 8
  %wheel57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 5
  %60 = load double, double* %wheel57, align 8
  %wheel58 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 5
  %61 = load double, double* %wheel58, align 8
  %wheel59 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %future_coords, i32 0, i32 5
  %62 = load double, double* %wheel59, align 8
  %call60 = call double @gimp_coords_get_catmull_spline_point(double %58, double %59, double %60, double %61, double %62)
  %wheel61 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 5
  store double %call60, double* %wheel61, align 8
  %63 = load double, double* %p, align 8
  %velocity62 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %past_coords, i32 0, i32 6
  %64 = load double, double* %velocity62, align 8
  %velocity63 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 6
  %65 = load double, double* %velocity63, align 8
  %velocity64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end_coords, i32 0, i32 6
  %66 = load double, double* %velocity64, align 8
  %velocity65 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %future_coords, i32 0, i32 6
  %67 = load double, double* %velocity65, align 8
  %call66 = call double @gimp_coords_get_catmull_spline_point(double %63, double %64, double %65, double %66, double %67)
  store double %call66, double* %velocity, align 8
  %68 = load double, double* %velocity, align 8
  %cmp67 = fcmp ogt double %68, 1.000000e+00
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.end.44
  br label %cond.end.77

cond.false.70:                                    ; preds = %cond.end.44
  %69 = load double, double* %velocity, align 8
  %cmp71 = fcmp olt double %69, 0.000000e+00
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false.70
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.false.70
  %70 = load double, double* %velocity, align 8
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi double [ 0.000000e+00, %cond.true.73 ], [ %70, %cond.false.74 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.true.69
  %cond78 = phi double [ 1.000000e+00, %cond.true.69 ], [ %cond76, %cond.end.75 ]
  %velocity79 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 6
  store double %cond78, double* %velocity79, align 8
  %direction80 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start_coords, i32 0, i32 7
  %71 = load double, double* %direction80, align 8
  %72 = load double, double* %dir_step, align 8
  %73 = load i32, i32* %n, align 4
  %conv81 = sitofp i32 %73 to double
  %mul82 = fmul double %72, %conv81
  %add83 = fadd double %71, %mul82
  %direction84 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 7
  store double %add83, double* %direction84, align 8
  %direction85 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 7
  %74 = load double, double* %direction85, align 8
  %direction86 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 7
  %75 = load double, double* %direction86, align 8
  %call87 = call double @floor(double %75) #5
  %sub88 = fsub double %74, %call87
  %direction89 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 7
  store double %sub88, double* %direction89, align 8
  %76 = load %struct._GArray**, %struct._GArray*** %ret_coords.addr, align 8
  %77 = load %struct._GArray*, %struct._GArray** %76, align 8
  %78 = bitcast %struct._GimpCoords* %coords to i8*
  %call90 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %77, i8* %78, i32 1)
  %79 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %tobool = icmp ne %struct._GArray** %79, null
  br i1 %tobool, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %cond.end.77
  %80 = load %struct._GArray**, %struct._GArray*** %ret_params.addr, align 8
  %81 = load %struct._GArray*, %struct._GArray** %80, align 8
  %82 = bitcast double* %p to i8*
  %call92 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %81, i8* %82, i32 1)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %cond.end.77
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %83 = load i32, i32* %n, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define internal double @gimp_coords_get_catmull_spline_point(double %t, double %p0, double %p1, double %p2, double %p3) #0 {
entry:
  %t.addr = alloca double, align 8
  %p0.addr = alloca double, align 8
  %p1.addr = alloca double, align 8
  %p2.addr = alloca double, align 8
  %p3.addr = alloca double, align 8
  store double %t, double* %t.addr, align 8
  store double %p0, double* %p0.addr, align 8
  store double %p1, double* %p1.addr, align 8
  store double %p2, double* %p2.addr, align 8
  store double %p3, double* %p3.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %sub = fsub double -0.000000e+00, %0
  %add = fadd double %sub, 2.000000e+00
  %1 = load double, double* %t.addr, align 8
  %mul = fmul double %add, %1
  %sub1 = fsub double %mul, 1.000000e+00
  %2 = load double, double* %t.addr, align 8
  %mul2 = fmul double %sub1, %2
  %div = fdiv double %mul2, 2.000000e+00
  %3 = load double, double* %p0.addr, align 8
  %mul3 = fmul double %div, %3
  %4 = load double, double* %t.addr, align 8
  %mul4 = fmul double 3.000000e+00, %4
  %sub5 = fsub double %mul4, 5.000000e+00
  %5 = load double, double* %t.addr, align 8
  %mul6 = fmul double %sub5, %5
  %6 = load double, double* %t.addr, align 8
  %mul7 = fmul double %mul6, %6
  %add8 = fadd double %mul7, 2.000000e+00
  %div9 = fdiv double %add8, 2.000000e+00
  %7 = load double, double* %p1.addr, align 8
  %mul10 = fmul double %div9, %7
  %add11 = fadd double %mul3, %mul10
  %8 = load double, double* %t.addr, align 8
  %mul12 = fmul double -3.000000e+00, %8
  %add13 = fadd double %mul12, 4.000000e+00
  %9 = load double, double* %t.addr, align 8
  %mul14 = fmul double %add13, %9
  %add15 = fadd double %mul14, 1.000000e+00
  %10 = load double, double* %t.addr, align 8
  %mul16 = fmul double %add15, %10
  %div17 = fdiv double %mul16, 2.000000e+00
  %11 = load double, double* %p2.addr, align 8
  %mul18 = fmul double %div17, %11
  %add19 = fadd double %add11, %mul18
  %12 = load double, double* %t.addr, align 8
  %sub20 = fsub double %12, 1.000000e+00
  %13 = load double, double* %t.addr, align 8
  %mul21 = fmul double %sub20, %13
  %14 = load double, double* %t.addr, align 8
  %mul22 = fmul double %mul21, %14
  %div23 = fdiv double %mul22, 2.000000e+00
  %15 = load double, double* %p3.addr, align 8
  %mul24 = fmul double %div23, %15
  %add25 = fadd double %add19, %mul24
  ret double %add25
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare void @gimp_coords_average(%struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
