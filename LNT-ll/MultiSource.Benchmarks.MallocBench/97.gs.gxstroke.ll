; ModuleID = './MultiSource.Benchmarks.MallocBench/97.gs.gxstroke.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.line_params_s = type { float, i32, i32, float, float, %struct.dash_params_s }
%struct.dash_params_s = type { float*, i32, float, i32, i32, float }
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.partial_line_s = type { %struct.endpoint_s, %struct.endpoint_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32 }
%struct.endpoint_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.line_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_point_s = type { float, float }

@stroke_path = common global %struct.gx_path_s* null, align 8
@stroke_path_body = common global %struct.gx_path_s zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define i32 @gx_stroke_fill(%struct.gx_path_s* %ppath, %struct.gs_state_s* %pgs) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gx_path_s* null, %struct.gx_path_s** @stroke_path, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @stroke(%struct.gx_path_s* %0, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)* @stroke_fill, %struct.gs_state_s* %1)
  store i32 %call, i32* %code, align 4
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %tobool = icmp ne %struct.gx_path_s* %2, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 14
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call2 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* %4, %struct.gx_device_color_s* %6, %struct.gs_state_s* %7, i32 -1, i64 0)
  store i32 %call2, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  call void @gx_path_release(%struct.gx_path_s* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %code, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @stroke(%struct.gx_path_s* %ppath, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)* %line_proc, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %line_proc.addr = alloca i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %psub = alloca %struct.subpath*, align 8
  %code = alloca i32, align 4
  %dash = alloca %struct.dash_params_s*, align 8
  %dashes = alloca float*, align 8
  %dash_count = alloca i32, align 4
  %fpath = alloca %struct.gx_path_s, align 8
  %skewed = alloca i32, align 4
  %line_width = alloca float, align 4
  %xx = alloca float, align 4
  %yy = alloca float, align 4
  %always_thin = alloca i32, align 4
  %line_width_and_scale = alloca float, align 4
  %xxa = alloca float, align 4
  %yya = alloca float, align 4
  %segcount = alloca i32, align 4
  %pline = alloca %struct.line_segment*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %pl = alloca %struct.partial_line_s, align 8
  %pl_prev = alloca %struct.partial_line_s, align 8
  %pl_first = alloca %struct.partial_line_s, align 8
  %first = alloca i32, align 4
  %ink_on = alloca i8, align 1
  %dash_index = alloca i32, align 4
  %dist_left = alloca float, align 4
  %index = alloca i32, align 4
  %sx = alloca i64, align 8
  %sy = alloca i64, align 8
  %udx = alloca i64, align 8
  %udy = alloca i64, align 8
  %unscaled_dist = alloca float, align 4
  %dpt = alloca %struct.gs_point_s, align 4
  %wl = alloca float, align 4
  %dist_total = alloca float, align 4
  %dist = alloca float, align 4
  %dx = alloca float, align 4
  %dy = alloca float, align 4
  %fraction = alloca float, align 4
  %nx = alloca i64, align 8
  %ny = alloca i64, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)* %line_proc, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)** %line_proc.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 10
  %1 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %dash1 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %1, i32 0, i32 5
  store %struct.dash_params_s* %dash1, %struct.dash_params_s** %dash, align 8
  %2 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %pattern = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %2, i32 0, i32 0
  %3 = load float*, float** %pattern, align 8
  store float* %3, float** %dashes, align 8
  %4 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %pattern_size = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %4, i32 0, i32 1
  %5 = load i32, i32* %pattern_size, align 4
  store i32 %5, i32* %dash_count, align 4
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 2
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 2
  %7 = bitcast float* %xy to i64*
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 2
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 4
  %10 = bitcast float* %yx to i64*
  %11 = load i64, i64* %10, align 8
  %or = or i64 %8, %11
  %shl = shl i64 %or, 1
  %cmp = icmp eq i64 %shl, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %skewed, align 4
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 10
  %13 = load %struct.line_params_s*, %struct.line_params_s** %line_params3, align 8
  %width = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %13, i32 0, i32 0
  %14 = load float, float* %width, align 4
  store float %14, float* %line_width, align 4
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 2
  %xx5 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm4, i32 0, i32 0
  %16 = load float, float* %xx5, align 4
  store float %16, float* %xx, align 4
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 2
  %yy7 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 6
  %18 = load float, float* %yy7, align 4
  store float %18, float* %yy, align 4
  %19 = bitcast float* %line_width to i64*
  %20 = load i64, i64* %19, align 8
  %shl8 = shl i64 %20, 1
  %cmp9 = icmp eq i64 %shl8, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %always_thin, align 4
  store float 0x3F847AE140000000, float* %line_width, align 4
  br label %if.end.22

if.else:                                          ; preds = %entry
  %21 = load i32, i32* %skewed, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 0, i32* %always_thin, align 4
  br label %if.end.21

if.else.11:                                       ; preds = %if.else
  %22 = load float, float* %xx, align 4
  store float %22, float* %xxa, align 4
  %23 = load float, float* %yy, align 4
  store float %23, float* %yya, align 4
  %24 = load float, float* %xxa, align 4
  %cmp12 = fcmp olt float %24, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.11
  %25 = load float, float* %xxa, align 4
  %sub = fsub float -0.000000e+00, %25
  store float %sub, float* %xxa, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else.11
  %26 = load float, float* %yya, align 4
  %cmp14 = fcmp olt float %26, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %27 = load float, float* %yya, align 4
  %sub16 = fsub float -0.000000e+00, %27
  store float %sub16, float* %yya, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  %28 = load float, float* %xxa, align 4
  %29 = load float, float* %yya, align 4
  %cmp18 = fcmp ogt float %28, %29
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %30 = load float, float* %xxa, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %31 = load float, float* %yya, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %30, %cond.true ], [ %31, %cond.false ]
  %32 = load float, float* %line_width, align 4
  %mul = fmul float %cond, %32
  %conv = fpext float %mul to double
  %cmp19 = fcmp olt double %conv, 7.500000e-01
  %conv20 = zext i1 %cmp19 to i32
  store i32 %conv20, i32* %always_thin, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %if.then.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %33 = load i32, i32* %always_thin, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.22
  %34 = load float, float* %line_width, align 4
  %mul25 = fmul float %34, 4.096000e+03
  store float %mul25, float* %line_width_and_scale, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %35, i32 0, i32 8
  %36 = load i32, i32* %curve_count, align 4
  %tobool27 = icmp ne i32 %36, 0
  br i1 %tobool27, label %if.else.32, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 4
  %38 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  store %struct.subpath* %38, %struct.subpath** %psub, align 8
  %39 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %tobool29 = icmp ne %struct.subpath* %39, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.28
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.28
  br label %if.end.39

if.else.32:                                       ; preds = %if.end.26
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 21
  %42 = load float, float* %flatness, align 4
  %conv33 = fpext float %42 to double
  %call = call i32 @gx_path_flatten(%struct.gx_path_s* %40, %struct.gx_path_s* %fpath, double %conv33)
  store i32 %call, i32* %code, align 4
  %cmp34 = icmp slt i32 %call, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.32
  %43 = load i32, i32* %code, align 4
  store i32 %43, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.else.32
  %first_subpath38 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %fpath, i32 0, i32 4
  %44 = load %struct.subpath*, %struct.subpath** %first_subpath38, align 8
  store %struct.subpath* %44, %struct.subpath** %psub, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.37, %if.end.31
  br label %while.cond

while.cond:                                       ; preds = %if.end.376, %if.end.39
  %45 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %tobool40 = icmp ne %struct.subpath* %45, null
  br i1 %tobool40, label %while.body, label %while.end.377

while.body:                                       ; preds = %while.cond
  %46 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %line_count = getelementptr inbounds %struct.subpath, %struct.subpath* %46, i32 0, i32 5
  %47 = load i32, i32* %line_count, align 4
  store i32 %47, i32* %segcount, align 4
  %48 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %next = getelementptr inbounds %struct.subpath, %struct.subpath* %48, i32 0, i32 1
  %49 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  %50 = bitcast %struct.segment_s* %49 to %struct.line_segment*
  store %struct.line_segment* %50, %struct.line_segment** %pline, align 8
  %51 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt = getelementptr inbounds %struct.subpath, %struct.subpath* %51, i32 0, i32 3
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %52 = load i64, i64* %x41, align 8
  store i64 %52, i64* %x, align 8
  %53 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt42 = getelementptr inbounds %struct.subpath, %struct.subpath* %53, i32 0, i32 3
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt42, i32 0, i32 1
  %54 = load i64, i64* %y43, align 8
  store i64 %54, i64* %y, align 8
  store i32 0, i32* %first, align 4
  %55 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %init_ink_on = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %55, i32 0, i32 3
  %56 = load i32, i32* %init_ink_on, align 4
  %conv44 = trunc i32 %56 to i8
  store i8 %conv44, i8* %ink_on, align 1
  %57 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %init_index = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %57, i32 0, i32 4
  %58 = load i32, i32* %init_index, align 4
  store i32 %58, i32* %dash_index, align 4
  %59 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %init_dist_left = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %59, i32 0, i32 5
  %60 = load float, float* %init_dist_left, align 4
  store float %60, float* %dist_left, align 4
  store i32 0, i32* %index, align 4
  br label %while.cond.45

while.cond.45:                                    ; preds = %no_line, %while.body
  %61 = load i32, i32* %segcount, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %segcount, align 4
  %tobool46 = icmp ne i32 %61, 0
  br i1 %tobool46, label %while.body.47, label %while.end.354

while.body.47:                                    ; preds = %while.cond.45
  %62 = load %struct.line_segment*, %struct.line_segment** %pline, align 8
  %pt48 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %62, i32 0, i32 3
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt48, i32 0, i32 0
  %63 = load i64, i64* %x49, align 8
  store i64 %63, i64* %sx, align 8
  %64 = load %struct.line_segment*, %struct.line_segment** %pline, align 8
  %pt50 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %64, i32 0, i32 3
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt50, i32 0, i32 1
  %65 = load i64, i64* %y51, align 8
  store i64 %65, i64* %sy, align 8
  %66 = load i64, i64* %sx, align 8
  %67 = load i64, i64* %x, align 8
  %cmp52 = icmp eq i64 %66, %67
  br i1 %cmp52, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %while.body.47
  %68 = load i64, i64* %sy, align 8
  %69 = load i64, i64* %y, align 8
  %cmp54 = icmp eq i64 %68, %69
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true
  br label %no_line

if.end.57:                                        ; preds = %land.lhs.true, %while.body.47
  %70 = load i32, i32* %always_thin, align 4
  %tobool58 = icmp ne i32 %70, 0
  br i1 %tobool58, label %lor.lhs.false, label %if.then.60

lor.lhs.false:                                    ; preds = %if.end.57
  %71 = load i32, i32* %dash_count, align 4
  %tobool59 = icmp ne i32 %71, 0
  br i1 %tobool59, label %if.then.60, label %if.else.204

if.then.60:                                       ; preds = %lor.lhs.false, %if.end.57
  %72 = load i64, i64* %sx, align 8
  %73 = load i64, i64* %x, align 8
  %sub61 = sub nsw i64 %72, %73
  store i64 %sub61, i64* %udx, align 8
  %74 = load i64, i64* %sy, align 8
  %75 = load i64, i64* %y, align 8
  %sub62 = sub nsw i64 %74, %75
  store i64 %sub62, i64* %udy, align 8
  %76 = load i32, i32* %skewed, align 4
  %tobool63 = icmp ne i32 %76, 0
  br i1 %tobool63, label %if.then.64, label %if.else.70

if.then.64:                                       ; preds = %if.then.60
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %78 = load i64, i64* %udx, align 8
  %conv65 = sitofp i64 %78 to float
  %conv66 = fpext float %conv65 to double
  %79 = load i64, i64* %udy, align 8
  %conv67 = sitofp i64 %79 to float
  %conv68 = fpext float %conv67 to double
  %call69 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_idtransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* %77, double %conv66, double %conv68, %struct.gs_point_s* %dpt)
  br label %if.end.76

if.else.70:                                       ; preds = %if.then.60
  %80 = load i64, i64* %udx, align 8
  %conv71 = sitofp i64 %80 to float
  %81 = load float, float* %xx, align 4
  %div = fdiv float %conv71, %81
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  store float %div, float* %x72, align 4
  %82 = load i64, i64* %udy, align 8
  %conv73 = sitofp i64 %82 to float
  %83 = load float, float* %yy, align 4
  %div74 = fdiv float %conv73, %83
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  store float %div74, float* %y75, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.70, %if.then.64
  %x77 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %84 = load float, float* %x77, align 4
  %x78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %85 = load float, float* %x78, align 4
  %mul79 = fmul float %84, %85
  %y80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %86 = load float, float* %y80, align 4
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %87 = load float, float* %y81, align 4
  %mul82 = fmul float %86, %87
  %add = fadd float %mul79, %mul82
  %conv83 = fpext float %add to double
  %call84 = call double @sqrt(double %conv83) #3
  %conv85 = fptrunc double %call84 to float
  store float %conv85, float* %unscaled_dist, align 4
  %88 = load i32, i32* %always_thin, align 4
  %tobool86 = icmp ne i32 %88, 0
  br i1 %tobool86, label %if.else.193, label %if.then.87

if.then.87:                                       ; preds = %if.end.76
  %89 = load float, float* %line_width_and_scale, align 4
  %90 = load float, float* %unscaled_dist, align 4
  %div88 = fdiv float %89, %90
  store float %div88, float* %wl, align 4
  %91 = load float, float* %wl, align 4
  %x89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %92 = load float, float* %x89, align 4
  %mul90 = fmul float %92, %91
  store float %mul90, float* %x89, align 4
  %93 = load float, float* %wl, align 4
  %y91 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %94 = load float, float* %y91, align 4
  %mul92 = fmul float %94, %93
  store float %mul92, float* %y91, align 4
  %y93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %95 = load float, float* %y93, align 4
  %96 = load float, float* %xx, align 4
  %mul94 = fmul float %95, %96
  %conv95 = fptosi float %mul94 to i64
  %sub96 = sub nsw i64 0, %conv95
  %width97 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width97, i32 0, i32 0
  store i64 %sub96, i64* %x98, align 8
  %x99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %97 = load float, float* %x99, align 4
  %98 = load float, float* %yy, align 4
  %mul100 = fmul float %97, %98
  %conv101 = fptosi float %mul100 to i64
  %width102 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width102, i32 0, i32 1
  store i64 %conv101, i64* %y103, align 8
  %99 = load i32, i32* %skewed, align 4
  %tobool104 = icmp ne i32 %99, 0
  br i1 %tobool104, label %if.then.105, label %if.end.122

if.then.105:                                      ; preds = %if.then.87
  %x106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %100 = load float, float* %x106, align 4
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm107 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %101, i32 0, i32 2
  %yx108 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm107, i32 0, i32 4
  %102 = load float, float* %yx108, align 4
  %mul109 = fmul float %100, %102
  %conv110 = fptosi float %mul109 to i64
  %width111 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width111, i32 0, i32 0
  %103 = load i64, i64* %x112, align 8
  %add113 = add nsw i64 %103, %conv110
  store i64 %add113, i64* %x112, align 8
  %y114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %104 = load float, float* %y114, align 4
  %105 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm115 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %105, i32 0, i32 2
  %xy116 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm115, i32 0, i32 2
  %106 = load float, float* %xy116, align 4
  %mul117 = fmul float %104, %106
  %conv118 = fptosi float %mul117 to i64
  %width119 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width119, i32 0, i32 1
  %107 = load i64, i64* %y120, align 8
  %sub121 = sub nsw i64 %107, %conv118
  store i64 %sub121, i64* %y120, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.105, %if.then.87
  %width123 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width123, i32 0, i32 0
  %108 = load i64, i64* %x124, align 8
  %cmp125 = icmp slt i64 %108, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.131

cond.true.127:                                    ; preds = %if.end.122
  %width128 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x129 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width128, i32 0, i32 0
  %109 = load i64, i64* %x129, align 8
  %sub130 = sub nsw i64 0, %109
  br label %cond.end.134

cond.false.131:                                   ; preds = %if.end.122
  %width132 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width132, i32 0, i32 0
  %110 = load i64, i64* %x133, align 8
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.131, %cond.true.127
  %cond135 = phi i64 [ %sub130, %cond.true.127 ], [ %110, %cond.false.131 ]
  %width136 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y137 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width136, i32 0, i32 1
  %111 = load i64, i64* %y137, align 8
  %cmp138 = icmp slt i64 %111, 0
  br i1 %cmp138, label %cond.true.140, label %cond.false.144

cond.true.140:                                    ; preds = %cond.end.134
  %width141 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width141, i32 0, i32 1
  %112 = load i64, i64* %y142, align 8
  %sub143 = sub nsw i64 0, %112
  br label %cond.end.147

cond.false.144:                                   ; preds = %cond.end.134
  %width145 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width145, i32 0, i32 1
  %113 = load i64, i64* %y146, align 8
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.144, %cond.true.140
  %cond148 = phi i64 [ %sub143, %cond.true.140 ], [ %113, %cond.false.144 ]
  %add149 = add nsw i64 %cond135, %cond148
  %cmp150 = icmp slt i64 %add149, 3072
  %conv151 = zext i1 %cmp150 to i32
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  store i32 %conv151, i32* %thin, align 4
  %thin152 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  %114 = load i32, i32* %thin152, align 4
  %tobool153 = icmp ne i32 %114, 0
  br i1 %tobool153, label %if.then.154, label %if.else.162

if.then.154:                                      ; preds = %cond.end.147
  %width155 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width155, i32 0, i32 1
  store i64 0, i64* %y156, align 8
  %width157 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width157, i32 0, i32 0
  store i64 0, i64* %x158, align 8
  %cap_length = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %y159 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length, i32 0, i32 1
  store i64 0, i64* %y159, align 8
  %cap_length160 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %x161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length160, i32 0, i32 0
  store i64 0, i64* %x161, align 8
  br label %if.end.192

if.else.162:                                      ; preds = %cond.end.147
  %x163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %115 = load float, float* %x163, align 4
  %116 = load float, float* %xx, align 4
  %mul164 = fmul float %115, %116
  %conv165 = fptosi float %mul164 to i64
  %cap_length166 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %x167 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length166, i32 0, i32 0
  store i64 %conv165, i64* %x167, align 8
  %y168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %117 = load float, float* %y168, align 4
  %118 = load float, float* %yy, align 4
  %mul169 = fmul float %117, %118
  %conv170 = fptosi float %mul169 to i64
  %cap_length171 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %y172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length171, i32 0, i32 1
  store i64 %conv170, i64* %y172, align 8
  %119 = load i32, i32* %skewed, align 4
  %tobool173 = icmp ne i32 %119, 0
  br i1 %tobool173, label %if.then.174, label %if.end.191

if.then.174:                                      ; preds = %if.else.162
  %y175 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %120 = load float, float* %y175, align 4
  %121 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm176 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %121, i32 0, i32 2
  %yx177 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm176, i32 0, i32 4
  %122 = load float, float* %yx177, align 4
  %mul178 = fmul float %120, %122
  %conv179 = fptosi float %mul178 to i64
  %cap_length180 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %x181 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length180, i32 0, i32 0
  %123 = load i64, i64* %x181, align 8
  %add182 = add nsw i64 %123, %conv179
  store i64 %add182, i64* %x181, align 8
  %x183 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %124 = load float, float* %x183, align 4
  %125 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm184 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %125, i32 0, i32 2
  %xy185 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm184, i32 0, i32 2
  %126 = load float, float* %xy185, align 4
  %mul186 = fmul float %124, %126
  %conv187 = fptosi float %mul186 to i64
  %cap_length188 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %y189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length188, i32 0, i32 1
  %127 = load i64, i64* %y189, align 8
  %add190 = add nsw i64 %127, %conv187
  store i64 %add190, i64* %y189, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.174, %if.else.162
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.154
  br label %if.end.203

if.else.193:                                      ; preds = %if.end.76
  %width194 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y195 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width194, i32 0, i32 1
  store i64 0, i64* %y195, align 8
  %width196 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x197 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width196, i32 0, i32 0
  store i64 0, i64* %x197, align 8
  %cap_length198 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %y199 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length198, i32 0, i32 1
  store i64 0, i64* %y199, align 8
  %cap_length200 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %x201 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length200, i32 0, i32 0
  store i64 0, i64* %x201, align 8
  %thin202 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  store i32 1, i32* %thin202, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.193, %if.end.192
  br label %if.end.214

if.else.204:                                      ; preds = %lor.lhs.false
  %width205 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y206 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width205, i32 0, i32 1
  store i64 0, i64* %y206, align 8
  %width207 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x208 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width207, i32 0, i32 0
  store i64 0, i64* %x208, align 8
  %cap_length209 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %y210 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length209, i32 0, i32 1
  store i64 0, i64* %y210, align 8
  %cap_length211 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %x212 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length211, i32 0, i32 0
  store i64 0, i64* %x212, align 8
  %thin213 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  store i32 1, i32* %thin213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.204, %if.end.203
  %128 = load i32, i32* %dash_count, align 4
  %tobool215 = icmp ne i32 %128, 0
  br i1 %tobool215, label %if.then.216, label %if.else.318

if.then.216:                                      ; preds = %if.end.214
  %129 = load float, float* %unscaled_dist, align 4
  %mul217 = fmul float %129, 0x3F30000000000000
  store float %mul217, float* %dist_total, align 4
  %130 = load float, float* %dist_total, align 4
  store float %130, float* %dist, align 4
  %131 = load i64, i64* %udx, align 8
  %conv218 = sitofp i64 %131 to float
  store float %conv218, float* %dx, align 4
  %132 = load i64, i64* %udy, align 8
  %conv219 = sitofp i64 %132 to float
  store float %conv219, float* %dy, align 4
  br label %while.cond.220

while.cond.220:                                   ; preds = %if.end.280, %if.then.216
  %133 = load float, float* %dist, align 4
  %134 = load float, float* %dist_left, align 4
  %cmp221 = fcmp ogt float %133, %134
  br i1 %cmp221, label %while.body.223, label %while.end

while.body.223:                                   ; preds = %while.cond.220
  %135 = load float, float* %dist_left, align 4
  %136 = load float, float* %dist_total, align 4
  %div224 = fdiv float %135, %136
  store float %div224, float* %fraction, align 4
  %137 = load i64, i64* %x, align 8
  %138 = load float, float* %dx, align 4
  %139 = load float, float* %fraction, align 4
  %mul225 = fmul float %138, %139
  %conv226 = fptosi float %mul225 to i64
  %add227 = add nsw i64 %137, %conv226
  store i64 %add227, i64* %nx, align 8
  %140 = load i64, i64* %y, align 8
  %141 = load float, float* %dy, align 4
  %142 = load float, float* %fraction, align 4
  %mul228 = fmul float %141, %142
  %conv229 = fptosi float %mul228 to i64
  %add230 = add nsw i64 %140, %conv229
  store i64 %add230, i64* %ny, align 8
  %143 = load i8, i8* %ink_on, align 1
  %tobool231 = icmp ne i8 %143, 0
  br i1 %tobool231, label %if.then.232, label %if.end.262

if.then.232:                                      ; preds = %while.body.223
  %144 = load i64, i64* %x, align 8
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i64 %144, i64* %x233, align 8
  %145 = load i64, i64* %y, align 8
  %o234 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p235 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o234, i32 0, i32 0
  %y236 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p235, i32 0, i32 1
  store i64 %145, i64* %y236, align 8
  %146 = load i64, i64* %nx, align 8
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p237 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %x238 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p237, i32 0, i32 0
  store i64 %146, i64* %x238, align 8
  %147 = load i64, i64* %ny, align 8
  %e239 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p240 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e239, i32 0, i32 0
  %y241 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p240, i32 0, i32 1
  store i64 %147, i64* %y241, align 8
  %thin242 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  %148 = load i32, i32* %thin242, align 4
  %tobool243 = icmp ne i32 %148, 0
  br i1 %tobool243, label %cond.true.244, label %cond.false.245

cond.true.244:                                    ; preds = %if.then.232
  br label %cond.end.246

cond.false.245:                                   ; preds = %if.then.232
  %149 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @compute_caps(%struct.partial_line_s* %pl, %struct.gs_state_s* %149)
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.244
  %cond247 = phi i32 [ 0, %cond.true.244 ], [ 0, %cond.false.245 ]
  %150 = load i32, i32* %first, align 4
  %inc = add nsw i32 %150, 1
  store i32 %inc, i32* %first, align 4
  %cmp248 = icmp eq i32 %150, 0
  br i1 %cmp248, label %cond.true.250, label %cond.false.251

cond.true.250:                                    ; preds = %cond.end.246
  %151 = bitcast %struct.partial_line_s* %pl_first to i8*
  %152 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 168, i32 8, i1 false)
  br label %cond.end.252

cond.false.251:                                   ; preds = %cond.end.246
  br label %cond.end.252

cond.end.252:                                     ; preds = %cond.false.251, %cond.true.250
  %cond253 = phi i32 [ 0, %cond.true.250 ], [ 0, %cond.false.251 ]
  %153 = load i32, i32* %index, align 4
  %inc254 = add nsw i32 %153, 1
  store i32 %inc254, i32* %index, align 4
  %tobool255 = icmp ne i32 %153, 0
  br i1 %tobool255, label %cond.true.256, label %cond.false.259

cond.true.256:                                    ; preds = %cond.end.252
  %154 = load i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)*, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)** %line_proc.addr, align 8
  %155 = load i32, i32* %index, align 4
  %sub257 = sub nsw i32 %155, 2
  %156 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call258 = call i32 %154(i32 %sub257, %struct.partial_line_s* %pl_prev, %struct.partial_line_s* %pl, %struct.gs_state_s* %156)
  br label %cond.end.260

cond.false.259:                                   ; preds = %cond.end.252
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.259, %cond.true.256
  %cond261 = phi i32 [ %call258, %cond.true.256 ], [ 0, %cond.false.259 ]
  %157 = bitcast %struct.partial_line_s* %pl_prev to i8*
  %158 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 168, i32 8, i1 false)
  br label %if.end.262

if.end.262:                                       ; preds = %cond.end.260, %while.body.223
  %159 = load float, float* %dist_left, align 4
  %160 = load float, float* %dist, align 4
  %sub263 = fsub float %160, %159
  store float %sub263, float* %dist, align 4
  %161 = load i8, i8* %ink_on, align 1
  %tobool264 = icmp ne i8 %161, 0
  %lnot265 = xor i1 %tobool264, true
  %lnot.ext266 = zext i1 %lnot265 to i32
  %conv267 = trunc i32 %lnot.ext266 to i8
  store i8 %conv267, i8* %ink_on, align 1
  %tobool268 = icmp ne i8 %conv267, 0
  br i1 %tobool268, label %if.end.275, label %if.then.269

if.then.269:                                      ; preds = %if.end.262
  %162 = load i32, i32* %index, align 4
  %tobool270 = icmp ne i32 %162, 0
  br i1 %tobool270, label %if.then.271, label %if.end.274

if.then.271:                                      ; preds = %if.then.269
  %163 = load i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)*, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)** %line_proc.addr, align 8
  %164 = load i32, i32* %index, align 4
  %sub272 = sub nsw i32 %164, 1
  %165 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call273 = call i32 %163(i32 %sub272, %struct.partial_line_s* %pl_prev, %struct.partial_line_s* null, %struct.gs_state_s* %165)
  store i32 0, i32* %index, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.271, %if.then.269
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.end.262
  %166 = load i32, i32* %dash_index, align 4
  %inc276 = add nsw i32 %166, 1
  store i32 %inc276, i32* %dash_index, align 4
  %167 = load i32, i32* %dash_count, align 4
  %cmp277 = icmp eq i32 %inc276, %167
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %if.end.275
  store i32 0, i32* %dash_index, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %if.end.275
  %168 = load i32, i32* %dash_index, align 4
  %idxprom = sext i32 %168 to i64
  %169 = load float*, float** %dashes, align 8
  %arrayidx = getelementptr inbounds float, float* %169, i64 %idxprom
  %170 = load float, float* %arrayidx, align 4
  store float %170, float* %dist_left, align 4
  %171 = load i64, i64* %nx, align 8
  store i64 %171, i64* %x, align 8
  %172 = load i64, i64* %ny, align 8
  store i64 %172, i64* %y, align 8
  br label %while.cond.220

while.end:                                        ; preds = %while.cond.220
  %173 = load i8, i8* %ink_on, align 1
  %tobool281 = icmp ne i8 %173, 0
  br i1 %tobool281, label %if.then.282, label %if.end.316

if.then.282:                                      ; preds = %while.end
  %174 = load i64, i64* %x, align 8
  %o283 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p284 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o283, i32 0, i32 0
  %x285 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p284, i32 0, i32 0
  store i64 %174, i64* %x285, align 8
  %175 = load i64, i64* %y, align 8
  %o286 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p287 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o286, i32 0, i32 0
  %y288 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p287, i32 0, i32 1
  store i64 %175, i64* %y288, align 8
  %176 = load i64, i64* %sx, align 8
  %e289 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p290 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e289, i32 0, i32 0
  %x291 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p290, i32 0, i32 0
  store i64 %176, i64* %x291, align 8
  %177 = load i64, i64* %sy, align 8
  %e292 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p293 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e292, i32 0, i32 0
  %y294 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p293, i32 0, i32 1
  store i64 %177, i64* %y294, align 8
  %thin295 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  %178 = load i32, i32* %thin295, align 4
  %tobool296 = icmp ne i32 %178, 0
  br i1 %tobool296, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %if.then.282
  br label %cond.end.299

cond.false.298:                                   ; preds = %if.then.282
  %179 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @compute_caps(%struct.partial_line_s* %pl, %struct.gs_state_s* %179)
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.298, %cond.true.297
  %cond300 = phi i32 [ 0, %cond.true.297 ], [ 0, %cond.false.298 ]
  %180 = load i32, i32* %first, align 4
  %inc301 = add nsw i32 %180, 1
  store i32 %inc301, i32* %first, align 4
  %cmp302 = icmp eq i32 %180, 0
  br i1 %cmp302, label %cond.true.304, label %cond.false.305

cond.true.304:                                    ; preds = %cond.end.299
  %181 = bitcast %struct.partial_line_s* %pl_first to i8*
  %182 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 168, i32 8, i1 false)
  br label %cond.end.306

cond.false.305:                                   ; preds = %cond.end.299
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.305, %cond.true.304
  %cond307 = phi i32 [ 0, %cond.true.304 ], [ 0, %cond.false.305 ]
  %183 = load i32, i32* %index, align 4
  %inc308 = add nsw i32 %183, 1
  store i32 %inc308, i32* %index, align 4
  %tobool309 = icmp ne i32 %183, 0
  br i1 %tobool309, label %cond.true.310, label %cond.false.313

cond.true.310:                                    ; preds = %cond.end.306
  %184 = load i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)*, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)** %line_proc.addr, align 8
  %185 = load i32, i32* %index, align 4
  %sub311 = sub nsw i32 %185, 2
  %186 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call312 = call i32 %184(i32 %sub311, %struct.partial_line_s* %pl_prev, %struct.partial_line_s* %pl, %struct.gs_state_s* %186)
  br label %cond.end.314

cond.false.313:                                   ; preds = %cond.end.306
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.313, %cond.true.310
  %cond315 = phi i32 [ %call312, %cond.true.310 ], [ 0, %cond.false.313 ]
  %187 = bitcast %struct.partial_line_s* %pl_prev to i8*
  %188 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %187, i8* %188, i64 168, i32 8, i1 false)
  br label %if.end.316

if.end.316:                                       ; preds = %cond.end.314, %while.end
  %189 = load float, float* %dist, align 4
  %190 = load float, float* %dist_left, align 4
  %sub317 = fsub float %190, %189
  store float %sub317, float* %dist_left, align 4
  br label %if.end.352

if.else.318:                                      ; preds = %if.end.214
  %191 = load i64, i64* %x, align 8
  %o319 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p320 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o319, i32 0, i32 0
  %x321 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p320, i32 0, i32 0
  store i64 %191, i64* %x321, align 8
  %192 = load i64, i64* %y, align 8
  %o322 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p323 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o322, i32 0, i32 0
  %y324 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p323, i32 0, i32 1
  store i64 %192, i64* %y324, align 8
  %193 = load i64, i64* %sx, align 8
  %e325 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p326 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e325, i32 0, i32 0
  %x327 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p326, i32 0, i32 0
  store i64 %193, i64* %x327, align 8
  %194 = load i64, i64* %sy, align 8
  %e328 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p329 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e328, i32 0, i32 0
  %y330 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p329, i32 0, i32 1
  store i64 %194, i64* %y330, align 8
  %thin331 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  %195 = load i32, i32* %thin331, align 4
  %tobool332 = icmp ne i32 %195, 0
  br i1 %tobool332, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %if.else.318
  br label %cond.end.335

cond.false.334:                                   ; preds = %if.else.318
  %196 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @compute_caps(%struct.partial_line_s* %pl, %struct.gs_state_s* %196)
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.334, %cond.true.333
  %cond336 = phi i32 [ 0, %cond.true.333 ], [ 0, %cond.false.334 ]
  %197 = load i32, i32* %first, align 4
  %inc337 = add nsw i32 %197, 1
  store i32 %inc337, i32* %first, align 4
  %cmp338 = icmp eq i32 %197, 0
  br i1 %cmp338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %cond.end.335
  %198 = bitcast %struct.partial_line_s* %pl_first to i8*
  %199 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %198, i8* %199, i64 168, i32 8, i1 false)
  br label %cond.end.342

cond.false.341:                                   ; preds = %cond.end.335
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.341, %cond.true.340
  %cond343 = phi i32 [ 0, %cond.true.340 ], [ 0, %cond.false.341 ]
  %200 = load i32, i32* %index, align 4
  %inc344 = add nsw i32 %200, 1
  store i32 %inc344, i32* %index, align 4
  %tobool345 = icmp ne i32 %200, 0
  br i1 %tobool345, label %cond.true.346, label %cond.false.349

cond.true.346:                                    ; preds = %cond.end.342
  %201 = load i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)*, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)** %line_proc.addr, align 8
  %202 = load i32, i32* %index, align 4
  %sub347 = sub nsw i32 %202, 2
  %203 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call348 = call i32 %201(i32 %sub347, %struct.partial_line_s* %pl_prev, %struct.partial_line_s* %pl, %struct.gs_state_s* %203)
  br label %cond.end.350

cond.false.349:                                   ; preds = %cond.end.342
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.false.349, %cond.true.346
  %cond351 = phi i32 [ %call348, %cond.true.346 ], [ 0, %cond.false.349 ]
  %204 = bitcast %struct.partial_line_s* %pl_prev to i8*
  %205 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 168, i32 8, i1 false)
  br label %if.end.352

if.end.352:                                       ; preds = %cond.end.350, %if.end.316
  br label %no_line

no_line:                                          ; preds = %if.end.352, %if.then.56
  %206 = load %struct.line_segment*, %struct.line_segment** %pline, align 8
  %next353 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %206, i32 0, i32 1
  %207 = load %struct.segment_s*, %struct.segment_s** %next353, align 8
  %208 = bitcast %struct.segment_s* %207 to %struct.line_segment*
  store %struct.line_segment* %208, %struct.line_segment** %pline, align 8
  %209 = load i64, i64* %sx, align 8
  store i64 %209, i64* %x, align 8
  %210 = load i64, i64* %sy, align 8
  store i64 %210, i64* %y, align 8
  br label %while.cond.45

while.end.354:                                    ; preds = %while.cond.45
  %211 = load i32, i32* %index, align 4
  %tobool355 = icmp ne i32 %211, 0
  br i1 %tobool355, label %if.then.356, label %if.end.371

if.then.356:                                      ; preds = %while.end.354
  %212 = load i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)*, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)** %line_proc.addr, align 8
  %213 = load i32, i32* %index, align 4
  %sub357 = sub nsw i32 %213, 1
  %214 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %closed = getelementptr inbounds %struct.subpath, %struct.subpath* %214, i32 0, i32 7
  %215 = load i8, i8* %closed, align 1
  %conv358 = sext i8 %215 to i32
  %tobool359 = icmp ne i32 %conv358, 0
  br i1 %tobool359, label %land.lhs.true.360, label %cond.false.367

land.lhs.true.360:                                ; preds = %if.then.356
  %216 = load i8, i8* %ink_on, align 1
  %conv361 = sext i8 %216 to i32
  %tobool362 = icmp ne i32 %conv361, 0
  br i1 %tobool362, label %land.lhs.true.363, label %cond.false.367

land.lhs.true.363:                                ; preds = %land.lhs.true.360
  %217 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %init_ink_on364 = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %217, i32 0, i32 3
  %218 = load i32, i32* %init_ink_on364, align 4
  %tobool365 = icmp ne i32 %218, 0
  br i1 %tobool365, label %cond.true.366, label %cond.false.367

cond.true.366:                                    ; preds = %land.lhs.true.363
  br label %cond.end.368

cond.false.367:                                   ; preds = %land.lhs.true.363, %land.lhs.true.360, %if.then.356
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.367, %cond.true.366
  %cond369 = phi %struct.partial_line_s* [ %pl_first, %cond.true.366 ], [ null, %cond.false.367 ]
  %219 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call370 = call i32 %212(i32 %sub357, %struct.partial_line_s* %pl_prev, %struct.partial_line_s* %cond369, %struct.gs_state_s* %219)
  br label %if.end.371

if.end.371:                                       ; preds = %cond.end.368, %while.end.354
  %220 = load %struct.line_segment*, %struct.line_segment** %pline, align 8
  %221 = bitcast %struct.line_segment* %220 to %struct.subpath*
  store %struct.subpath* %221, %struct.subpath** %psub, align 8
  %222 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %cmp372 = icmp eq %struct.gx_path_s* %222, @stroke_path_body
  br i1 %cmp372, label %if.then.374, label %if.end.376

if.then.374:                                      ; preds = %if.end.371
  %223 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %224 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %224, i32 0, i32 14
  %225 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %226 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call375 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* %223, %struct.gx_device_color_s* %225, %struct.gs_state_s* %226, i32 -1, i64 0)
  %227 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  call void @gx_path_release(%struct.gx_path_s* %227)
  store %struct.gx_path_s* null, %struct.gx_path_s** @stroke_path, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.374, %if.end.371
  br label %while.cond

while.end.377:                                    ; preds = %while.cond
  %228 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %curve_count378 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %228, i32 0, i32 8
  %229 = load i32, i32* %curve_count378, align 4
  %tobool379 = icmp ne i32 %229, 0
  br i1 %tobool379, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %while.end.377
  call void @gx_path_release(%struct.gx_path_s* %fpath)
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.380, %while.end.377
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.381, %if.then.36, %if.then.30
  %230 = load i32, i32* %retval
  ret i32 %230
}

; Function Attrs: nounwind uwtable
define i32 @stroke_fill(i32 %first, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store i32 %first, i32* %first.addr, align 4
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %0, i32 0, i32 4
  %1 = load i32, i32* %thin, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i64, i64* %x, align 8
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %7 = load i64, i64* %y, align 8
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 1
  %p3 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %9 = load i64, i64* %x4, align 8
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e5 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 1
  %p6 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e5, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %11 = load i64, i64* %y7, align 8
  %call = call i32 @gx_cpath_includes_rectangle(%struct.gx_path_s* %3, i64 %5, i64 %7, i64 %9, i64 %11)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o10 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o10, i32 0, i32 0
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p11, i32 0, i32 0
  %13 = load i64, i64* %x12, align 8
  %14 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o13 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %14, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o13, i32 0, i32 0
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 1
  %15 = load i64, i64* %y15, align 8
  %16 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e16 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %16, i32 0, i32 1
  %p17 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e16, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 0
  %17 = load i64, i64* %x18, align 8
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e19 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 1
  %p20 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e19, i32 0, i32 0
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p20, i32 0, i32 1
  %19 = load i64, i64* %y21, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 14
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call22 = call i32 (i64, i64, i64, i64, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gz_draw_line_fixed to i32 (i64, i64, i64, i64, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(i64 %13, i64 %15, i64 %17, i64 %19, %struct.gx_device_color_s* %21, %struct.gs_state_s* %22)
  store i32 %call22, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %23 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %23, i32 0, i32 2
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  store i64 1024, i64* %x23, align 8
  %24 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %width24 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %24, i32 0, i32 2
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width24, i32 0, i32 1
  store i64 1024, i64* %y25, align 8
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %cap_length = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %25, i32 0, i32 3
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length, i32 0, i32 0
  store i64 512, i64* %x26, align 8
  %26 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %cap_length27 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %26, i32 0, i32 3
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length27, i32 0, i32 1
  store i64 512, i64* %y28, align 8
  %27 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @compute_caps(%struct.partial_line_s* %27, %struct.gs_state_s* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %entry
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %cmp = icmp eq %struct.gx_path_s* %29, null
  br i1 %cmp, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.29
  store %struct.gx_path_s* @stroke_path_body, %struct.gx_path_s** @stroke_path, align 8
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* %30, %struct.gs_memory_procs* %memory_procs)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.29
  %32 = load i32, i32* %first.addr, align 4
  %33 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %34 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call32 = call i32 @stroke_add(i32 %32, %struct.partial_line_s* %33, %struct.partial_line_s* %34, %struct.gs_state_s* %35)
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %cmp33 = icmp eq %struct.gx_path_s* %36, @stroke_path_body
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 14
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color35, align 8
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call36 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* %37, %struct.gx_device_color_s* %39, %struct.gs_state_s* %40, i32 -1, i64 0)
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  call void @gx_path_release(%struct.gx_path_s* %41)
  store %struct.gx_path_s* null, %struct.gx_path_s** @stroke_path, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.31
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.9
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gx_fill_path(...) #1

declare void @gx_path_release(%struct.gx_path_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_stroke_add(%struct.gx_path_s* %ppath, %struct.gx_path_s* %topath, %struct.gs_state_s* %pgs) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %topath.addr = alloca %struct.gx_path_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gx_path_s* %topath, %struct.gx_path_s** %topath.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %topath.addr, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** @stroke_path, align 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @stroke(%struct.gx_path_s* %1, i32 (i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gs_state_s*)* @stroke_add, %struct.gs_state_s* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @stroke_add(i32 %first, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %jp1 = alloca %struct.gs_fixed_point_s, align 8
  %jp2 = alloca %struct.gs_fixed_point_s, align 8
  %fwx = alloca float, align 4
  %fwy = alloca float, align 4
  %fdx = alloca float, align 4
  %fdy = alloca float, align 4
  %fnwx = alloca float, align 4
  %fnwy = alloca float, align 4
  %cside = alloca i32, align 4
  %nside = alloca i32, align 4
  %np = alloca %struct.gs_fixed_point_s*, align 8
  %u1 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %u2 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %uf1 = alloca float, align 4
  %vf1 = alloca float, align 4
  %uf2 = alloca float, align 4
  %vf2 = alloca float, align 4
  %num = alloca float, align 4
  %denom = alloca float, align 4
  %check = alloca float, align 4
  %fndx = alloca float, align 4
  %fndy = alloca float, align 4
  %noside = alloca i32, align 4
  %wside = alloca i32, align 4
  store i32 %first, i32* %first.addr, align 4
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** @stroke_path, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %ppath, align 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %cmp = icmp eq %struct.gx_path_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %2, i32 0, i32 4
  %3 = load i32, i32* %thin, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @compute_caps(%struct.partial_line_s* %4, %struct.gs_state_s* %5)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %7 = load i32, i32* %first.addr, align 4
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 10
  %9 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %cap = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %9, i32 0, i32 1
  %10 = load i32, i32* %cap, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  %11 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %11, i32 0, i32 0
  %call = call i32 @add_capped(%struct.gx_path_s* %6, i32 %cond, i32 (%struct.gx_path_s*, i64, i64)* @gx_path_add_point, %struct.endpoint_s* %o)
  store i32 %call, i32* %code, align 4
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  %12 = load i32, i32* %code, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.6:                                         ; preds = %cond.end
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %cmp7 = icmp eq %struct.partial_line_s* %13, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 10
  %16 = load %struct.line_params_s*, %struct.line_params_s** %line_params9, align 8
  %cap10 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %16, i32 0, i32 1
  %17 = load i32, i32* %cap10, align 4
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 1
  %call11 = call i32 @add_capped(%struct.gx_path_s* %14, i32 %17, i32 (%struct.gx_path_s*, i64, i64)* @gx_path_add_line, %struct.endpoint_s* %e)
  store i32 %call11, i32* %code, align 4
  br label %if.end.229

if.else:                                          ; preds = %if.end.6
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 10
  %20 = load %struct.line_params_s*, %struct.line_params_s** %line_params12, align 8
  %join = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %20, i32 0, i32 2
  %21 = load i32, i32* %join, align 4
  %cmp13 = icmp eq i32 %21, 1
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %23 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e15 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %23, i32 0, i32 1
  %call16 = call i32 @add_capped(%struct.gx_path_s* %22, i32 1, i32 (%struct.gx_path_s*, i64, i64)* @gx_path_add_line, %struct.endpoint_s* %e15)
  store i32 %call16, i32* %code, align 4
  br label %if.end.228

if.else.17:                                       ; preds = %if.else
  %24 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %thin18 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %24, i32 0, i32 4
  %25 = load i32, i32* %thin18, align 4
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else.17
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %27 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e21 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %27, i32 0, i32 1
  %call22 = call i32 @add_capped(%struct.gx_path_s* %26, i32 0, i32 (%struct.gx_path_s*, i64, i64)* @gx_path_add_line, %struct.endpoint_s* %e21)
  store i32 %call22, i32* %code, align 4
  br label %if.end.227

if.else.23:                                       ; preds = %if.else.17
  %28 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %28, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %29 = load i64, i64* %x, align 8
  %conv = sitofp i64 %29 to float
  store float %conv, float* %fwx, align 4
  %30 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %width24 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %30, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width24, i32 0, i32 1
  %31 = load i64, i64* %y, align 8
  %conv25 = sitofp i64 %31 to float
  store float %conv25, float* %fwy, align 4
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e26 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e26, i32 0, i32 3
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  %33 = load i64, i64* %x27, align 8
  %conv28 = sitofp i64 %33 to float
  store float %conv28, float* %fdx, align 4
  %34 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e29 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %34, i32 0, i32 1
  %cdelta30 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e29, i32 0, i32 3
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta30, i32 0, i32 1
  %35 = load i64, i64* %y31, align 8
  %conv32 = sitofp i64 %35 to float
  store float %conv32, float* %fdy, align 4
  %36 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %width33 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %36, i32 0, i32 2
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width33, i32 0, i32 0
  %37 = load i64, i64* %x34, align 8
  %conv35 = sitofp i64 %37 to float
  store float %conv35, float* %fnwx, align 4
  %38 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %width36 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %38, i32 0, i32 2
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width36, i32 0, i32 1
  %39 = load i64, i64* %y37, align 8
  %conv38 = sitofp i64 %39 to float
  store float %conv38, float* %fnwy, align 4
  %40 = load float, float* %fdx, align 4
  %41 = load float, float* %fwy, align 4
  %mul = fmul float %40, %41
  %42 = load float, float* %fdy, align 4
  %43 = load float, float* %fwx, align 4
  %mul39 = fmul float %42, %43
  %cmp40 = fcmp oge float %mul, %mul39
  %conv41 = zext i1 %cmp40 to i32
  store i32 %conv41, i32* %cside, align 4
  %44 = load float, float* %fnwx, align 4
  %45 = load float, float* %fwy, align 4
  %mul42 = fmul float %44, %45
  %46 = load float, float* %fnwy, align 4
  %47 = load float, float* %fwx, align 4
  %mul43 = fmul float %46, %47
  %cmp44 = fcmp oge float %mul42, %mul43
  %conv45 = zext i1 %cmp44 to i32
  store i32 %conv45, i32* %nside, align 4
  %48 = load i32, i32* %cside, align 4
  %49 = load i32, i32* %nside, align 4
  %cmp46 = icmp eq i32 %48, %49
  br i1 %cmp46, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %if.else.23
  %50 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %o49 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %50, i32 0, i32 0
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o49, i32 0, i32 2
  br label %cond.end.52

cond.false.50:                                    ; preds = %if.else.23
  %51 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %o51 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %51, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o51, i32 0, i32 1
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi %struct.gs_fixed_point_s* [ %ce, %cond.true.48 ], [ %co, %cond.false.50 ]
  store %struct.gs_fixed_point_s* %cond53, %struct.gs_fixed_point_s** %np, align 8
  %52 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e54 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %52, i32 0, i32 1
  %co55 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e54, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co55, i32 0, i32 0
  %53 = load i64, i64* %x56, align 8
  %x57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp1, i32 0, i32 0
  store i64 %53, i64* %x57, align 8
  %54 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e58 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %54, i32 0, i32 1
  %co59 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e58, i32 0, i32 1
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co59, i32 0, i32 1
  %55 = load i64, i64* %y60, align 8
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp1, i32 0, i32 1
  store i64 %55, i64* %y61, align 8
  %56 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e62 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %56, i32 0, i32 1
  %ce63 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e62, i32 0, i32 2
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce63, i32 0, i32 0
  %57 = load i64, i64* %x64, align 8
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp2, i32 0, i32 0
  store i64 %57, i64* %x65, align 8
  %58 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e66 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %58, i32 0, i32 1
  %ce67 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e66, i32 0, i32 2
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce67, i32 0, i32 1
  %59 = load i64, i64* %y68, align 8
  %y69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp2, i32 0, i32 1
  store i64 %59, i64* %y69, align 8
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 10
  %61 = load %struct.line_params_s*, %struct.line_params_s** %line_params70, align 8
  %join71 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %61, i32 0, i32 2
  %62 = load i32, i32* %join71, align 4
  %cmp72 = icmp eq i32 %62, 0
  br i1 %cmp72, label %if.then.74, label %if.end.207

if.then.74:                                       ; preds = %cond.end.52
  %63 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e75 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %63, i32 0, i32 1
  %cdelta76 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e75, i32 0, i32 3
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta76, i32 0, i32 0
  %64 = load i64, i64* %x77, align 8
  store i64 %64, i64* %u1, align 8
  %65 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e78 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %65, i32 0, i32 1
  %cdelta79 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e78, i32 0, i32 3
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta79, i32 0, i32 1
  %66 = load i64, i64* %y80, align 8
  store i64 %66, i64* %v1, align 8
  %67 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %e81 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %67, i32 0, i32 1
  %cdelta82 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e81, i32 0, i32 3
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta82, i32 0, i32 0
  %68 = load i64, i64* %x83, align 8
  store i64 %68, i64* %u2, align 8
  %69 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %e84 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %69, i32 0, i32 1
  %cdelta85 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e84, i32 0, i32 3
  %y86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta85, i32 0, i32 1
  %70 = load i64, i64* %y86, align 8
  store i64 %70, i64* %v2, align 8
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params87 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %71, i32 0, i32 10
  %72 = load %struct.line_params_s*, %struct.line_params_s** %line_params87, align 8
  %miter_check = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %72, i32 0, i32 4
  %73 = load float, float* %miter_check, align 4
  store float %73, float* %check, align 4
  %74 = load i64, i64* %u1, align 8
  %cmp88 = icmp slt i64 %74, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.then.74
  %75 = load i64, i64* %u1, align 8
  %sub = sub nsw i64 0, %75
  store i64 %sub, i64* %u1, align 8
  %76 = load i64, i64* %u2, align 8
  %sub91 = sub nsw i64 0, %76
  store i64 %sub91, i64* %u2, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.then.74
  %77 = load i64, i64* %v1, align 8
  %cmp93 = icmp slt i64 %77, 0
  br i1 %cmp93, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.92
  %78 = load i64, i64* %v1, align 8
  %sub96 = sub nsw i64 0, %78
  store i64 %sub96, i64* %v1, align 8
  %79 = load i64, i64* %v2, align 8
  %sub97 = sub nsw i64 0, %79
  store i64 %sub97, i64* %v2, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.92
  %80 = load i64, i64* %u1, align 8
  %conv99 = sitofp i64 %80 to float
  store float %conv99, float* %uf1, align 4
  %81 = load i64, i64* %v1, align 8
  %conv100 = sitofp i64 %81 to float
  store float %conv100, float* %vf1, align 4
  %82 = load i64, i64* %u2, align 8
  %conv101 = sitofp i64 %82 to float
  store float %conv101, float* %uf2, align 4
  %83 = load i64, i64* %v2, align 8
  %conv102 = sitofp i64 %83 to float
  store float %conv102, float* %vf2, align 4
  %84 = load float, float* %uf2, align 4
  %85 = load float, float* %vf1, align 4
  %mul103 = fmul float %84, %85
  %86 = load float, float* %uf1, align 4
  %87 = load float, float* %vf2, align 4
  %mul104 = fmul float %86, %87
  %sub105 = fsub float %mul103, %mul104
  store float %sub105, float* %num, align 4
  %88 = load float, float* %uf1, align 4
  %89 = load float, float* %uf2, align 4
  %mul106 = fmul float %88, %89
  %90 = load float, float* %vf1, align 4
  %91 = load float, float* %vf2, align 4
  %mul107 = fmul float %90, %91
  %add = fadd float %mul106, %mul107
  store float %add, float* %denom, align 4
  %92 = load i64, i64* %u2, align 8
  %cmp108 = icmp sge i64 %92, 0
  br i1 %cmp108, label %if.then.110, label %if.else.133

if.then.110:                                      ; preds = %if.end.98
  %93 = load i64, i64* %v2, align 8
  %cmp111 = icmp sge i64 %93, 0
  br i1 %cmp111, label %if.then.113, label %if.else.124

if.then.113:                                      ; preds = %if.then.110
  %94 = load float, float* %num, align 4
  %cmp114 = fcmp ogt float %94, 0.000000e+00
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.then.113
  %95 = load float, float* %num, align 4
  %sub117 = fsub float -0.000000e+00, %95
  store float %sub117, float* %num, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.then.113
  %96 = load float, float* %denom, align 4
  %cmp119 = fcmp olt float %96, 0.000000e+00
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.end.118
  %97 = load float, float* %denom, align 4
  %sub122 = fsub float -0.000000e+00, %97
  store float %sub122, float* %denom, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.118
  br label %if.end.132

if.else.124:                                      ; preds = %if.then.110
  %98 = load float, float* %num, align 4
  %sub125 = fsub float -0.000000e+00, %98
  store float %sub125, float* %num, align 4
  %99 = load float, float* %denom, align 4
  %cmp126 = fcmp olt float %99, 0.000000e+00
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.else.124
  %100 = load float, float* %num, align 4
  %sub129 = fsub float -0.000000e+00, %100
  store float %sub129, float* %num, align 4
  %101 = load float, float* %denom, align 4
  %sub130 = fsub float -0.000000e+00, %101
  store float %sub130, float* %denom, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.else.124
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.123
  br label %if.end.155

if.else.133:                                      ; preds = %if.end.98
  %102 = load i64, i64* %v2, align 8
  %cmp134 = icmp sge i64 %102, 0
  br i1 %cmp134, label %if.then.136, label %if.else.143

if.then.136:                                      ; preds = %if.else.133
  %103 = load float, float* %denom, align 4
  %cmp137 = fcmp olt float %103, 0.000000e+00
  br i1 %cmp137, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.then.136
  %104 = load float, float* %num, align 4
  %sub140 = fsub float -0.000000e+00, %104
  store float %sub140, float* %num, align 4
  %105 = load float, float* %denom, align 4
  %sub141 = fsub float -0.000000e+00, %105
  store float %sub141, float* %denom, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %if.then.136
  br label %if.end.154

if.else.143:                                      ; preds = %if.else.133
  %106 = load float, float* %num, align 4
  %cmp144 = fcmp olt float %106, 0.000000e+00
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.else.143
  %107 = load float, float* %num, align 4
  %sub147 = fsub float -0.000000e+00, %107
  store float %sub147, float* %num, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.else.143
  %108 = load float, float* %denom, align 4
  %cmp149 = fcmp olt float %108, 0.000000e+00
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.end.148
  %109 = load float, float* %denom, align 4
  %sub152 = fsub float -0.000000e+00, %109
  store float %sub152, float* %denom, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %if.end.148
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.142
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.132
  %110 = load float, float* %num, align 4
  %cmp156 = fcmp oge float %110, 0.000000e+00
  br i1 %cmp156, label %cond.true.158, label %cond.false.164

cond.true.158:                                    ; preds = %if.end.155
  %111 = load float, float* %check, align 4
  %cmp159 = fcmp ogt float %111, 0.000000e+00
  br i1 %cmp159, label %land.lhs.true, label %if.end.206

land.lhs.true:                                    ; preds = %cond.true.158
  %112 = load float, float* %num, align 4
  %113 = load float, float* %denom, align 4
  %114 = load float, float* %check, align 4
  %mul161 = fmul float %113, %114
  %cmp162 = fcmp oge float %112, %mul161
  br i1 %cmp162, label %if.then.170, label %if.end.206

cond.false.164:                                   ; preds = %if.end.155
  %115 = load float, float* %check, align 4
  %cmp165 = fcmp ogt float %115, 0.000000e+00
  br i1 %cmp165, label %if.then.170, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.164
  %116 = load float, float* %num, align 4
  %117 = load float, float* %denom, align 4
  %118 = load float, float* %check, align 4
  %mul167 = fmul float %117, %118
  %cmp168 = fcmp oge float %116, %mul167
  br i1 %cmp168, label %if.then.170, label %if.end.206

if.then.170:                                      ; preds = %lor.lhs.false, %cond.false.164, %land.lhs.true
  %119 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %o171 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %119, i32 0, i32 0
  %cdelta172 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o171, i32 0, i32 3
  %x173 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta172, i32 0, i32 0
  %120 = load i64, i64* %x173, align 8
  %conv174 = sitofp i64 %120 to float
  store float %conv174, float* %fndx, align 4
  %121 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %o175 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %121, i32 0, i32 0
  %cdelta176 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o175, i32 0, i32 3
  %y177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta176, i32 0, i32 1
  %122 = load i64, i64* %y177, align 8
  %conv178 = sitofp i64 %122 to float
  store float %conv178, float* %fndy, align 4
  %123 = load float, float* %fndx, align 4
  %124 = load float, float* %fnwy, align 4
  %mul179 = fmul float %123, %124
  %125 = load float, float* %fndy, align 4
  %126 = load float, float* %fnwx, align 4
  %mul180 = fmul float %125, %126
  %cmp181 = fcmp oge float %mul179, %mul180
  %conv182 = zext i1 %cmp181 to i32
  store i32 %conv182, i32* %noside, align 4
  %127 = load float, float* %fwx, align 4
  %sub183 = fsub float -0.000000e+00, %127
  %128 = load float, float* %fnwy, align 4
  %mul184 = fmul float %sub183, %128
  %129 = load float, float* %fwy, align 4
  %sub185 = fsub float -0.000000e+00, %129
  %130 = load float, float* %fnwx, align 4
  %mul186 = fmul float %sub185, %130
  %cmp187 = fcmp oge float %mul184, %mul186
  %conv188 = zext i1 %cmp187 to i32
  store i32 %conv188, i32* %wside, align 4
  %131 = load i32, i32* %noside, align 4
  %132 = load i32, i32* %wside, align 4
  %cmp189 = icmp eq i32 %131, %132
  br i1 %cmp189, label %if.then.191, label %if.else.198

if.then.191:                                      ; preds = %if.then.170
  %133 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e192 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %133, i32 0, i32 1
  %ce193 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e192, i32 0, i32 2
  %134 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e194 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %134, i32 0, i32 1
  %cdelta195 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e194, i32 0, i32 3
  %135 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8
  %136 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %o196 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %136, i32 0, i32 0
  %cdelta197 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o196, i32 0, i32 3
  call void @line_intersect(%struct.gs_fixed_point_s* %ce193, %struct.gs_fixed_point_s* %cdelta195, %struct.gs_fixed_point_s* %135, %struct.gs_fixed_point_s* %cdelta197, %struct.gs_fixed_point_s* %jp2)
  br label %if.end.205

if.else.198:                                      ; preds = %if.then.170
  %137 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e199 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %137, i32 0, i32 1
  %co200 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e199, i32 0, i32 1
  %138 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e201 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %138, i32 0, i32 1
  %cdelta202 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e201, i32 0, i32 3
  %139 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8
  %140 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8
  %o203 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %140, i32 0, i32 0
  %cdelta204 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o203, i32 0, i32 3
  call void @line_intersect(%struct.gs_fixed_point_s* %co200, %struct.gs_fixed_point_s* %cdelta202, %struct.gs_fixed_point_s* %139, %struct.gs_fixed_point_s* %cdelta204, %struct.gs_fixed_point_s* %jp1)
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.198, %if.then.191
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %lor.lhs.false, %land.lhs.true, %cond.true.158
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %cond.end.52
  %141 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %x208 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp1, i32 0, i32 0
  %142 = load i64, i64* %x208, align 8
  %y209 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp1, i32 0, i32 1
  %143 = load i64, i64* %y209, align 8
  %call210 = call i32 @gx_path_add_line(%struct.gx_path_s* %141, i64 %142, i64 %143)
  store i32 %call210, i32* %code, align 4
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.then.225, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %if.end.207
  %144 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %145 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8
  %x214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %145, i32 0, i32 0
  %146 = load i64, i64* %x214, align 8
  %147 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8
  %y215 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %147, i32 0, i32 1
  %148 = load i64, i64* %y215, align 8
  %call216 = call i32 @gx_path_add_line(%struct.gx_path_s* %144, i64 %146, i64 %148)
  store i32 %call216, i32* %code, align 4
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then.225, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %lor.lhs.false.213
  %149 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %x220 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp2, i32 0, i32 0
  %150 = load i64, i64* %x220, align 8
  %y221 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %jp2, i32 0, i32 1
  %151 = load i64, i64* %y221, align 8
  %call222 = call i32 @gx_path_add_line(%struct.gx_path_s* %149, i64 %150, i64 %151)
  store i32 %call222, i32* %code, align 4
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %lor.lhs.false.219, %lor.lhs.false.213, %if.end.207
  %152 = load i32, i32* %code, align 4
  store i32 %152, i32* %retval
  br label %return

if.end.226:                                       ; preds = %lor.lhs.false.219
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.20
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.14
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.8
  %153 = load i32, i32* %code, align 4
  %cmp230 = icmp slt i32 %153, 0
  br i1 %cmp230, label %if.then.236, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %if.end.229
  %154 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %call233 = call i32 @gx_path_close_subpath(%struct.gx_path_s* %154)
  store i32 %call233, i32* %code, align 4
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %lor.lhs.false.232, %if.end.229
  %155 = load i32, i32* %code, align 4
  store i32 %155, i32* %retval
  br label %return

if.end.237:                                       ; preds = %lor.lhs.false.232
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.237, %if.then.236, %if.then.225, %if.then.5, %if.then
  %156 = load i32, i32* %retval
  ret i32 %156
}

declare i32 @gx_path_flatten(%struct.gx_path_s*, %struct.gx_path_s*, double) #1

declare i32 @gs_idtransform(...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define void @compute_caps(%struct.partial_line_s* %plp, %struct.gs_state_s* %pgs) #0 {
entry:
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %wx2 = alloca i64, align 8
  %wy2 = alloca i64, align 8
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %0, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %1 = load i64, i64* %x, align 8
  store i64 %1, i64* %wx2, align 8
  %2 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %width1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %2, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1, i32 0, i32 1
  %3 = load i64, i64* %y, align 8
  store i64 %3, i64* %wy2, align 8
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i64, i64* %x2, align 8
  %6 = load i64, i64* %wx2, align 8
  %sub = sub nsw i64 %5, %6
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o3, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  store i64 %sub, i64* %x4, align 8
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o5 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o5, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %9 = load i64, i64* %y7, align 8
  %10 = load i64, i64* %wy2, align 8
  %sub8 = sub nsw i64 %9, %10
  %11 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o9 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %11, i32 0, i32 0
  %co10 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o9, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co10, i32 0, i32 1
  store i64 %sub8, i64* %y11, align 8
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o12 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o12, i32 0, i32 0
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p13, i32 0, i32 0
  %13 = load i64, i64* %x14, align 8
  %14 = load i64, i64* %wx2, align 8
  %add = add nsw i64 %13, %14
  %15 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o15 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %15, i32 0, i32 0
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o15, i32 0, i32 2
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  store i64 %add, i64* %x16, align 8
  %16 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o17 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o17, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 1
  %17 = load i64, i64* %y19, align 8
  %18 = load i64, i64* %wy2, align 8
  %add20 = add nsw i64 %17, %18
  %19 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o21 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %19, i32 0, i32 0
  %ce22 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o21, i32 0, i32 2
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce22, i32 0, i32 1
  store i64 %add20, i64* %y23, align 8
  %20 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %20, i32 0, i32 1
  %p24 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p24, i32 0, i32 0
  %21 = load i64, i64* %x25, align 8
  %22 = load i64, i64* %wx2, align 8
  %add26 = add nsw i64 %21, %22
  %23 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e27 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %23, i32 0, i32 1
  %co28 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e27, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co28, i32 0, i32 0
  store i64 %add26, i64* %x29, align 8
  %24 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e30 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %24, i32 0, i32 1
  %p31 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e30, i32 0, i32 0
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 1
  %25 = load i64, i64* %y32, align 8
  %26 = load i64, i64* %wy2, align 8
  %add33 = add nsw i64 %25, %26
  %27 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e34 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %27, i32 0, i32 1
  %co35 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e34, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co35, i32 0, i32 1
  store i64 %add33, i64* %y36, align 8
  %28 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e37 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %28, i32 0, i32 1
  %p38 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e37, i32 0, i32 0
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p38, i32 0, i32 0
  %29 = load i64, i64* %x39, align 8
  %30 = load i64, i64* %wx2, align 8
  %sub40 = sub nsw i64 %29, %30
  %31 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e41 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %31, i32 0, i32 1
  %ce42 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e41, i32 0, i32 2
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce42, i32 0, i32 0
  store i64 %sub40, i64* %x43, align 8
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e44 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 1
  %p45 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e44, i32 0, i32 0
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p45, i32 0, i32 1
  %33 = load i64, i64* %y46, align 8
  %34 = load i64, i64* %wy2, align 8
  %sub47 = sub nsw i64 %33, %34
  %35 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e48 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %35, i32 0, i32 1
  %ce49 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e48, i32 0, i32 2
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce49, i32 0, i32 1
  store i64 %sub47, i64* %y50, align 8
  %36 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %cap_length = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %36, i32 0, i32 3
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length, i32 0, i32 0
  %37 = load i64, i64* %x51, align 8
  %sub52 = sub nsw i64 0, %37
  %38 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o53 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %38, i32 0, i32 0
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o53, i32 0, i32 3
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  store i64 %sub52, i64* %x54, align 8
  %39 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %cap_length55 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %39, i32 0, i32 3
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length55, i32 0, i32 1
  %40 = load i64, i64* %y56, align 8
  %sub57 = sub nsw i64 0, %40
  %41 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %o58 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %41, i32 0, i32 0
  %cdelta59 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o58, i32 0, i32 3
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta59, i32 0, i32 1
  store i64 %sub57, i64* %y60, align 8
  %42 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %cap_length61 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %42, i32 0, i32 3
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length61, i32 0, i32 0
  %43 = load i64, i64* %x62, align 8
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e63 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %44, i32 0, i32 1
  %cdelta64 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e63, i32 0, i32 3
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta64, i32 0, i32 0
  store i64 %43, i64* %x65, align 8
  %45 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %cap_length66 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %45, i32 0, i32 3
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cap_length66, i32 0, i32 1
  %46 = load i64, i64* %y67, align 8
  %47 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8
  %e68 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %47, i32 0, i32 1
  %cdelta69 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e68, i32 0, i32 3
  %y70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta69, i32 0, i32 1
  store i64 %46, i64* %y70, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @line_intersect(%struct.gs_fixed_point_s* %pp1, %struct.gs_fixed_point_s* %pd1, %struct.gs_fixed_point_s* %pp2, %struct.gs_fixed_point_s* %pd2, %struct.gs_fixed_point_s* %pi) #0 {
entry:
  %pp1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pd1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pp2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pd2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pi.addr = alloca %struct.gs_fixed_point_s*, align 8
  %x1 = alloca float, align 4
  %y1 = alloca float, align 4
  %u1 = alloca float, align 4
  %v1 = alloca float, align 4
  %x26 = alloca float, align 4
  %y2 = alloca float, align 4
  %u2 = alloca float, align 4
  %v2 = alloca float, align 4
  %denom = alloca double, align 8
  %num1 = alloca double, align 8
  %num2 = alloca double, align 8
  store %struct.gs_fixed_point_s* %pp1, %struct.gs_fixed_point_s** %pp1.addr, align 8
  store %struct.gs_fixed_point_s* %pd1, %struct.gs_fixed_point_s** %pd1.addr, align 8
  store %struct.gs_fixed_point_s* %pp2, %struct.gs_fixed_point_s** %pp2.addr, align 8
  store %struct.gs_fixed_point_s* %pd2, %struct.gs_fixed_point_s** %pd2.addr, align 8
  store %struct.gs_fixed_point_s* %pi, %struct.gs_fixed_point_s** %pi.addr, align 8
  %0 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp1.addr, align 8
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %0, i32 0, i32 0
  %1 = load i64, i64* %x, align 8
  %conv = sitofp i64 %1 to float
  store float %conv, float* %x1, align 4
  %2 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp1.addr, align 8
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %2, i32 0, i32 1
  %3 = load i64, i64* %y, align 8
  %conv1 = sitofp i64 %3 to float
  store float %conv1, float* %y1, align 4
  %4 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd1.addr, align 8
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i32 0, i32 0
  %5 = load i64, i64* %x2, align 8
  %conv3 = sitofp i64 %5 to float
  store float %conv3, float* %u1, align 4
  %6 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd1.addr, align 8
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %6, i32 0, i32 1
  %7 = load i64, i64* %y4, align 8
  %conv5 = sitofp i64 %7 to float
  store float %conv5, float* %v1, align 4
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp2.addr, align 8
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 0
  %9 = load i64, i64* %x7, align 8
  %conv8 = sitofp i64 %9 to float
  store float %conv8, float* %x26, align 4
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp2.addr, align 8
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i32 0, i32 1
  %11 = load i64, i64* %y9, align 8
  %conv10 = sitofp i64 %11 to float
  store float %conv10, float* %y2, align 4
  %12 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd2.addr, align 8
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 0
  %13 = load i64, i64* %x11, align 8
  %conv12 = sitofp i64 %13 to float
  store float %conv12, float* %u2, align 4
  %14 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd2.addr, align 8
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %14, i32 0, i32 1
  %15 = load i64, i64* %y13, align 8
  %conv14 = sitofp i64 %15 to float
  store float %conv14, float* %v2, align 4
  %16 = load float, float* %u1, align 4
  %17 = load float, float* %v2, align 4
  %mul = fmul float %16, %17
  %18 = load float, float* %u2, align 4
  %19 = load float, float* %v1, align 4
  %mul15 = fmul float %18, %19
  %sub = fsub float %mul, %mul15
  %conv16 = fpext float %sub to double
  store double %conv16, double* %denom, align 8
  %20 = load float, float* %v1, align 4
  %21 = load float, float* %x1, align 4
  %mul17 = fmul float %20, %21
  %22 = load float, float* %u1, align 4
  %23 = load float, float* %y1, align 4
  %mul18 = fmul float %22, %23
  %sub19 = fsub float %mul17, %mul18
  %conv20 = fpext float %sub19 to double
  store double %conv20, double* %num1, align 8
  %24 = load float, float* %v2, align 4
  %25 = load float, float* %x26, align 4
  %mul21 = fmul float %24, %25
  %26 = load float, float* %u2, align 4
  %27 = load float, float* %y2, align 4
  %mul22 = fmul float %26, %27
  %sub23 = fsub float %mul21, %mul22
  %conv24 = fpext float %sub23 to double
  store double %conv24, double* %num2, align 8
  %28 = load float, float* %u1, align 4
  %conv25 = fpext float %28 to double
  %29 = load double, double* %num2, align 8
  %mul26 = fmul double %conv25, %29
  %30 = load float, float* %u2, align 4
  %conv27 = fpext float %30 to double
  %31 = load double, double* %num1, align 8
  %mul28 = fmul double %conv27, %31
  %sub29 = fsub double %mul26, %mul28
  %32 = load double, double* %denom, align 8
  %div = fdiv double %sub29, %32
  %conv30 = fptosi double %div to i64
  %33 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pi.addr, align 8
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %33, i32 0, i32 0
  store i64 %conv30, i64* %x31, align 8
  %34 = load float, float* %v1, align 4
  %conv32 = fpext float %34 to double
  %35 = load double, double* %num2, align 8
  %mul33 = fmul double %conv32, %35
  %36 = load float, float* %v2, align 4
  %conv34 = fpext float %36 to double
  %37 = load double, double* %num1, align 8
  %mul35 = fmul double %conv34, %37
  %sub36 = fsub double %mul33, %mul35
  %38 = load double, double* %denom, align 8
  %div37 = fdiv double %sub36, %38
  %conv38 = fptosi double %div37 to i64
  %39 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pi.addr, align 8
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %39, i32 0, i32 1
  store i64 %conv38, i64* %y39, align 8
  ret void
}

declare i32 @gx_cpath_includes_rectangle(%struct.gx_path_s*, i64, i64, i64, i64) #1

declare i32 @gz_draw_line_fixed(...) #1

declare void @gx_path_init(%struct.gx_path_s*, %struct.gs_memory_procs*) #1

; Function Attrs: nounwind uwtable
define i32 @add_capped(%struct.gx_path_s* %ppath, i32 %type, i32 (%struct.gx_path_s*, i64, i64)* %add_proc, %struct.endpoint_s* %endp) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %type.addr = alloca i32, align 4
  %add_proc.addr = alloca i32 (%struct.gx_path_s*, i64, i64)*, align 8
  %endp.addr = alloca %struct.endpoint_s*, align 8
  %code = alloca i32, align 4
  %xm = alloca i64, align 8
  %ym = alloca i64, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 (%struct.gx_path_s*, i64, i64)* %add_proc, i32 (%struct.gx_path_s*, i64, i64)** %add_proc.addr, align 8
  store %struct.endpoint_s* %endp, %struct.endpoint_s** %endp.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.41
    i32 0, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %2 = load i64, i64* %x, align 8
  %3 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %3, i32 0, i32 3
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  %4 = load i64, i64* %x1, align 8
  %add = add nsw i64 %2, %4
  store i64 %add, i64* %xm, align 8
  %5 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %p2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %5, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %6 = load i64, i64* %y, align 8
  %7 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta3 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %7, i32 0, i32 3
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta3, i32 0, i32 1
  %8 = load i64, i64* %y4, align 8
  %add5 = add nsw i64 %6, %8
  store i64 %add5, i64* %ym, align 8
  %9 = load i32 (%struct.gx_path_s*, i64, i64)*, i32 (%struct.gx_path_s*, i64, i64)** %add_proc.addr, align 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %11 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %11, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %12 = load i64, i64* %x6, align 8
  %13 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co7 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %13, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co7, i32 0, i32 1
  %14 = load i64, i64* %y8, align 8
  %call = call i32 %9(%struct.gx_path_s* %10, i64 %12, i64 %14)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %16 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co9 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %16, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co9, i32 0, i32 0
  %17 = load i64, i64* %x10, align 8
  %18 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co11 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %18, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co11, i32 0, i32 1
  %19 = load i64, i64* %y12, align 8
  %20 = load i64, i64* %xm, align 8
  %21 = load i64, i64* %ym, align 8
  %22 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co13 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %22, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co13, i32 0, i32 0
  %23 = load i64, i64* %x14, align 8
  %24 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta15 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %24, i32 0, i32 3
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta15, i32 0, i32 0
  %25 = load i64, i64* %x16, align 8
  %add17 = add nsw i64 %23, %25
  %26 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co18 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %26, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co18, i32 0, i32 1
  %27 = load i64, i64* %y19, align 8
  %28 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta20 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %28, i32 0, i32 3
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta20, i32 0, i32 1
  %29 = load i64, i64* %y21, align 8
  %add22 = add nsw i64 %27, %29
  %call23 = call i32 @gx_path_add_arc(%struct.gx_path_s* %15, i64 %17, i64 %19, i64 %20, i64 %21, i64 %add17, i64 %add22)
  store i32 %call23, i32* %code, align 4
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %31 = load i64, i64* %xm, align 8
  %32 = load i64, i64* %ym, align 8
  %33 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %33, i32 0, i32 2
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %34 = load i64, i64* %x26, align 8
  %35 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce27 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %35, i32 0, i32 2
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce27, i32 0, i32 1
  %36 = load i64, i64* %y28, align 8
  %37 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce29 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %37, i32 0, i32 2
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce29, i32 0, i32 0
  %38 = load i64, i64* %x30, align 8
  %39 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta31 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %39, i32 0, i32 3
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta31, i32 0, i32 0
  %40 = load i64, i64* %x32, align 8
  %add33 = add nsw i64 %38, %40
  %41 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce34 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %41, i32 0, i32 2
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce34, i32 0, i32 1
  %42 = load i64, i64* %y35, align 8
  %43 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta36 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %43, i32 0, i32 3
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta36, i32 0, i32 1
  %44 = load i64, i64* %y37, align 8
  %add38 = add nsw i64 %42, %44
  %call39 = call i32 @gx_path_add_arc(%struct.gx_path_s* %30, i64 %31, i64 %32, i64 %34, i64 %36, i64 %add33, i64 %add38)
  store i32 %call39, i32* %code, align 4
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.25, %lor.lhs.false, %sw.bb
  %45 = load i32, i32* %code, align 4
  store i32 %45, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.25
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %46 = load i32 (%struct.gx_path_s*, i64, i64)*, i32 (%struct.gx_path_s*, i64, i64)** %add_proc.addr, align 8
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %48 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co42 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %48, i32 0, i32 1
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co42, i32 0, i32 0
  %49 = load i64, i64* %x43, align 8
  %50 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta44 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %50, i32 0, i32 3
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta44, i32 0, i32 0
  %51 = load i64, i64* %x45, align 8
  %add46 = add nsw i64 %49, %51
  %52 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co47 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %52, i32 0, i32 1
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co47, i32 0, i32 1
  %53 = load i64, i64* %y48, align 8
  %54 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta49 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %54, i32 0, i32 3
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta49, i32 0, i32 1
  %55 = load i64, i64* %y50, align 8
  %add51 = add nsw i64 %53, %55
  %call52 = call i32 %46(%struct.gx_path_s* %47, i64 %add46, i64 %add51)
  store i32 %call52, i32* %code, align 4
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.67, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %sw.bb.41
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %57 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce55 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %57, i32 0, i32 2
  %x56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce55, i32 0, i32 0
  %58 = load i64, i64* %x56, align 8
  %59 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta57 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %59, i32 0, i32 3
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta57, i32 0, i32 0
  %60 = load i64, i64* %x58, align 8
  %add59 = add nsw i64 %58, %60
  %61 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce60 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %61, i32 0, i32 2
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce60, i32 0, i32 1
  %62 = load i64, i64* %y61, align 8
  %63 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %cdelta62 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %63, i32 0, i32 3
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta62, i32 0, i32 1
  %64 = load i64, i64* %y63, align 8
  %add64 = add nsw i64 %62, %64
  %call65 = call i32 @gx_path_add_line(%struct.gx_path_s* %56, i64 %add59, i64 %add64)
  store i32 %call65, i32* %code, align 4
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false.54, %sw.bb.41
  %65 = load i32, i32* %code, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.68:                                        ; preds = %lor.lhs.false.54
  br label %sw.epilog

sw.bb.69:                                         ; preds = %entry
  %66 = load i32 (%struct.gx_path_s*, i64, i64)*, i32 (%struct.gx_path_s*, i64, i64)** %add_proc.addr, align 8
  %67 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %68 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co70 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %68, i32 0, i32 1
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co70, i32 0, i32 0
  %69 = load i64, i64* %x71, align 8
  %70 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %co72 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %70, i32 0, i32 1
  %y73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co72, i32 0, i32 1
  %71 = load i64, i64* %y73, align 8
  %call74 = call i32 %66(%struct.gx_path_s* %67, i64 %69, i64 %71)
  store i32 %call74, i32* %code, align 4
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then.83, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %sw.bb.69
  %72 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %73 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce77 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %73, i32 0, i32 2
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce77, i32 0, i32 0
  %74 = load i64, i64* %x78, align 8
  %75 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8
  %ce79 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %75, i32 0, i32 2
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce79, i32 0, i32 1
  %76 = load i64, i64* %y80, align 8
  %call81 = call i32 @gx_path_add_line(%struct.gx_path_s* %72, i64 %74, i64 %76)
  store i32 %call81, i32* %code, align 4
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.76, %sw.bb.69
  %77 = load i32, i32* %code, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.84:                                        ; preds = %lor.lhs.false.76
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.84, %entry, %if.end.68, %if.end
  %78 = load i32, i32* %code, align 4
  store i32 %78, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.83, %if.then.67, %if.then
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare i32 @gx_path_add_point(%struct.gx_path_s*, i64, i64) #1

declare i32 @gx_path_add_line(%struct.gx_path_s*, i64, i64) #1

declare i32 @gx_path_close_subpath(%struct.gx_path_s*) #1

declare i32 @gx_path_add_arc(%struct.gx_path_s*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
