; ModuleID = './MultiSource.Benchmarks.MallocBench/92.gs.gsstate.bc'
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
%struct.line_params_s = type { float, i32, i32, float, float, %struct.dash_params_s }
%struct.dash_params_s = type { float*, i32, float, i32, i32, float }
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.ht_bit_s = type { i16, i16 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@gs_state_sizeof = global i32 464, align 4
@.str = private unnamed_addr constant [15 x i8] c"gs_state_alloc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gs_state_free\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gs_gsave\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gs_grestore\00", align 1
@alloc_state_contents.cname = internal global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"(gs)alloc_state_contents\00", align 1
@free_state_contents.cname = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"(gs)free_state_contents\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* %palloc, void (i8*, i32, i32, i8*)* %pfree) #0 {
entry:
  %retval = alloca %struct.gs_state_s*, align 8
  %palloc.addr = alloca i8* (i32, i32, i8*)*, align 8
  %pfree.addr = alloca void (i8*, i32, i32, i8*)*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  store i8* (i32, i32, i8*)* %palloc, i8* (i32, i32, i8*)** %palloc.addr, align 8
  store void (i8*, i32, i32, i8*)* %pfree, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %0 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %call = call i8* %0(i32 1, i32 464, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct.gs_state_s*
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %cmp = icmp eq %struct.gs_state_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %4 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %call1 = call i32 @alloc_state_contents(%struct.gs_state_s* %3, i8* (i32, i32, i8*)* %4)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 0
  store %struct.gs_state_s* null, %struct.gs_state_s** %saved, align 8
  %6 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 1
  %alloc = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 0
  store i8* (i32, i32, i8*)* %6, i8* (i32, i32, i8*)** %alloc, align 8
  %8 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %memory_procs5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs5, i32 0, i32 1
  store void (i8*, i32, i32, i8*)* %8, void (i8*, i32, i32, i8*)** %free, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %first_subpath, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 8
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  %first_subpath6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %first_subpath6, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 11
  %15 = load %struct.halftone_s*, %struct.halftone_s** %halftone, align 8
  %order_size = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %15, i32 0, i32 5
  store i32 0, i32* %order_size, align 4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %halftone7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 11
  %17 = load %struct.halftone_s*, %struct.halftone_s** %halftone7, align 8
  %height = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %17, i32 0, i32 3
  store i32 0, i32* %height, align 4
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %halftone8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 11
  %19 = load %struct.halftone_s*, %struct.halftone_s** %halftone8, align 8
  %width = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %19, i32 0, i32 2
  store i32 0, i32* %width, align 4
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  call void @gs_nulldevice(%struct.gs_state_s* %20)
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call9 = call i32 @gs_setflat(%struct.gs_state_s* %21, double 1.000000e+00)
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 20
  store i8 0, i8* %in_charpath, align 1
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 19
  store i8 0, i8* %in_cachedevice, align 1
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call10 = call i32 @gs_initgraphics(%struct.gs_state_s* %24)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.4
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  store %struct.gs_state_s* %25, %struct.gs_state_s** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.3, %if.then
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %retval
  ret %struct.gs_state_s* %26
}

; Function Attrs: nounwind uwtable
define i32 @alloc_state_contents(%struct.gs_state_s* %pgs, i8* (i32, i32, i8*)* %palloc) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %palloc.addr = alloca i8* (i32, i32, i8*)*, align 8
  %elt = alloca i8*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* (i32, i32, i8*)* %palloc, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %0 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %1 = load i8*, i8** @alloc_state_contents.cname, align 8
  %call = call i8* %0(i32 1, i32 144, i8* %1)
  store i8* %call, i8** %elt, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %elt, align 8
  %3 = bitcast i8* %2 to %struct.gx_path_s*
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 7
  store %struct.gx_path_s* %3, %struct.gx_path_s** %path, align 8
  %5 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %6 = load i8*, i8** @alloc_state_contents.cname, align 8
  %call1 = call i8* %5(i32 1, i32 144, i8* %6)
  store i8* %call1, i8** %elt, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load i8*, i8** %elt, align 8
  %8 = bitcast i8* %7 to %struct.gx_path_s*
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 8
  store %struct.gx_path_s* %8, %struct.gx_path_s** %clip_path, align 8
  %10 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %11 = load i8*, i8** @alloc_state_contents.cname, align 8
  %call5 = call i8* %10(i32 1, i32 56, i8* %11)
  store i8* %call5, i8** %elt, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %12 = load i8*, i8** %elt, align 8
  %13 = bitcast i8* %12 to %struct.line_params_s*
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 10
  store %struct.line_params_s* %13, %struct.line_params_s** %line_params, align 8
  %15 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %16 = load i8*, i8** @alloc_state_contents.cname, align 8
  %call9 = call i8* %15(i32 1, i32 32, i8* %16)
  store i8* %call9, i8** %elt, align 8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %17 = load i8*, i8** %elt, align 8
  %18 = bitcast i8* %17 to %struct.halftone_s*
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 11
  store %struct.halftone_s* %18, %struct.halftone_s** %halftone, align 8
  %20 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %21 = load i8*, i8** @alloc_state_contents.cname, align 8
  %call13 = call i8* %20(i32 1, i32 10, i8* %21)
  store i8* %call13, i8** %elt, align 8
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %22 = load i8*, i8** %elt, align 8
  %23 = bitcast i8* %22 to %struct.gs_color_s*
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 13
  store %struct.gs_color_s* %23, %struct.gs_color_s** %color, align 8
  %25 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %26 = load i8*, i8** @alloc_state_contents.cname, align 8
  %call17 = call i8* %25(i32 1, i32 32, i8* %26)
  store i8* %call17, i8** %elt, align 8
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %27 = load i8*, i8** %elt, align 8
  %28 = bitcast i8* %27 to %struct.gx_device_color_s*
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 14
  store %struct.gx_device_color_s* %28, %struct.gx_device_color_s** %dev_color, align 8
  %30 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %31 = load i8*, i8** @alloc_state_contents.cname, align 8
  %call21 = call i8* %30(i32 1, i32 32, i8* %31)
  store i8* %call21, i8** %elt, align 8
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %32 = load i8*, i8** %elt, align 8
  %33 = bitcast i8* %32 to %struct.device_s*
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 22
  store %struct.device_s* %33, %struct.device_s** %device, align 8
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device_is_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 23
  store i32 0, i32* %device_is_shared, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @gs_nulldevice(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setflat(%struct.gs_state_s* %pgs, double %flat) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %flat.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %flat, double* %flat.addr, align 8
  %0 = load double, double* %flat.addr, align 8
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %flat.addr, align 8
  %conv = fptrunc double %1 to float
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 21
  store float %conv, float* %flatness, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_initgraphics(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initmatrix to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %0)
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call1 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %1)
  store i32 %call1, i32* %code, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call2 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initclip to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %2)
  store i32 %call2, i32* %code, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call5 = call i32 @gs_setlinewidth(%struct.gs_state_s* %3, double 1.000000e+00)
  store i32 %call5, i32* %code, align 4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call8 = call i32 @gs_setlinecap(%struct.gs_state_s* %4, i32 0)
  store i32 %call8, i32* %code, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call11 = call i32 @gs_setlinejoin(%struct.gs_state_s* %5, i32 0)
  store i32 %call11, i32* %code, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call14 = call i32 @gs_setdash(%struct.gs_state_s* %6, float* null, i32 0, double 0.000000e+00)
  store i32 %call14, i32* %code, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call17 = call i32 @gs_setgray(%struct.gs_state_s* %7, double 0.000000e+00)
  store i32 %call17, i32* %code, align 4
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call20 = call i32 @gs_setmiterlimit(%struct.gs_state_s* %8, double 1.000000e+01)
  store i32 %call20, i32* %code, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %9 = load i32, i32* %code, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gs_state_free(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @free_state_contents(%struct.gs_state_s* %0)
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 1
  %2 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %free, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = bitcast %struct.gs_state_s* %3 to i8*
  call void %2(i8* %4, i32 1, i32 464, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @free_state_contents(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfree = alloca void (i8*, i32, i32, i8*)*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 1
  %1 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %free, align 8
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** %pfree, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  call void @gx_path_release(%struct.gx_path_s* %3)
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  call void @gx_path_release(%struct.gx_path_s* %5)
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device_is_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 23
  %7 = load i32, i32* %device_is_shared, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 22
  %10 = load %struct.device_s*, %struct.device_s** %device, align 8
  %11 = bitcast %struct.device_s* %10 to i8*
  %12 = load i8*, i8** @free_state_contents.cname, align 8
  call void %8(i8* %11, i32 1, i32 32, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 14
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %16 = bitcast %struct.gx_device_color_s* %15 to i8*
  %17 = load i8*, i8** @free_state_contents.cname, align 8
  call void %13(i8* %16, i32 1, i32 32, i8* %17)
  %18 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 13
  %20 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %21 = bitcast %struct.gs_color_s* %20 to i8*
  %22 = load i8*, i8** @free_state_contents.cname, align 8
  call void %18(i8* %21, i32 1, i32 10, i8* %22)
  %23 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 11
  %25 = load %struct.halftone_s*, %struct.halftone_s** %halftone, align 8
  %26 = bitcast %struct.halftone_s* %25 to i8*
  %27 = load i8*, i8** @free_state_contents.cname, align 8
  call void %23(i8* %26, i32 1, i32 32, i8* %27)
  %28 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 10
  %30 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %31 = bitcast %struct.line_params_s* %30 to i8*
  %32 = load i8*, i8** @free_state_contents.cname, align 8
  call void %28(i8* %31, i32 1, i32 56, i8* %32)
  %33 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 8
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path1, align 8
  %36 = bitcast %struct.gx_path_s* %35 to i8*
  %37 = load i8*, i8** @free_state_contents.cname, align 8
  call void %33(i8* %36, i32 1, i32 144, i8* %37)
  %38 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 7
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %path2, align 8
  %41 = bitcast %struct.gx_path_s* %40 to i8*
  %42 = load i8*, i8** @free_state_contents.cname, align 8
  call void %38(i8* %41, i32 1, i32 144, i8* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_gsave(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pnew = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 1
  %alloc = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 0
  %1 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %alloc, align 8
  %call = call i8* %1(i32 1, i32 464, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  %2 = bitcast i8* %call to %struct.gs_state_s*
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pnew, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %cmp = icmp eq %struct.gs_state_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %6 = bitcast %struct.gs_state_s* %4 to i8*
  %7 = bitcast %struct.gs_state_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 464, i32 8, i1 false)
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 1
  %alloc2 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs1, i32 0, i32 0
  %10 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %alloc2, align 8
  %call3 = call i32 @alloc_state_contents(%struct.gs_state_s* %8, i8* (i32, i32, i8*)* %10)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 7
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %path7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 7
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %path7, align 8
  %15 = bitcast %struct.gx_path_s* %12 to i8*
  %16 = bitcast %struct.gx_path_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 144, i32 8, i1 false)
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 8
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %clip_path8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 8
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path8, align 8
  %21 = bitcast %struct.gx_path_s* %18 to i8*
  %22 = bitcast %struct.gx_path_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 144, i32 8, i1 false)
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 10
  %24 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %line_params9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 10
  %26 = load %struct.line_params_s*, %struct.line_params_s** %line_params9, align 8
  %27 = bitcast %struct.line_params_s* %24 to i8*
  %28 = bitcast %struct.line_params_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 56, i32 8, i1 false)
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 11
  %30 = load %struct.halftone_s*, %struct.halftone_s** %halftone, align 8
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %halftone10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 11
  %32 = load %struct.halftone_s*, %struct.halftone_s** %halftone10, align 8
  %33 = bitcast %struct.halftone_s* %30 to i8*
  %34 = bitcast %struct.halftone_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 13
  %36 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %color11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 13
  %38 = load %struct.gs_color_s*, %struct.gs_color_s** %color11, align 8
  %39 = bitcast %struct.gs_color_s* %36 to i8*
  %40 = bitcast %struct.gs_color_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 10, i32 2, i1 false)
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 14
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %dev_color12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 14
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color12, align 8
  %45 = bitcast %struct.gx_device_color_s* %42 to i8*
  %46 = bitcast %struct.gx_device_color_s* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 22
  %48 = load %struct.device_s*, %struct.device_s** %device, align 8
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %device13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 22
  %50 = load %struct.device_s*, %struct.device_s** %device13, align 8
  %51 = bitcast %struct.device_s* %48 to i8*
  %52 = bitcast %struct.device_s* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 32, i32 8, i1 false)
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 7
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %path14, align 8
  call void @gx_path_share(%struct.gx_path_s* %54)
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 8
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path15, align 8
  call void @gx_path_share(%struct.gx_path_s* %56)
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 0
  store %struct.gs_state_s* %57, %struct.gs_state_s** %saved, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gx_path_share(%struct.gx_path_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_grestore(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %saved, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  %cmp = icmp eq %struct.gs_state_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @free_state_contents(%struct.gs_state_s* %3)
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  %6 = bitcast %struct.gs_state_s* %4 to i8*
  %7 = bitcast %struct.gs_state_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 464, i32 8, i1 false)
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 1
  %9 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %free, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  %11 = bitcast %struct.gs_state_s* %10 to i8*
  call void %9(i8* %11, i32 1, i32 464, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gs_grestoreall(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @gs_grestore(%struct.gs_state_s* %0)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* %pgs, %struct.gs_state_s* %new_saved) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %new_saved.addr = alloca %struct.gs_state_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_state_s* %new_saved, %struct.gs_state_s** %new_saved.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %saved, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %new_saved.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %saved2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 0
  store %struct.gs_state_s* %2, %struct.gs_state_s** %saved2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  ret %struct.gs_state_s* %4
}

declare i32 @gs_initmatrix(...) #1

declare i32 @gs_newpath(...) #1

declare i32 @gs_initclip(...) #1

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #1

declare i32 @gs_setlinecap(%struct.gs_state_s*, i32) #1

declare i32 @gs_setlinejoin(%struct.gs_state_s*, i32) #1

declare i32 @gs_setdash(%struct.gs_state_s*, float*, i32, double) #1

declare i32 @gs_setgray(%struct.gs_state_s*, double) #1

declare i32 @gs_setmiterlimit(%struct.gs_state_s*, double) #1

; Function Attrs: nounwind uwtable
define float @gs_currentflat(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 21
  %1 = load float, float* %flatness, align 4
  ret float %1
}

declare void @gx_path_release(%struct.gx_path_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
