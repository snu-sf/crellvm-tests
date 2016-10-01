; ModuleID = './MultiSource.Benchmarks.MallocBench/51.gs.gspaint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_image_enum_s = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, void (%struct.gs_image_enum_s*, i8*, i8*, i32)*, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)*, %struct.gs_state_s*, i8*, i32, i32, i32, i32, i32, [4 x i8*], i32, i32, i32, i64, i64, i32, [256 x %struct.gx_device_color_s] }

; Function Attrs: nounwind uwtable
define i32 @gs_erasepage(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pdev = alloca %struct.device_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  store %struct.device_s* %1, %struct.device_s** %pdev, align 8
  %2 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %3, %struct.gx_device_s** %dev, align 8
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 1
  %5 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %5, i32 0, i32 7
  %6 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 3
  %9 = load i32, i32* %width, align 4
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 4
  %11 = load i32, i32* %height, align 4
  %12 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %white = getelementptr inbounds %struct.device_s, %struct.device_s* %12, i32 0, i32 2
  %13 = load i64, i64* %white, align 8
  %call = call i32 %6(%struct.gx_device_s* %7, i32 0, i32 0, i32 %9, i32 %11, i64 %13)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_fill(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @gs_fill_trim(%struct.gs_state_s* %0, i64 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_fill_trim(%struct.gs_state_s* %pgs, i64 %trim) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %trim.addr = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i64 %trim, i64* %trim.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 20
  %1 = load i8, i8* %in_charpath, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 7
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8
  %call = call i32 @gx_path_merge(%struct.gx_path_s* %3, %struct.gx_path_s* %6)
  store i32 %call, i32* %code, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 13
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 14
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call2 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %8, %struct.gx_device_color_s* %10, %struct.gs_state_s* %11)
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 7
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %path3, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 14
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color4, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %17 = load i64, i64* %trim.addr, align 8
  %call5 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* %13, %struct.gx_device_color_s* %15, %struct.gs_state_s* %16, i32 -1, i64 %17)
  store i32 %call5, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %code, align 4
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call8 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %19)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %20 = load i32, i32* %code, align 4
  ret i32 %20
}

declare i32 @gx_path_merge(%struct.gx_path_s*, %struct.gx_path_s*) #1

declare i32 @gx_color_render(...) #1

declare i32 @gx_fill_path(...) #1

declare i32 @gs_newpath(...) #1

; Function Attrs: nounwind uwtable
define i32 @gs_eofill(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 13
  %1 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 14
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %1, %struct.gx_device_color_s* %3, %struct.gs_state_s* %4)
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 20
  %6 = load i8, i8* %in_charpath, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 7
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8
  %call2 = call i32 @gx_path_merge(%struct.gx_path_s* %8, %struct.gx_path_s* %11)
  store i32 %call2, i32* %code, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 13
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %color3, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 14
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color4, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call5 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %13, %struct.gx_device_color_s* %15, %struct.gs_state_s* %16)
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 7
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %path6, align 8
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 14
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color7, align 8
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call8 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* %18, %struct.gx_device_color_s* %20, %struct.gs_state_s* %21, i32 1, i64 0)
  store i32 %call8, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %code, align 4
  %tobool9 = icmp ne i32 %22, 0
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call11 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %23)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %24 = load i32, i32* %code, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @gs_stroke(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 20
  %1 = load i8, i8* %in_charpath, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 7
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8
  %call = call i32 @gx_path_merge(%struct.gx_path_s* %3, %struct.gx_path_s* %6)
  store i32 %call, i32* %code, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 13
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 14
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call2 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %8, %struct.gx_device_color_s* %10, %struct.gs_state_s* %11)
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 7
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %path3, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call4 = call i32 (%struct.gx_path_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_stroke_fill to i32 (%struct.gx_path_s*, %struct.gs_state_s*, ...)*)(%struct.gx_path_s* %13, %struct.gs_state_s* %14)
  store i32 %call4, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %code, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call7 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %17 = load i32, i32* %code, align 4
  ret i32 %17
}

declare i32 @gx_stroke_fill(...) #1

; Function Attrs: nounwind uwtable
define i32 @gs_strokepath(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %spath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* %spath, %struct.gs_memory_procs* %memory_procs)
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 7
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 (%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_stroke_add to i32 (%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_state_s*, ...)*)(%struct.gx_path_s* %2, %struct.gx_path_s* %spath, %struct.gs_state_s* %3)
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 7
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8
  call void @gx_path_release(%struct.gx_path_s* %7)
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 7
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %path2, align 8
  %10 = bitcast %struct.gx_path_s* %9 to i8*
  %11 = bitcast %struct.gx_path_s* %spath to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 144, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @gx_path_init(%struct.gx_path_s*, %struct.gs_memory_procs*) #1

declare i32 @gx_stroke_add(...) #1

declare void @gx_path_release(%struct.gx_path_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gs_colorimage(%struct.gs_state_s* %pgs, i32 %width, i32 %height, i32 %bps, i32 %spp, %struct.gs_matrix_s* %pmat, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bps.addr = alloca i32, align 4
  %spp.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %data.addr = alloca i8*, align 8
  %ienum = alloca %struct.gs_image_enum_s, align 8
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %plane_size = alloca i32, align 4
  %plane_data = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bps, i32* %bps.addr, align 4
  store i32 %spp, i32* %spp.addr, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %bps.addr, align 4
  %4 = load i32, i32* %spp.addr, align 4
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call = call i32 @gs_image_init(%struct.gs_image_enum_s* %ienum, %struct.gs_state_s* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.gs_matrix_s* %5)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %spp.addr, align 4
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %bps.addr, align 4
  %mul = mul i32 %8, %9
  %10 = load i32, i32* %spp.addr, align 4
  %mul3 = mul i32 %mul, %10
  %add = add i32 %mul3, 7
  %shr = lshr i32 %add, 3
  %11 = load i32, i32* %height.addr, align 4
  %mul4 = mul i32 %shr, %11
  store i32 %mul4, i32* %size, align 4
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i32, i32* %size, align 4
  %call5 = call i32 @gs_image_next(%struct.gs_image_enum_s* %ienum, i8* %12, i32 %13)
  store i32 %call5, i32* %code, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %bps.addr, align 4
  %mul6 = mul i32 %14, %15
  %add7 = add i32 %mul6, 7
  %shr8 = lshr i32 %add7, 3
  %16 = load i32, i32* %height.addr, align 4
  %mul9 = mul i32 %shr8, %16
  store i32 %mul9, i32* %plane_size, align 4
  %17 = load i8*, i8** %data.addr, align 8
  store i8* %17, i8** %plane_data, align 8
  %18 = load i32, i32* %spp.addr, align 4
  store i32 %18, i32* %count, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %19 = load i8*, i8** %plane_data, align 8
  %20 = load i32, i32* %plane_size, align 4
  %call10 = call i32 @gs_image_next(%struct.gs_image_enum_s* %ienum, i8* %19, i32 %20)
  store i32 %call10, i32* %code, align 4
  %21 = load i32, i32* %code, align 4
  %cmp11 = icmp slt i32 %21, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.body
  %22 = load i32, i32* %code, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.body
  %23 = load i32, i32* %plane_size, align 4
  %24 = load i8*, i8** %plane_data, align 8
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %plane_data, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  %25 = load i32, i32* %count, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %count, align 4
  %tobool = icmp ne i32 %inc, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %if.then.2
  %26 = load i32, i32* %code, align 4
  %cmp15 = icmp slt i32 %26, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %27 = load i32, i32* %code, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.12, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @gs_image_init(%struct.gs_image_enum_s*, %struct.gs_state_s*, i32, i32, i32, i32, %struct.gs_matrix_s*) #1

declare i32 @gs_image_next(%struct.gs_image_enum_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_image(%struct.gs_state_s* %pgs, i32 %width, i32 %height, i32 %bps, %struct.gs_matrix_s* %pmat, i8* %data) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bps.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bps, i32* %bps.addr, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %bps.addr, align 4
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call = call i32 @gs_colorimage(%struct.gs_state_s* %0, i32 %1, i32 %2, i32 %3, i32 1, %struct.gs_matrix_s* %4, i8* %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_imagemask(%struct.gs_state_s* %pgs, i32 %width, i32 %height, i32 %invert, %struct.gs_matrix_s* %pmat, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %data.addr = alloca i8*, align 8
  %ienum = alloca %struct.gs_image_enum_s, align 8
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %invert, i32* %invert.addr, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %add = add i32 %0, 7
  %shr = lshr i32 %add, 3
  %1 = load i32, i32* %height.addr, align 4
  %mul = mul i32 %shr, %1
  store i32 %mul, i32* %size, align 4
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %5 = load i32, i32* %invert.addr, align 4
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call = call i32 @gs_imagemask_init(%struct.gs_image_enum_s* %ienum, %struct.gs_state_s* %2, i32 %3, i32 %4, i32 %5, %struct.gs_matrix_s* %6)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i32, i32* %size, align 4
  %call1 = call i32 @gs_image_next(%struct.gs_image_enum_s* %ienum, i8* %8, i32 %9)
  store i32 %call1, i32* %code, align 4
  %10 = load i32, i32* %code, align 4
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_imagemask_init(%struct.gs_image_enum_s*, %struct.gs_state_s*, i32, i32, i32, %struct.gs_matrix_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
