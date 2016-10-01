; ModuleID = './MultiSource.Benchmarks.MallocBench/69.gs.gspath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.gs_point_s = type { float, float }
%struct.gs_fixed_point_s = type { i64, i64 }

; Function Attrs: nounwind uwtable
define i32 @gs_newpath(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  call void @gx_path_release(%struct.gx_path_s* %1)
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* %3, %struct.gs_memory_procs* %memory_procs)
  ret i32 0
}

declare void @gx_path_release(%struct.gx_path_s*) #1

declare void @gx_path_init(%struct.gx_path_s*, %struct.gs_memory_procs*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_closepath(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call = call i32 @gx_path_close_subpath(%struct.gx_path_s* %1)
  ret i32 %call
}

declare i32 @gx_path_close_subpath(%struct.gx_path_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_currentpoint(%struct.gs_state_s* %pgs, %struct.gs_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %1, %struct.gs_fixed_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %5 = load i64, i64* %x, align 8
  %conv = sitofp i64 %5 to double
  %mul = fmul double %conv, 0x3F30000000000000
  %conv1 = fptrunc double %mul to float
  %conv2 = fpext float %conv1 to double
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %6 = load i64, i64* %y, align 8
  %conv3 = sitofp i64 %6 to double
  %mul4 = fmul double %conv3, 0x3F30000000000000
  %conv5 = fptrunc double %mul4 to float
  %conv6 = fpext float %conv5 to double
  %7 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %call7 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* %4, double %conv2, double %conv6, %struct.gs_point_s* %7)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #1

declare i32 @gs_itransform(...) #1

; Function Attrs: nounwind uwtable
define i32 @gs_moveto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %code = alloca i32, align 4
  %pt = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %1, double %2, %struct.gs_fixed_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 7
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %5 = load i64, i64* %x1, align 8
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %6 = load i64, i64* %y2, align 8
  %call3 = call i32 @gx_path_add_point(%struct.gx_path_s* %4, i64 %5, i64 %6)
  store i32 %call3, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #1

declare i32 @gx_path_add_point(%struct.gx_path_s*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gs_rmoveto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %code = alloca i32, align 4
  %dpt = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %1, double %2, %struct.gs_fixed_point_s* %dpt)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 7
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dpt, i32 0, i32 0
  %5 = load i64, i64* %x1, align 8
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dpt, i32 0, i32 1
  %6 = load i64, i64* %y2, align 8
  %call3 = call i32 @gx_path_add_relative_point(%struct.gx_path_s* %4, i64 %5, i64 %6)
  store i32 %call3, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

declare i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #1

declare i32 @gx_path_add_relative_point(%struct.gx_path_s*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gs_lineto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %code = alloca i32, align 4
  %pt = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %1, double %2, %struct.gs_fixed_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 7
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %5 = load i64, i64* %x1, align 8
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %6 = load i64, i64* %y2, align 8
  %call3 = call i32 @gx_path_add_line(%struct.gx_path_s* %4, i64 %5, i64 %6)
  store i32 %call3, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

declare i32 @gx_path_add_line(%struct.gx_path_s*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gs_rlineto(%struct.gs_state_s* %pgs, double %x, double %y) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %cpt = alloca %struct.gs_fixed_point_s, align 8
  %dpt = alloca %struct.gs_fixed_point_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %1, %struct.gs_fixed_point_s* %cpt)
  store i32 %call, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 2
  %5 = load double, double* %x.addr, align 8
  %6 = load double, double* %y.addr, align 8
  %call1 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %5, double %6, %struct.gs_fixed_point_s* %dpt)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 7
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path4, align 8
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %9 = load i64, i64* %x5, align 8
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dpt, i32 0, i32 0
  %10 = load i64, i64* %x6, align 8
  %add = add nsw i64 %9, %10
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %11 = load i64, i64* %y7, align 8
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dpt, i32 0, i32 1
  %12 = load i64, i64* %y8, align 8
  %add9 = add nsw i64 %11, %12
  %call10 = call i32 @gx_path_add_line(%struct.gx_path_s* %8, i64 %add, i64 %add9)
  store i32 %call10, i32* %code, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.3, %if.end
  %13 = load i32, i32* %code, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gs_arc(%struct.gs_state_s* %pgs, double %xc, double %yc, double %r, double %ang1, double %ang2) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %r.addr = alloca double, align 8
  %ang1.addr = alloca double, align 8
  %ang2.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %xc, double* %xc.addr, align 8
  store double %yc, double* %yc.addr, align 8
  store double %r, double* %r.addr, align 8
  store double %ang1, double* %ang1.addr, align 8
  store double %ang2, double* %ang2.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %1 = load double, double* %xc.addr, align 8
  %2 = load double, double* %yc.addr, align 8
  %3 = load double, double* %r.addr, align 8
  %4 = load double, double* %ang1.addr, align 8
  %5 = load double, double* %ang2.addr, align 8
  %call = call i32 @arc_either(%struct.gs_state_s* %0, double %1, double %2, double %3, double %4, double %5, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @arc_either(%struct.gs_state_s* %pgs, double %axc, double %ayc, double %ar, double %aang1, double %aang2, i32 %clockwise) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %axc.addr = alloca double, align 8
  %ayc.addr = alloca double, align 8
  %ar.addr = alloca double, align 8
  %aang1.addr = alloca double, align 8
  %aang2.addr = alloca double, align 8
  %clockwise.addr = alloca i32, align 4
  %ang1 = alloca i64, align 8
  %ang2 = alloca i64, align 8
  %adiff = alloca i64, align 8
  %ang1r = alloca float, align 4
  %x0 = alloca float, align 4
  %y0 = alloca float, align 4
  %sin0 = alloca float, align 4
  %cos0 = alloca float, align 4
  %x3r = alloca float, align 4
  %y3r = alloca float, align 4
  %first = alloca i32, align 4
  %code = alloca i32, align 4
  %w = alloca float, align 4
  %w70 = alloca float, align 4
  %trad = alloca float, align 4
  %ang2r = alloca float, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %axc, double* %axc.addr, align 8
  store double %ayc, double* %ayc.addr, align 8
  store double %ar, double* %ar.addr, align 8
  store double %aang1, double* %aang1.addr, align 8
  store double %aang2, double* %aang2.addr, align 8
  store i32 %clockwise, i32* %clockwise.addr, align 4
  %0 = load double, double* %aang1.addr, align 8
  %mul = fmul double %0, 4.096000e+03
  %conv = fptosi double %mul to i64
  store i64 %conv, i64* %ang1, align 8
  %1 = load double, double* %aang2.addr, align 8
  %mul1 = fmul double %1, 4.096000e+03
  %conv2 = fptosi double %mul1 to i64
  store i64 %conv2, i64* %ang2, align 8
  store i32 1, i32* %first, align 4
  %2 = load double, double* %ar.addr, align 8
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %ang1, align 8
  %4 = load i64, i64* %ang2, align 8
  %cmp4 = icmp ne i64 %3, %4
  br i1 %cmp4, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %if.end
  %5 = load i64, i64* %ang1, align 8
  %rem = srem i64 %5, 1474560
  store i64 %rem, i64* %ang1, align 8
  %6 = load i64, i64* %ang2, align 8
  %rem7 = srem i64 %6, 1474560
  store i64 %rem7, i64* %ang2, align 8
  %7 = load i32, i32* %clockwise.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %8 = load i64, i64* %ang2, align 8
  %9 = load i64, i64* %ang1, align 8
  %cmp9 = icmp sge i64 %8, %9
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %10 = load i64, i64* %ang1, align 8
  %add = add nsw i64 %10, 1474560
  store i64 %add, i64* %ang1, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.18

if.else:                                          ; preds = %if.then.6
  %11 = load i64, i64* %ang2, align 8
  %12 = load i64, i64* %ang1, align 8
  %cmp13 = icmp sle i64 %11, %12
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else
  %13 = load i64, i64* %ang2, align 8
  %add16 = add nsw i64 %13, 1474560
  store i64 %add16, i64* %ang2, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %14 = load i64, i64* %ang1, align 8
  %conv20 = sitofp i64 %14 to double
  %mul21 = fmul double %conv20, 0x3F30000000000000
  %conv22 = fptrunc double %mul21 to float
  %conv23 = fpext float %conv22 to double
  %mul24 = fmul double %conv23, 0x3F91DF46A2529D39
  %conv25 = fptrunc double %mul24 to float
  store float %conv25, float* %ang1r, align 4
  %15 = load double, double* %ar.addr, align 8
  %16 = load float, float* %ang1r, align 4
  %conv26 = fpext float %16 to double
  %call = call double @sin(double %conv26) #4
  %mul27 = fmul double %15, %call
  %conv28 = fptrunc double %mul27 to float
  store float %conv28, float* %sin0, align 4
  %17 = load double, double* %ar.addr, align 8
  %18 = load float, float* %ang1r, align 4
  %conv29 = fpext float %18 to double
  %call30 = call double @cos(double %conv29) #4
  %mul31 = fmul double %17, %call30
  %conv32 = fptrunc double %mul31 to float
  store float %conv32, float* %cos0, align 4
  %19 = load double, double* %axc.addr, align 8
  %20 = load float, float* %cos0, align 4
  %conv33 = fpext float %20 to double
  %add34 = fadd double %19, %conv33
  %conv35 = fptrunc double %add34 to float
  store float %conv35, float* %x0, align 4
  %21 = load double, double* %ayc.addr, align 8
  %22 = load float, float* %sin0, align 4
  %conv36 = fpext float %22 to double
  %add37 = fadd double %21, %conv36
  %conv38 = fptrunc double %add37 to float
  store float %conv38, float* %y0, align 4
  %23 = load i32, i32* %clockwise.addr, align 4
  %tobool39 = icmp ne i32 %23, 0
  br i1 %tobool39, label %if.then.40, label %if.else.64

if.then.40:                                       ; preds = %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.then.40
  %24 = load i64, i64* %ang2, align 8
  %25 = load i64, i64* %ang1, align 8
  %sub = sub nsw i64 %24, %25
  store i64 %sub, i64* %adiff, align 8
  %cmp41 = icmp slt i64 %sub, -368640
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load float, float* %sin0, align 4
  store float %26, float* %w, align 4
  %27 = load float, float* %cos0, align 4
  %sub43 = fsub float -0.000000e+00, %27
  store float %sub43, float* %sin0, align 4
  %28 = load float, float* %w, align 4
  store float %28, float* %cos0, align 4
  %29 = load double, double* %axc.addr, align 8
  %30 = load float, float* %cos0, align 4
  %conv44 = fpext float %30 to double
  %add45 = fadd double %29, %conv44
  %conv46 = fptrunc double %add45 to float
  store float %conv46, float* %x3r, align 4
  %31 = load double, double* %ayc.addr, align 8
  %32 = load float, float* %sin0, align 4
  %conv47 = fpext float %32 to double
  %add48 = fadd double %31, %conv47
  %conv49 = fptrunc double %add48 to float
  store float %conv49, float* %y3r, align 4
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %34 = load float, float* %x0, align 4
  %conv50 = fpext float %34 to double
  %35 = load float, float* %y0, align 4
  %conv51 = fpext float %35 to double
  %36 = load float, float* %x3r, align 4
  %conv52 = fpext float %36 to double
  %37 = load float, float* %y3r, align 4
  %conv53 = fpext float %37 to double
  %38 = load float, float* %x0, align 4
  %39 = load float, float* %cos0, align 4
  %add54 = fadd float %38, %39
  %conv55 = fpext float %add54 to double
  %40 = load float, float* %y0, align 4
  %41 = load float, float* %sin0, align 4
  %add56 = fadd float %40, %41
  %conv57 = fpext float %add56 to double
  %42 = load i32, i32* %first, align 4
  %call58 = call i32 @arc_add(%struct.gs_state_s* %33, double %conv50, double %conv51, double %conv52, double %conv53, double %conv55, double %conv57, i32 %42)
  store i32 %call58, i32* %code, align 4
  %43 = load i32, i32* %code, align 4
  %cmp59 = icmp slt i32 %43, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %while.body
  %44 = load i32, i32* %code, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.62:                                        ; preds = %while.body
  %45 = load float, float* %x3r, align 4
  store float %45, float* %x0, align 4
  %46 = load float, float* %y3r, align 4
  store float %46, float* %y0, align 4
  %47 = load i64, i64* %ang1, align 8
  %sub63 = sub nsw i64 %47, 368640
  store i64 %sub63, i64* %ang1, align 8
  store i32 0, i32* %first, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.93

if.else.64:                                       ; preds = %if.end.19
  br label %while.cond.65

while.cond.65:                                    ; preds = %if.end.90, %if.else.64
  %48 = load i64, i64* %ang2, align 8
  %49 = load i64, i64* %ang1, align 8
  %sub66 = sub nsw i64 %48, %49
  store i64 %sub66, i64* %adiff, align 8
  %cmp67 = icmp sgt i64 %sub66, 368640
  br i1 %cmp67, label %while.body.69, label %while.end.92

while.body.69:                                    ; preds = %while.cond.65
  %50 = load float, float* %cos0, align 4
  store float %50, float* %w70, align 4
  %51 = load float, float* %sin0, align 4
  %sub71 = fsub float -0.000000e+00, %51
  store float %sub71, float* %cos0, align 4
  %52 = load float, float* %w70, align 4
  store float %52, float* %sin0, align 4
  %53 = load double, double* %axc.addr, align 8
  %54 = load float, float* %cos0, align 4
  %conv72 = fpext float %54 to double
  %add73 = fadd double %53, %conv72
  %conv74 = fptrunc double %add73 to float
  store float %conv74, float* %x3r, align 4
  %55 = load double, double* %ayc.addr, align 8
  %56 = load float, float* %sin0, align 4
  %conv75 = fpext float %56 to double
  %add76 = fadd double %55, %conv75
  %conv77 = fptrunc double %add76 to float
  store float %conv77, float* %y3r, align 4
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %58 = load float, float* %x0, align 4
  %conv78 = fpext float %58 to double
  %59 = load float, float* %y0, align 4
  %conv79 = fpext float %59 to double
  %60 = load float, float* %x3r, align 4
  %conv80 = fpext float %60 to double
  %61 = load float, float* %y3r, align 4
  %conv81 = fpext float %61 to double
  %62 = load float, float* %x0, align 4
  %63 = load float, float* %cos0, align 4
  %add82 = fadd float %62, %63
  %conv83 = fpext float %add82 to double
  %64 = load float, float* %y0, align 4
  %65 = load float, float* %sin0, align 4
  %add84 = fadd float %64, %65
  %conv85 = fpext float %add84 to double
  %66 = load i32, i32* %first, align 4
  %call86 = call i32 @arc_add(%struct.gs_state_s* %57, double %conv78, double %conv79, double %conv80, double %conv81, double %conv83, double %conv85, i32 %66)
  store i32 %call86, i32* %code, align 4
  %67 = load i32, i32* %code, align 4
  %cmp87 = icmp slt i32 %67, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %while.body.69
  %68 = load i32, i32* %code, align 4
  store i32 %68, i32* %retval
  br label %return

if.end.90:                                        ; preds = %while.body.69
  %69 = load float, float* %x3r, align 4
  store float %69, float* %x0, align 4
  %70 = load float, float* %y3r, align 4
  store float %70, float* %y0, align 4
  %71 = load i64, i64* %ang1, align 8
  %add91 = add nsw i64 %71, 368640
  store i64 %add91, i64* %ang1, align 8
  store i32 0, i32* %first, align 4
  br label %while.cond.65

while.end.92:                                     ; preds = %while.cond.65
  br label %if.end.93

if.end.93:                                        ; preds = %while.end.92, %while.end
  %72 = load i64, i64* %adiff, align 8
  %cmp94 = icmp eq i64 %72, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  store i32 0, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.93
  %73 = load i64, i64* %adiff, align 8
  %conv98 = sitofp i64 %73 to double
  %mul99 = fmul double %conv98, 0x3F30000000000000
  %conv100 = fptrunc double %mul99 to float
  %conv101 = fpext float %conv100 to double
  %mul102 = fmul double %conv101, 0x3F81DF46A2529D39
  %call103 = call double @tan(double %mul102) #4
  %conv104 = fptrunc double %call103 to float
  store float %conv104, float* %trad, align 4
  %74 = load i64, i64* %ang2, align 8
  %conv105 = sitofp i64 %74 to double
  %mul106 = fmul double %conv105, 0x3F30000000000000
  %conv107 = fptrunc double %mul106 to float
  %conv108 = fpext float %conv107 to double
  %mul109 = fmul double %conv108, 0x3F91DF46A2529D39
  %conv110 = fptrunc double %mul109 to float
  store float %conv110, float* %ang2r, align 4
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %76 = load float, float* %x0, align 4
  %conv111 = fpext float %76 to double
  %77 = load float, float* %y0, align 4
  %conv112 = fpext float %77 to double
  %78 = load double, double* %axc.addr, align 8
  %79 = load double, double* %ar.addr, align 8
  %80 = load float, float* %ang2r, align 4
  %conv113 = fpext float %80 to double
  %call114 = call double @cos(double %conv113) #4
  %mul115 = fmul double %79, %call114
  %add116 = fadd double %78, %mul115
  %81 = load double, double* %ayc.addr, align 8
  %82 = load double, double* %ar.addr, align 8
  %83 = load float, float* %ang2r, align 4
  %conv117 = fpext float %83 to double
  %call118 = call double @sin(double %conv117) #4
  %mul119 = fmul double %82, %call118
  %add120 = fadd double %81, %mul119
  %84 = load float, float* %x0, align 4
  %85 = load float, float* %trad, align 4
  %86 = load float, float* %sin0, align 4
  %mul121 = fmul float %85, %86
  %sub122 = fsub float %84, %mul121
  %conv123 = fpext float %sub122 to double
  %87 = load float, float* %y0, align 4
  %88 = load float, float* %trad, align 4
  %89 = load float, float* %cos0, align 4
  %mul124 = fmul float %88, %89
  %add125 = fadd float %87, %mul124
  %conv126 = fpext float %add125 to double
  %90 = load i32, i32* %first, align 4
  %call127 = call i32 @arc_add(%struct.gs_state_s* %75, double %conv111, double %conv112, double %add116, double %add120, double %conv123, double %conv126, i32 %90)
  store i32 %call127, i32* %code, align 4
  %91 = load i32, i32* %code, align 4
  store i32 %91, i32* %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.then.96, %if.then.89, %if.then.61, %if.then
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define i32 @gs_arcn(%struct.gs_state_s* %pgs, double %xc, double %yc, double %r, double %ang1, double %ang2) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %r.addr = alloca double, align 8
  %ang1.addr = alloca double, align 8
  %ang2.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %xc, double* %xc.addr, align 8
  store double %yc, double* %yc.addr, align 8
  store double %r, double* %r.addr, align 8
  store double %ang1, double* %ang1.addr, align 8
  store double %ang2, double* %ang2.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %1 = load double, double* %xc.addr, align 8
  %2 = load double, double* %yc.addr, align 8
  %3 = load double, double* %r.addr, align 8
  %4 = load double, double* %ang1.addr, align 8
  %5 = load double, double* %ang2.addr, align 8
  %call = call i32 @arc_either(%struct.gs_state_s* %0, double %1, double %2, double %3, double %4, double %5, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define i32 @arc_add(%struct.gs_state_s* %pgs, double %x0, double %y0, double %x3, double %y3, double %xt, double %yt, i32 %first) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %xt.addr = alloca double, align 8
  %yt.addr = alloca double, align 8
  %first.addr = alloca i32, align 4
  %path = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %p0 = alloca %struct.gs_fixed_point_s, align 8
  %p3 = alloca %struct.gs_fixed_point_s, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 8
  %cpt = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %x3, double* %x3.addr, align 8
  store double %y3, double* %y3.addr, align 8
  store double %xt, double* %xt.addr, align 8
  store double %yt, double* %yt.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8
  store %struct.gx_path_s* %1, %struct.gx_path_s** %path, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 2
  %3 = load double, double* %x0.addr, align 8
  %4 = load double, double* %y0.addr, align 8
  %call = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %3, double %4, %struct.gs_fixed_point_s* %p0)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 2
  %6 = load double, double* %x3.addr, align 8
  %7 = load double, double* %y3.addr, align 8
  %call3 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm2, double %6, double %7, %struct.gs_fixed_point_s* %p3)
  store i32 %call3, i32* %code, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 2
  %9 = load double, double* %xt.addr, align 8
  %10 = load double, double* %yt.addr, align 8
  %call7 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm6, double %9, double %10, %struct.gs_fixed_point_s* %pt)
  store i32 %call7, i32* %code, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %11 = load i32, i32* %first.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.9
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call10 = call i32 @gx_path_current_point(%struct.gx_path_s* %12, %struct.gs_fixed_point_s* %cpt)
  %cmp11 = icmp sge i32 %call10, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 0
  %14 = load i64, i64* %x, align 8
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 1
  %15 = load i64, i64* %y, align 8
  %call12 = call i32 @gx_path_add_line(%struct.gx_path_s* %13, i64 %14, i64 %15)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 0
  %17 = load i64, i64* %x13, align 8
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 1
  %18 = load i64, i64* %y14, align 8
  %call15 = call i32 @gx_path_add_point(%struct.gx_path_s* %16, i64 %17, i64 %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call12, %cond.true ], [ %call15, %cond.false ]
  store i32 %cond, i32* %code, align 4
  %cmp16 = icmp slt i32 %cond, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end, %lor.lhs.false.5, %lor.lhs.false, %entry
  %19 = load i32, i32* %code, align 4
  store i32 %19, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end, %lor.lhs.false.9
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 0
  %21 = load i64, i64* %x17, align 8
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 1
  %22 = load i64, i64* %y18, align 8
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %23 = load i64, i64* %x19, align 8
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %24 = load i64, i64* %y20, align 8
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %25 = load i64, i64* %x21, align 8
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %26 = load i64, i64* %y22, align 8
  %call23 = call i32 @gx_path_add_arc(%struct.gx_path_s* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26)
  store i32 %call23, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind uwtable
define i32 @gs_arcto(%struct.gs_state_s* %pgs, double %ax1, double %ay1, double %ax2, double %ay2, double %arad, float* %retxy) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ax1.addr = alloca double, align 8
  %ay1.addr = alloca double, align 8
  %ax2.addr = alloca double, align 8
  %ay2.addr = alloca double, align 8
  %arad.addr = alloca double, align 8
  %retxy.addr = alloca float*, align 8
  %xt0 = alloca float, align 4
  %yt0 = alloca float, align 4
  %xt2 = alloca float, align 4
  %yt2 = alloca float, align 4
  %up0 = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  %dx0 = alloca float, align 4
  %dy0 = alloca float, align 4
  %dx2 = alloca float, align 4
  %dy2 = alloca float, align 4
  %sql0 = alloca double, align 8
  %sql2 = alloca double, align 8
  %num = alloca double, align 8
  %denom = alloca double, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 8
  %dist = alloca double, align 8
  %l0 = alloca double, align 8
  %l2 = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %ax1, double* %ax1.addr, align 8
  store double %ay1, double* %ay1.addr, align 8
  store double %ax2, double* %ax2.addr, align 8
  store double %ay2, double* %ay2.addr, align 8
  store double %arad, double* %arad.addr, align 8
  store float* %retxy, float** %retxy.addr, align 8
  %0 = load double, double* %arad.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @gs_currentpoint(%struct.gs_state_s* %1, %struct.gs_point_s* %up0)
  store i32 %call, i32* %code, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %up0, i32 0, i32 0
  %3 = load float, float* %x, align 4
  %conv = fpext float %3 to double
  %4 = load double, double* %ax1.addr, align 8
  %sub = fsub double %conv, %4
  %conv4 = fptrunc double %sub to float
  store float %conv4, float* %dx0, align 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %up0, i32 0, i32 1
  %5 = load float, float* %y, align 4
  %conv5 = fpext float %5 to double
  %6 = load double, double* %ay1.addr, align 8
  %sub6 = fsub double %conv5, %6
  %conv7 = fptrunc double %sub6 to float
  store float %conv7, float* %dy0, align 4
  %7 = load double, double* %ax2.addr, align 8
  %8 = load double, double* %ax1.addr, align 8
  %sub8 = fsub double %7, %8
  %conv9 = fptrunc double %sub8 to float
  store float %conv9, float* %dx2, align 4
  %9 = load double, double* %ay2.addr, align 8
  %10 = load double, double* %ay1.addr, align 8
  %sub10 = fsub double %9, %10
  %conv11 = fptrunc double %sub10 to float
  store float %conv11, float* %dy2, align 4
  %11 = load float, float* %dx0, align 4
  %12 = load float, float* %dx0, align 4
  %mul = fmul float %11, %12
  %13 = load float, float* %dy0, align 4
  %14 = load float, float* %dy0, align 4
  %mul12 = fmul float %13, %14
  %add = fadd float %mul, %mul12
  %conv13 = fpext float %add to double
  store double %conv13, double* %sql0, align 8
  %15 = load float, float* %dx2, align 4
  %16 = load float, float* %dx2, align 4
  %mul14 = fmul float %15, %16
  %17 = load float, float* %dy2, align 4
  %18 = load float, float* %dy2, align 4
  %mul15 = fmul float %17, %18
  %add16 = fadd float %mul14, %mul15
  %conv17 = fpext float %add16 to double
  store double %conv17, double* %sql2, align 8
  %19 = load float, float* %dy0, align 4
  %20 = load float, float* %dx2, align 4
  %mul18 = fmul float %19, %20
  %21 = load float, float* %dy2, align 4
  %22 = load float, float* %dx0, align 4
  %mul19 = fmul float %21, %22
  %sub20 = fsub float %mul18, %mul19
  %conv21 = fpext float %sub20 to double
  store double %conv21, double* %num, align 8
  %23 = load double, double* %sql0, align 8
  %24 = load double, double* %sql2, align 8
  %mul22 = fmul double %23, %24
  %call23 = call double @sqrt(double %mul22) #4
  %25 = load float, float* %dx0, align 4
  %26 = load float, float* %dx2, align 4
  %mul24 = fmul float %25, %26
  %27 = load float, float* %dy0, align 4
  %28 = load float, float* %dy2, align 4
  %mul25 = fmul float %27, %28
  %add26 = fadd float %mul24, %mul25
  %conv27 = fpext float %add26 to double
  %sub28 = fsub double %call23, %conv27
  store double %sub28, double* %denom, align 8
  %29 = load double, double* %num, align 8
  %call29 = call double @fabs(double %29) #5
  %cmp30 = fcmp olt double %call29, 1.000000e-06
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %30 = load double, double* %denom, align 8
  %call32 = call double @fabs(double %30) #5
  %cmp33 = fcmp olt double %call32, 1.000000e-06
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.3
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 2
  %32 = load double, double* %ax1.addr, align 8
  %33 = load double, double* %ay1.addr, align 8
  %call36 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %32, double %33, %struct.gs_fixed_point_s* %pt)
  store i32 %call36, i32* %code, align 4
  %34 = load i32, i32* %code, align 4
  %cmp37 = icmp sge i32 %34, 0
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.then.35
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 7
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %37 = load i64, i64* %x40, align 8
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %38 = load i64, i64* %y41, align 8
  %call42 = call i32 @gx_path_add_line(%struct.gx_path_s* %36, i64 %37, i64 %38)
  store i32 %call42, i32* %code, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.then.35
  %39 = load double, double* %ax1.addr, align 8
  %conv44 = fptrunc double %39 to float
  store float %conv44, float* %xt2, align 4
  store float %conv44, float* %xt0, align 4
  %40 = load double, double* %ay1.addr, align 8
  %conv45 = fptrunc double %40 to float
  store float %conv45, float* %yt2, align 4
  store float %conv45, float* %yt0, align 4
  br label %if.end.73

if.else:                                          ; preds = %lor.lhs.false
  %41 = load double, double* %arad.addr, align 8
  %42 = load double, double* %num, align 8
  %mul46 = fmul double %41, %42
  %43 = load double, double* %denom, align 8
  %div = fdiv double %mul46, %43
  %call47 = call double @fabs(double %div) #5
  store double %call47, double* %dist, align 8
  %44 = load double, double* %dist, align 8
  %45 = load double, double* %sql0, align 8
  %call48 = call double @sqrt(double %45) #4
  %div49 = fdiv double %44, %call48
  store double %div49, double* %l0, align 8
  %46 = load double, double* %dist, align 8
  %47 = load double, double* %sql2, align 8
  %call50 = call double @sqrt(double %47) #4
  %div51 = fdiv double %46, %call50
  store double %div51, double* %l2, align 8
  %48 = load double, double* %ax1.addr, align 8
  %49 = load float, float* %dx0, align 4
  %conv52 = fpext float %49 to double
  %50 = load double, double* %l0, align 8
  %mul53 = fmul double %conv52, %50
  %add54 = fadd double %48, %mul53
  %conv55 = fptrunc double %add54 to float
  store float %conv55, float* %xt0, align 4
  %51 = load double, double* %ay1.addr, align 8
  %52 = load float, float* %dy0, align 4
  %conv56 = fpext float %52 to double
  %53 = load double, double* %l0, align 8
  %mul57 = fmul double %conv56, %53
  %add58 = fadd double %51, %mul57
  %conv59 = fptrunc double %add58 to float
  store float %conv59, float* %yt0, align 4
  %54 = load double, double* %ax1.addr, align 8
  %55 = load float, float* %dx2, align 4
  %conv60 = fpext float %55 to double
  %56 = load double, double* %l2, align 8
  %mul61 = fmul double %conv60, %56
  %add62 = fadd double %54, %mul61
  %conv63 = fptrunc double %add62 to float
  store float %conv63, float* %xt2, align 4
  %57 = load double, double* %ay1.addr, align 8
  %58 = load float, float* %dy2, align 4
  %conv64 = fpext float %58 to double
  %59 = load double, double* %l2, align 8
  %mul65 = fmul double %conv64, %59
  %add66 = fadd double %57, %mul65
  %conv67 = fptrunc double %add66 to float
  store float %conv67, float* %yt2, align 4
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %61 = load float, float* %xt0, align 4
  %conv68 = fpext float %61 to double
  %62 = load float, float* %yt0, align 4
  %conv69 = fpext float %62 to double
  %63 = load float, float* %xt2, align 4
  %conv70 = fpext float %63 to double
  %64 = load float, float* %yt2, align 4
  %conv71 = fpext float %64 to double
  %65 = load double, double* %ax1.addr, align 8
  %66 = load double, double* %ay1.addr, align 8
  %call72 = call i32 @arc_add(%struct.gs_state_s* %60, double %conv68, double %conv69, double %conv70, double %conv71, double %65, double %66, i32 1)
  store i32 %call72, i32* %code, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.end.43
  %67 = load float*, float** %retxy.addr, align 8
  %cmp74 = icmp ne float* %67, null
  br i1 %cmp74, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %if.end.73
  %68 = load float, float* %xt0, align 4
  %69 = load float*, float** %retxy.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %69, i64 0
  store float %68, float* %arrayidx, align 4
  %70 = load float, float* %yt0, align 4
  %71 = load float*, float** %retxy.addr, align 8
  %arrayidx77 = getelementptr inbounds float, float* %71, i64 1
  store float %70, float* %arrayidx77, align 4
  %72 = load float, float* %xt2, align 4
  %73 = load float*, float** %retxy.addr, align 8
  %arrayidx78 = getelementptr inbounds float, float* %73, i64 2
  store float %72, float* %arrayidx78, align 4
  %74 = load float, float* %yt2, align 4
  %75 = load float*, float** %retxy.addr, align 8
  %arrayidx79 = getelementptr inbounds float, float* %75, i64 3
  store float %74, float* %arrayidx79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %if.end.73
  %76 = load i32, i32* %code, align 4
  store i32 %76, i32* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.2, %if.then
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gx_path_add_arc(%struct.gx_path_s*, i64, i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gs_curveto(%struct.gs_state_s* %pgs, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %p1 = alloca %struct.gs_fixed_point_s, align 8
  %p2 = alloca %struct.gs_fixed_point_s, align 8
  %p3 = alloca %struct.gs_fixed_point_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x3, double* %x3.addr, align 8
  store double %y3, double* %y3.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = load double, double* %x1.addr, align 8
  %2 = load double, double* %y1.addr, align 8
  %call = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %1, double %2, %struct.gs_fixed_point_s* %p1)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 2
  %4 = load double, double* %x2.addr, align 8
  %5 = load double, double* %y2.addr, align 8
  %call2 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm1, double %4, double %5, %struct.gs_fixed_point_s* %p2)
  store i32 %call2, i32* %code, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 2
  %7 = load double, double* %x3.addr, align 8
  %8 = load double, double* %y3.addr, align 8
  %call6 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm5, double %7, double %8, %struct.gs_fixed_point_s* %p3)
  store i32 %call6, i32* %code, align 4
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %9 = load i32, i32* %code, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %12 = load i64, i64* %x, align 8
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %13 = load i64, i64* %y, align 8
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %14 = load i64, i64* %x8, align 8
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %15 = load i64, i64* %y9, align 8
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %16 = load i64, i64* %x10, align 8
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %17 = load i64, i64* %y11, align 8
  %call12 = call i32 @gx_path_add_curve(%struct.gx_path_s* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gx_path_add_curve(%struct.gx_path_s*, i64, i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gs_rcurveto(%struct.gs_state_s* %pgs, double %dx1, double %dy1, double %dx2, double %dy2, double %dx3, double %dy3) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx1.addr = alloca double, align 8
  %dy1.addr = alloca double, align 8
  %dx2.addr = alloca double, align 8
  %dy2.addr = alloca double, align 8
  %dx3.addr = alloca double, align 8
  %dy3.addr = alloca double, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 8
  %p1 = alloca %struct.gs_fixed_point_s, align 8
  %p2 = alloca %struct.gs_fixed_point_s, align 8
  %p3 = alloca %struct.gs_fixed_point_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %dx1, double* %dx1.addr, align 8
  store double %dy1, double* %dy1.addr, align 8
  store double %dx2, double* %dx2.addr, align 8
  store double %dy2, double* %dy2.addr, align 8
  store double %dx3, double* %dx3.addr, align 8
  store double %dy3, double* %dy3.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %1, %struct.gs_fixed_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 2
  %5 = load double, double* %dx1.addr, align 8
  %6 = load double, double* %dy1.addr, align 8
  %call1 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %5, double %6, %struct.gs_fixed_point_s* %p1)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 2
  %8 = load double, double* %dx2.addr, align 8
  %9 = load double, double* %dy2.addr, align 8
  %call4 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm3, double %8, double %9, %struct.gs_fixed_point_s* %p2)
  store i32 %call4, i32* %code, align 4
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 2
  %11 = load double, double* %dx3.addr, align 8
  %12 = load double, double* %dy3.addr, align 8
  %call8 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm7, double %11, double %12, %struct.gs_fixed_point_s* %p3)
  store i32 %call8, i32* %code, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %13 = load i32, i32* %code, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false.6
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 7
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %path12, align 8
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %16 = load i64, i64* %x, align 8
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %17 = load i64, i64* %x13, align 8
  %add = add nsw i64 %16, %17
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %18 = load i64, i64* %y, align 8
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %19 = load i64, i64* %y14, align 8
  %add15 = add nsw i64 %18, %19
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %20 = load i64, i64* %x16, align 8
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %21 = load i64, i64* %x17, align 8
  %add18 = add nsw i64 %20, %21
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %22 = load i64, i64* %y19, align 8
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %23 = load i64, i64* %y20, align 8
  %add21 = add nsw i64 %22, %23
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %24 = load i64, i64* %x22, align 8
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %25 = load i64, i64* %x23, align 8
  %add24 = add nsw i64 %24, %25
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %26 = load i64, i64* %y25, align 8
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %27 = load i64, i64* %y26, align 8
  %add27 = add nsw i64 %26, %27
  %call28 = call i32 @gx_path_add_curve(%struct.gx_path_s* %15, i64 %add, i64 %add15, i64 %add18, i64 %add21, i64 %add24, i64 %add27)
  store i32 %call28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
