; ModuleID = './MultiSource.Benchmarks.MallocBench/103.gs.gxfill.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.line_list_s = type { %struct.active_line_s*, i32, i16, %struct.active_line_s*, %struct.active_line_s*, %struct.active_line_s*, %struct.active_line_s, i32 }
%struct.active_line_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i64, i64, i64, %struct.segment_s*, i32, i16, i16, %struct.active_line_s*, %struct.active_line_s* }

@.str = private unnamed_addr constant [13 x i8] c"active lines\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_fill_path(%struct.gx_path_s* %ppath, %struct.gx_device_color_s* %pdevc, %struct.gs_state_s* %pgs, i32 %rule, i64 %trim) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %rule.addr = alloca i32, align 4
  %trim.addr = alloca i64, align 8
  %cpath = alloca %struct.gx_path_s*, align 8
  %pfpath = alloca %struct.gx_path_s*, align 8
  %ffpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  %lst = alloca %struct.line_list_s, align 8
  %max_active = alloca i32, align 4
  %ibox = alloca %struct.gs_fixed_rect_s, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %rule, i32* %rule.addr, align 4
  store i64 %trim, i64* %trim.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  store %struct.gx_path_s* %1, %struct.gx_path_s** %cpath, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call i32 @gx_path_close_subpath(%struct.gx_path_s* %2)
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 8
  %4 = load i32, i32* %curve_count, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gx_path_s* %5, %struct.gx_path_s** %pfpath, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 21
  %8 = load float, float* %flatness, align 4
  %conv = fpext float %8 to double
  %call1 = call i32 @gx_path_flatten(%struct.gx_path_s* %6, %struct.gx_path_s* %ffpath, double %conv)
  store i32 %call1, i32* %code, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %9 = load i32, i32* %code, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  store %struct.gx_path_s* %ffpath, %struct.gx_path_s** %pfpath, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %pfpath, align 8
  %segment_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 7
  %11 = load i32, i32* %segment_count, align 4
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %pfpath, align 8
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 6
  %13 = load i32, i32* %subpath_count, align 4
  %add = add nsw i32 %11, %13
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %segment_count5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 7
  %15 = load i32, i32* %segment_count5, align 4
  %add6 = add nsw i32 %add, %15
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %subpath_count7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 6
  %17 = load i32, i32* %subpath_count7, align 4
  %add8 = add nsw i32 %add6, %17
  store i32 %add8, i32* %max_active, align 4
  %18 = load i32, i32* %max_active, align 4
  %call9 = call i32 @alloc_line_list(%struct.line_list_s* %lst, i32 %18)
  store i32 %call9, i32* %code, align 4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.111, label %if.then.11

if.then.11:                                       ; preds = %if.end.4
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %pfpath, align 8
  %call12 = call i32 @gx_path_bbox(%struct.gx_path_s* %19, %struct.gs_fixed_rect_s* %ibox)
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %20 = load i64, i64* %y, align 8
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %cbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 3
  %q13 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q13, i32 0, i32 1
  %22 = load i64, i64* %y14, align 8
  %cmp15 = icmp sle i64 %20, %22
  br i1 %cmp15, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %if.then.11
  %q17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q17, i32 0, i32 0
  %23 = load i64, i64* %x, align 8
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %cbox18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 3
  %q19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox18, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q19, i32 0, i32 0
  %25 = load i64, i64* %x20, align 8
  %cmp21 = icmp sle i64 %23, %25
  br i1 %cmp21, label %land.lhs.true.23, label %if.else.39

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %26 = load i64, i64* %y24, align 8
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %cbox25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %27, i32 0, i32 3
  %p26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox25, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p26, i32 0, i32 1
  %28 = load i64, i64* %y27, align 8
  %cmp28 = icmp sge i64 %26, %28
  br i1 %cmp28, label %land.lhs.true.30, label %if.else.39

land.lhs.true.30:                                 ; preds = %land.lhs.true.23
  %p31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 0
  %29 = load i64, i64* %x32, align 8
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %cbox33 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %30, i32 0, i32 3
  %p34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox33, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p34, i32 0, i32 0
  %31 = load i64, i64* %x35, align 8
  %cmp36 = icmp sge i64 %29, %31
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.30
  %no_clip = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %lst, i32 0, i32 7
  store i32 1, i32* %no_clip, align 4
  br label %if.end.110

if.else.39:                                       ; preds = %land.lhs.true.30, %land.lhs.true.23, %land.lhs.true, %if.then.11
  %no_clip40 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %lst, i32 0, i32 7
  store i32 0, i32* %no_clip40, align 4
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %32, i32 0, i32 1
  %p41 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p41, i32 0, i32 0
  %33 = load i64, i64* %x42, align 8
  %p43 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p43, i32 0, i32 0
  %34 = load i64, i64* %x44, align 8
  %cmp45 = icmp sgt i64 %33, %34
  br i1 %cmp45, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %if.else.39
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox48 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %35, i32 0, i32 1
  %p49 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox48, i32 0, i32 0
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p49, i32 0, i32 0
  %36 = load i64, i64* %x50, align 8
  %p51 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p51, i32 0, i32 0
  store i64 %36, i64* %x52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.47, %if.else.39
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox54 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 1
  %p55 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox54, i32 0, i32 0
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p55, i32 0, i32 1
  %38 = load i64, i64* %y56, align 8
  %p57 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p57, i32 0, i32 1
  %39 = load i64, i64* %y58, align 8
  %cmp59 = icmp sgt i64 %38, %39
  br i1 %cmp59, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %if.end.53
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox62 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 1
  %p63 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox62, i32 0, i32 0
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p63, i32 0, i32 1
  %41 = load i64, i64* %y64, align 8
  %p65 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p65, i32 0, i32 1
  store i64 %41, i64* %y66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.61, %if.end.53
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox68 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %42, i32 0, i32 1
  %q69 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox68, i32 0, i32 1
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q69, i32 0, i32 0
  %43 = load i64, i64* %x70, align 8
  %q71 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q71, i32 0, i32 0
  %44 = load i64, i64* %x72, align 8
  %cmp73 = icmp slt i64 %43, %44
  br i1 %cmp73, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.end.67
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox76 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %45, i32 0, i32 1
  %q77 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox76, i32 0, i32 1
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q77, i32 0, i32 0
  %46 = load i64, i64* %x78, align 8
  %q79 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q79, i32 0, i32 0
  store i64 %46, i64* %x80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.75, %if.end.67
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox82 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %47, i32 0, i32 1
  %q83 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox82, i32 0, i32 1
  %y84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q83, i32 0, i32 1
  %48 = load i64, i64* %y84, align 8
  %q85 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q85, i32 0, i32 1
  %49 = load i64, i64* %y86, align 8
  %cmp87 = icmp slt i64 %48, %49
  br i1 %cmp87, label %if.then.89, label %if.end.95

if.then.89:                                       ; preds = %if.end.81
  %50 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  %bbox90 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %50, i32 0, i32 1
  %q91 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox90, i32 0, i32 1
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q91, i32 0, i32 1
  %51 = load i64, i64* %y92, align 8
  %q93 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q93, i32 0, i32 1
  store i64 %51, i64* %y94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.89, %if.end.81
  %p96 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p96, i32 0, i32 0
  %52 = load i64, i64* %x97, align 8
  %q98 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q98, i32 0, i32 0
  %53 = load i64, i64* %x99, align 8
  %cmp100 = icmp sge i64 %52, %53
  br i1 %cmp100, label %if.then.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.95
  %p102 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p102, i32 0, i32 1
  %54 = load i64, i64* %y103, align 8
  %q104 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q104, i32 0, i32 1
  %55 = load i64, i64* %y105, align 8
  %cmp106 = icmp sge i64 %54, %55
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %lor.lhs.false, %if.end.95
  br label %skip

if.end.109:                                       ; preds = %lor.lhs.false
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %cpath, align 8
  call void @add_y_list(%struct.gx_path_s* %56, i16 signext 1, %struct.line_list_s* %lst, %struct.gs_fixed_rect_s* %ibox)
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.38
  %57 = load %struct.gx_path_s*, %struct.gx_path_s** %pfpath, align 8
  call void @add_y_list(%struct.gx_path_s* %57, i16 signext 0, %struct.line_list_s* %lst, %struct.gs_fixed_rect_s* %ibox)
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %59 = load i32, i32* %rule.addr, align 4
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %61 = load i64, i64* %trim.addr, align 8
  call void @fill_loop(%struct.gx_device_color_s* %58, i32 %59, %struct.line_list_s* %lst, %struct.gs_fixed_rect_s* %ibox, %struct.gs_state_s* %60, i64 %61)
  br label %skip

skip:                                             ; preds = %if.end.110, %if.then.108
  %area = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %lst, i32 0, i32 0
  %62 = load %struct.active_line_s*, %struct.active_line_s** %area, align 8
  %63 = bitcast %struct.active_line_s* %62 to i8*
  %area_count = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %lst, i32 0, i32 1
  %64 = load i32, i32* %area_count, align 4
  call void @gs_free(i8* %63, i32 %64, i32 88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %skip, %if.end.4
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %pfpath, align 8
  %66 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cmp112 = icmp ne %struct.gx_path_s* %65, %66
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.111
  %67 = load %struct.gx_path_s*, %struct.gx_path_s** %pfpath, align 8
  call void @gx_path_release(%struct.gx_path_s* %67)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.111
  %68 = load i32, i32* %code, align 4
  store i32 %68, i32* %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.then.3
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @gx_path_close_subpath(%struct.gx_path_s*) #1

declare i32 @gx_path_flatten(%struct.gx_path_s*, %struct.gx_path_s*, double) #1

; Function Attrs: nounwind uwtable
define i32 @alloc_line_list(%struct.line_list_s* %ll, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %count.addr = alloca i32, align 4
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %1 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %area_count = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %1, i32 0, i32 1
  store i32 %0, i32* %area_count, align 4
  %2 = load i32, i32* %count.addr, align 4
  %call = call i8* @gs_malloc(i32 %2, i32 88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %3 = bitcast i8* %call to %struct.active_line_s*
  %4 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %area = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %4, i32 0, i32 0
  store %struct.active_line_s* %3, %struct.active_line_s** %area, align 8
  %5 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %area1 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %5, i32 0, i32 0
  %6 = load %struct.active_line_s*, %struct.active_line_s** %area1, align 8
  %cmp = icmp eq %struct.active_line_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %area2 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %7, i32 0, i32 0
  %8 = load %struct.active_line_s*, %struct.active_line_s** %area2, align 8
  %9 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %next = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %9, i32 0, i32 3
  store %struct.active_line_s* %8, %struct.active_line_s** %next, align 8
  %10 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %y_list = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %10, i32 0, i32 4
  store %struct.active_line_s* null, %struct.active_line_s** %y_list, align 8
  %11 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %y_line = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %11, i32 0, i32 5
  store %struct.active_line_s* null, %struct.active_line_s** %y_line, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #1

; Function Attrs: nounwind uwtable
define void @add_y_list(%struct.gx_path_s* %ppath, i16 signext %tag, %struct.line_list_s* %ll, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %tag.addr = alloca i16, align 2
  %ll.addr = alloca %struct.line_list_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %psub = alloca %struct.subpath*, align 8
  %plast = alloca %struct.segment_s*, align 8
  %prev_dir = alloca i32, align 4
  %dir = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  %xmin = alloca i64, align 8
  %ymin = alloca i64, align 8
  %xmax = alloca i64, align 8
  %ymax = alloca i64, align 8
  %dy = alloca i64, align 8
  %iy = alloca i64, align 8
  %py = alloca i64, align 8
  %cdir = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i16 %tag, i16* %tag.addr, align 2
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 4
  %1 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  %2 = bitcast %struct.subpath* %1 to %struct.segment_s*
  store %struct.segment_s* %2, %struct.segment_s** %pseg, align 8
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %4 = load i64, i64* %x, align 8
  store i64 %4, i64* %xmin, align 8
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %5, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %6 = load i64, i64* %y, align 8
  store i64 %6, i64* %ymin, align 8
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %7, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %8 = load i64, i64* %x2, align 8
  store i64 %8, i64* %xmax, align 8
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %9, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 1
  %10 = load i64, i64* %y4, align 8
  store i64 %10, i64* %ymax, align 8
  %11 = load i16, i16* %tag.addr, align 2
  %12 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %tag5 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %12, i32 0, i32 2
  store i16 %11, i16* %tag5, align 2
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %13 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %tobool = icmp ne %struct.segment_s* %13, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %14, i32 0, i32 2
  %15 = load i32, i32* %type, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %16 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %17 = bitcast %struct.segment_s* %16 to %struct.subpath*
  store %struct.subpath* %17, %struct.subpath** %psub, align 8
  %18 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %18, i32 0, i32 4
  %19 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  store %struct.segment_s* %19, %struct.segment_s** %plast, align 8
  store i32 0, i32* %dir, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %20 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %20, i32 0, i32 3
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %21 = load i64, i64* %y6, align 8
  store i64 %21, i64* %iy, align 8
  %22 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %pt7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %22, i32 0, i32 3
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %23 = load i64, i64* %y8, align 8
  store i64 %23, i64* %py, align 8
  %24 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %pt9 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %24, i32 0, i32 3
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt9, i32 0, i32 0
  %25 = load i64, i64* %x10, align 8
  %26 = load i64, i64* %xmax, align 8
  %cmp = icmp sgt i64 %25, %26
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %sw.default
  %27 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt11 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %27, i32 0, i32 3
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt11, i32 0, i32 0
  %28 = load i64, i64* %x12, align 8
  %29 = load i64, i64* %xmax, align 8
  %cmp13 = icmp sgt i64 %28, %29
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end.30

cond.false:                                       ; preds = %land.lhs.true, %sw.default
  %30 = load i64, i64* %iy, align 8
  %31 = load i64, i64* %py, align 8
  %sub = sub nsw i64 %30, %31
  store i64 %sub, i64* %dy, align 8
  %cmp14 = icmp sgt i64 %sub, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.false
  %32 = load i64, i64* %iy, align 8
  %33 = load i64, i64* %ymin, align 8
  %cmp16 = icmp sle i64 %32, %33
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.15
  %34 = load i64, i64* %py, align 8
  %35 = load i64, i64* %ymax, align 8
  %cmp17 = icmp sge i64 %34, %35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.15
  %36 = phi i1 [ true, %cond.true.15 ], [ %cmp17, %lor.rhs ]
  %cond = select i1 %36, i32 0, i32 1
  br label %cond.end.28

cond.false.18:                                    ; preds = %cond.false
  %37 = load i64, i64* %dy, align 8
  %cmp19 = icmp slt i64 %37, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.26

cond.true.20:                                     ; preds = %cond.false.18
  %38 = load i64, i64* %py, align 8
  %39 = load i64, i64* %ymin, align 8
  %cmp21 = icmp sle i64 %38, %39
  br i1 %cmp21, label %lor.end.24, label %lor.rhs.22

lor.rhs.22:                                       ; preds = %cond.true.20
  %40 = load i64, i64* %iy, align 8
  %41 = load i64, i64* %ymax, align 8
  %cmp23 = icmp sge i64 %40, %41
  br label %lor.end.24

lor.end.24:                                       ; preds = %lor.rhs.22, %cond.true.20
  %42 = phi i1 [ true, %cond.true.20 ], [ %cmp23, %lor.rhs.22 ]
  %cond25 = select i1 %42, i32 0, i32 -1
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %lor.end.24
  %cond27 = phi i32 [ %cond25, %lor.end.24 ], [ 0, %cond.false.26 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %lor.end
  %cond29 = phi i32 [ %cond, %lor.end ], [ %cond27, %cond.end ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true
  %cond31 = phi i32 [ 0, %cond.true ], [ %cond29, %cond.end.28 ]
  store i32 %cond31, i32* %dir, align 4
  %43 = load i32, i32* %dir, align 4
  %44 = load i32, i32* %prev_dir, align 4
  %cmp32 = icmp sgt i32 %43, %44
  br i1 %cmp32, label %if.then, label %if.end.39

if.then:                                          ; preds = %cond.end.30
  %45 = load i32, i32* %prev_dir, align 4
  %tobool33 = icmp ne i32 %45, 0
  br i1 %tobool33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %if.then
  %46 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %prev35 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %46, i32 0, i32 0
  %47 = load %struct.segment_s*, %struct.segment_s** %prev35, align 8
  %48 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %49 = load i32, i32* %prev_dir, align 4
  %50 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  call void @add_y_line(%struct.segment_s* %47, %struct.segment_s* %48, i32 %49, %struct.line_list_s* %50)
  br label %if.end

if.end:                                           ; preds = %if.then.34, %if.then
  %51 = load i32, i32* %dir, align 4
  %tobool36 = icmp ne i32 %51, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end
  %52 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %53 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %54 = load i32, i32* %dir, align 4
  %55 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  call void @add_y_line(%struct.segment_s* %52, %struct.segment_s* %53, i32 %54, %struct.line_list_s* %55)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %cond.end.30
  %56 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %57 = load %struct.segment_s*, %struct.segment_s** %plast, align 8
  %cmp40 = icmp eq %struct.segment_s* %56, %57
  br i1 %cmp40, label %if.then.41, label %if.end.94

if.then.41:                                       ; preds = %if.end.39
  %58 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type42 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %58, i32 0, i32 2
  %59 = load i32, i32* %type42, align 4
  %cmp43 = icmp ne i32 %59, 2
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.41
  %60 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt45 = getelementptr inbounds %struct.subpath, %struct.subpath* %60, i32 0, i32 3
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt45, i32 0, i32 1
  %61 = load i64, i64* %y46, align 8
  store i64 %61, i64* %py, align 8
  %62 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt47 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %62, i32 0, i32 3
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt47, i32 0, i32 0
  %63 = load i64, i64* %x48, align 8
  %64 = load i64, i64* %xmax, align 8
  %cmp49 = icmp sgt i64 %63, %64
  br i1 %cmp49, label %land.lhs.true.50, label %cond.false.55

land.lhs.true.50:                                 ; preds = %if.then.44
  %65 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt51 = getelementptr inbounds %struct.subpath, %struct.subpath* %65, i32 0, i32 3
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt51, i32 0, i32 0
  %66 = load i64, i64* %x52, align 8
  %67 = load i64, i64* %xmax, align 8
  %cmp53 = icmp sgt i64 %66, %67
  br i1 %cmp53, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %land.lhs.true.50
  br label %cond.end.77

cond.false.55:                                    ; preds = %land.lhs.true.50, %if.then.44
  %68 = load i64, i64* %py, align 8
  %69 = load i64, i64* %iy, align 8
  %sub56 = sub nsw i64 %68, %69
  store i64 %sub56, i64* %dy, align 8
  %cmp57 = icmp sgt i64 %sub56, 0
  br i1 %cmp57, label %cond.true.58, label %cond.false.64

cond.true.58:                                     ; preds = %cond.false.55
  %70 = load i64, i64* %py, align 8
  %71 = load i64, i64* %ymin, align 8
  %cmp59 = icmp sle i64 %70, %71
  br i1 %cmp59, label %lor.end.62, label %lor.rhs.60

lor.rhs.60:                                       ; preds = %cond.true.58
  %72 = load i64, i64* %iy, align 8
  %73 = load i64, i64* %ymax, align 8
  %cmp61 = icmp sge i64 %72, %73
  br label %lor.end.62

lor.end.62:                                       ; preds = %lor.rhs.60, %cond.true.58
  %74 = phi i1 [ true, %cond.true.58 ], [ %cmp61, %lor.rhs.60 ]
  %cond63 = select i1 %74, i32 0, i32 1
  br label %cond.end.75

cond.false.64:                                    ; preds = %cond.false.55
  %75 = load i64, i64* %dy, align 8
  %cmp65 = icmp slt i64 %75, 0
  br i1 %cmp65, label %cond.true.66, label %cond.false.72

cond.true.66:                                     ; preds = %cond.false.64
  %76 = load i64, i64* %iy, align 8
  %77 = load i64, i64* %ymin, align 8
  %cmp67 = icmp sle i64 %76, %77
  br i1 %cmp67, label %lor.end.70, label %lor.rhs.68

lor.rhs.68:                                       ; preds = %cond.true.66
  %78 = load i64, i64* %py, align 8
  %79 = load i64, i64* %ymax, align 8
  %cmp69 = icmp sge i64 %78, %79
  br label %lor.end.70

lor.end.70:                                       ; preds = %lor.rhs.68, %cond.true.66
  %80 = phi i1 [ true, %cond.true.66 ], [ %cmp69, %lor.rhs.68 ]
  %cond71 = select i1 %80, i32 0, i32 -1
  br label %cond.end.73

cond.false.72:                                    ; preds = %cond.false.64
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %lor.end.70
  %cond74 = phi i32 [ %cond71, %lor.end.70 ], [ 0, %cond.false.72 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %lor.end.62
  %cond76 = phi i32 [ %cond63, %lor.end.62 ], [ %cond74, %cond.end.73 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.true.54
  %cond78 = phi i32 [ 0, %cond.true.54 ], [ %cond76, %cond.end.75 ]
  store i32 %cond78, i32* %cdir, align 4
  %81 = load i32, i32* %cdir, align 4
  %82 = load i32, i32* %dir, align 4
  %cmp79 = icmp sgt i32 %81, %82
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.83

land.lhs.true.80:                                 ; preds = %cond.end.77
  %83 = load i32, i32* %dir, align 4
  %tobool81 = icmp ne i32 %83, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.80
  %84 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %85 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %86 = load i32, i32* %dir, align 4
  %87 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  call void @add_y_line(%struct.segment_s* %84, %struct.segment_s* %85, i32 %86, %struct.line_list_s* %87)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %land.lhs.true.80, %cond.end.77
  %88 = load i32, i32* %cdir, align 4
  %89 = load i32, i32* %dir, align 4
  %cmp84 = icmp sgt i32 %88, %89
  br i1 %cmp84, label %land.lhs.true.85, label %lor.lhs.false

land.lhs.true.85:                                 ; preds = %if.end.83
  %90 = load i32, i32* %cdir, align 4
  %tobool86 = icmp ne i32 %90, 0
  br i1 %tobool86, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.85, %if.end.83
  %91 = load i32, i32* %cdir, align 4
  %cmp87 = icmp slt i32 %91, 0
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false, %land.lhs.true.85
  %92 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %93 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %94 = bitcast %struct.subpath* %93 to %struct.segment_s*
  %95 = load i32, i32* %cdir, align 4
  %96 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  call void @add_y_line(%struct.segment_s* %92, %struct.segment_s* %94, i32 %95, %struct.line_list_s* %96)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %lor.lhs.false
  br label %if.end.93

if.else:                                          ; preds = %if.then.41
  %97 = load i32, i32* %dir, align 4
  %cmp90 = icmp slt i32 %97, 0
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.else
  %98 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %99 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %100 = load i32, i32* %dir, align 4
  %101 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  call void @add_y_line(%struct.segment_s* %98, %struct.segment_s* %99, i32 %100, %struct.line_list_s* %101)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.else
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.39
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.94, %sw.bb
  %102 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  store %struct.segment_s* %102, %struct.segment_s** %prev, align 8
  %103 = load i32, i32* %dir, align 4
  store i32 %103, i32* %prev_dir, align 4
  %104 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %104, i32 0, i32 1
  %105 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  store %struct.segment_s* %105, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fill_loop(%struct.gx_device_color_s* %pdevc, i32 %rule, %struct.line_list_s* %ll, %struct.gs_fixed_rect_s* %pbox, %struct.gs_state_s* %pgs, i64 %trim) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %rule.addr = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %trim.addr = alloca i64, align 8
  %yll = alloca %struct.active_line_s*, align 8
  %pmax = alloca %struct.gs_fixed_point_s, align 8
  %y = alloca i64, align 8
  %y13 = alloca i64, align 8
  %end_count = alloca i32, align 4
  %endp = alloca %struct.active_line_s*, align 8
  %alp = alloca %struct.active_line_s*, align 8
  %alstop = alloca %struct.active_line_s*, align 8
  %x = alloca i64, align 8
  %ynext = alloca %struct.active_line_s*, align 8
  %nx = alloca i64, align 8
  %alp294 = alloca %struct.active_line_s*, align 8
  %height = alloca i64, align 8
  %xlbot = alloca i64, align 8
  %xltop = alloca i64, align 8
  %inside = alloca [2 x i32], align 4
  %xbot = alloca i64, align 8
  %xtop = alloca i64, align 8
  %next304 = alloca %struct.active_line_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8
  store i32 %rule, i32* %rule.addr, align 4
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i64 %trim, i64* %trim.addr, align 8
  %0 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %y_list = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %0, i32 0, i32 4
  %1 = load %struct.active_line_s*, %struct.active_line_s** %y_list, align 8
  store %struct.active_line_s* %1, %struct.active_line_s** %yll, align 8
  %2 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %cmp = icmp eq %struct.active_line_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end.360

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 1
  %4 = bitcast %struct.gs_fixed_point_s* %pmax to i8*
  %5 = bitcast %struct.gs_fixed_point_s* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %6 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %6, i32 0, i32 0
  %y1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %7 = load i64, i64* %y1, align 8
  store i64 %7, i64* %y, align 8
  %8 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %8, i32 0, i32 6
  %next = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %x_head, i32 0, i32 10
  store %struct.active_line_s* null, %struct.active_line_s** %next, align 8
  %9 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head2 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %9, i32 0, i32 6
  %end_mark = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %x_head2, i32 0, i32 8
  store i16 -4, i16* %end_mark, align 2
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.21, %while.end.359
  %10 = load i64, i64* %y, align 8
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pmax, i32 0, i32 1
  %11 = load i64, i64* %y4, align 8
  %cmp5 = icmp sge i64 %10, %11
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  br label %while.end.360

if.end.7:                                         ; preds = %while.body
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.13, %if.end.7
  %12 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %cmp9 = icmp ne %struct.active_line_s* %12, null
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.8
  %13 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %start10 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %13, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 1
  %14 = load i64, i64* %y11, align 8
  %15 = load i64, i64* %y, align 8
  %cmp12 = icmp eq i64 %14, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.8
  %16 = phi i1 [ false, %while.cond.8 ], [ %cmp12, %land.rhs ]
  br i1 %16, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %land.end
  %17 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %next14 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %17, i32 0, i32 10
  %18 = load %struct.active_line_s*, %struct.active_line_s** %next14, align 8
  store %struct.active_line_s* %18, %struct.active_line_s** %ynext, align 8
  %19 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %20 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  call void @insert_x_new(%struct.active_line_s* %19, %struct.line_list_s* %20)
  %21 = load %struct.active_line_s*, %struct.active_line_s** %ynext, align 8
  store %struct.active_line_s* %21, %struct.active_line_s** %yll, align 8
  br label %while.cond.8

while.end:                                        ; preds = %land.end
  %22 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head15 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %22, i32 0, i32 6
  %next16 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %x_head15, i32 0, i32 10
  %23 = load %struct.active_line_s*, %struct.active_line_s** %next16, align 8
  %cmp17 = icmp eq %struct.active_line_s* %23, null
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %while.end
  %24 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %cmp19 = icmp eq %struct.active_line_s* %24, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.18
  br label %while.end.360

if.end.21:                                        ; preds = %if.then.18
  %25 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %start22 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %25, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 1
  %26 = load i64, i64* %y23, align 8
  store i64 %26, i64* %y, align 8
  br label %while.body

if.end.24:                                        ; preds = %while.end
  %27 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %cmp25 = icmp ne %struct.active_line_s* %27, null
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %28 = load %struct.active_line_s*, %struct.active_line_s** %yll, align 8
  %start26 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %28, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start26, i32 0, i32 1
  %29 = load i64, i64* %y27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 2147483647, %cond.false ]
  store i64 %cond, i64* %y13, align 8
  %30 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head28 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %30, i32 0, i32 6
  %next29 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %x_head28, i32 0, i32 10
  %31 = load %struct.active_line_s*, %struct.active_line_s** %next29, align 8
  store %struct.active_line_s* %31, %struct.active_line_s** %alp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %32 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %cmp30 = icmp ne %struct.active_line_s* %32, null
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %33, i32 0, i32 1
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %34 = load i64, i64* %y31, align 8
  %35 = load i64, i64* %y13, align 8
  %cmp32 = icmp slt i64 %34, %35
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %for.body
  %36 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end34 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %36, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end34, i32 0, i32 1
  %37 = load i64, i64* %y35, align 8
  store i64 %37, i64* %y13, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %38 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %next37 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %38, i32 0, i32 10
  %39 = load %struct.active_line_s*, %struct.active_line_s** %next37, align 8
  store %struct.active_line_s* %39, %struct.active_line_s** %alp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %end_count, align 4
  store i64 -2147483648, i64* %x, align 8
  %40 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head38 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %40, i32 0, i32 6
  %next39 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %x_head38, i32 0, i32 10
  %41 = load %struct.active_line_s*, %struct.active_line_s** %next39, align 8
  store %struct.active_line_s* %41, %struct.active_line_s** %alstop, align 8
  %42 = load %struct.active_line_s*, %struct.active_line_s** %alstop, align 8
  store %struct.active_line_s* %42, %struct.active_line_s** %alp, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.227, %for.end
  %43 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %cmp41 = icmp ne %struct.active_line_s* %43, null
  br i1 %cmp41, label %for.body.42, label %for.end.229

for.body.42:                                      ; preds = %for.cond.40
  %44 = load i64, i64* %y13, align 8
  %45 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end43 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %45, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end43, i32 0, i32 1
  %46 = load i64, i64* %y44, align 8
  %cmp45 = icmp eq i64 %44, %46
  br i1 %cmp45, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %for.body.42
  %47 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end47 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %47, i32 0, i32 1
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end47, i32 0, i32 0
  %48 = load i64, i64* %x48, align 8
  br label %cond.end.87

cond.false.49:                                    ; preds = %for.body.42
  %49 = load i64, i64* %y13, align 8
  %50 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %y_fast_max = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %50, i32 0, i32 2
  %51 = load i64, i64* %y_fast_max, align 8
  %cmp50 = icmp sle i64 %49, %51
  br i1 %cmp50, label %cond.true.51, label %cond.false.64

cond.true.51:                                     ; preds = %cond.false.49
  %52 = load i64, i64* %y13, align 8
  %53 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start52 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %53, i32 0, i32 0
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start52, i32 0, i32 1
  %54 = load i64, i64* %y53, align 8
  %sub = sub nsw i64 %52, %54
  %55 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end54 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %55, i32 0, i32 1
  %x55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end54, i32 0, i32 0
  %56 = load i64, i64* %x55, align 8
  %57 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start56 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %57, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start56, i32 0, i32 0
  %58 = load i64, i64* %x57, align 8
  %sub58 = sub nsw i64 %56, %58
  %mul = mul nsw i64 %sub, %sub58
  %59 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end59 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %59, i32 0, i32 1
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end59, i32 0, i32 1
  %60 = load i64, i64* %y60, align 8
  %61 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start61 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %61, i32 0, i32 0
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start61, i32 0, i32 1
  %62 = load i64, i64* %y62, align 8
  %sub63 = sub nsw i64 %60, %62
  %div = sdiv i64 %mul, %sub63
  br label %cond.end.83

cond.false.64:                                    ; preds = %cond.false.49
  %63 = load i64, i64* %y13, align 8
  %64 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start65 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %64, i32 0, i32 0
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start65, i32 0, i32 1
  %65 = load i64, i64* %y66, align 8
  %sub67 = sub nsw i64 %63, %65
  %conv = sitofp i64 %sub67 to double
  %66 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end68 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %66, i32 0, i32 1
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end68, i32 0, i32 0
  %67 = load i64, i64* %x69, align 8
  %68 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start70 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %68, i32 0, i32 0
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start70, i32 0, i32 0
  %69 = load i64, i64* %x71, align 8
  %sub72 = sub nsw i64 %67, %69
  %conv73 = sitofp i64 %sub72 to double
  %mul74 = fmul double %conv, %conv73
  %70 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end75 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %70, i32 0, i32 1
  %y76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end75, i32 0, i32 1
  %71 = load i64, i64* %y76, align 8
  %72 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start77 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %72, i32 0, i32 0
  %y78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start77, i32 0, i32 1
  %73 = load i64, i64* %y78, align 8
  %sub79 = sub nsw i64 %71, %73
  %conv80 = sitofp i64 %sub79 to double
  %div81 = fdiv double %mul74, %conv80
  %conv82 = fptosi double %div81 to i64
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.64, %cond.true.51
  %cond84 = phi i64 [ %div, %cond.true.51 ], [ %conv82, %cond.false.64 ]
  %74 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start85 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %74, i32 0, i32 0
  %x86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start85, i32 0, i32 0
  %75 = load i64, i64* %x86, align 8
  %add = add nsw i64 %cond84, %75
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.83, %cond.true.46
  %cond88 = phi i64 [ %48, %cond.true.46 ], [ %add, %cond.end.83 ]
  store i64 %cond88, i64* %nx, align 8
  %76 = load i64, i64* %nx, align 8
  %77 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %x_next = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %77, i32 0, i32 4
  store i64 %76, i64* %x_next, align 8
  %78 = load i64, i64* %nx, align 8
  %79 = load i64, i64* %x, align 8
  %cmp89 = icmp slt i64 %78, %79
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %cond.end.87
  %80 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %81 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %call = call i64 @find_cross_y(%struct.active_line_s* %80, %struct.active_line_s* %81)
  store i64 %call, i64* %y13, align 8
  br label %while.body.93

while.body.93:                                    ; preds = %if.then.91, %if.end.205
  %82 = load i64, i64* %y13, align 8
  %83 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %end94 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %83, i32 0, i32 1
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end94, i32 0, i32 1
  %84 = load i64, i64* %y95, align 8
  %cmp96 = icmp eq i64 %82, %84
  br i1 %cmp96, label %cond.true.98, label %cond.false.101

cond.true.98:                                     ; preds = %while.body.93
  %85 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %end99 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %85, i32 0, i32 1
  %x100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end99, i32 0, i32 0
  %86 = load i64, i64* %x100, align 8
  br label %cond.end.146

cond.false.101:                                   ; preds = %while.body.93
  %87 = load i64, i64* %y13, align 8
  %88 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %y_fast_max102 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %88, i32 0, i32 2
  %89 = load i64, i64* %y_fast_max102, align 8
  %cmp103 = icmp sle i64 %87, %89
  br i1 %cmp103, label %cond.true.105, label %cond.false.121

cond.true.105:                                    ; preds = %cond.false.101
  %90 = load i64, i64* %y13, align 8
  %91 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %start106 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %91, i32 0, i32 0
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start106, i32 0, i32 1
  %92 = load i64, i64* %y107, align 8
  %sub108 = sub nsw i64 %90, %92
  %93 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %end109 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %93, i32 0, i32 1
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end109, i32 0, i32 0
  %94 = load i64, i64* %x110, align 8
  %95 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %start111 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %95, i32 0, i32 0
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start111, i32 0, i32 0
  %96 = load i64, i64* %x112, align 8
  %sub113 = sub nsw i64 %94, %96
  %mul114 = mul nsw i64 %sub108, %sub113
  %97 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %end115 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %97, i32 0, i32 1
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end115, i32 0, i32 1
  %98 = load i64, i64* %y116, align 8
  %99 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %start117 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %99, i32 0, i32 0
  %y118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start117, i32 0, i32 1
  %100 = load i64, i64* %y118, align 8
  %sub119 = sub nsw i64 %98, %100
  %div120 = sdiv i64 %mul114, %sub119
  br label %cond.end.141

cond.false.121:                                   ; preds = %cond.false.101
  %101 = load i64, i64* %y13, align 8
  %102 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %start122 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %102, i32 0, i32 0
  %y123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start122, i32 0, i32 1
  %103 = load i64, i64* %y123, align 8
  %sub124 = sub nsw i64 %101, %103
  %conv125 = sitofp i64 %sub124 to double
  %104 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %end126 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %104, i32 0, i32 1
  %x127 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end126, i32 0, i32 0
  %105 = load i64, i64* %x127, align 8
  %106 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %start128 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %106, i32 0, i32 0
  %x129 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start128, i32 0, i32 0
  %107 = load i64, i64* %x129, align 8
  %sub130 = sub nsw i64 %105, %107
  %conv131 = sitofp i64 %sub130 to double
  %mul132 = fmul double %conv125, %conv131
  %108 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %end133 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %108, i32 0, i32 1
  %y134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end133, i32 0, i32 1
  %109 = load i64, i64* %y134, align 8
  %110 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %start135 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %110, i32 0, i32 0
  %y136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start135, i32 0, i32 1
  %111 = load i64, i64* %y136, align 8
  %sub137 = sub nsw i64 %109, %111
  %conv138 = sitofp i64 %sub137 to double
  %div139 = fdiv double %mul132, %conv138
  %conv140 = fptosi double %div139 to i64
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.121, %cond.true.105
  %cond142 = phi i64 [ %div120, %cond.true.105 ], [ %conv140, %cond.false.121 ]
  %112 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %start143 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %112, i32 0, i32 0
  %x144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start143, i32 0, i32 0
  %113 = load i64, i64* %x144, align 8
  %add145 = add nsw i64 %cond142, %113
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.141, %cond.true.98
  %cond147 = phi i64 [ %86, %cond.true.98 ], [ %add145, %cond.end.141 ]
  store i64 %cond147, i64* %x, align 8
  %114 = load i64, i64* %y13, align 8
  %115 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end148 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %115, i32 0, i32 1
  %y149 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end148, i32 0, i32 1
  %116 = load i64, i64* %y149, align 8
  %cmp150 = icmp eq i64 %114, %116
  br i1 %cmp150, label %cond.true.152, label %cond.false.155

cond.true.152:                                    ; preds = %cond.end.146
  %117 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end153 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %117, i32 0, i32 1
  %x154 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end153, i32 0, i32 0
  %118 = load i64, i64* %x154, align 8
  br label %cond.end.200

cond.false.155:                                   ; preds = %cond.end.146
  %119 = load i64, i64* %y13, align 8
  %120 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %y_fast_max156 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %120, i32 0, i32 2
  %121 = load i64, i64* %y_fast_max156, align 8
  %cmp157 = icmp sle i64 %119, %121
  br i1 %cmp157, label %cond.true.159, label %cond.false.175

cond.true.159:                                    ; preds = %cond.false.155
  %122 = load i64, i64* %y13, align 8
  %123 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start160 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %123, i32 0, i32 0
  %y161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start160, i32 0, i32 1
  %124 = load i64, i64* %y161, align 8
  %sub162 = sub nsw i64 %122, %124
  %125 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end163 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %125, i32 0, i32 1
  %x164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end163, i32 0, i32 0
  %126 = load i64, i64* %x164, align 8
  %127 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start165 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %127, i32 0, i32 0
  %x166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start165, i32 0, i32 0
  %128 = load i64, i64* %x166, align 8
  %sub167 = sub nsw i64 %126, %128
  %mul168 = mul nsw i64 %sub162, %sub167
  %129 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end169 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %129, i32 0, i32 1
  %y170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end169, i32 0, i32 1
  %130 = load i64, i64* %y170, align 8
  %131 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start171 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %131, i32 0, i32 0
  %y172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start171, i32 0, i32 1
  %132 = load i64, i64* %y172, align 8
  %sub173 = sub nsw i64 %130, %132
  %div174 = sdiv i64 %mul168, %sub173
  br label %cond.end.195

cond.false.175:                                   ; preds = %cond.false.155
  %133 = load i64, i64* %y13, align 8
  %134 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start176 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %134, i32 0, i32 0
  %y177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start176, i32 0, i32 1
  %135 = load i64, i64* %y177, align 8
  %sub178 = sub nsw i64 %133, %135
  %conv179 = sitofp i64 %sub178 to double
  %136 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end180 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %136, i32 0, i32 1
  %x181 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end180, i32 0, i32 0
  %137 = load i64, i64* %x181, align 8
  %138 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start182 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %138, i32 0, i32 0
  %x183 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start182, i32 0, i32 0
  %139 = load i64, i64* %x183, align 8
  %sub184 = sub nsw i64 %137, %139
  %conv185 = sitofp i64 %sub184 to double
  %mul186 = fmul double %conv179, %conv185
  %140 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end187 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %140, i32 0, i32 1
  %y188 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end187, i32 0, i32 1
  %141 = load i64, i64* %y188, align 8
  %142 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start189 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %142, i32 0, i32 0
  %y190 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start189, i32 0, i32 1
  %143 = load i64, i64* %y190, align 8
  %sub191 = sub nsw i64 %141, %143
  %conv192 = sitofp i64 %sub191 to double
  %div193 = fdiv double %mul186, %conv192
  %conv194 = fptosi double %div193 to i64
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.175, %cond.true.159
  %cond196 = phi i64 [ %div174, %cond.true.159 ], [ %conv194, %cond.false.175 ]
  %144 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start197 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %144, i32 0, i32 0
  %x198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start197, i32 0, i32 0
  %145 = load i64, i64* %x198, align 8
  %add199 = add nsw i64 %cond196, %145
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.end.195, %cond.true.152
  %cond201 = phi i64 [ %118, %cond.true.152 ], [ %add199, %cond.end.195 ]
  store i64 %cond201, i64* %nx, align 8
  %146 = load i64, i64* %nx, align 8
  %147 = load i64, i64* %x, align 8
  %cmp202 = icmp sle i64 %146, %147
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %cond.end.200
  br label %while.end.206

if.end.205:                                       ; preds = %cond.end.200
  %148 = load i64, i64* %y13, align 8
  %inc = add nsw i64 %148, 1
  store i64 %inc, i64* %y13, align 8
  br label %while.body.93

while.end.206:                                    ; preds = %if.then.204
  %149 = load i64, i64* %x, align 8
  %150 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %x_next207 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %150, i32 0, i32 4
  store i64 %149, i64* %x_next207, align 8
  %151 = load i64, i64* %nx, align 8
  %152 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %x_next208 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %152, i32 0, i32 4
  store i64 %151, i64* %x_next208, align 8
  %153 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  store %struct.active_line_s* %153, %struct.active_line_s** %alstop, align 8
  %154 = load i32, i32* %end_count, align 4
  %add209 = add nsw i32 %154, 4
  store i32 %add209, i32* %end_count, align 4
  %155 = load i32, i32* %end_count, align 4
  %add210 = add nsw i32 %155, 3
  %conv211 = trunc i32 %add210 to i16
  %156 = load %struct.active_line_s*, %struct.active_line_s** %endp, align 8
  %end_mark212 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %156, i32 0, i32 8
  store i16 %conv211, i16* %end_mark212, align 2
  %157 = load i32, i32* %end_count, align 4
  %add213 = add nsw i32 %157, 1
  %conv214 = trunc i32 %add213 to i16
  %158 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end_mark215 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %158, i32 0, i32 8
  store i16 %conv214, i16* %end_mark215, align 2
  br label %if.end.226

if.else:                                          ; preds = %cond.end.87
  %159 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end216 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %159, i32 0, i32 1
  %y217 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end216, i32 0, i32 1
  %160 = load i64, i64* %y217, align 8
  %161 = load i64, i64* %y13, align 8
  %cmp218 = icmp eq i64 %160, %161
  br i1 %cmp218, label %if.then.220, label %if.else.223

if.then.220:                                      ; preds = %if.else
  %162 = load i32, i32* %end_count, align 4
  %conv221 = trunc i32 %162 to i16
  %163 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end_mark222 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %163, i32 0, i32 8
  store i16 %conv221, i16* %end_mark222, align 2
  br label %if.end.225

if.else.223:                                      ; preds = %if.else
  %164 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end_mark224 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %164, i32 0, i32 8
  store i16 -2, i16* %end_mark224, align 2
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.223, %if.then.220
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %while.end.206
  %165 = load i64, i64* %nx, align 8
  store i64 %165, i64* %x, align 8
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226
  %166 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  store %struct.active_line_s* %166, %struct.active_line_s** %endp, align 8
  %167 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %next228 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %167, i32 0, i32 10
  %168 = load %struct.active_line_s*, %struct.active_line_s** %next228, align 8
  store %struct.active_line_s* %168, %struct.active_line_s** %alp, align 8
  br label %for.cond.40

for.end.229:                                      ; preds = %for.cond.40
  %169 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head230 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %169, i32 0, i32 6
  %next231 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %x_head230, i32 0, i32 10
  %170 = load %struct.active_line_s*, %struct.active_line_s** %next231, align 8
  store %struct.active_line_s* %170, %struct.active_line_s** %alp, align 8
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.291, %for.end.229
  %171 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %172 = load %struct.active_line_s*, %struct.active_line_s** %alstop, align 8
  %cmp233 = icmp ne %struct.active_line_s* %171, %172
  br i1 %cmp233, label %for.body.235, label %for.end.293

for.body.235:                                     ; preds = %for.cond.232
  %173 = load i64, i64* %y13, align 8
  %174 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end236 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %174, i32 0, i32 1
  %y237 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end236, i32 0, i32 1
  %175 = load i64, i64* %y237, align 8
  %cmp238 = icmp eq i64 %173, %175
  br i1 %cmp238, label %cond.true.240, label %cond.false.243

cond.true.240:                                    ; preds = %for.body.235
  %176 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end241 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %176, i32 0, i32 1
  %x242 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end241, i32 0, i32 0
  %177 = load i64, i64* %x242, align 8
  br label %cond.end.288

cond.false.243:                                   ; preds = %for.body.235
  %178 = load i64, i64* %y13, align 8
  %179 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %y_fast_max244 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %179, i32 0, i32 2
  %180 = load i64, i64* %y_fast_max244, align 8
  %cmp245 = icmp sle i64 %178, %180
  br i1 %cmp245, label %cond.true.247, label %cond.false.263

cond.true.247:                                    ; preds = %cond.false.243
  %181 = load i64, i64* %y13, align 8
  %182 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start248 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %182, i32 0, i32 0
  %y249 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start248, i32 0, i32 1
  %183 = load i64, i64* %y249, align 8
  %sub250 = sub nsw i64 %181, %183
  %184 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end251 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %184, i32 0, i32 1
  %x252 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end251, i32 0, i32 0
  %185 = load i64, i64* %x252, align 8
  %186 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start253 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %186, i32 0, i32 0
  %x254 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start253, i32 0, i32 0
  %187 = load i64, i64* %x254, align 8
  %sub255 = sub nsw i64 %185, %187
  %mul256 = mul nsw i64 %sub250, %sub255
  %188 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end257 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %188, i32 0, i32 1
  %y258 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end257, i32 0, i32 1
  %189 = load i64, i64* %y258, align 8
  %190 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start259 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %190, i32 0, i32 0
  %y260 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start259, i32 0, i32 1
  %191 = load i64, i64* %y260, align 8
  %sub261 = sub nsw i64 %189, %191
  %div262 = sdiv i64 %mul256, %sub261
  br label %cond.end.283

cond.false.263:                                   ; preds = %cond.false.243
  %192 = load i64, i64* %y13, align 8
  %193 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start264 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %193, i32 0, i32 0
  %y265 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start264, i32 0, i32 1
  %194 = load i64, i64* %y265, align 8
  %sub266 = sub nsw i64 %192, %194
  %conv267 = sitofp i64 %sub266 to double
  %195 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end268 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %195, i32 0, i32 1
  %x269 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end268, i32 0, i32 0
  %196 = load i64, i64* %x269, align 8
  %197 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start270 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %197, i32 0, i32 0
  %x271 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start270, i32 0, i32 0
  %198 = load i64, i64* %x271, align 8
  %sub272 = sub nsw i64 %196, %198
  %conv273 = sitofp i64 %sub272 to double
  %mul274 = fmul double %conv267, %conv273
  %199 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end275 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %199, i32 0, i32 1
  %y276 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end275, i32 0, i32 1
  %200 = load i64, i64* %y276, align 8
  %201 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start277 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %201, i32 0, i32 0
  %y278 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start277, i32 0, i32 1
  %202 = load i64, i64* %y278, align 8
  %sub279 = sub nsw i64 %200, %202
  %conv280 = sitofp i64 %sub279 to double
  %div281 = fdiv double %mul274, %conv280
  %conv282 = fptosi double %div281 to i64
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.263, %cond.true.247
  %cond284 = phi i64 [ %div262, %cond.true.247 ], [ %conv282, %cond.false.263 ]
  %203 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start285 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %203, i32 0, i32 0
  %x286 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start285, i32 0, i32 0
  %204 = load i64, i64* %x286, align 8
  %add287 = add nsw i64 %cond284, %204
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.end.283, %cond.true.240
  %cond289 = phi i64 [ %177, %cond.true.240 ], [ %add287, %cond.end.283 ]
  %205 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %x_next290 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %205, i32 0, i32 4
  store i64 %cond289, i64* %x_next290, align 8
  br label %for.inc.291

for.inc.291:                                      ; preds = %cond.end.288
  %206 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %next292 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %206, i32 0, i32 10
  %207 = load %struct.active_line_s*, %struct.active_line_s** %next292, align 8
  store %struct.active_line_s* %207, %struct.active_line_s** %alp, align 8
  br label %for.cond.232

for.end.293:                                      ; preds = %for.cond.232
  %208 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head295 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %208, i32 0, i32 6
  %next296 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %x_head295, i32 0, i32 10
  %209 = load %struct.active_line_s*, %struct.active_line_s** %next296, align 8
  store %struct.active_line_s* %209, %struct.active_line_s** %alp294, align 8
  %210 = load i64, i64* %y13, align 8
  %211 = load i64, i64* %y, align 8
  %sub297 = sub nsw i64 %210, %211
  store i64 %sub297, i64* %height, align 8
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %212 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %no_clip = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %212, i32 0, i32 7
  %213 = load i32, i32* %no_clip, align 4
  %arrayidx298 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 1
  store i32 %213, i32* %arrayidx298, align 4
  br label %while.cond.299

while.cond.299:                                   ; preds = %if.end.358, %for.end.293
  %214 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %cmp300 = icmp ne %struct.active_line_s* %214, null
  br i1 %cmp300, label %while.body.302, label %while.end.359

while.body.302:                                   ; preds = %while.cond.299
  %215 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %x_current = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %215, i32 0, i32 3
  %216 = load i64, i64* %x_current, align 8
  store i64 %216, i64* %xbot, align 8
  %217 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %x_next303 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %217, i32 0, i32 4
  %218 = load i64, i64* %x_next303, align 8
  store i64 %218, i64* %xtop, align 8
  %219 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %next305 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %219, i32 0, i32 10
  %220 = load %struct.active_line_s*, %struct.active_line_s** %next305, align 8
  store %struct.active_line_s* %220, %struct.active_line_s** %next304, align 8
  %arrayidx306 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 0
  %221 = load i32, i32* %arrayidx306, align 4
  %222 = load i32, i32* %rule.addr, align 4
  %and = and i32 %221, %222
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.331

land.lhs.true:                                    ; preds = %while.body.302
  %arrayidx307 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 1
  %223 = load i32, i32* %arrayidx307, align 4
  %224 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_rule = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %224, i32 0, i32 9
  %225 = load i32, i32* %clip_rule, align 4
  %and308 = and i32 %223, %225
  %tobool309 = icmp ne i32 %and308, 0
  br i1 %tobool309, label %if.then.310, label %if.else.331

if.then.310:                                      ; preds = %land.lhs.true
  %226 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %direction = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %226, i32 0, i32 6
  %227 = load i32, i32* %direction, align 4
  %228 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %tag = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %228, i32 0, i32 7
  %229 = load i16, i16* %tag, align 2
  %idxprom = sext i16 %229 to i64
  %arrayidx311 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 %idxprom
  %230 = load i32, i32* %arrayidx311, align 4
  %add312 = add nsw i32 %230, %227
  store i32 %add312, i32* %arrayidx311, align 4
  %arrayidx313 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 0
  %231 = load i32, i32* %arrayidx313, align 4
  %232 = load i32, i32* %rule.addr, align 4
  %and314 = and i32 %231, %232
  %tobool315 = icmp ne i32 %and314, 0
  br i1 %tobool315, label %land.lhs.true.316, label %if.then.321

land.lhs.true.316:                                ; preds = %if.then.310
  %arrayidx317 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 1
  %233 = load i32, i32* %arrayidx317, align 4
  %234 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_rule318 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %234, i32 0, i32 9
  %235 = load i32, i32* %clip_rule318, align 4
  %and319 = and i32 %233, %235
  %tobool320 = icmp ne i32 %and319, 0
  br i1 %tobool320, label %if.end.330, label %if.then.321

if.then.321:                                      ; preds = %land.lhs.true.316, %if.then.310
  %236 = load i64, i64* %xlbot, align 8
  %237 = load i64, i64* %trim.addr, align 8
  %add322 = add nsw i64 %236, %237
  %238 = load i64, i64* %xbot, align 8
  %239 = load i64, i64* %xlbot, align 8
  %sub323 = sub nsw i64 %238, %239
  %240 = load i64, i64* %trim.addr, align 8
  %shl = shl i64 %240, 1
  %sub324 = sub nsw i64 %sub323, %shl
  %241 = load i64, i64* %y, align 8
  %242 = load i64, i64* %xltop, align 8
  %243 = load i64, i64* %trim.addr, align 8
  %add325 = add nsw i64 %242, %243
  %244 = load i64, i64* %xtop, align 8
  %245 = load i64, i64* %xltop, align 8
  %sub326 = sub nsw i64 %244, %245
  %246 = load i64, i64* %trim.addr, align 8
  %shl327 = shl i64 %246, 1
  %sub328 = sub nsw i64 %sub326, %shl327
  %247 = load i64, i64* %height, align 8
  %248 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %249 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call329 = call i32 (i64, i64, i64, i64, i64, i64, i32, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gz_fill_trapezoid_fixed to i32 (i64, i64, i64, i64, i64, i64, i32, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(i64 %add322, i64 %sub324, i64 %241, i64 %add325, i64 %sub328, i64 %247, i32 0, %struct.gx_device_color_s* %248, %struct.gs_state_s* %249)
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.321, %land.lhs.true.316
  br label %if.end.347

if.else.331:                                      ; preds = %land.lhs.true, %while.body.302
  %250 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %direction332 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %250, i32 0, i32 6
  %251 = load i32, i32* %direction332, align 4
  %252 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %tag333 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %252, i32 0, i32 7
  %253 = load i16, i16* %tag333, align 2
  %idxprom334 = sext i16 %253 to i64
  %arrayidx335 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 %idxprom334
  %254 = load i32, i32* %arrayidx335, align 4
  %add336 = add nsw i32 %254, %251
  store i32 %add336, i32* %arrayidx335, align 4
  %arrayidx337 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 0
  %255 = load i32, i32* %arrayidx337, align 4
  %256 = load i32, i32* %rule.addr, align 4
  %and338 = and i32 %255, %256
  %tobool339 = icmp ne i32 %and338, 0
  br i1 %tobool339, label %land.lhs.true.340, label %if.end.346

land.lhs.true.340:                                ; preds = %if.else.331
  %arrayidx341 = getelementptr inbounds [2 x i32], [2 x i32]* %inside, i32 0, i64 1
  %257 = load i32, i32* %arrayidx341, align 4
  %258 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_rule342 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %258, i32 0, i32 9
  %259 = load i32, i32* %clip_rule342, align 4
  %and343 = and i32 %257, %259
  %tobool344 = icmp ne i32 %and343, 0
  br i1 %tobool344, label %if.then.345, label %if.end.346

if.then.345:                                      ; preds = %land.lhs.true.340
  %260 = load i64, i64* %xbot, align 8
  store i64 %260, i64* %xlbot, align 8
  %261 = load i64, i64* %xtop, align 8
  store i64 %261, i64* %xltop, align 8
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.345, %land.lhs.true.340, %if.else.331
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.330
  %262 = load i64, i64* %xtop, align 8
  %263 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %x_current348 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %263, i32 0, i32 3
  store i64 %262, i64* %x_current348, align 8
  %264 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %end_mark349 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %264, i32 0, i32 8
  %265 = load i16, i16* %end_mark349, align 2
  %conv350 = sext i16 %265 to i32
  %266 = load i32, i32* %end_count, align 4
  %cmp351 = icmp sge i32 %conv350, %266
  br i1 %cmp351, label %if.then.353, label %if.end.358

if.then.353:                                      ; preds = %if.end.347
  %267 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  %end_mark354 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %267, i32 0, i32 8
  %268 = load i16, i16* %end_mark354, align 2
  %conv355 = sext i16 %268 to i32
  %and356 = and i32 %conv355, 3
  switch i32 %and356, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.357
  ]

sw.bb:                                            ; preds = %if.then.353
  %269 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  call void @swap_group(%struct.active_line_s* %269)
  br label %sw.epilog

sw.bb.357:                                        ; preds = %if.then.353
  %270 = load %struct.active_line_s*, %struct.active_line_s** %alp294, align 8
  call void @ended_line(%struct.active_line_s* %270)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.357, %if.then.353, %sw.bb
  br label %if.end.358

if.end.358:                                       ; preds = %sw.epilog, %if.end.347
  %271 = load %struct.active_line_s*, %struct.active_line_s** %next304, align 8
  store %struct.active_line_s* %271, %struct.active_line_s** %alp294, align 8
  br label %while.cond.299

while.end.359:                                    ; preds = %while.cond.299
  %272 = load i64, i64* %y13, align 8
  store i64 %272, i64* %y, align 8
  br label %while.body

while.end.360:                                    ; preds = %if.then, %if.then.20, %if.then.6
  ret void
}

declare void @gs_free(i8*, i32, i32, i8*) #1

declare void @gx_path_release(%struct.gx_path_s*) #1

declare i8* @gs_malloc(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @add_y_line(%struct.segment_s* %prev_lp, %struct.segment_s* %lp, i32 %dir, %struct.line_list_s* %ll) #0 {
entry:
  %prev_lp.addr = alloca %struct.segment_s*, align 8
  %lp.addr = alloca %struct.segment_s*, align 8
  %dir.addr = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %this = alloca %struct.gs_fixed_point_s, align 8
  %prev = alloca %struct.gs_fixed_point_s, align 8
  %alp = alloca %struct.active_line_s*, align 8
  %y_start = alloca i64, align 8
  %yp = alloca %struct.active_line_s*, align 8
  %nyp = alloca %struct.active_line_s*, align 8
  store %struct.segment_s* %prev_lp, %struct.segment_s** %prev_lp.addr, align 8
  store %struct.segment_s* %lp, %struct.segment_s** %lp.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8
  %0 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %next = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %0, i32 0, i32 3
  %1 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %incdec.ptr = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %1, i32 1
  store %struct.active_line_s* %incdec.ptr, %struct.active_line_s** %next, align 8
  store %struct.active_line_s* %1, %struct.active_line_s** %alp, align 8
  %2 = load %struct.segment_s*, %struct.segment_s** %lp.addr, align 8
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %2, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %3 = load i64, i64* %x, align 8
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 0
  store i64 %3, i64* %x1, align 8
  %4 = load %struct.segment_s*, %struct.segment_s** %lp.addr, align 8
  %pt2 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %4, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt2, i32 0, i32 1
  %5 = load i64, i64* %y, align 8
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 1
  store i64 %5, i64* %y3, align 8
  %6 = load %struct.segment_s*, %struct.segment_s** %prev_lp.addr, align 8
  %pt4 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %6, i32 0, i32 3
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt4, i32 0, i32 0
  %7 = load i64, i64* %x5, align 8
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  store i64 %7, i64* %x6, align 8
  %8 = load %struct.segment_s*, %struct.segment_s** %prev_lp.addr, align 8
  %pt7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %8, i32 0, i32 3
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %9 = load i64, i64* %y8, align 8
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 1
  store i64 %9, i64* %y9, align 8
  %10 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %tag = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %10, i32 0, i32 2
  %11 = load i16, i16* %tag, align 2
  %12 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %tag10 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %12, i32 0, i32 7
  store i16 %11, i16* %tag10, align 2
  %13 = load i32, i32* %dir.addr, align 4
  %14 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %direction = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %14, i32 0, i32 6
  store i32 %13, i32* %direction, align 4
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 1
  %15 = load i64, i64* %y11, align 8
  store i64 %15, i64* %y_start, align 8
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 0
  %16 = load i64, i64* %x12, align 8
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %17 = load i64, i64* %x13, align 8
  %cmp14 = icmp sgt i64 %16, %17
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 0
  %18 = load i64, i64* %x15, align 8
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %19 = load i64, i64* %x16, align 8
  %sub = sub nsw i64 %18, %19
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %20 = load i64, i64* %x17, align 8
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 0
  %21 = load i64, i64* %x18, align 8
  %sub19 = sub nsw i64 %20, %21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %sub19, %cond.false ]
  %or = or i64 %cond, 1
  %div = sdiv i64 2147483647, %or
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 1
  %22 = load i64, i64* %y20, align 8
  %add = add nsw i64 %div, %22
  %23 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %y_fast_max = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %23, i32 0, i32 2
  store i64 %add, i64* %y_fast_max, align 8
  %24 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %24, i32 0, i32 0
  %25 = bitcast %struct.gs_fixed_point_s* %start to i8*
  %26 = bitcast %struct.gs_fixed_point_s* %prev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %27, i32 0, i32 1
  %28 = bitcast %struct.gs_fixed_point_s* %end to i8*
  %29 = bitcast %struct.gs_fixed_point_s* %this to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load %struct.segment_s*, %struct.segment_s** %lp.addr, align 8
  %31 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %pseg = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %31, i32 0, i32 5
  store %struct.segment_s* %30, %struct.segment_s** %pseg, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 1
  %32 = load i64, i64* %y21, align 8
  store i64 %32, i64* %y_start, align 8
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %33 = load i64, i64* %x22, align 8
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 0
  %34 = load i64, i64* %x23, align 8
  %cmp24 = icmp sgt i64 %33, %34
  br i1 %cmp24, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %if.else
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %35 = load i64, i64* %x26, align 8
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 0
  %36 = load i64, i64* %x27, align 8
  %sub28 = sub nsw i64 %35, %36
  br label %cond.end.33

cond.false.29:                                    ; preds = %if.else
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 0
  %37 = load i64, i64* %x30, align 8
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %38 = load i64, i64* %x31, align 8
  %sub32 = sub nsw i64 %37, %38
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.25
  %cond34 = phi i64 [ %sub28, %cond.true.25 ], [ %sub32, %cond.false.29 ]
  %or35 = or i64 %cond34, 1
  %div36 = sdiv i64 2147483647, %or35
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %this, i32 0, i32 1
  %39 = load i64, i64* %y37, align 8
  %add38 = add nsw i64 %div36, %39
  %40 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %y_fast_max39 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %40, i32 0, i32 2
  store i64 %add38, i64* %y_fast_max39, align 8
  %41 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %start40 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %41, i32 0, i32 0
  %42 = bitcast %struct.gs_fixed_point_s* %start40 to i8*
  %43 = bitcast %struct.gs_fixed_point_s* %this to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %44 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %end41 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %44, i32 0, i32 1
  %45 = bitcast %struct.gs_fixed_point_s* %end41 to i8*
  %46 = bitcast %struct.gs_fixed_point_s* %prev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false)
  %47 = load %struct.segment_s*, %struct.segment_s** %prev_lp.addr, align 8
  %48 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %pseg42 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %48, i32 0, i32 5
  store %struct.segment_s* %47, %struct.segment_s** %pseg42, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.33, %cond.end
  %49 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %y_line = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %49, i32 0, i32 5
  %50 = load %struct.active_line_s*, %struct.active_line_s** %y_line, align 8
  store %struct.active_line_s* %50, %struct.active_line_s** %yp, align 8
  %51 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %cmp43 = icmp eq %struct.active_line_s* %51, null
  br i1 %cmp43, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %if.end
  %52 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %prev45 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %52, i32 0, i32 9
  store %struct.active_line_s* null, %struct.active_line_s** %prev45, align 8
  %53 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %next46 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %53, i32 0, i32 10
  store %struct.active_line_s* null, %struct.active_line_s** %next46, align 8
  %54 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %55 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %y_list = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %55, i32 0, i32 4
  store %struct.active_line_s* %54, %struct.active_line_s** %y_list, align 8
  br label %if.end.84

if.else.47:                                       ; preds = %if.end
  %56 = load i64, i64* %y_start, align 8
  %57 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %start48 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %57, i32 0, i32 0
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start48, i32 0, i32 1
  %58 = load i64, i64* %y49, align 8
  %cmp50 = icmp sge i64 %56, %58
  br i1 %cmp50, label %if.then.51, label %if.else.63

if.then.51:                                       ; preds = %if.else.47
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.51
  %59 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %next52 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %59, i32 0, i32 10
  %60 = load %struct.active_line_s*, %struct.active_line_s** %next52, align 8
  store %struct.active_line_s* %60, %struct.active_line_s** %nyp, align 8
  %cmp53 = icmp ne %struct.active_line_s* %60, null
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %61 = load i64, i64* %y_start, align 8
  %62 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %start54 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %62, i32 0, i32 0
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start54, i32 0, i32 1
  %63 = load i64, i64* %y55, align 8
  %cmp56 = icmp sgt i64 %61, %63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %64 = phi i1 [ false, %while.cond ], [ %cmp56, %land.rhs ]
  br i1 %64, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %65 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  store %struct.active_line_s* %65, %struct.active_line_s** %yp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %66 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %67 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %next57 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %67, i32 0, i32 10
  store %struct.active_line_s* %66, %struct.active_line_s** %next57, align 8
  %68 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %69 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %prev58 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %69, i32 0, i32 9
  store %struct.active_line_s* %68, %struct.active_line_s** %prev58, align 8
  %70 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %71 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %next59 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %71, i32 0, i32 10
  store %struct.active_line_s* %70, %struct.active_line_s** %next59, align 8
  %72 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %tobool = icmp ne %struct.active_line_s* %72, null
  br i1 %tobool, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %while.end
  %73 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %74 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %prev61 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %74, i32 0, i32 9
  store %struct.active_line_s* %73, %struct.active_line_s** %prev61, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %while.end
  br label %if.end.83

if.else.63:                                       ; preds = %if.else.47
  br label %while.cond.64

while.cond.64:                                    ; preds = %while.body.72, %if.else.63
  %75 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %prev65 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %75, i32 0, i32 9
  %76 = load %struct.active_line_s*, %struct.active_line_s** %prev65, align 8
  store %struct.active_line_s* %76, %struct.active_line_s** %nyp, align 8
  %cmp66 = icmp ne %struct.active_line_s* %76, null
  br i1 %cmp66, label %land.rhs.67, label %land.end.71

land.rhs.67:                                      ; preds = %while.cond.64
  %77 = load i64, i64* %y_start, align 8
  %78 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %start68 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %78, i32 0, i32 0
  %y69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start68, i32 0, i32 1
  %79 = load i64, i64* %y69, align 8
  %cmp70 = icmp slt i64 %77, %79
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.67, %while.cond.64
  %80 = phi i1 [ false, %while.cond.64 ], [ %cmp70, %land.rhs.67 ]
  br i1 %80, label %while.body.72, label %while.end.73

while.body.72:                                    ; preds = %land.end.71
  %81 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  store %struct.active_line_s* %81, %struct.active_line_s** %yp, align 8
  br label %while.cond.64

while.end.73:                                     ; preds = %land.end.71
  %82 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %83 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %prev74 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %83, i32 0, i32 9
  store %struct.active_line_s* %82, %struct.active_line_s** %prev74, align 8
  %84 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %85 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %next75 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %85, i32 0, i32 10
  store %struct.active_line_s* %84, %struct.active_line_s** %next75, align 8
  %86 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %87 = load %struct.active_line_s*, %struct.active_line_s** %yp, align 8
  %prev76 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %87, i32 0, i32 9
  store %struct.active_line_s* %86, %struct.active_line_s** %prev76, align 8
  %88 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %tobool77 = icmp ne %struct.active_line_s* %88, null
  br i1 %tobool77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %while.end.73
  %89 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %90 = load %struct.active_line_s*, %struct.active_line_s** %nyp, align 8
  %next79 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %90, i32 0, i32 10
  store %struct.active_line_s* %89, %struct.active_line_s** %next79, align 8
  br label %if.end.82

if.else.80:                                       ; preds = %while.end.73
  %91 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %92 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %y_list81 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %92, i32 0, i32 4
  store %struct.active_line_s* %91, %struct.active_line_s** %y_list81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.62
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.44
  %93 = load %struct.active_line_s*, %struct.active_line_s** %alp, align 8
  %94 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %y_line85 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %94, i32 0, i32 5
  store %struct.active_line_s* %93, %struct.active_line_s** %y_line85, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i64 @find_cross_y(%struct.active_line_s* %endp, %struct.active_line_s* %alp) #0 {
entry:
  %endp.addr = alloca %struct.active_line_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %edy = alloca double, align 8
  %ady = alloca double, align 8
  store %struct.active_line_s* %endp, %struct.active_line_s** %endp.addr, align 8
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8
  %0 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %0, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %1 = load i64, i64* %y, align 8
  %2 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %2, i32 0, i32 0
  %y1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %3 = load i64, i64* %y1, align 8
  %sub = sub nsw i64 %1, %3
  %conv = sitofp i64 %sub to double
  store double %conv, double* %edy, align 8
  %4 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end2 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %4, i32 0, i32 1
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2, i32 0, i32 1
  %5 = load i64, i64* %y3, align 8
  %6 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %start4 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %6, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start4, i32 0, i32 1
  %7 = load i64, i64* %y5, align 8
  %sub6 = sub nsw i64 %5, %7
  %conv7 = sitofp i64 %sub6 to double
  store double %conv7, double* %ady, align 8
  %8 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %start8 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %8, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start8, i32 0, i32 0
  %9 = load i64, i64* %x, align 8
  %conv9 = sitofp i64 %9 to double
  %10 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %end10 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %10, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end10, i32 0, i32 1
  %11 = load i64, i64* %y11, align 8
  %conv12 = sitofp i64 %11 to double
  %mul = fmul double %conv9, %conv12
  %12 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %start13 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %12, i32 0, i32 0
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start13, i32 0, i32 1
  %13 = load i64, i64* %y14, align 8
  %conv15 = sitofp i64 %13 to double
  %14 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %end16 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %14, i32 0, i32 1
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end16, i32 0, i32 0
  %15 = load i64, i64* %x17, align 8
  %conv18 = sitofp i64 %15 to double
  %mul19 = fmul double %conv15, %conv18
  %sub20 = fsub double %mul, %mul19
  %16 = load double, double* %ady, align 8
  %mul21 = fmul double %sub20, %16
  %17 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %start22 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %17, i32 0, i32 0
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 0
  %18 = load i64, i64* %x23, align 8
  %conv24 = sitofp i64 %18 to double
  %19 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end25 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %19, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end25, i32 0, i32 1
  %20 = load i64, i64* %y26, align 8
  %conv27 = sitofp i64 %20 to double
  %mul28 = fmul double %conv24, %conv27
  %21 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %start29 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %21, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start29, i32 0, i32 1
  %22 = load i64, i64* %y30, align 8
  %conv31 = sitofp i64 %22 to double
  %23 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end32 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %23, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end32, i32 0, i32 0
  %24 = load i64, i64* %x33, align 8
  %conv34 = sitofp i64 %24 to double
  %mul35 = fmul double %conv31, %conv34
  %sub36 = fsub double %mul28, %mul35
  %25 = load double, double* %edy, align 8
  %mul37 = fmul double %sub36, %25
  %sub38 = fsub double %mul21, %mul37
  %26 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end39 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %26, i32 0, i32 1
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end39, i32 0, i32 0
  %27 = load i64, i64* %x40, align 8
  %28 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %start41 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %28, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start41, i32 0, i32 0
  %29 = load i64, i64* %x42, align 8
  %sub43 = sub nsw i64 %27, %29
  %conv44 = sitofp i64 %sub43 to double
  %30 = load double, double* %edy, align 8
  %mul45 = fmul double %conv44, %30
  %31 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %end46 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %31, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end46, i32 0, i32 0
  %32 = load i64, i64* %x47, align 8
  %33 = load %struct.active_line_s*, %struct.active_line_s** %endp.addr, align 8
  %start48 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %33, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start48, i32 0, i32 0
  %34 = load i64, i64* %x49, align 8
  %sub50 = sub nsw i64 %32, %34
  %conv51 = sitofp i64 %sub50 to double
  %35 = load double, double* %ady, align 8
  %mul52 = fmul double %conv51, %35
  %sub53 = fsub double %mul45, %mul52
  %div = fdiv double %sub38, %sub53
  %conv54 = fptosi double %div to i64
  ret i64 %conv54
}

; Function Attrs: nounwind uwtable
define void @insert_x_new(%struct.active_line_s* %alp, %struct.line_list_s* %ll) #0 {
entry:
  %alp.addr = alloca %struct.active_line_s*, align 8
  %ll.addr = alloca %struct.line_list_s*, align 8
  %next = alloca %struct.active_line_s*, align 8
  %prev = alloca %struct.active_line_s*, align 8
  %x = alloca i64, align 8
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8
  %0 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8
  %x_head = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %0, i32 0, i32 6
  store %struct.active_line_s* %x_head, %struct.active_line_s** %prev, align 8
  %1 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %1, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %2 = load i64, i64* %x1, align 8
  store i64 %2, i64* %x, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.active_line_s*, %struct.active_line_s** %prev, align 8
  %next2 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %3, i32 0, i32 10
  %4 = load %struct.active_line_s*, %struct.active_line_s** %next2, align 8
  store %struct.active_line_s* %4, %struct.active_line_s** %next, align 8
  %cmp = icmp ne %struct.active_line_s* %4, null
  br i1 %cmp, label %land.rhs, label %land.end.18

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %x_current = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %5, i32 0, i32 3
  %6 = load i64, i64* %x_current, align 8
  %7 = load i64, i64* %x, align 8
  %cmp3 = icmp slt i64 %6, %7
  br i1 %cmp3, label %lor.end.17, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %x_current4 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %8, i32 0, i32 3
  %9 = load i64, i64* %x_current4, align 8
  %10 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %9, %10
  br i1 %cmp5, label %land.rhs.6, label %land.end

land.rhs.6:                                       ; preds = %lor.rhs
  %11 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %start7 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %11, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start7, i32 0, i32 0
  %12 = load i64, i64* %x8, align 8
  %13 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %start9 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %13, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start9, i32 0, i32 0
  %14 = load i64, i64* %x10, align 8
  %cmp11 = icmp sgt i64 %12, %14
  br i1 %cmp11, label %lor.end, label %lor.rhs.12

lor.rhs.12:                                       ; preds = %land.rhs.6
  %15 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %15, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %16 = load i64, i64* %x13, align 8
  %17 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end14 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %17, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end14, i32 0, i32 0
  %18 = load i64, i64* %x15, align 8
  %cmp16 = icmp slt i64 %16, %18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.12, %land.rhs.6
  %19 = phi i1 [ true, %land.rhs.6 ], [ %cmp16, %lor.rhs.12 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs
  %20 = phi i1 [ false, %lor.rhs ], [ %19, %lor.end ]
  br label %lor.end.17

lor.end.17:                                       ; preds = %land.end, %land.rhs
  %21 = phi i1 [ true, %land.rhs ], [ %20, %land.end ]
  br label %land.end.18

land.end.18:                                      ; preds = %lor.end.17, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %21, %lor.end.17 ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.18
  %23 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  store %struct.active_line_s* %23, %struct.active_line_s** %prev, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.18
  %24 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %25 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %next19 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %25, i32 0, i32 10
  store %struct.active_line_s* %24, %struct.active_line_s** %next19, align 8
  %26 = load %struct.active_line_s*, %struct.active_line_s** %prev, align 8
  %27 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %prev20 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %27, i32 0, i32 9
  store %struct.active_line_s* %26, %struct.active_line_s** %prev20, align 8
  %28 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %cmp21 = icmp ne %struct.active_line_s* %28, null
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %29 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %30 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %prev22 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %30, i32 0, i32 9
  store %struct.active_line_s* %29, %struct.active_line_s** %prev22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %31 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %32 = load %struct.active_line_s*, %struct.active_line_s** %prev, align 8
  %next23 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %32, i32 0, i32 10
  store %struct.active_line_s* %31, %struct.active_line_s** %next23, align 8
  %33 = load i64, i64* %x, align 8
  %34 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %x_current24 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %34, i32 0, i32 3
  store i64 %33, i64* %x_current24, align 8
  ret void
}

declare i32 @gz_fill_trapezoid_fixed(...) #1

; Function Attrs: nounwind uwtable
define void @swap_group(%struct.active_line_s* %alp) #0 {
entry:
  %alp.addr = alloca %struct.active_line_s*, align 8
  %prev = alloca %struct.active_line_s*, align 8
  %last = alloca %struct.active_line_s*, align 8
  %first = alloca %struct.active_line_s*, align 8
  %next = alloca %struct.active_line_s*, align 8
  %nlp = alloca %struct.active_line_s*, align 8
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8
  %0 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  store %struct.active_line_s* %0, %struct.active_line_s** %last, align 8
  %1 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %next1 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %1, i32 0, i32 10
  %2 = load %struct.active_line_s*, %struct.active_line_s** %next1, align 8
  store %struct.active_line_s* %2, %struct.active_line_s** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %prev2 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %3, i32 0, i32 9
  %4 = load %struct.active_line_s*, %struct.active_line_s** %prev2, align 8
  store %struct.active_line_s* %4, %struct.active_line_s** %prev, align 8
  %end_mark = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %4, i32 0, i32 8
  %5 = load i16, i16* %end_mark, align 2
  %conv = sext i16 %5 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.active_line_s*, %struct.active_line_s** %prev, align 8
  store %struct.active_line_s* %6, %struct.active_line_s** %alp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  store %struct.active_line_s* %7, %struct.active_line_s** %first, align 8
  %8 = load %struct.active_line_s*, %struct.active_line_s** %last, align 8
  %9 = load %struct.active_line_s*, %struct.active_line_s** %prev, align 8
  %next4 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %9, i32 0, i32 10
  store %struct.active_line_s* %8, %struct.active_line_s** %next4, align 8
  %10 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %cmp5 = icmp ne %struct.active_line_s* %10, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load %struct.active_line_s*, %struct.active_line_s** %first, align 8
  %12 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %prev7 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %12, i32 0, i32 9
  store %struct.active_line_s* %11, %struct.active_line_s** %prev7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %13 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8
  %14 = load %struct.active_line_s*, %struct.active_line_s** %first, align 8
  %prev8 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %14, i32 0, i32 9
  store %struct.active_line_s* %13, %struct.active_line_s** %prev8, align 8
  %15 = load %struct.active_line_s*, %struct.active_line_s** %prev, align 8
  %16 = load %struct.active_line_s*, %struct.active_line_s** %last, align 8
  %next9 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %16, i32 0, i32 10
  store %struct.active_line_s* %15, %struct.active_line_s** %next9, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %17 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %next10 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %17, i32 0, i32 10
  %18 = load %struct.active_line_s*, %struct.active_line_s** %next10, align 8
  store %struct.active_line_s* %18, %struct.active_line_s** %nlp, align 8
  %19 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %prev11 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %19, i32 0, i32 9
  %20 = load %struct.active_line_s*, %struct.active_line_s** %prev11, align 8
  %21 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %next12 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %21, i32 0, i32 10
  store %struct.active_line_s* %20, %struct.active_line_s** %next12, align 8
  %22 = load %struct.active_line_s*, %struct.active_line_s** %nlp, align 8
  %23 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %prev13 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %23, i32 0, i32 9
  store %struct.active_line_s* %22, %struct.active_line_s** %prev13, align 8
  %24 = load %struct.active_line_s*, %struct.active_line_s** %nlp, align 8
  store %struct.active_line_s* %24, %struct.active_line_s** %alp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %25 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %26 = load %struct.active_line_s*, %struct.active_line_s** %prev, align 8
  %cmp14 = icmp ne %struct.active_line_s* %25, %26
  br i1 %cmp14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ended_line(%struct.active_line_s* %alp) #0 {
entry:
  %alp.addr = alloca %struct.active_line_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %next = alloca %struct.segment_s*, align 8
  %y = alloca i64, align 8
  %npt = alloca %struct.gs_fixed_point_s, align 8
  %nlp = alloca %struct.active_line_s*, align 8
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8
  %0 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %pseg1 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %0, i32 0, i32 5
  %1 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8
  store %struct.segment_s* %1, %struct.segment_s** %pseg, align 8
  %2 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %2, i32 0, i32 3
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %3 = load i64, i64* %y2, align 8
  store i64 %3, i64* %y, align 8
  %4 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %direction = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %4, i32 0, i32 6
  %5 = load i32, i32* %direction, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %next3 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %6, i32 0, i32 1
  %7 = load %struct.segment_s*, %struct.segment_s** %next3, align 8
  store %struct.segment_s* %7, %struct.segment_s** %next, align 8
  %8 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  %cmp4 = icmp eq %struct.segment_s* %8, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %9, i32 0, i32 2
  %10 = load i32, i32* %type, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  %11 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  store %struct.segment_s* %11, %struct.segment_s** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %lor.lhs.false
  br label %if.end.9

if.else:                                          ; preds = %entry
  %12 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %12, i32 0, i32 2
  %13 = load i32, i32* %type7, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %14 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %15 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %prev = getelementptr inbounds %struct.segment_s, %struct.segment_s* %15, i32 0, i32 0
  %16 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.segment_s* [ %14, %cond.true ], [ %16, %cond.false ]
  store %struct.segment_s* %cond, %struct.segment_s** %next, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.end
  %17 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  %pt10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %17, i32 0, i32 3
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt10, i32 0, i32 1
  %18 = load i64, i64* %y11, align 8
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %npt, i32 0, i32 1
  store i64 %18, i64* %y12, align 8
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %npt, i32 0, i32 1
  %19 = load i64, i64* %y13, align 8
  %20 = load i64, i64* %y, align 8
  %cmp14 = icmp sle i64 %19, %20
  br i1 %cmp14, label %if.then.15, label %if.else.23

if.then.15:                                       ; preds = %if.end.9
  %21 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %next16 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %21, i32 0, i32 10
  %22 = load %struct.active_line_s*, %struct.active_line_s** %next16, align 8
  store %struct.active_line_s* %22, %struct.active_line_s** %nlp, align 8
  %23 = load %struct.active_line_s*, %struct.active_line_s** %nlp, align 8
  %24 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %prev17 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %24, i32 0, i32 9
  %25 = load %struct.active_line_s*, %struct.active_line_s** %prev17, align 8
  %next18 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %25, i32 0, i32 10
  store %struct.active_line_s* %23, %struct.active_line_s** %next18, align 8
  %26 = load %struct.active_line_s*, %struct.active_line_s** %nlp, align 8
  %tobool = icmp ne %struct.active_line_s* %26, null
  br i1 %tobool, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.15
  %27 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %prev20 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %27, i32 0, i32 9
  %28 = load %struct.active_line_s*, %struct.active_line_s** %prev20, align 8
  %29 = load %struct.active_line_s*, %struct.active_line_s** %nlp, align 8
  %prev21 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %29, i32 0, i32 9
  store %struct.active_line_s* %28, %struct.active_line_s** %prev21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.15
  br label %if.end.45

if.else.23:                                       ; preds = %if.end.9
  %30 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  %31 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %pseg24 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %31, i32 0, i32 5
  store %struct.segment_s* %30, %struct.segment_s** %pseg24, align 8
  %32 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  %pt25 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %32, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt25, i32 0, i32 0
  %33 = load i64, i64* %x, align 8
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %npt, i32 0, i32 0
  store i64 %33, i64* %x26, align 8
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %npt, i32 0, i32 0
  %34 = load i64, i64* %x27, align 8
  %35 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %35, i32 0, i32 1
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %36 = load i64, i64* %x28, align 8
  %cmp29 = icmp sgt i64 %34, %36
  br i1 %cmp29, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %if.else.23
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %npt, i32 0, i32 0
  %37 = load i64, i64* %x31, align 8
  %38 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end32 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %38, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end32, i32 0, i32 0
  %39 = load i64, i64* %x33, align 8
  %sub = sub nsw i64 %37, %39
  br label %cond.end.39

cond.false.34:                                    ; preds = %if.else.23
  %40 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end35 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %40, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end35, i32 0, i32 0
  %41 = load i64, i64* %x36, align 8
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %npt, i32 0, i32 0
  %42 = load i64, i64* %x37, align 8
  %sub38 = sub nsw i64 %41, %42
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.34, %cond.true.30
  %cond40 = phi i64 [ %sub, %cond.true.30 ], [ %sub38, %cond.false.34 ]
  %or = or i64 %cond40, 1
  %div = sdiv i64 2147483647, %or
  %43 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end41 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %43, i32 0, i32 1
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end41, i32 0, i32 1
  %44 = load i64, i64* %y42, align 8
  %add = add nsw i64 %div, %44
  %45 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %y_fast_max = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %45, i32 0, i32 2
  store i64 %add, i64* %y_fast_max, align 8
  %46 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %46, i32 0, i32 0
  %47 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end43 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %47, i32 0, i32 1
  %48 = bitcast %struct.gs_fixed_point_s* %start to i8*
  %49 = bitcast %struct.gs_fixed_point_s* %end43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false)
  %50 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8
  %end44 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %50, i32 0, i32 1
  %51 = bitcast %struct.gs_fixed_point_s* %end44 to i8*
  %52 = bitcast %struct.gs_fixed_point_s* %npt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false)
  br label %if.end.45

if.end.45:                                        ; preds = %cond.end.39, %if.end.22
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
